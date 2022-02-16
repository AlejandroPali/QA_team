
export async function tap_element(selector_type, selector) {
    let element = await driver.element(selector_type, selector);
    await driver.tapElement(element);
}

export async function get_element_text(selector, selector_type) {
    let element = await driver.element(selector_type, selector);
    return await element.text();
}

export async function clear_element(selector, selector_type) {
    let element = await driver.element(selector_type, selector);
    await element.clear();
}

export async function tap_back_button() {
    await driver.back();
}

export async function fill_field(selector, selector_type, value) {
    let element = await driver.element(selector_type, selector);
    await element.type(value)
}

