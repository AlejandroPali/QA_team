const actions = require('./../../utilities/actions')
const selectors = require('../../selectors/selectors.json')
const { Given } = require('cucumber');

Given('we are in the onboarding screen', async function () {
    await actions.tap_element("id", selectors.core.allow_code)
})
