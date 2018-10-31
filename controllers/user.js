const _ = require('lodash');

class UserController {
  constructor(user) {
    this.user = user;
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
      attributes: this.userAttributes,
      where: {
        user_id: id
      }
    });

    return _.map(user, user => {
      return userPresenter(user);
    });
  }
}

function userPresenter(user) {
  return {
    id: user.museum_goer_id,
    name: user.Name,
    username: user.username,
    password: user.password,
    address: user.address,
    email: user.email,
    phone: user.phone,
    age: user.age
  };
}

module.exports = UserController;
