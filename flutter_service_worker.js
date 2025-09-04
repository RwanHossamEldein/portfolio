'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8b2bd409cdce526104785f65fa65c0f2",
"assets/AssetManifest.bin.json": "286d51a14ab3bfe2b885b4f36def19b2",
"assets/AssetManifest.json": "d2e929afa08ed673914d733007a1bc5b",
"assets/assets/fonts/MajorMonoDisplay-Regular.ttf": "e7acc228230d22332855765872b0a3bf",
"assets/assets/fonts/PermanentMarker-Regular.ttf": "c863f8028c2505f92540e0ba7c379002",
"assets/assets/images/23521200-removebg-preview.png": "4372a0c188e840da7117dba64ac9a907",
"assets/assets/images/23521200.jpg": "063bd449f31299c0ee53b02f12eb997a",
"assets/assets/images/article-image-00.jpeg": "3a97f3649839f808f0bc256a137550e6",
"assets/assets/images/cs.jpg": "e2181d57b6db628aabeb4033ecbd4517",
"assets/assets/images/education.png": "836b4d6aa1649ce5b0255688fbd55afe",
"assets/assets/images/hackerrank.jpg": "763b36cca7b18b048c6bc82c749e8423",
"assets/assets/images/language.jpg": "5950d5a6bbc830a82ea9f5d608fc6be7",
"assets/assets/images/learn.jpg": "d1f4738c1ebb222312179376e33ad40a",
"assets/assets/images/Me.png": "b4b0377e62adf3c47f71792a8a9048bb",
"assets/assets/images/mobile.jpg": "7330291f2a87fbead18d4f15f44cb877",
"assets/assets/images/portfolio.jpg": "97695fafb0215f7ba6977423352eeb58",
"assets/assets/images/profile.jpg": "8bdd132e766f3de9753d2e958431b08a",
"assets/assets/images/software.jpg": "c14211f5272d8ee9bc54f79ae015d100",
"assets/assets/images/team.png": "aee4c9b356606f9808aeef4cef8ff395",
"assets/assets/images/technical-writer.jpg": "de33419a5eaaf7daea504893a9f0c166",
"assets/assets/images/testimonials.jpg": "ea25535f07c46e2893df7cbbe06c9790",
"assets/assets/images/thinking.png": "520a97cd49ec525796a212061fb1ab76",
"assets/assets/images/time.jpg": "c3ecdf58e3db0a7b9ba2f6cddc58f26d",
"assets/assets/images/tools.jpeg": "26aa75f1ba12cb4ad673508307e4fb93",
"assets/assets/images/WhatsApp%2520Image%25202025-08-22%2520at%252014.02.54_560759e4.jpg": "abe01fc7aff32404dabbbfc65e7e78a7",
"assets/assets/images/xo.jpg": "c09a8d25c52d134e2d59b8c24da81e3b",
"assets/assets/lotties/about.json": "57a10a3682649e86e0a7f002dcf7f5f8",
"assets/assets/lotties/email.json": "925f3644fdeb9ed4cb8602d27ab56ee4",
"assets/assets/lotties/Flutter.json": "07244784ffe1d15a66b2792fa9119a1a",
"assets/assets/lotties/GitHub%2520icon.json": "0c5084b47a7560d27bbab28736278eed",
"assets/assets/lotties/Linkedin%2520Icon.json": "7a575334914d0788f007ece5b7148308",
"assets/assets/lotties/Main%2520Scene%2520(1).json": "304367e2dab991598de3c49450f9a807",
"assets/assets/lotties/Main%2520Scene.json": "57a10a3682649e86e0a7f002dcf7f5f8",
"assets/assets/lotties/Phoenix.json": "9b2ebccab21e3ed5d64cbde3c7de6167",
"assets/assets/lotties/whatsapp%2520loop.json": "94e7858f184d819efcee8bb485a3e418",
"assets/FontManifest.json": "dd1a83615f2adf643ef22f6a37a5116a",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "84a01423fb6df57013cb6b1af35b1534",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "15d54d142da2f2d6f2e90ed1d55121af",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "262525e2081311609d1fdab966c82bfc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "269f971cec0d5dc864fe9ae080b19e23",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "04f24d5f028adb9fa853b6a2dd5aabaf",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ab52fa4329fc3a93833008ef07444569",
"/": "ab52fa4329fc3a93833008ef07444569",
"main.dart.js": "c3c8ff0e11a2d83346676fe1f5d2060b",
"manifest.json": "d454795ec90f470ee481df70d1276310",
"version.json": "12a92ef79835b40a6093bcc932b54998"};
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
