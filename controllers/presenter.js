const _ = require('lodash');

function artistPresenter(artist) {
  return {
    id: artist.artist_id,
    name: artist.name,
    date_of_birth: artist.date_born,
    date_of_died: artist.date_died,
    country: artist.country_of_origin,
    epoch: artist.epoch,
    style: artist.main_style,
    description: artist.description
  };
}

function artworkPresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    artist_id: artwork.artist_id
  };
}

function collectionPresenter(collection) {
  return {
    id: collection.Collection_id,
    name: collection.Name,
    type: collection.Type,
    description: collection.Description,
    address: collection.Address,
    contact_id: collection.contact_id
  };
}

function exhibitionPresenter(exhibition) {
  return {
    id: exhibition.exhibition_id,
    name: exhibition.Name,
    start_date: exhibition.Start_date,
    end_date: exhibition.End_date,
    supported_visitor: exhibition.number_limit_visitor
  };
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

function userInterestedPresenter(user) {
  return {
    id: user.museum_goer_id,
    name: user.Name,
    isAdmin: user.isAdmin,
    username: user.username,
    password: user.password,
    address: user.address,
    email: user.email,
    phone: user.phone,
    age: user.age,
    interested: _.map(user.museum_goer_interested_types, interest => {
      return interest.Interested_type;
    })
  };
}

module.exports = {
  artistPresenter,
  artworkPresenter,
  collectionPresenter,
  exhibitionPresenter,
  userPresenter,
  userInterestedPresenter
};
