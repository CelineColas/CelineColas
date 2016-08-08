require "open-uri"
require "json"

commit_json_text = open("https://api.github.com/repos/lewagon/www/commits").read

commit_hash = JSON.parse(commit_json_text)

# p commit.keys

name = commit_hash["commit"]["author"]["name"]

p name
