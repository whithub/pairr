class Seed

  def run
    create_users
    create_languages
    create_user_languages
    create_matches
  end

  def create_users
    User.create(
      github_name:"121watts",
      uid: 7582765,
      image_url: "https://avatars.githubusercontent.com/u/7582765?v=3",
      # html_url: "https://github.com/121watts",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"alanbsmith",
      uid: 4818182,
      image_url: "https://avatars.githubusercontent.com/u/4818182?v=3",
      # html_url: "https://github.com/alanbsmith",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"allisonlarson",
      uid: 7552541,
      image_url: "https://avatars.githubusercontent.com/u/7552541?v=3",
      # html_url: "https://github.com/allisonlarson",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"AndyDangerous",
      uid: 2694765,
      image_url: "https://avatars.githubusercontent.com/u/2694765?v=3",
      # html_url: "https://github.com/AndyDangerous",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"BobGu",
      uid: 4348166,
      image_url: "https://avatars.githubusercontent.com/u/4348166?v=3",
      # html_url: "https://github.com/BobGu",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"chadbrading",
      uid: 6863100,
      image_url: "https://avatars.githubusercontent.com/u/6863100?v=3",
      # html_url: "https://github.com/chadbrading",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"coreyd303",
      uid: 6662565,
      image_url: "https://avatars.githubusercontent.com/u/6662565?v=3",
      # html_url: "https://github.com/coreyd303",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"emilyadavis303",
      uid: 7103421,
      image_url: "https://avatars.githubusercontent.com/u/7103421?v=3",
      # html_url: "https://github.com/emilyadavis303",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"ericfransen",
      uid: 5271281,
      image_url: "https://avatars.githubusercontent.com/u/5271281?v=3",
      # html_url: "https://github.com/ericfransen",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"GusVilla303",
      uid: 6902951,
      image_url: "https://avatars.githubusercontent.com/u/6902951?v=3",
      # html_url: "https://github.com/GusVilla303",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"Hilaryous",
      uid: 5042071,
      image_url: "https://avatars.githubusercontent.com/u/5042071?v=3",
      # html_url: "https://github.com/Hilaryous",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"HoracioChavez",
      uid: 3926939,
      image_url: "https://avatars.githubusercontent.com/u/3926939?v=3",
      # html_url: "https://github.com/HoracioChavez",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"jcasimir",
      uid: 43102,
      image_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      # html_url: "https://github.com/jcasimir",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"marcgarreau",
      uid: 3621728,
      image_url: "https://avatars.githubusercontent.com/u/3621728?v=3",
      # html_url: "https://github.com/marcgarreau",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"tanmdoan",
      uid: 7057689,
      image_url: "https://avatars.githubusercontent.com/u/7057689?v=3",
      # html_url: "https://github.com/tanmdoan",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"timproctor",
      uid: 5150213,
      image_url: "https://avatars.githubusercontent.com/u/5150213?v=3",
      # html_url: "https://github.com/timproctor",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"tyrbo",
      uid: 2217533,
      image_url: "https://avatars.githubusercontent.com/u/2217533?v=3",
      # html_url: "https://github.com/tyrbo",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"wfro",
      uid: 6454987,
      image_url: "https://avatars.githubusercontent.com/u/6454987?v=3",
      # html_url: "https://github.com/wfro",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"worace",
      uid: 1227440,
      image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      # html_url: "https://github.com/worace",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"a6ftcruton",
      uid: 5419731,
      image_url: "https://avatars.githubusercontent.com/u/5419731?v=3",
      # html_url: "https://github.com/a6ftcruton",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"awortham",
      uid: 6271986,
      image_url: "https://avatars.githubusercontent.com/u/6271986?v=3",
      # html_url: "https://github.com/awortham",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"glenegbert",
      uid: 5980245,
      image_url: "https://avatars.githubusercontent.com/u/5980245?v=3",
      # html_url: "https://github.com/glenegbert",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"ianderse",
      uid: 5242189,
      image_url: "https://avatars.githubusercontent.com/u/5242189?v=3",
      # html_url: "https://github.com/ianderse",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"jcasimir",
      uid: 43102,
      image_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      # html_url: "https://github.com/jcasimir",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"kavitasa",
      uid: 1514862,
      image_url: "https://avatars.githubusercontent.com/u/1514862?v=3",
      # html_url: "https://github.com/kavitasa",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"lukeaiken",
      uid: 3201898,
      image_url: "https://avatars.githubusercontent.com/u/3201898?v=3",
      # html_url: "https://github.com/lukeaiken",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"rNavarrete",
      uid: 3431580,
      image_url: "https://avatars.githubusercontent.com/u/3431580?v=3",
      # html_url: "https://github.com/rNavarrete",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"smbsimon",
      uid: 5553382,
      image_url: "https://avatars.githubusercontent.com/u/5553382?v=3",
      # html_url: "https://github.com/smbsimon",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"worace",
      uid: 1227440,
      image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      # html_url: "https://github.com/worace",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"chandracarney",
      uid: 8561841,
      image_url: "https://avatars.githubusercontent.com/u/8561841?v=3",
      # html_url: "https://github.com/chandracarney",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"ChasevanHekken",
      uid: 5781795,
      image_url: "https://avatars.githubusercontent.com/u/5781795?v=3",
      # html_url: "https://github.com/ChasevanHekken",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"Copywright",
      uid: 7808793,
      image_url: "https://avatars.githubusercontent.com/u/7808793?v=3",
      # html_url: "https://github.com/Copywright",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"dalexj",
      uid: 2790993,
      image_url: "https://avatars.githubusercontent.com/u/2790993?v=3",
      # html_url: "https://github.com/dalexj",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"dglunz",
      uid: 2965795,
      image_url: "https://avatars.githubusercontent.com/u/2965795?v=3",
      # html_url: "https://github.com/dglunz",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"gregnar",
      uid: 8186136,
      image_url: "https://avatars.githubusercontent.com/u/8186136?v=3",
      # html_url: "https://github.com/gregnar",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"katelane",
      uid: 3933878,
      image_url: "https://avatars.githubusercontent.com/u/3933878?v=3",
      # html_url: "https://github.com/katelane",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"skuhlmann",
      uid: 6923345,
      image_url: "https://avatars.githubusercontent.com/u/6923345?v=3",
      # html_url: "https://github.com/skuhlmann",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"Tmee",
      uid: 8226837,
      image_url: "https://avatars.githubusercontent.com/u/8226837?v=3",
      # html_url: "https://github.com/Tmee",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"trayo",
      uid: 6809782,
      image_url: "https://avatars.githubusercontent.com/u/6809782?v=3",
      # html_url: "https://github.com/trayo",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"VikiAnn",
      uid: 5874167,
      image_url: "https://avatars.githubusercontent.com/u/5874167?v=3",
      # html_url: "https://github.com/VikiAnn",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"worace",
      uid: 1227440,
      image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      # html_url: "https://github.com/worace",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"zRouth",
      uid: 8505719,
      image_url: "https://avatars.githubusercontent.com/u/8505719?v=3",
      # html_url: "https://github.com/zRouth",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"bhargavisatpathy",
      uid: 8531351,
      image_url: "https://avatars.githubusercontent.com/u/8531351?v=3",
      # html_url: "https://github.com/bhargavisatpathy",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"bmrsny",
      uid: 8440504,
      image_url: "https://avatars.githubusercontent.com/u/8440504?v=3",
      # html_url: "https://github.com/bmrsny",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"bryceholcomb",
      uid: 6202829,
      image_url: "https://avatars.githubusercontent.com/u/6202829?v=3",
      # html_url: "https://github.com/bryceholcomb",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"cluhring",
      uid: 8466906,
      image_url: "https://avatars.githubusercontent.com/u/8466906?v=3",
      # html_url: "https://github.com/cluhring",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"EmilyMB",
      uid: 8007635,
      image_url: "https://avatars.githubusercontent.com/u/8007635?v=3",
      # html_url: "https://github.com/EmilyMB",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"Jwan622",
      uid: 6790201,
      image_url: "https://avatars.githubusercontent.com/u/6790201?v=3",
      # html_url: "https://github.com/Jwan622",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"KristaANelson",
      uid: 8313881,
      image_url: "https://avatars.githubusercontent.com/u/8313881?v=3",
      # html_url: "https://github.com/KristaANelson",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"larsonkonr",
      uid: 7245142,
      image_url: "https://avatars.githubusercontent.com/u/7245142?v=3",
      # html_url: "https://github.com/larsonkonr",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"laurawhalin",
      uid: 8449527,
      image_url: "https://avatars.githubusercontent.com/u/8449527?v=3",
      # html_url: "https://github.com/laurawhalin",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"Lydias303",
      uid: 8863407,
      image_url: "https://avatars.githubusercontent.com/u/8863407?v=3",
      # html_url: "https://github.com/Lydias303",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"mikedao",
      uid: 3011748,
      image_url: "https://avatars.githubusercontent.com/u/3011748?v=3",
      # html_url: "https://github.com/mikedao",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"ndwhtlssthr",
      uid: 3827810,
      image_url: "https://avatars.githubusercontent.com/u/3827810?v=3",
      # html_url: "https://github.com/ndwhtlssthr",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"oorion",
      uid: 869456,
      image_url: "https://avatars.githubusercontent.com/u/869456?v=3",
      # html_url: "https://github.com/oorion",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"rshea303",
      uid: 7894293,
      image_url: "https://avatars.githubusercontent.com/u/7894293?v=3",
      # html_url: "https://github.com/rshea303",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"scottalexandra",
      uid: 8812335,
      image_url: "https://avatars.githubusercontent.com/u/8812335?v=3",
      # html_url: "https://github.com/scottalexandra",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"scottcrawford03",
      uid: 8398867,
      image_url: "https://avatars.githubusercontent.com/u/8398867?v=3",
      # html_url: "https://github.com/scottcrawford03",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"worace",
      uid: 1227440,
      image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      # html_url: "https://github.com/worace",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"AllPurposeName",
      uid: 9127698,
      image_url: "https://avatars.githubusercontent.com/u/9127698?v=3",
      # html_url: "https://github.com/AllPurposeName",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"indiesquidge",
      uid: 3409645,
      image_url: "https://avatars.githubusercontent.com/u/3409645?v=3",
      # html_url: "https://github.com/indiesquidge",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"jgu2160",
      uid: 5934106,
      image_url: "https://avatars.githubusercontent.com/u/5934106?v=3",
      # html_url: "https://github.com/jgu2160",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"kpearson",
      uid: 3293289,
      image_url: "https://avatars.githubusercontent.com/u/3293289?v=3",
      # html_url: "https://github.com/kpearson",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"kyrasteen",
      uid: 6415583,
      image_url: "https://avatars.githubusercontent.com/u/6415583?v=3",
      # html_url: "https://github.com/kyrasteen",
      about_me: "SalesEngine was my glory days can we work on it again?")

    User.create(
      github_name:"mcshakes",
      uid: 8164007,
      image_url: "https://avatars.githubusercontent.com/u/8164007?v=3",
      # html_url: "https://github.com/mcshakes",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"mirjoy",
      uid: 5142805,
      image_url: "https://avatars.githubusercontent.com/u/5142805?v=3",
      # html_url: "https://github.com/mirjoy",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"neslom",
      uid: 8800860,
      image_url: "https://avatars.githubusercontent.com/u/8800860?v=3",
      # html_url: "https://github.com/neslom",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"paulgrever",
      uid: 3664281,
      image_url: "https://avatars.githubusercontent.com/u/3664281?v=3",
      # html_url: "https://github.com/paulgrever",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"treyx",
      uid: 9888146,
      image_url: "https://avatars.githubusercontent.com/u/9888146?v=3",
      # html_url: "https://github.com/treyx",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"xvalentino",
      uid: 8762410,
      image_url: "https://avatars.githubusercontent.com/u/8762410?v=3",
      # html_url: "https://github.com/xvalentino",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"DaishaV",
      uid: 11197637,
      image_url: "https://avatars.githubusercontent.com/u/11197637?v=3",
      # html_url: "https://github.com/DaishaV",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"jcasimir",
      uid: 43102,
      image_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      # html_url: "https://github.com/jcasimir",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"jmejia",
      uid: 73824,
      image_url: "https://avatars.githubusercontent.com/u/73824?v=3",
      # html_url: "https://github.com/jmejia",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"JoshCheek",
      uid: 77495,
      image_url: "https://avatars.githubusercontent.com/u/77495?v=3",
      # html_url: "https://github.com/JoshCheek",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"marissamariesmith",
      uid: 12720982,
      image_url: "https://avatars.githubusercontent.com/u/12720982?v=3",
      # html_url: "https://github.com/marissamariesmith",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"mikedao",
      uid: 3011748,
      image_url: "https://avatars.githubusercontent.com/u/3011748?v=3",
      # html_url: "https://github.com/mikedao",
      about_me: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      github_name:"novohispano",
      uid: 1654034,
      image_url: "https://avatars.githubusercontent.com/u/1654034?v=3",
      # html_url: "https://github.com/novohispano",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"raissashafer",
      uid: 8548182,
      image_url: "https://avatars.githubusercontent.com/u/8548182?v=3",
      # html_url: "https://github.com/raissashafer",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"rwarbelow",
      uid: 3311609,
      image_url: "https://avatars.githubusercontent.com/u/3311609?v=3",
      # html_url: "https://github.com/rwarbelow",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      github_name:"stevekinney",
      uid: 251000,
      image_url: "https://avatars.githubusercontent.com/u/251000?v=3",
      # html_url: "https://github.com/stevekinney",
      about_me: "i am so alone plz pair with me")

    User.create(
      github_name:"worace",
      uid: 1227440,
      image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      # html_url: "https://github.com/worace",
      about_me: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    puts "Users Created"
  end

  def create_languages
    Language.create!(name: "JavaScript")
    Language.create!(name: "Java")
    Language.create!(name: "Ruby")
    Language.create!(name: "C")
    Language.create!(name: "CSS")
    Language.create!(name: "PHP")
    Language.create!(name: "Python")
    Language.create!(name: "C++")
    Language.create!(name: "Objective-C")
    Language.create!(name: "C#")
    Language.create!(name: "Shell")
    Language.create!(name: "R")
    Language.create!(name: "CoffeeScript")
    Language.create!(name: "Go")
    Language.create!(name: "Perl")
    Language.create!(name: "Scala")
    Language.create!(name: "VimL")
    Language.create!(name: "Clojure")
    Language.create!(name: "Haskell")
    Language.create!(name: "Erlang")
    Language.create!(name: "Rust")
    Language.create!(name: "Swift")
    puts "Languages Created"
  end


  def create_user_languages
    User.all.each do |user|
      Language.all.each do |language|
        if rand(2) == 0
          UserLanguage.create(user_id: user.id, language_id: language.id)
        end
      end
    end
    puts "User Languages Created"
  end

  def create_matches
    User.all.each do |user1|
      User.all.each do |user2|
        Match.create(user_id: user1.id, matchee_id: user2.id) unless user1.id == user2.id
      end
    end
    puts "Matches Created"
  end
end


Seed.new.run
