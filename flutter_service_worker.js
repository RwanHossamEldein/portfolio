'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "0beb0911c49063c70710c3c1363ccf48",
".git/config": "a906f05fec8f5b607556746e66c7e37b",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "114f1c39a6d910585d2182947db5b40e",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "ea2212e60234a33d26cc19ec144fbc2f",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "7198ede2a7b20e0c0f86f3f718128491",
".git/logs/refs/heads/main": "8e1c16876c27d152d6937fe3bd52c24f",
".git/logs/refs/remotes/origin/main": "fd79fa488926b3314fa61ed85f15eb08",
".git/objects/03/2fe904174b32b7135766696dd37e9a95c1b4fd": "80ba3eb567ab1b2327a13096a62dd17e",
".git/objects/0c/b9b9fcd4821c77ac97f002b8386ceba07d5576": "e61f212f7c90eab0e2537e5631254ae5",
".git/objects/0f/82a8360517d2c8b7d16e85434d40c6fb735954": "6a607eaa588a4312c03292ddbe569cfa",
".git/objects/10/5db69ee2629f30003c2a3573d78a135c99a69a": "55e0e526f7495fa5dab1dcd7cb337bdc",
".git/objects/1a/007d5f668cada31e731b0e9d1b30a7d0af45da": "fe7174d352d5f8f7b32709bf7501378b",
".git/objects/1c/10972eceaea5bc6ddf055d7e4caa75e01e6f8e": "0185c67dad999f49755704755e660c16",
".git/objects/1c/dcde27b06cff38ea4cba41b1dd62d0068ff4d7": "3cb75bf983367e0cf02d1e428bba2ebb",
".git/objects/1e/8897e6f0e76e3ec02b7b8be5bd2899ff97126b": "cd4f7cc2474ec5bc1a2395fa499da594",
".git/objects/22/91a8594d38dbaf9c5075ae1dc363f034649a25": "5716461cbc0ed1e10af8e2df2917dd57",
".git/objects/23/bf131d5c31c613ae6b05e2da32fc235f473327": "ed0f7f6f5c5ec800f4b85798f86fd6b8",
".git/objects/23/e97401b4f64f67dbc8f04588dd88bd2d2bd51f": "d175d91b3b2180a1f7615f7d7baed9da",
".git/objects/25/67fff92bc986fa8337d57f26248369af6fb1df": "d37ee20cfd2c2235aa07bfcf8faae871",
".git/objects/26/4f9c0e160caa60e444713160ceb631bca68b04": "336984d2c26165abc9ec48cff88d384c",
".git/objects/28/c3dfe3f3d197bfae7f429c0eaf74abaa14600e": "ad4d3c6cab199557524cdd352d9f4501",
".git/objects/2c/1c9a0242777de23ee2181c9c6808ff5cfefcfd": "39fe3dcf72b0cb25589347b278ab2829",
".git/objects/2f/36702ca6b4a00338a1651cc40d5f3605eb283a": "d8d82c284e2c83fd31e55a2b0a208c91",
".git/objects/2f/e25af21d5d9de895978117ab8064c698cabeac": "f2d53a33f8af32276bc3097b9568eeb0",
".git/objects/33/31d9290f04df89cea3fb794306a371fcca1cd9": "e54527b2478950463abbc6b22442144e",
".git/objects/33/6bff1cedbc876a01fd4a94e41eadea6c9079cc": "b6b87aea3c57a9e8b91f6ef2a664065b",
".git/objects/33/83b4ef664b98b16e7fadab60f0c37e45c200ed": "280fa53e4ce27e40d35f4ad1991e7533",
".git/objects/35/382f53d79b421a799cb27eb699924e49a016d2": "4dcc0446697f4ef14aa8360c1971b1f7",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/36/9e14e5459b98d374d3a15ef4f3ad1c6c7b6286": "86698e7f405770cd92af9176e94cf34b",
".git/objects/37/0dff4123dea8c591e0244a0d72961207b0205e": "c8ec8b658a017246a736ccea1eb828e0",
".git/objects/38/4109e59d0edc1a8e14dd9b32ee3573545ab64d": "fbac888e320182e2c14f7b32161ec939",
".git/objects/38/c875cc7640337c72c5d871284c8064663a86d5": "345822f559cd18cb1310a2649fae1beb",
".git/objects/39/c6e02f017c21d98477157a78ec890bd6f32314": "dc98a6942044969dde24b7d375e35a2c",
".git/objects/3a/1cc6a6110a73e9c1b1229e0c54460f9ea68250": "d46783fa8fd380a797d8e666e6f5bc2a",
".git/objects/3b/7ebd8ca39ddeb2b6d32c9a5e517ecfb4dd94f6": "be2be82252127c261dc975d77b2295fb",
".git/objects/3c/2e6e9c0faf44dd151b7436040877d19e9ee6e0": "16fd0094126ec6384e2488beb2ca42aa",
".git/objects/3d/7234e1226f7db9f7ac5c5b14877e1e529e5ab3": "9204f8c68dbf04569715b82d5e5807e3",
".git/objects/3e/24cfa4dbe6e20f5feba8abd255e7158b1209e7": "cc9eb35604dbecca08536f1315324de4",
".git/objects/3e/d0ddd7136a48520910e7e4bf665362facd60d4": "c8322669a78b5f07c75b1decdc05718d",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/43/ce4f4022262b969fa07610c0beb7ebd1fa1392": "0c394bba08362e609af9028c83b739fe",
".git/objects/47/c0e6ce88a5a3a7338deb1ac2fc9425fde2a099": "ab506b339ca443be7afb2690696d9761",
".git/objects/49/bcb7dd7462076401be597c69ae307c46011f0e": "1c76e9b359c0c5302ec0480e2e612191",
".git/objects/4a/c7a878216e11efe1187d5b905afe170d1d2c6b": "8dca273d2efedf2b445e55a312ee6250",
".git/objects/4e/49d5a41173e76a1b4f2a7ff2573840aaafb922": "0e0cc2bbfb3260c85e1106afee6babd2",
".git/objects/4f/02e9875cb698379e68a23ba5d25625e0e2e4bc": "254bc336602c9480c293f5f1c64bb4c7",
".git/objects/4f/da75c945302419b5e3d2323655a342953d0c58": "f5d0314b4fa04c7c0238bc3416f5f9a2",
".git/objects/54/2782e16efac871141c1385a0550328420e88a4": "da587c205e4d49b287e2b6e1a6d4fb01",
".git/objects/54/e2311d310a05a7a45651709c6c729f03919b00": "c5e3f53e72e5f0559fbaec204902eb5e",
".git/objects/55/47416ade04bba455dfa2a5826b82dcf33ae99d": "7ff11843268995685574aa519a23083e",
".git/objects/56/b9d9c8b32dc7bef92ca2a43f6d7a60748c17fb": "38ba1d6e349c139c9aa3e75969be6af6",
".git/objects/56/c7c73aebedff72b11ca1b7c14b7df2a94ab7ac": "123539bea5c971557714ee3390b71d43",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/58/a42fd33f13a862d0127763b975ea94102c4c51": "bfb005dc49381e63034ec9f59d570ead",
".git/objects/5a/16e089d6f98c59b888e73f5cb74ae256fc468b": "0b040756ed7430c40d4b7367556989e2",
".git/objects/5a/e4adfdfafaec7f17815402fb025090b31bb5a1": "b8537068d7365ce021dba43bb1c3b15b",
".git/objects/5c/c15ad557dfb3829236c7361f88afeb9e66266d": "389b7a33ffee4ea53320ba7f5f322301",
".git/objects/5d/647143e004b1f60011badda2b37a9f6f169079": "e2dfebee673b6c2698917c064ba451a5",
".git/objects/5e/9c62733b791d5702a62210a4819cbb1a95c3a7": "86e3d479af71c2405f716fea54ac7b94",
".git/objects/5e/ba35632159a5ec71de4209784afe66efa44abf": "4de5750cd6954008ba9b4896d896e440",
".git/objects/5f/79b8d01b2787da23611a3d08ed5414228850b6": "b8eb42138415da2dbed775dd03714da9",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/64/5116c20530a7bd227658a3c51e004a3f0aefab": "f10b5403684ce7848d8165b3d1d5bbbe",
".git/objects/65/41e9d87e656f7b341c853abb4ced9a6397ef39": "e73ebf51faff6dfce005f934b38c2ed4",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6b/ce1eb4588de3e4f660e1e319f432a695d2bebe": "9fa46b5430c3f49f4b084b4d7971fa3c",
".git/objects/6d/16823a027f46b61819b1bd95f5edef820442ca": "17ef15c562e586247bc23d9848df4b55",
".git/objects/71/0c8dca7cfded836c1c08cb16f1c0a8b0d04fc4": "ae4bcb1944c6506af4932a8e31cc96d6",
".git/objects/71/7548504fbbe13cf2f5f9086a5547b4fb504a08": "405e591b51deb2d314a8606a2257c0ae",
".git/objects/71/f01a9d5b20c371ed5cd3124904cd651f29cbc7": "c82e99a74be1cd4fa14edb5f409c30ad",
".git/objects/72/38bf257499dc5fb5a52ef6074c1a9551025723": "fb4816842640512883c21021f971957d",
".git/objects/76/38630324f3dc0319580afaf01a3ceb9464ace2": "1ed65b08043d2ee699382d3c65dbdd5f",
".git/objects/77/14fe7a736f3be4c6abd8bff45734bd5f8193ae": "d8b52610273c8d4bcddbcd0f3a3de3e9",
".git/objects/77/6961384d33f5861d01c45150fd525e6cdedc64": "e3a7e59f817049db7273121289e348de",
".git/objects/78/5e718fa1a52a0ac4d04e3e7fe79a174cc71961": "47636d67736ae5db81b4b1c0ba8b5ba1",
".git/objects/79/42341daa4f6afde70be145850d24f751175cbd": "1a606a54661a42e65cd1a3142f064138",
".git/objects/79/bef8ac2acbe1e7e8cbb8fd2e01bdf31c546b80": "2e5010f2cc823e4057a65afbb33724e6",
".git/objects/7c/22e37ed25e7c4ccc4c6e08f491c597e66e56de": "eb13cfde57e0f8518da57eb5a21900f4",
".git/objects/7f/67601c5ea862f24ee972a3f948bc721f932826": "cd44c76a6252ccd8e4f7223bf128a692",
".git/objects/7f/7bd1c77e91199bbd9826d5cbeefaba35cbb46c": "74e9437725ef078bf2e899f53cd1082b",
".git/objects/82/b0e0a6bb1a189da6142a71d5d7a33d0ca46109": "e078da580dd74132a0b1223889f75af9",
".git/objects/87/52b44df517a7c0b0e4e760800008bc9f6c0ed6": "1d4e8db885323b016b27ca40c5841952",
".git/objects/8a/2b073fa830a8a977339150a820360565e1b7c9": "ec4655379d323e9eaade2fb0e631acaf",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/988707826231bb4195184ac1df6b56a1ce05ef": "cc86310b415ba39f8f11654d53524510",
".git/objects/8c/2cfb0347a639b730554d1298cd08a8766587b8": "0324d1316324a1694eba83590c3adcd2",
".git/objects/8d/a55813000091d826f00639a85a9bbac01d11a7": "1697f2de0eb262f2771264263d9c4b75",
".git/objects/90/9f85ab6930f703ef73ece37b3559d8ef56b73f": "ed43d1a730160ea42f0688eafef6a9fd",
".git/objects/90/b73fb4db241a72372f3c88701647b9eaf706b9": "05efe1e3f088bc05992909f73d733ad0",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/93/43dbed08a53dded7b62d456ca13166811e8aab": "078ccfc1c5e1350b4318e72194c7c7d0",
".git/objects/93/be7fd9b9dcdd8564dafd7040a0c8c8f68d4080": "b27ff257c793a735fc818ff37f392ff9",
".git/objects/96/fa8afd97bb2270350df71dfa717493eab840dd": "9b9aa616ac820f33096abad3df85cd33",
".git/objects/9a/0cd75e65e256b6ea545053ee3968d5a28d89ef": "b4caf2d50b87eee952b8331023f5961c",
".git/objects/9c/20bac0d3ff1e96ea454cba7fcea2844888c98a": "ec2775a2399a64b926ebbce7ae1e5bb1",
".git/objects/9e/1e5dbd5f4deee7df8f2c091045e6c7caa52c01": "078a6b73bfaf3760e68d5e83440ab1e6",
".git/objects/9e/e1919dc230d3433cce79d137c37081c974034a": "7918dcf5b15c1ac607255918935ca48a",
".git/objects/a0/3d05a6a28e7642f7bc2401ee20b24122fbdc0c": "c5c1800c6bf34f55dd332c0154502a2c",
".git/objects/a2/e181588d4b59edd6f9790583e700449dacf8fc": "bece5443ac443e352fda4f5a95ce9516",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/a6/6ef4d49936733f44a481fc256fd598c82ae8d7": "011dbef7b76d54511efb9852801507b9",
".git/objects/a6/b0f73ea0c1f25f857fa6a18f953ac392399131": "8e2391924a13557ff5b33fef14f0c145",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/a8/919e18abd5ef4ca7e0428c2aaa836fd0492142": "0cd5fe5e057c8bbd5da4c23a0e6eface",
".git/objects/ae/5a8b940b4d070e4cada7657655aa0285e560c9": "21ee7ab5b32f14d1e75559e9a74175c0",
".git/objects/af/778304a2b2d9875e9ac7e2db04b874d8fb9c62": "a2d24065c9761154d08e6b57f479a33c",
".git/objects/b0/13a1d4aa698bf55c8b62a9ac1f2688e4e45cbd": "bf17f86f5a6d41517df65b77a1005222",
".git/objects/b4/7b124c7ad46eb658c84fa795d079baa7aaf37d": "d0d5b3780f03318ee228a8f1d93d3a1f",
".git/objects/b9/bcedd82e6fc8072251462a21d214c58b1ece5a": "8326edb620bf54116c0451824e0830e9",
".git/objects/bb/718ef262d58877854b722864ef77c0e70bb15d": "ada51d726df83e093671a0435d495ed7",
".git/objects/bc/fca3671756953dbbb4b0fd3751983cd23b18e4": "b0f23e5d22e048024cb0a4cb623dc415",
".git/objects/be/61887e8e2112367c9f8de59282866de6f6fbce": "3a04b04a65d9d98c37106950e9fe7459",
".git/objects/c1/632cb7bac24dac45f7adfefd2c2384a9a0fa09": "b7dae548870fb7b5d5b1f63202f90b3a",
".git/objects/c3/5418b86fb0c0e6ce21998f4f2c67c259c5ab90": "fa717dc64df9818533c15dede9534784",
".git/objects/c3/e157efab61bfabda2465bda3c33478e01797e8": "489f1ae82f891bf4ad14cb3f325c17de",
".git/objects/c4/313f4fd518e48270c9c94b9ffcc5abd37d3391": "ab5b3680897725750aaa05266a83132f",
".git/objects/c4/82e2fcd0c02ce8e1b033ea2f8defb9008f582c": "b894c5ccb4ed6f33b02f329d829b273b",
".git/objects/c6/8f77e13098ebd038df5dfa74ffd9cc4a2ccad5": "7946bcb3e08b8c83005dbb44f35955a3",
".git/objects/c9/9b33a6d9e5c6619e1322d856ae55497642b298": "fd903806a827d73bf062517fca31b21f",
".git/objects/cb/6b7a6137f8e01d986294349a6bc2fadc6d1849": "9df7d09456db8013ef6b3c4b23309f7a",
".git/objects/cc/555ddf501d846e8c45a98d68e4ef05bfa760bb": "3467f8dd2aa12ee4777c95b5dd8634c4",
".git/objects/ce/50c75bbbb0a0ffc7bc10ffdcdc7e6011f4f442": "967ea47549b5a3a0921ca3778f012d8c",
".git/objects/cf/669b2a0b15d5d887d2f81aea0000c9e870110f": "bb9b2445a7b94597ee0f4161ce98c837",
".git/objects/d1/a87f2d0c1c201ac747fb8f9cb619c46d03fa08": "2115d4e3d3a09f19d38d050a03ebf008",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/5b5031ca1b29baaab1b0f4d5983a156f089596": "75814a3909b4113bfe0cf2fb88a5c481",
".git/objects/d5/95bacb418f897c82b2ddffc46b75e061a62e89": "d0354343423bd29eb23f746bf5f044fc",
".git/objects/d5/b8dbdd8935a16b4e53a8654d915b8a10b721c3": "2ab60687194405662bc62eed7d9b9bcf",
".git/objects/d7/ff7171c35245c289fd3ccbbc0878cc5637bb17": "3a56839f5eed7aaf570d04cbaee7c8d2",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/da/1ace7d20fc8b2962365ae26bd05fcbd6e598b8": "f965528225963ec0c5aa325dfe18daed",
".git/objects/dd/5d31c6497410670194460f8cf0078f6f445edb": "68c2975b67314e06a9434d7b7c191ec3",
".git/objects/df/44073466b35f046eab29ae7adca6fb0fbb86b1": "a126ab117d623f9f2031f707c964babc",
".git/objects/df/f29b306a8f04a2f40be7c0a6bfc48dc373cdc7": "2161a2d0a1cafac6a0ae40f319134927",
".git/objects/e4/d2d09085d52b7d19c153e21b2c7e8fd4369474": "cd2b139297ca63e7d0e5a7a76b8dbc49",
".git/objects/e8/59358d6e5f41e336aae14509cf964aab85c077": "b9001cbf2abbb21399c1d4958d19ac9f",
".git/objects/e9/01fe6e0a383af728a756e6a97278188d76ef25": "4d1cf7b13e7a7e351474cb9c88e8e2c1",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/eb/b466296a4e0f4a1a9132dc03933c3894e54561": "eb51f8229ea3d8de32f58cecbfdd31fc",
".git/objects/ed/01a3fe8882a52314954c371452f7e3b43a7f96": "a1f80bd1303429f17aeaea547656640f",
".git/objects/ed/473228167cd7291d2092306b872799d699a240": "c3d24b632d6125ff5951976339d74e90",
".git/objects/ed/6e9a0353e3781fccc71cc5713d991464f2aeea": "1e47412df9292302fad164ae2c8c9b23",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/f0/aaf3f1b6b351e751ba8423428f5b8d3e8cf729": "333f82cc46e56073f16a1b5cb011387b",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/db57e0053adef9620f82475e7d5b7bafa32665": "ab8ef8265ee6a9b85c3539eac0253008",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f7/e09628ca323705184f6a7ef7b7e9a8b1a3f271": "25e6c2aa222470177e274884df1689e4",
".git/objects/f9/706a28d68c4b56e3bcafdcbc77c5646a823bc2": "e199e6d3c71fa0453ba0e5724704c77a",
".git/objects/fb/71c5b06169115f5fe4844ebda2ba7ce2ab1306": "aea62be80c86315dec04d8a17732e31d",
".git/objects/fe/6434dd042d6665f0a85dab44611c8ba793325d": "7c7097b34a4c1d280cdd22d245638d2c",
".git/objects/ff/e0eeb21aafb954eb26ba284055955f485f311a": "cf58ca7907fca5aa42ac7a362bb36039",
".git/refs/heads/main": "b32f2b81732d2543fd5443ba7cf770df",
".git/refs/remotes/origin/main": "b32f2b81732d2543fd5443ba7cf770df",
"assets/AssetManifest.bin": "734cafbb6fb9104fd51320471442ef9e",
"assets/AssetManifest.bin.json": "040079b882280faf7543a2925fbe19c7",
"assets/AssetManifest.json": "0b6fe70827aa5c44a30b68efc57e92c4",
"assets/assets/fonts/MajorMonoDisplay-Regular.ttf": "e7acc228230d22332855765872b0a3bf",
"assets/assets/fonts/PermanentMarker-Regular.ttf": "c863f8028c2505f92540e0ba7c379002",
"assets/assets/images/23521200-removebg-preview.png": "4372a0c188e840da7117dba64ac9a907",
"assets/assets/images/23521200.jpg": "063bd449f31299c0ee53b02f12eb997a",
"assets/assets/images/article-image-00.jpeg": "3a97f3649839f808f0bc256a137550e6",
"assets/assets/images/cs.jpg": "e2181d57b6db628aabeb4033ecbd4517",
"assets/assets/images/depi.jpg": "7cdbb94ac99bcb0a33837fd5a2abc951",
"assets/assets/images/education.png": "836b4d6aa1649ce5b0255688fbd55afe",
"assets/assets/images/faculty.png": "b54ec7c350ff6dae0d32a99cbea17384",
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
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "dd50fb8f9a577495443dcf7f49bdaca3",
"index.html": "e73c6222f995787f215dbec93f107fad",
"/": "e73c6222f995787f215dbec93f107fad",
"main.dart.js": "c108c917264a562c2ae0301ae6051de5",
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
