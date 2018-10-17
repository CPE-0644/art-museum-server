const _ = require('lodash');

const data = require('../assets/database/exhibitions.json').exhibitions;

class Exhibition {
  constructor(json) {
    this.id = json['exhibition-id'];
    this.name = json['name'];
    this.start_date = json['start-date'];
    this.end_date = json['end-date'];
    this.display = json['display'];
    this.supported = json['number-supported-users'];
  }
}

let exhibitions = [];
_.forEach(data, json => exhibitions.push(new Exhibition(json)));

module.exports = {
  exhibitions
};
