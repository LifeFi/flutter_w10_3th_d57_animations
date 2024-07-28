import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Map<String, dynamic>> gameData = [
  {
    "title": "데이브 더 다이버",
    "description":
        "신비한 블루홀을 배경으로 한 해양 어드벤처 게임 [DAVE THE DIVER]에 오신 것을 환영합니다.낮에는 아름다운 바닷속에서 물고기를 사냥하고, 밤에는 초밥집을 운영해 돈을 벌어 보세요.개성 강한 동료들의 이야기와 함께 펼쳐지는 바닷속 수수께끼. 신비롭고 새로운 재미가 기다리고 있습니다!",
    "reviews": "압도적으로 긍정적",
    "reviewsCounts": 99587,
    "genre": ["Simulation", "Strategy"],
    "developer": "MINTROCKET",
    "publisher": "MINTROCKET",
    "releaseDate": "2023-06-28",
    "postImage": "assets/images/dave the dive_post.jpg",
    "headerImage": "assets/images/dave the dive_header.jpg",
    "url": "https://store.steampowered.com/app/1868140/_/",
  },
  {
    "title": "The Wandering Village",
    "description":
        "더 원더링 빌리지는 방랑하는 거대한 짐승의 등에서 이루어지는 도시 건설 시뮬레이션 게임입니다. 정착지를 건설하고 거구의 짐승과 공생 관계를 형성하세요. 독이 든 식물에 오염된, 이 아름답지만 적대적인 포스트 아포칼립스 세상에서 거대한 짐승과 함께 살아남으실 수 있으십니까?",
    "reviews": "매우 긍정적",
    "reviewsCounts": 4769,
    "genre": ["Simulation", "Strategy"],
    "developer": "Stray Fawn Studio",
    "publisher": "Stray Fawn Publishing, WhisperGames",
    "releaseDate": "2022-09-15",
    "earlyAcessReleaseDate": "2022-09-15",
    "postImage": "assets/images/wandering village_post.jpg",
    "headerImage": "assets/images/wandering village_header.jpg",
    "url": "https://store.steampowered.com/app/1121640/The_Wandering_Village/",
  },
  {
    "title": "Dungeon Village 2",
    "description": "검과 마법을 사용하는 RPG 세계에서 몬스터와 함께 모험하며 나만의 마을을 만들자!",
    "reviews": "매우 긍정적",
    "reviewsCounts": 420,
    "genre": ["Simulation", "Strategy"],
    "developer": "Kairosoft Co.,Ltd",
    "publisher": "Kairosoft Co.,Ltd",
    "releaseDate": "2023-05-15",
    "postImage": "assets/images/dungeon village 2_post.jpg",
    "headerImage": "assets/images/dungeon village 2_header2.jpg",
    "url": "https://store.steampowered.com/app/1983710/_2_Dungeon_Village_2/",
  },
  {
    "title": "BALDUR'S GATE 3",
    "description":
        "일행을 모으고 포가튼 렐름으로 돌아가세요. 동료애, 배신, 희생, 생존, 그리고 절대적인 힘의 유혹을 다루는 이야기가 펼쳐집니다.\n여러분의 내면에서 불가사의한 능력이 깨어나고 있습니다. 머릿속에 심어진 마인드 플레이어 기생체에서 비롯한 힘이죠. 기생체에 저항하고 어둠에는 어둠으로 맞서거나 타락을 받아들이고 궁국의 악이 되어 보세요.\n디비니티: 오리지널 신 2의 개발진이 던전 앤 드래곤의 세계를 무대로 하는 차세대 RPG를 선보입니다.",
    "reviews": "압도적 긍정적",
    "reviewsCounts": 482562,
    "genre": ["Adventure", "RPG", "Strategy"],
    "developer": "Larian Studios",
    "publisher": "Larian Studios",
    "releaseDate": "2023-08-04",
    "earlyAcessReleaseDate": "2020-10-07",
    "postImage": "assets/images/BALDUR'S GATE 3_post.gif",
    "headerImage": "assets/images/BALDUR'S GATE 3_header.jpg",
    "url": "https://store.steampowered.com/app/1086940/Baldurs_Gate_3/",
  },
  {
    "title": "Octopath Traveler 2",
    "description":
        "이야기의 무대는 땅을 가르는 큰 바다를 사이에 두고\n동쪽과 서쪽에 대륙이 위치한 “솔리스티아”라고 불리는 지역.\n\n항로가 개척되어 커다란 배가 바다를 오가고\n증기를 사용한 신기술 발명에 꿈이 부푼 시대.\n\n번영한 산업과 문화에 가슴 설레는 이도\n전쟁, 역병, 가난으로 눈물 흘리는 이도 존재하는 세계.\n\n그 세계에서 당신은\n태어난 곳도 여행하는 목적도\n그리고 특기도 각기 다른 8명의 여행자 중 한 명이 되어\n자유롭게 여행할 수 있다.\n\n여행을 떠나자. 당신만의 이야기로……",
    "reviews": "압도적 긍정적",
    "reviewsCounts": 7605,
    "genre": ["RPG"],
    "developer": "Square Enix",
    "publisher": "Square Enix",
    "releaseDate": "2023-02-25",
    "earlyAcessReleaseDate": "",
    "postImage": "assets/images/octopath2_post.png",
    "headerImage": "assets/images/octopath2_header.jpg",
    "url": "https://store.steampowered.com/app/1971650/__II/",
  },
  {
    "title": "RimWorld",
    "description":
        "지능형 AI 이야기꾼이 주도하는 공상과학 정착지 시뮬레이터입니다. 심리, 생태, 총격전과 근접전, 날씨, 기후, 외교, 사람 사이의 관계, 예술, 의학, 무역, 그 외 많은 것들을 시뮬레이션하여 이야기를 생성합니다.",
    "reviews": "압도적 긍정적",
    "reviewsCounts": 149186,
    "genre": ["Indie", "Simulation", "Strategy"],
    "developer": "Ludeon Studios",
    "publisher": "Ludeon Studios",
    "releaseDate": "2018-10-17",
    "earlyAcessReleaseDate": "",
    "postImage": "assets/images/rimworld_post.jpg",
    "headerImage": "assets/images/rimworld_header.jpg",
    "url": "https://store.steampowered.com/app/294100/RimWorld/",
  },
];

