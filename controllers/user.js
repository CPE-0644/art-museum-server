const _ = require('lodash');

const User = require('../models/user')();

const userAttributes = [
  'museum_goer_id',
  'Name',
  'username',
  'password',
  'address',
  'email',
  'phone',
  'age'
];

async function findAll() {
  const users = await User.findAll({
    attributes: userAttributes
  });

  return _.map(users, user => {
    return userPresenter(user);
  });
}

async function findUserById(id) {
  const user = await User.findAll({
    attributes: userAttributes,
    where: {
      user_id: id
    }
  });

  return _.map(user, user => {
    return userPresenter(user);
  });
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

module.exports = {
  findAll,
  findUserById
};
