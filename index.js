const webdriverio = require("webdriverio");

// javascript
const caps = {
    path: '/wd/hub',
    port: 4723,
    capabilities: {
      platformName: "Android",
      platformVersion: "11",
      deviceName: "RZ8RB0V53JM",
      app: "/Users/atapiave/Downloads/baz-qa.apk",
      automationName: "UiAutomator2"
    }
  };
 
  
  async function main (caps) {
    let client;
    client = await webdriverio.remote(caps);
    await client.launchApp();
    // const res = await client.status();
    // const pkg = await client.getCurrentPackage();
    // console.log(res)
    // console.log(pkg)
  }
  
  main(caps);
  