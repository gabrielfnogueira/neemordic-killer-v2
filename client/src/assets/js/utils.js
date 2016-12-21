'use strict';

var utils = utils || {};

utils.shuffleArray = function(array) {
    var m = array.length, t, i;

// While there remain elements to shuffle
while (m) {
// Pick a remaining element…
i = Math.floor(Math.random() * m--);

// And swap it with the current element.
t = array[m];
array[m] = array[i];
array[i] = t;
}

return array;
};

utils.getRandomInt = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
};

utils.removeAccents = function(str) {
    var accentHexMap  = {
        a : /[\xE0-\xE6]/g,
        e : /[\xE8-\xEB]/g,
        i : /[\xEC-\xEF]/g,
        o : /[\xF2-\xF6]/g,
        u : /[\xF9-\xFC]/g,
        c : /\xE7/g,
        n : /\xF1/g
    };

    for (var letter in accentHexMap) {
        var regEx = accentHexMap[letter];
        str = str.replace(regEx, letter);
    }

    return str;
};