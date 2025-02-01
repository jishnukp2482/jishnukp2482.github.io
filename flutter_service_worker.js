'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "bbc6166ed971b02428da99f9d1b90a3e",
"version.json": "3aa6f9d0f6fe6fbbbe9359bcfbb80064",
"index.html": "28fb79e30958312d05932e4e2819e655",
"/": "28fb79e30958312d05932e4e2819e655",
"main.dart.js": "35432ce7df7c141ca92a7138c3601ba5",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "901d86fb8842ec0d66225a542131d689",
"assets/AssetManifest.json": "590f3e75bc877406ced001a2c47e1ead",
"assets/NOTICES": "298b05217386319af771162c4e283618",
"assets/FontManifest.json": "c1ab2f4ced149073aaf7d17bcffb2364",
"assets/AssetManifest.bin.json": "03452b61782c9d7c45d6f977d594d82b",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "3759b2f7a51e83c64a58cfe07b96a8ee",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/ionicons/assets/fonts/Ionicons.ttf": "a48ca9e5bcc89fccac32592416234257",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "8ff57ad4fe86098ce62be9c48312a211",
"assets/fonts/MaterialIcons-Regular.otf": "0e437157a31029b7d63e04c08613773a",
"assets/assets/resume/Jishnu_jp_flutter_Developer_new.pdf": "903a8b12404b648c64c6a92b844c886e",
"assets/assets/resume/Jishnu_Kp_Flutter-1.pdf": "cd3e43c69d6f865149cfb516be10842c",
"assets/assets/rive/error.json": "53a618b53a7cf3ed511e5431f8f5342a",
"assets/assets/rive/warning.riv": "046d3bdb681956d4d40fe4dd5fdce64e",
"assets/assets/rive/succes_rive.riv": "e9eccd75514829af54120c467d9f8615",
"assets/assets/rive/failed_rive.riv": "501b76fb0b7146dcb06c1026affcc19e",
"assets/assets/img/instagram-white.png": "411925922efa5b896c7da86db734e037",
"assets/assets/img/stackoverflow-white-logo.png": "c1fee19ffba0c310cd67fb859e63a272",
"assets/assets/img/Gmail_Logo_White.png": "1d6e923663d1341e1d0ba146b6face15",
"assets/assets/img/projects/sma_second_page.png": "16b62ccc0834fb030b39a0bacd80c9d5",
"assets/assets/img/projects/club_first_page.png": "4fb8674bcdf2ff3d7d3abee6c7d4af99",
"assets/assets/img/projects/gas_agenecy_first_img.png": "d5b34bd824f7ae81f06aebbfb2c6b725",
"assets/assets/img/projects/loan_recovery_second_page.png": "79a00b2054c002bf1bf22e0b535377cd",
"assets/assets/img/projects/mfi_second_page.png": "7a48efa4c2ee41775ff51f107328382a",
"assets/assets/img/projects/passbook_zeroth_img.png": "7356d3e311af2ffd77d385ee7765db96",
"assets/assets/img/projects/passbook_third_img.png": "14283b7712d35a831365ce370c3b28af",
"assets/assets/img/projects/micro_fin_first_page.png": "3490085787e51e54634cb519fc00728e",
"assets/assets/img/projects/agent_collection_second_page.png": "35060ae6419f326556052cfd5cbfb916",
"assets/assets/img/projects/kvgb_first_page.png": "dc572a65fdc142e6eb186b6d8ed24020",
"assets/assets/img/projects/agent_first_img.png": "3d549bd29f76932b924ba12af2272ac3",
"assets/assets/img/projects/club_second_page.png": "4fbbb960d2c006e66407319c438cd0cb",
"assets/assets/img/projects/loan_recovery_first_img.png": "c322015c3808a93dcacaf7aa9ca6da64",
"assets/assets/img/projects/passbook_first_page.png": "bf1186def11dfdfb10e757f948c6133b",
"assets/assets/img/projects/image_collection_img.png": "7d6a10a7d0822abe0128510584e9ad59",
"assets/assets/img/linkedin-app-white-icon.webp": "a645f5f07d8015ebff18f774b3de3f2d",
"assets/assets/img/github_logo.png": "0b89bd5052f25c83fc67fca2a98e17c7",
"assets/assets/img/whatsapp-white-icon.png": "ee255703beca2b28d1e1fe4e756ce387",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
