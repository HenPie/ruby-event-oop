# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'pry'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie@julie.com",30)
jean = User.new("jean@jean.com", 23)
claude = User.new("claude@claude.com", 75)
test = Event.new("2019-01-06 14:00", 30, "Brainstorming", ["truc@machin.com", "bidule@chose.fr"])
user_1 = User.find_by_email("julie@julie.com")

binding.pry