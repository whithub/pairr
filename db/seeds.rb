class Seed

  def run
    create_languages
  end
# def create_first_time_users
#
# end

# def create_repeat_users
#   User.create!(
#     github_name: "121watts",
#     email: "121watts@example.com",
#     provider: "github",
#     token: nil,
#     uid: 7582765,
#     image_url: "https://avatars.githubusercontent.com/u/7582765?v=3",
#     about_me: "I love to code!"
#   )
# end


#   {
#     "login": "121watts",
#     "id": 7582765,
#     "avatar_url": "https://avatars.githubusercontent.com/u/7582765?v=3",
#     "html_url": "https://github.com/121watts",
#     "languages": {
#     "JavaScript": 1,
#     "Java": 0,
#     "Ruby": 0,
#     "C": 1,
#     "CSS": 1,
#     "PHP": 0,
#     "Python": 1,
#     "C++": 0,
#     "Objective-C": 0,
#     "C#": 0,
#     "Shell": 0,
#     "R": 0,
#     "CoffeeScript": 0,
#     "Go": 0,
#     "Perl": 0,
#     "Scala": 1,
#     "VimL": 0,
#     "Clojure": 0,
#     "Haskell": 0,
#     "Erlang": 0,
#     "Rust": 0,
#     "Swift": 0
#   },
#     "description": "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch"
#   },
# end


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
    Language.create!(name: "Javascript")
    Language.create!(name: "Objective-C")
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
end
