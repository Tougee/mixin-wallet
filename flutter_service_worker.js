'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "sql-wasm.js": "abe5911756c78d17a8b67a113f4a62b2",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"favicon.png": "a178a0e36195f0b78c7b568e190de751",
"favicon.ico": "54c7863196d02f95477efc0536d305f0",
"assets/NOTICES": "d9f08ed09fa61602628d9af312ae5a79",
"assets/FontManifest.json": "d751713988987e9331980363e24189ce",
"assets/resources/up_green.svg": "f4372a5b3611f3c10bd948c7c3ba9f8a",
"assets/resources/amplitude.svg": "7376a15c9ebb889cabd12131db60bfb5",
"assets/resources/ic_back.svg": "dd68af7c4a9580cf7b938727556158d2",
"assets/resources/receive.svg": "46ef2d45b43f47eb878724e5f746b588",
"assets/resources/ic_flag_sgd.png": "7abbc8ab3ae6b60069c7ed2f3dfb619b",
"assets/resources/ic_address.svg": "c64deca2aecb0438d345b7d31d0927cd",
"assets/resources/ic_flag_mxn.png": "2307ea7dff031b57c9bdab51910aa140",
"assets/resources/hamburger_menu.svg": "1c7add14859b38988f5e5c28a868d05a",
"assets/resources/auth_wallet.svg": "07294726c931fd5d9d1dad91a12e6016",
"assets/resources/toast_warning.svg": "34c4a49b123b5521c11698075182377f",
"assets/resources/selected.svg": "2ed1b8c365a2d2145424a33b348af9bb",
"assets/resources/ic_switch_small.svg": "59ccd069d8d995a1d06ac69fa83f708c",
"assets/resources/close.svg": "a89329e37befe7e9fb9c8cd8e01879fb",
"assets/resources/ic_flag_clp.png": "e4566353fdbf2203deccbf99e74653d2",
"assets/resources/ic_flag_cny.png": "9fb9f4f06086b34ae9a7f9a4f96a532a",
"assets/resources/ic_flag_pln.png": "6d4746ef5152211ee156caa3638b8199",
"assets/resources/ic_save_album.svg": "b1fa666b71a145a2e1b4e5cee94ac0f1",
"assets/resources/ic_flag_vnd.png": "13216530f9d663f557220a6f3edfc4b0",
"assets/resources/ic_notice.svg": "cd3c9b396609605dd35ab1ace7cdeabf",
"assets/resources/toast_succeed.svg": "bca092ae6f5bcad746b2d5b36b6f581f",
"assets/resources/ic_flag_chf.png": "8f76cd1386b5a6c2223080bd239d6178",
"assets/resources/ic_flag_myr.png": "ae6e20af0c0b4eb5e24eb0d2cbd9d269",
"assets/resources/auth_bg.webp": "651bc85b8e5fbfcc7dbdf1f02f3cc8f1",
"assets/resources/toast_error.svg": "eedb087fff0094e1afba8c023179c6d4",
"assets/resources/ic_flag_inr.png": "d72512df6f8e2155d7c16bad639f2d57",
"assets/resources/transaction_deposit.svg": "e40c95a372bf4c794a56b546f9e7314b",
"assets/resources/mixin_logo.png": "f1b1df4cd47457d8d9b5355e7e9af30b",
"assets/resources/down_red.svg": "937b87e51a332e4305e70302fd25bdd1",
"assets/resources/ic_flag_eur.png": "979154bb0e1090551472d87aaab23b6b",
"assets/resources/ic_flag_aud.png": "2e60a746242cceee376a4482bba06835",
"assets/resources/ic_flag_gbp.png": "cd0a6332ff4c62aa61644fb90d9a7ced",
"assets/resources/ic_scan.svg": "8d83fbcbd629f92b2ec61eec331cb59f",
"assets/resources/ic_authentication.svg": "257078d4fc121c5a265989a930f65f20",
"assets/resources/scanning.svg": "bf0d4208341dfe902e69f4508d65c66d",
"assets/resources/ic_flag_sek.png": "d18454907e02862780d803816c5b6a9f",
"assets/resources/amplitude_none.svg": "69d7288e3ee0f45d5350143ea1ab1575",
"assets/resources/all_transactions.svg": "761b3863db5d2c95292e189aa5ea9054",
"assets/resources/transaction_withdrawal.svg": "a2894ec51aee75e5cfc0eaa166f5ac0c",
"assets/resources/ic_arrow_down.svg": "d39c42309d5129729be1bca1945848b6",
"assets/resources/ic_flag_hkd.png": "ba8675ee953847e2887abef97a15f97e",
"assets/resources/alert.svg": "5375740da103484cb0d7af08dbc275ad",
"assets/resources/ic_check.svg": "a79328c7cfbc8a30af173f6b0fc705e3",
"assets/resources/ic_flag_brl.png": "7b18b9627eaa47dc948c71daec30f732",
"assets/resources/ic_flag_dkk.png": "5827ecee7a324883334247d044a1e8e3",
"assets/resources/ic_flag_thb.png": "75e1b64b87a4e896e239cb72dd9d2aff",
"assets/resources/ic_flag_cad.png": "f3ebf8b12aa93bb84644ca2fc084bf89",
"assets/resources/ic_flag_nok.png": "6ef95a1048a39d5e09010b23c9d4afb3",
"assets/resources/unauthorized_contact.svg": "b1668611eb6ca443176d00015dc24998",
"assets/resources/ic_search.svg": "e1572f3289d2c5ba3ed77e79bbe95743",
"assets/resources/ic_flag_twd.png": "c80a1c67f054cb0b68945fbb70e0270c",
"assets/resources/ic_flag_aed.png": "66a18c4527dff9906229fd819f280c34",
"assets/resources/ic_question.svg": "2defde739706e069a353c32022065214",
"assets/resources/ic_scan_black.svg": "11a389714e1d6cf567934041b2d52a1d",
"assets/resources/transaction_net.svg": "7b10572442ae31370617218b479b11a7",
"assets/resources/ic_set.svg": "37748d00b1a57bfea75c44c61e25981c",
"assets/resources/ic_flag_php.png": "831c5ba32aa57a33ecf0d1094e8b7b40",
"assets/resources/hidden.svg": "76c9de014d937432761f6bbe3c6f94bb",
"assets/resources/ic_switch.svg": "a5b6548add327000da1ebb7d3239fea7",
"assets/resources/empty_transaction_grey.svg": "780f00ced370c7fadce1e49057fee27e",
"assets/resources/ic_flag_cop.png": "e78ada5297af2994764b07aec6818094",
"assets/resources/transaction_pending.svg": "c926a394b107c796a06f10b37ba5e7ce",
"assets/resources/amplitude_decrease.svg": "7988b379adaecc81045ea92ab41ca849",
"assets/resources/ic_file.svg": "5e5634e88ab3a9815f69253114df63b0",
"assets/resources/hide_assets.svg": "971758efaade317f61c4f4c34f2b855e",
"assets/resources/delete_arrow.svg": "ab56c71b61e0ebb9bd43c81745ac8257",
"assets/resources/ic_flag_nzd.png": "81573a782934bb2d5ff7263cd3fa0512",
"assets/resources/ic_search_small.svg": "58f5953ab3e20a3cf10ea7643992012b",
"assets/resources/ic_apple_pay.svg": "09c2c10d32b5f3d10acf18eee83fc142",
"assets/resources/ic_copy.svg": "b1d1a6c14d9d276059787dd35de33f2b",
"assets/resources/ic_double_arrow.svg": "e8fab991c604ba15433b5e9c4665d6cf",
"assets/resources/transaction.svg": "780363b193efcfae942100680787849c",
"assets/resources/ic_flag_usd.png": "3a724eca86b77b88f4d655fa0d969039",
"assets/resources/ic_flag_ars.png": "577b723eb5f2903efd25d3e06bf3d178",
"assets/resources/amplitude_increase.svg": "1e94749b505b4adb36dd9ee0c7de49d1",
"assets/resources/ic_delete.webp": "0d76e1b66a02f7743656a1530ee786d1",
"assets/resources/setting.svg": "d84aa3873b1f02b9c57daa23924f2a16",
"assets/resources/ic_flag_jpy.png": "a1562c8d2cbf159123b643b9aa3b680d",
"assets/resources/filter.svg": "30a7459598c910c05c8b8ea5e1a9c864",
"assets/resources/ic_warning.svg": "1735812e4a5ffcbf1998e87711f3d893",
"assets/resources/ic_circle_close.svg": "5f104c305ba1c111495f3b532e11a849",
"assets/resources/logo.webp": "1b1f5a7107449e904bc7914e43dbcc11",
"assets/resources/ic_flag_ils.png": "0ede61d4448a7148707874ddce4a4085",
"assets/resources/send.svg": "2dc991531fd515067448d19a5f6a6569",
"assets/resources/ic_flag_isk.png": "3af12825f062419155f39670f3022efc",
"assets/resources/ic_flag_czk.png": "bf1ee1259a8d77298ae2fb1dff1528b6",
"assets/resources/ic_flag_krw.png": "b1f5a2d2abfb3284b17ac69c57e45b78",
"assets/resources/ic_flag_zar.png": "fc1a67beabcee7f942017675ee0b60fc",
"assets/resources/back_black.svg": "102c5db9bb2822932a3e8a8ff7ec2915",
"assets/packages/web_qrcode/assets/html5-qrcode.min.js": "b83f553f660e4ad4300cb00cbf06b0b4",
"assets/AssetManifest.json": "f155c925710dd9aabb51164991c05a17",
"main.dart.js": "03d1cd22b9f91039c7beeb3415e6f8ef",
"manifest.json": "cf00c1aa186a2696a55e049addca4450",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"main.dart.js_1.part.js": "5b50333f76926fcabd808377f88d08a6",
"main.dart.js_2.part.js": "52a4bade01e32a44f45d4ba84a6d6076",
"main.dart.js_3.part.js": "ea8f20e0bbd48ddc26d29aba49794794",
"telegram-web-app.js": "84f27950171a54d505d0680519338416",
"transaction.js": "c53aadcb95e5d518eaec8fca3ec651d6",
"index.html": "904113b7f263210393bc37d078791c90",
"/": "904113b7f263210393bc37d078791c90",
"icons/Icon-192.png": "996aa913b8d12c3de6227198cd7ee699",
"icons/Icon-maskable-192.png": "57097864f39b05a72d50d0a55235ce05",
"icons/Icon-maskable-512.png": "8ef036c1c95163a97e9e1c21d798ade3",
"icons/Icon-512.png": "da6ec90454ffac5bad7274eb43a00a39",
"sql-wasm.wasm": "9c67691cdfea004dda62090e49940eac",
"manifest-extension.json": "8d0f8fd72f6d2b26847bc6c1b2636775",
"version.json": "6eaaa57fb4f293d6fc39a18628ee3b0d"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
