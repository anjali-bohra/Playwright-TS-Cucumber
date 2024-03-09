const fs = require("fs-extra")

try {
     fs.ensureDir("test-result")
     fs.emptyDir("test-result")
     fs.emptyDir("allure-results")
     fs.emptyDir("test-logs")
    
  } catch (error) {
    console.log("folder not created "+ error);
  }