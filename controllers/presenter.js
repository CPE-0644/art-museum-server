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
    type: artwork.type,
    title: artwork.Title,
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    artist_id: artwork.artist_id
  };
}

function artworkTypePresenter(artwork) {
  return {
    id: artwork.id,
    year: artwork.year,
    artwork_type: artwork.artwork_type,
    title: artwork.title,
    description: artwork.description,
    origin: artwork.origin,
    epoch: artwork.epoch,
    artist_id: artwork.artist_id
  };
}

function sculpturePresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    artwork_type: 'sculpture',
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    material: artwork['sculpture.material'],
    height: artwork['sculpture.height'],
    weight: artwork['sculpture.weight'],
    style: artwork['sculpture.style'],
    artist_id: artwork.artist_id
  };
}
function statuePresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    artwork_type: 'statue',
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    material: artwork['statue.material'],
    height: artwork['statue.height'],
    weight: artwork['statue.weight'],
    style: artwork['statue.style'],
    artist_id: artwork.artist_id
  };
}
function paintingPresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    artwork_type: 'painting',
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    paint_type: artwork['painting.paint_type'],
    drawn_on: artwork['painting.drawn_on'],
    style: artwork['painting.style'],
    artist_id: artwork.artist_id
  };
}
function otherPresenter(artwork) {
  return {
    id: artwork.Id_no,
    year: artwork.Years,
    title: artwork.Title,
    artwork_type: 'other',
    description: artwork.Description,
    origin: artwork.Origin,
    epoch: artwork.Epoch,
    type: artwork['other.type'],
    style: artwork['other.style'],
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
    contact_name: collection.contact_person.Name,
    contact_phone: collection.contact_person.Phone
  };
}
function collectionRelationPresenter(collection) {
  return {
    id: collection.Collection_id,
    name: collection.Name,
    type: collection.Type,
    description: collection.Description,
    address: collection.Address,
    contact_name: collection.contact_person.Name,
    contact_phone: collection.contact_person.Phone,
    borrowedArtworks: collection.borroweds,
    permanentArtworks: collection.permanent_collections
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

function userInfoPresenter(user) {
  return {
    id: user.museum_goer_id,
    name: user.Name,
    role: user.role,
    username: user.username,
    password: user.password,
    address: user.address,
    email: user.email,
    phone: user.phone,
    age: user.age,
    interested: user.interested,
    going_exhibitions: _.map(user.exhibitions, exhibition => {
      return exhibitionPresenter(exhibition);
    })
  };
}

function exhibitionUsersPresenter(exhibition) {
  const userList = _.map(exhibition.museum_goers, museum_goer => {
    return userPresenter(museum_goer);
  });

  const exhibitionSeatsLeft =
    exhibition.number_limit_visitor - _.size(exhibition.museum_goers);

  return {
    id: exhibition.exhibition_id,
    name: exhibition.Name,
    start_date: exhibition.Start_date,
    end_date: exhibition.End_date,
    supported_visitor: exhibition.number_limit_visitor,
    seats_left: exhibitionSeatsLeft,
    users: userList
  };
}

module.exports = {
  artistPresenter,
  artworkPresenter,
  artworkTypePresenter,
  collectionPresenter,
  collectionRelationPresenter,
  exhibitionPresenter,
  exhibitionUsersPresenter,
  userPresenter,
  userInfoPresenter,
  sculpturePresenter,
  statuePresenter,
  paintingPresenter,
  otherPresenter
};
