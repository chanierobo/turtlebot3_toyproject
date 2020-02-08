
"use strict";

let TestResponseOnly = require('./TestResponseOnly.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let SendBytes = require('./SendBytes.js')
let AddTwoInts = require('./AddTwoInts.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestNestedService = require('./TestNestedService.js')
let TestEmpty = require('./TestEmpty.js')

module.exports = {
  TestResponseOnly: TestResponseOnly,
  TestRequestAndResponse: TestRequestAndResponse,
  TestMultipleResponseFields: TestMultipleResponseFields,
  SendBytes: SendBytes,
  AddTwoInts: AddTwoInts,
  TestArrayRequest: TestArrayRequest,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestRequestOnly: TestRequestOnly,
  TestNestedService: TestNestedService,
  TestEmpty: TestEmpty,
};
