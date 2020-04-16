git commit -m'new post'
git push
bundle exec rake generate
bundle exec rake deploy

#bundle exec rake new_post["Hello octopress"]
#bundle exec rake preview 