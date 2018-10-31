const _ = require('lodash');

class ArtworkController {
  constructor(artwork) {
    this.artwork = artwork;
    this.artworkAttributes = [
      'Id_no',
      'Years',
      'Title',
      'Description',
      'Origin',
      'Epoch',
      'artist_id'
    ];
  }

  async findAll() {
    const artworks = await this.artwork.findAll({
      attributes: this.artworkAttributes
    });
    console.log(artworks);
    return _.map(artworks, artwork => {
      return artworkPresenter(artwork);
    });
  }
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

module.exports = ArtworkController;