class D66Screen extends StatefulWidget {
  const D66Screen({super.key});

  @override
  State<D66Screen> createState() => _D66ScreenState();
}

class _D66ScreenState extends State<D66Screen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
  );

  late final AnimationController _verticalPosition = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 700),
    lowerBound: 0.0,
    upperBound: size.height * 0.65,
  );
  late final size = MediaQuery.of(context).size;

  int _currentPage = 0;
  bool _isShowDetail = false;

  void _onPageChanged(int newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }

  final ValueNotifier<double> _scroll = ValueNotifier(0.0);

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      if (_pageController.page == null) return;
      _scroll.value = _pageController.page!;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _verticalPosition.dispose();
    super.dispose();
  }

  _toggleShowDetail() {
    if (_isShowDetail) {
      _verticalPosition.animateTo(
        0.0,
        curve: Curves.easeInOutCubic,
      );
    } else {
      _verticalPosition.animateTo(
        _verticalPosition.upperBound,
        curve: Curves.easeInOutCubic,
      );
    }

    setState(() {
      _isShowDetail = !_isShowDetail;
    });
  }

  _onVerticalDragUpdate(DragUpdateDetails details) {
    _verticalPosition.value += details.delta.dy;
    print(_verticalPosition.value);
  }

  _onVerticalDragEnd(DragEndDetails details) {
    const bound = 100;

    if (!_isShowDetail) {
      if (_verticalPosition.value >= bound) {
        _verticalPosition.animateTo(
          _verticalPosition.upperBound,
          curve: Curves.easeInOutCubic,
        );
        setState(() {
          _isShowDetail = true;
        });
      } else {
        _verticalPosition.animateTo(
          0.0,
          curve: Curves.easeInOutCubic,
        );
      }
    } else {
      if (_verticalPosition.value < _verticalPosition.upperBound - bound) {
        _verticalPosition.animateTo(
          0.0,
          curve: Curves.easeInOutCubic,
        );
        setState(() {
          _isShowDetail = false;
        });
      } else {
        _verticalPosition.animateTo(
          _verticalPosition.upperBound,
          curve: Curves.easeInOutCubic,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 700),
              child: Container(
                key: ValueKey(_currentPage),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(gameData[_currentPage]["postImage"]),
                    fit: BoxFit.cover,
                  ),
                ),
              )
              // .animate(
              //   target: _isShowDetail ? 1.0 : 0.0,
              // )
              // .color(
              //   end: Colors.black.withOpacity(0.8),
              //   duration: 700.milliseconds,
              // ),
              ),
          AnimatedBuilder(
            animation: _verticalPosition,
            builder: (context, child) => Transform.translate(
              offset: Offset(
                  0,
                  (_verticalPosition.value - _verticalPosition.upperBound) *
                      1.5),
              child: Stack(
                children: [
                  Opacity(
                    opacity: (1 -
                            (_verticalPosition.upperBound -
                                    _verticalPosition.value) /
                                _verticalPosition.upperBound)
                        .clamp(0.0, 0.7),
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: size.height * 0.9,
                    decoration: const BoxDecoration(
                        // gradient: LinearGradient(
                        //   begin: Alignment.bottomCenter,
                        //   end: Alignment.topCenter,
                        //   colors: [
                        //     Colors.black.withOpacity(0.6),
                        //     Colors.transparent,
                        //   ],
                        // ),

                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black.withOpacity(0.7),
                        //     spreadRadius: 150,
                        //     blurRadius: 10,
                        //     offset: const Offset(0, 50), // 그림자 위치 조정
                        //   ),
                        // ],
                        ),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 50),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${gameData[_currentPage]["title"]}',
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Reviews",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "${gameData[_currentPage]["reviews"]} (${gameData[_currentPage]["reviewsCounts"]})",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 40,
                            ),
                            Text(
                              "${gameData[_currentPage]["description"]}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 200,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _verticalPosition,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _verticalPosition.value),
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: gameData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // print(index);
                    // print(_pageController.page);
                    return GestureDetector(
                      onVerticalDragUpdate: _onVerticalDragUpdate,
                      onVerticalDragEnd: _onVerticalDragEnd,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          if (!_isShowDetail && _verticalPosition.value == 0.0)
                            IconButton(
                              onPressed: _toggleShowDetail,
                              icon: const Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          const Spacer(),
                          if (_isShowDetail &&
                              _verticalPosition.value ==
                                  _verticalPosition.upperBound)
                            IconButton(
                              onPressed: _toggleShowDetail,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ValueListenableBuilder(
                            valueListenable: _scroll,
                            builder: (context, scroll, child) {
                              final offset = Offset(
                                  (index - scroll) * size.width / 1.5, 0);

                              final opacity =
                                  (1 - (index - scroll).abs()).clamp(0.7, 1.0);

                              return Opacity(
                                opacity: opacity,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      clipBehavior: Clip.hardEdge,
                                      height: size.height * 0.7,
                                      width: size.width * 0.75,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: size.height * 0.35,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(children: [
                                              Text(
                                                '"${gameData[index]["title"]}"',
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                gameData[index]["description"],
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Reviews",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                "${gameData[index]["reviews"]} (${gameData[index]["reviewsCounts"]})",
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: double.infinity,
                                            height: 50,
                                            color: Colors.blue,
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "Add to cart +",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: size.height * 0.4,
                                      left: 40,
                                      right: 40,
                                      child: Transform.translate(
                                        offset: Offset(
                                            0, _verticalPosition.value * 1.05),
                                        child: Transform.translate(
                                          offset: offset,
                                          child: Stack(
                                            clipBehavior: Clip.hardEdge,
                                            children: [
                                              Container(
                                                height: size.height * 0.4,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.4),
                                                      blurRadius: 10,
                                                      spreadRadius: 2,
                                                      offset:
                                                          const Offset(0, 8),
                                                    )
                                                  ],
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        gameData[index]
                                                            ["headerImage"]),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xFF171D25),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10),
                                                          )),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 10,
                                                  ),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SvgPicture.asset(
                                                    'assets/images/logo_steam.svg',
                                                    width: 32,
                                                    height: 32,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          )
          // .animate(
          //   target: _isShowDetail ? 1.0 : 0.0,
          // )
          // .slideY(
          //   end: 0.6,
          //   curve: Curves.easeInOutCubic,
          // )
        ],
      ),
    );
  }
}
