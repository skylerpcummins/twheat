var Store = require('flux/utils').Store;
var AppDispatcher = require('../dispatcher/dispatcher');
var _tweets = [];
var TweetStore = new Store(AppDispatcher);

TweetStore.all = function() {
  return _tweets.slice();
};

module.exports = TweetStore;
