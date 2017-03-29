## Usage

### Manually
```
git clone https://github.com/qwIvan/aur-robot
cd aur-robot
cp ~/.ssh/id_rsa .ssh/
vim source.ini  # using nvchecker, example in https://github.com/lilydjwg/nvchecker/blob/master/sample_source.ini
vim <package_name>.update  # example in https://github.com/qwIvan/aur-robot/blob/master/privoxy-adfilter.update
./init
./robot
```

### Docker
```
vim source.ini  # using nvchecker, example in https://github.com/lilydjwg/nvchecker/blob/master/sample_source.ini
vim <package_name>.update  # example in https://github.com/qwIvan/aur-robot/blob/master/privoxy-adfilter.update
docker run \
  -v ~/.gitconfig:/home/robot/.gitconfig \
  -v ~/.ssh/id_rsa:/home/robot/.ssh/id_rsa \
  -v source.ini:/home/robot/source.ini \
  qwivan/aur-robot
```
