const request = require('supertest');
const app = require('../index.js');

describe ('GET /', function() {
    it ('respond with Hello World', function(done) {
        request(app).get('/').expect('Hello!!', done);
    });
});