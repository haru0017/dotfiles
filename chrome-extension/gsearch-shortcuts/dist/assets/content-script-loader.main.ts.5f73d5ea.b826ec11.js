(function () {
  'use strict';

  (async () => {
    await import(
      /* @vite-ignore */
      chrome.runtime.getURL("assets/main.ts.5f73d5ea.js")
    );
  })().catch(console.error);

})();
