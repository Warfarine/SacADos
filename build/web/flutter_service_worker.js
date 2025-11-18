'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "0d5eaa692e73357ec41575c80408be10",
"assets/AssetManifest.bin.json": "1027f1e4c1fd0321d9e98c35c1206511",
"assets/AssetManifest.json": "491e922463e7ac8da5066b2b5bf4d801",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "dc4ae7249d5b251320a834c6e275d824",
"assets/images/band-aid.png": "0ad21b25f10a2b021fb163ad7e88b4e1",
"assets/images/bandage-roll.png": "40421e1569e359d3b8899606b1fdfb65",
"assets/images/bite.png": "9e3d18f9bb80527e0e90bfd9e4e33136",
"assets/images/body-lotion.png": "2d55bbb9314619c91e4c883fa745ebc9",
"assets/images/burn.png": "c16ab5061281a9ab382b21e95b404ca0",
"assets/images/cut.png": "e34a830aa0726c63fe7cbca9c1e7d748",
"assets/images/cutefeet.png": "2a857e3edf103fa412275389c98d23f1",
"assets/images/cutenail.png": "f0423a3f3c415082f92b730568f94523",
"assets/images/diabetic-foot.png": "0cc82bdbf7ae4bc5cc9ceddd5dd2d83f",
"assets/images/feet_instructions/blister.png": "fe1da0568ef8ebf1da9930ea3bc2befb",
"assets/images/feet_instructions/callus.png": "d9bc77e5a17a22b93f1d4abadd5ab913",
"assets/images/feet_instructions/footfungus.png": "e4bbd3bec8b7970fdf57cbad451b6f44",
"assets/images/feet_instructions/howtocut.png": "472e35c8f5cf1725138608cf495fd147",
"assets/images/feet_instructions/ingrownnail.png": "2a266a5d030ad815b5479055a6cd5e9b",
"assets/images/feet_instructions/nailfungus.png": "2015a3e42c7a8a190150fc8f282480c9",
"assets/images/feet_instructions/trenchfoot.png": "c0c7514f158dff65c28a53b669beb6c4",
"assets/images/first-aid-kit.gif": "1654731d235e9dc6eb8a8c89b50110a0",
"assets/images/frostbite.png": "4acd043aeb183b7011baf9f5ad0e7a27",
"assets/images/graphic_images/1degree1.png": "b7065b323231133b03cd17799694bc8b",
"assets/images/graphic_images/1degree2.png": "fcda66e376cf87662a69bfed2518c7b8",
"assets/images/graphic_images/1degree3.png": "e6322df01c843451d23994634daa2f17",
"assets/images/graphic_images/2degree2.png": "acb39c30a663ca816181c407821f1d37",
"assets/images/graphic_images/2degree3.png": "7c08fa37ae7ca9a203827e68656a7644",
"assets/images/graphic_images/2degree4.png": "ff3dba5130bba457e00be273a78c549e",
"assets/images/graphic_images/2degree5.png": "225f58108c03ec0be97d219cc427db78",
"assets/images/graphic_images/3degree1.png": "c991ac73b1d79f35e3e36c989fef0d73",
"assets/images/graphic_images/3degree2.png": "10bfa9c6675011128bd92b25f60f894b",
"assets/images/graphic_images/3degree3.png": "4f569de259c6b50b58b3bd397b1b6980",
"assets/images/graphic_images/athletefoot1.png": "6d149005ad7de1d8d801120bbf2e70b9",
"assets/images/graphic_images/athletefoot2.png": "bfcc2e39f6420c39b789efc0757f689c",
"assets/images/graphic_images/athletefoot3.png": "e17d6ba558a55a7210bd57be3a0b7149",
"assets/images/graphic_images/athletefoot4.png": "70941a2add450e820275fa403b5f9db7",
"assets/images/graphic_images/athletefoot5.png": "f9f7f5c314b74d5712b5beba8bf0227a",
"assets/images/graphic_images/athletefoot6.png": "5916727086bee16e525b8a4669f393b9",
"assets/images/graphic_images/bite1.png": "00bd527901220ab81ec4f61b270f57a6",
"assets/images/graphic_images/bite2.png": "3118a13b250bfc8f021792ad525a69aa",
"assets/images/graphic_images/bite3.png": "67c3a39972b2934a6f24c6a69bbccc14",
"assets/images/graphic_images/blister1.png": "2eb401ea332ddf069777982b23ef37b3",
"assets/images/graphic_images/blister2.png": "3d3a5647abd4219c45a75971eb46be00",
"assets/images/graphic_images/blister3.png": "15e046070daaada1a8e4c4b3c44484bc",
"assets/images/graphic_images/blister4.png": "54f127dad2afe645beb7ff4f26593f1e",
"assets/images/graphic_images/blister5.png": "2d6f40b44a21cf50b8e50ffc121e298c",
"assets/images/graphic_images/blister6.png": "d2a79ddf56d14a2e1b9203a22b692ff4",
"assets/images/graphic_images/cc1.png": "cf0ab8dcf085406a94bb21e9e046538d",
"assets/images/graphic_images/cc2.png": "166380086b3c7b68469e3d0850acf978",
"assets/images/graphic_images/cc3.png": "cd34ca3dcbf941c16bb67b47d1f4c3b5",
"assets/images/graphic_images/cc4.png": "298a5fa68a58db289932c3d914401328",
"assets/images/graphic_images/cc5.png": "a13fcfcac731e5c5ffc9729ac127b97d",
"assets/images/graphic_images/cc6.png": "a5aa2ec593e04e7bd81ec4a151f544af",
"assets/images/graphic_images/degree1frost1.png": "b426a9558ab5824521440afbddca17d8",
"assets/images/graphic_images/degree1frost2.png": "72f890e0241d921376e3053f50914987",
"assets/images/graphic_images/degree1frost3.png": "1c6965ff98f3e9d414a4ca396493e598",
"assets/images/graphic_images/degree2frost1.png": "091c9edbecdadc0fb33da1f0e56db3e4",
"assets/images/graphic_images/degree2frost2.png": "d7c59f85bf36ac08bfed5a5253b611ae",
"assets/images/graphic_images/degree2frost3.png": "a344446e24e2527950edda32d2212721",
"assets/images/graphic_images/degree3frost1.png": "9b121e872ea64b88c927454532efa5da",
"assets/images/graphic_images/degree3frost2.png": "f59a7bec91762baeb053552949b30fad",
"assets/images/graphic_images/degree4frost1.png": "f1f27eecf9141c58bbe2576a12c30827",
"assets/images/graphic_images/degree4frost2.png": "7d2002acf53f0fec9a2fa64985a80baa",
"assets/images/graphic_images/dischargeClear.png": "04621096a0733ac5f384b005d92f86ac",
"assets/images/graphic_images/dischargePink.png": "bcc8c8e9e36470cae1d7bd7aaf0e350b",
"assets/images/graphic_images/dischargePus.png": "010c481779f898e5fbdd32574f23aee5",
"assets/images/graphic_images/dischargeRed.png": "a67bd973b7c7596007da2e7d6f9164e4",
"assets/images/graphic_images/immersionfoot1.png": "dffa6b4d75f7616c8d5832e447cb9630",
"assets/images/graphic_images/immersionfoot2.png": "db40b558fe3cb31f9a967aecca7b328d",
"assets/images/graphic_images/immersionfoot3.png": "7022eae9d6eba3e077d9d4ee84ce66a3",
"assets/images/graphic_images/immersionfoot4.png": "44ff58a65dc4ec6fb8e585fb51c2c4f0",
"assets/images/graphic_images/immersionfoot5.png": "f8c4199541c57e3007b5eea2998fd43d",
"assets/images/graphic_images/infection1.png": "1709baf85ac7e3a976f27575716adbc9",
"assets/images/graphic_images/infection2.png": "24c1f90f853283dc9efe0ac1d3dfee1e",
"assets/images/graphic_images/infection3.png": "4fa15387736aa657118180de042142ea",
"assets/images/graphic_images/infection4.png": "6ace06e9ad92a698562c6b6be30ecbb9",
"assets/images/graphic_images/infection5.png": "bdea2eda338e51f18aefc93a0fd84480",
"assets/images/graphic_images/infection6.png": "29f19ac2fa314435c305472bd36d67bc",
"assets/images/graphic_images/ingrownnail1.png": "34d902fe527993f06520f6689ff9ba81",
"assets/images/graphic_images/ingrownnail2.png": "02a08810bcc2667282d15325d75e6e71",
"assets/images/graphic_images/ingrownnail3.png": "b096b1cf7e889f81af9ab5638c41c88f",
"assets/images/graphic_images/laceration1.png": "78f14b6339050713e5c44d5a3a236be1",
"assets/images/graphic_images/laceration2.png": "09c77bcdeed974af268862adf56c7540",
"assets/images/graphic_images/laceration3.png": "76c240d45ee8f062551ece7d6de029c3",
"assets/images/graphic_images/minorcut1.png": "1cf709c92abe310f8f28f152d356c7f7",
"assets/images/graphic_images/minorcut2.png": "d2c89453d6490479f1440bb989bc768d",
"assets/images/graphic_images/minorcut3.png": "a60887be240dd7378b22af36121642f8",
"assets/images/graphic_images/minorcut4.png": "8d438fcbdafb0d588f29f35989b3f6b5",
"assets/images/graphic_images/minorcut5.png": "104e3e293ce05ba2f108a73095184852",
"assets/images/graphic_images/nailfungus1.png": "17ab83113a45be6c3509091382bc6562",
"assets/images/graphic_images/nailfungus2.png": "002a06c4cf535e69632796efbf47b4af",
"assets/images/graphic_images/nailfungus3.png": "a4fdc95d402402d8d97d40471d760868",
"assets/images/graphic_images/nailfungus4.png": "4d890169b94e7db32257d7fe197edeb2",
"assets/images/graphic_images/sunburn2.png": "eec1a35cbb87cda4cf4d206b8d3d7582",
"assets/images/graphic_images/sunburn3.png": "ed014a495816aa28af60e4265a04abd9",
"assets/images/graphic_images/sunburn4.png": "c175e2542c45dcb3eb274353b524567e",
"assets/images/graphic_images/sunburn5.png": "3222ceed9456eceb0942d22610d9b9f7",
"assets/images/graphic_images/sunburn6.png": "d206117bc616b9556102ab350788e851",
"assets/images/graphic_images/thaw.png": "ae55d5346da3b33e63f70a7264005d1c",
"assets/images/heal.png": "5d8b8604127b75c2988c6622b1eac7da",
"assets/images/infection.png": "81df151713cc380a3e47c7827708e734",
"assets/images/prevention.png": "97d076ad2daa610fc722a46ac5c30868",
"assets/images/question.png": "33fc0ead59543e1548feb2d457a8f6e7",
"assets/images/rash.png": "59add3ca57396fe3a27a7397660d5308",
"assets/images/summer.png": "d25e53faf07918c3d4edd8b8333571f2",
"assets/images/sunburn.png": "52e8c674cd5c9eed32f3945b07fe6b5b",
"assets/images/symptoms.png": "b12b1a2f893ee0e2cb446f9f21281e0a",
"assets/images/treatment.png": "5da490efa7d8ecb4ba1162f5442e038b",
"assets/images/warning.png": "29f782759422f9f253b6afad2b2c7b31",
"assets/images/winter.png": "12fe2400e2d88eb6b46dc185d922b182",
"assets/images/wounds_instructions/bandage.png": "9b5f90990a195a159cba7b5e5a680801",
"assets/images/wounds_instructions/bitesimple.png": "741c03f0b889ff3d4b7084eae50f16d2",
"assets/images/wounds_instructions/burn-clothes.png": "185e704d8a6ae6987cbd2d9af40b1c60",
"assets/images/wounds_instructions/compressandroll.png": "e2cc50a87ceb27b6f605f3ff72ee6e23",
"assets/images/wounds_instructions/compressandtape.png": "771062d898c7ef1d64d47fc9a2b42562",
"assets/images/wounds_instructions/cool-down.png": "b0557df5a97ba055759b1855616c46c7",
"assets/images/wounds_instructions/dirtyhand.png": "942f2cb23cce6ca9ef80dec4531d1b35",
"assets/images/wounds_instructions/discharge.png": "cdde2433c4be1a205e17e61eb1b51918",
"assets/images/wounds_instructions/donotuse.png": "662cad6fb77562905190090040a71df4",
"assets/images/wounds_instructions/dressinghowto.png": "9b399ad9a23beb8d9747421d9854b89b",
"assets/images/wounds_instructions/drying-hands.png": "55a45e795a32a084bc67ad45e343fee7",
"assets/images/wounds_instructions/hand-washing.png": "a84b3fdacc781036d5b4af9db5d15792",
"assets/images/wounds_instructions/hospital.png": "11efbf1a507148bedc57316077d0a74a",
"assets/images/wounds_instructions/magnifier.png": "225c5dbb2b555fc2aaee18e69b68f911",
"assets/images/wounds_instructions/subcutaneous.png": "57b94580d3fd5cb8788ba9456c474e27",
"assets/images/wounds_instructions/toomuchbleeding.png": "80b46afa0828a27fe94503027daa526f",
"assets/images/wounds_instructions/wound_size.png": "ca4622c07502d72b7dd43af067bbb7b4",
"assets/NOTICES": "90f594d135e50aa0f29908e8ad8e9966",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "4235e34b924bfc39440138910a8f8a55",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "aa95b0bf76d0d7432471c0af870e9e20",
"/": "aa95b0bf76d0d7432471c0af870e9e20",
"main.dart.js": "a2f0ee5a642924d5b165463a79dc1794",
"manifest.json": "c4cd1337db9da283a8433de90fb18b19",
"version.json": "f87e4c94597958d2930a763a16a7e3e0"};
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
