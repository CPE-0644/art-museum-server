const _ = require('lodash');

const { User, UserInterested, Exhibition } = require('../config/db.config');

const { userPresenter, userInfoPresenter } = require('./presenter');

class UserController {
  constructor(user) {
    this.user = User;
    this.userAttributes = [
      'Name',
      'username',
      'password',
      'address',
      'email',
      'phone',
      'age'
    ];
  }

  async createUser(params) {
    const {
      name,
      username,
      password,
      address,
      email,
      phone,
      age,
      interested
    } = params;

    const user = await this.user.create({
      role: 'user',
      Name: name,
      username: username,
      password: password,
      address: address,
      email: email,
      phone: phone,
      age: age
    });

    _.forEach(interested, async interested_type => {
      await UserInterested.create({
        museum_goer_id: user.museum_goer_id,
        Interested_type: interested_type
      });
    });

    return [userPresenter(user)];
  }

  async updateUser(newParams, id) {
    const { name, username, password, address, email, phone, age } = newParams;

    const user = await this.user.findOne({
      where: {
        museum_goer_id: id
      }
    });

    user.update(
      {
        Name: name,
        username: username,
        password: password,
        address: address,
        email: email,
        phone: phone,
        age: age
      },
      {
        fields: this.userAttributes
      }
    );

    return [userPresenter(user)];
  }

  async findAll() {
    const users = await this.user.findAll({
      attributes: this.userAttributes
    });

    return _.map(users, user => {
      return userPresenter(user);
    });
  }

  async findUserById(id) {
    const user = await this.user.findAll({
      raw: true,
      where: {
        museum_goer_id: id
      },
      include: [UserInterested, Exhibition]
    });
    let interested = [];
    _.forEach(user, async data => {
      await interested.push(
        data['museum_goer_interested_types.Interested_type']
      );
    });
    console.log(interested);
    user[0].interested = interested;
    return [userInfoPresenter(user[0])];
  }
}

module.exports = UserController;
