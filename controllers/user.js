const _ = require('lodash');

const {
  sequelize,
  User,
  UserInterested,
  Exhibition
} = require('../config/db.config');

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

    return sequelize.transaction(t => {
      return this.user
        .create(
          {
            role: 'user',
            Name: name,
            username: username,
            password: password,
            address: address,
            email: email,
            phone: phone,
            age: age
          },
          { transaction: t }
        )
        .then(user => {
          _.forEach(interested, async interested_type => {
            return await UserInterested.create(
              {
                museum_goer_id: user.museum_goer_id,
                Interested_type: interested_type
              },
              { transaction: t }
            );
          });
          return user;
        })
        .then(user => {
          return [userPresenter(user)];
        });
    });
  }

  async updateUser(newParams, id) {
    const { name, username, password, address, email, phone, age } = newParams;

    return sequelize.transaction(t => {
      return this.user
        .findOne(
          {
            where: {
              museum_goer_id: id
            }
          },
          { transaction: t }
        )
        .then(user => {
          return user.update(
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
              transaction: t,
              fields: this.userAttributes
            }
          );
        })
        .then(user => {
          return [userPresenter(user)];
        });
    });
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
