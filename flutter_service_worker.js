'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "40571588ba87fc2cf6617ad8a445ca53",
"version.json": "7d5faa8b37b642d5e7afc952d0d03638",
"index.html": "2d4ee4a92b28451e34b9c76f08cee506",
"/": "2d4ee4a92b28451e34b9c76f08cee506",
"main.dart.js": "c51e7e69e471b20666014cdaaa97e224",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "0662612202e194c51596c1bc67293a5b",
"assets/AssetManifest.json": "6e7c0706832d7f91bbd1f50ce0c95814",
"assets/NOTICES": "e05b89ced98c3ec972213c46f1601610",
"assets/FontManifest.json": "baa2126fa2a5ae52ddd7770364463b1f",
"assets/AssetManifest.bin.json": "90217c19912c3d011fcb5c78189cabcf",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "7808dcd16acba3e84ea2d76b3458a3ad",
"assets/fonts/MaterialIcons-Regular.otf": "1a21ecccf90fc43b71e9d88e8082355f",
"assets/assets/icons/home_header_icon.png": "9a683fcdaaf64d9afc59465b8f1d0ec8",
"assets/assets/icons/fake_women.png": "0d47f9a0de6f5f2da78b721c4d383ae1",
"assets/assets/icons/home_header_icon.svg": "03d2636910c1e56a9e589e9d779072c6",
"assets/assets/icons/togethr_logo.png": "43182566700e3f9aaa25e33b46d0be8d",
"assets/assets/icons/togethr_primary_icon.png": "f0a3986c1819955ed1cd3bb05b0c2575",
"assets/assets/fonts/GalanoClassicAltBold.otf": "bdf3b8b1135b62448f120ae246a89185",
"assets/assets/fonts/GalanoClassicBoldItalic.otf": "efaa1438c3fbc6fb253d8dbe9e0097de",
"assets/assets/fonts/GalanoClassicBlackItalic.otf": "bc2fe0cb06e4a7f8a5f7f9d51b16105c",
"assets/assets/fonts/GalanoClassicItalic.otf": "78699bedfeea3c0d74a0424aa3da8f89",
"assets/assets/fonts/GalanoClassicAltBlackItalic.otf": "bade48b8bf0d1e7b22311d54760fbe65",
"assets/assets/fonts/GalanoClassicAltItalic.otf": "35d004e478a5e278ce8cbfc70d0cfa3c",
"assets/assets/fonts/GalanoClassicExtraLight.otf": "b15be13b3651a04b44f8c6b66de0db02",
"assets/assets/fonts/GalanoClassicThinItalic.otf": "b7a65a6ccb7d362b9434cfa1107b10cb",
"assets/assets/fonts/GalanoClassicSemiBold.otf": "27326f16b6165feb746174c285ece5a5",
"assets/assets/fonts/GalanoClassicAltLight.otf": "a3da33d9686ad433af9c8531f885fce3",
"assets/assets/fonts/GalanoClassicAltThin.otf": "3bb70150547caa7dd9ef821172571cbf",
"assets/assets/fonts/GalanoClassicAltBoldItalic.otf": "75b070e9d40de671ee5f9b969f4c57f8",
"assets/assets/fonts/GalanoClassicAltExtraLightItalic.otf": "7696e1c5b2750785b73c11ed88e7057f",
"assets/assets/fonts/GalanoClassicAltHeavy.otf": "8e8452f5439b591183f431791500752d",
"assets/assets/fonts/GalanoClassicAltExtraLight.otf": "49a21824d624395d68576ae25c973f96",
"assets/assets/fonts/GalanoClassicBold.otf": "c7ee393cae6bee58b4effdb901b6f02f",
"assets/assets/fonts/GalanoClassicAltThinItalic.otf": "c159bd7930ad9c21887a7a000f0407ee",
"assets/assets/fonts/GalanoClassicAltMediumItalic.otf": "a319bc0b34a2b05ff11bef8a015bae7f",
"assets/assets/fonts/GalanoClassicLightItalic.otf": "767977b126fb6531bafed55729fb0852",
"assets/assets/fonts/GalanoClassicThin.otf": "a45acc4e4da7c27022e033c4c43905f9",
"assets/assets/fonts/GalanoClassicHeavyItalic.otf": "ccb2467f3f6360d8d392e9f580fb802e",
"assets/assets/fonts/GalanoClassicSemiBoldItalic.otf": "e9b68bc1d5999f6d9d5c3853781ee9b2",
"assets/assets/fonts/GalanoClassicBlack.otf": "20992e459aa43565c87d02077f68bb56",
"assets/assets/fonts/GalanoClassicExtraBoldItalic.otf": "ba403028d8f6d6d679c2c9ec1a896ce0",
"assets/assets/fonts/GalanoClassicAltLightItalic.otf": "70c3d48b3f4ba27998662a664655dd67",
"assets/assets/fonts/GalanoClassicAltExtraBoldItalic.otf": "f165c898db362b64bb195b9749c679bc",
"assets/assets/fonts/GalanoClassicAltHeavyItalic.otf": "67e31215aee7b98c154e28a586296ffc",
"assets/assets/fonts/GalanoClassicExtraBold.otf": "89bc4ccb576a7de0d55fe17c20cad63d",
"assets/assets/fonts/GalanoClassicExtraLightItalic.otf": "3cafd9bb4e2d1e42402d7df35f23a908",
"assets/assets/fonts/GalanoClassicAltExtraBold.otf": "10580b6980a8a0cdd7fb0820152475f8",
"assets/assets/fonts/GalanoClassicLight.otf": "662bc400ce4677b3b923f73077af16be",
"assets/assets/fonts/GalanoClassicAltSemiBoldItalic.otf": "7029963fddca7c6d2214f41756ba7786",
"assets/assets/fonts/GalanoClassicAltMedium.otf": "45f9808d167b80ff73bf04e4973eaa7d",
"assets/assets/fonts/GalanoClassicMedium.otf": "ab4e52f63f4e25151c266cff18e83943",
"assets/assets/fonts/GalanoClassicAltRegular.otf": "55922ec700b807fdc0c5ded7b80a26a5",
"assets/assets/fonts/GalanoClassicAltBlack.otf": "8864e1dc5a3f84dec1b3b620f56ffa8b",
"assets/assets/fonts/GalanoClassicRegular.otf": "c975ad78cb19c19cc4a00a289af47656",
"assets/assets/fonts/GalanoClassicHeavy.otf": "0105ca5a6c38f540c1da6297a209c4fb",
"assets/assets/fonts/GalanoClassicAltSemiBold.otf": "058de1d934d22c48a14d31a7e00ef068",
"assets/assets/fonts/GalanoClassicMediumItalic.otf": "3b3e833ce75766685185dc9da94f07bf",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
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
