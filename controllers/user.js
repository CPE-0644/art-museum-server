const _ = require('lodash');

const { User, UserInterested } = require('../config/db.config');

const { userPresenter, userInterestedPresenter } = require('./presenter');

class UserController {
  constructor(user) {
    this.user = User;
    this.userAttributes = [
      'museum_goer_id',
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
    const { name, title, password, address, email, phone, age } = params;

    const user = await this.user.create({
      Name: name,
      username: title,
      password: password,
      address: address,
      email: email,
      phone: phone,
      age: age
    });

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
    const user = await this.user.findOne({
      where: {
        museum_goer_id: id
      },
      include: [UserInterested]
    });

    return [userInterestedPresenter(user)];
  }
}

module.exports = UserController;
