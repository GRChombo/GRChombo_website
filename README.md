# GRChombo Website

The site is written using [Ruby on Rails](http://rubyonrails.org). It utilises [Foundation](http://foundation.zurb.com) to create an enjoyable user experience.

## Contributing

When contributing to the project please make your own branch and then issue a pull request for it to be added to the master branch. All branches should be named in the following convention:
* All branch names should be in in lower case
* Any spaces in branch names should be replaced with underscores
* Please use `feature/your_branch_name` for any new features to the website and `addition/your_branch_name` for non-feature additions i.e more text, hyperlinks, pictures etc

## Install
### Ruby

This guide assumes you are using OSX. If you are using any other operating system these instructions will need to be modified.

We begin by ensuring that you have [Brew](http://brew.sh) installed. There is a guide on there website to doing this. The best way to make sure you are using the latest version of Ruby is to to

```
brew install ruby
```

After you have verified that you have ruby installed

```
gem install bundler
```
[Bundler](http://bundler.io) is a way to provide a consistent environment for ruby projects by tracking and installing the exact gems and versions that are needed [[1](http://bundler.io)].

We now need to make sure that you have [postgresql](https://www.postgresql.org) installed on your mac. Again the best way to do this is to use brew.

### Postgresql

```
brew install postgres
```

After you have installed postgres we need to make the relevant database for the website. We do this before we have cloned the repository but you can do it after. You will not be able to run the website unless you have the database set up. To start setting up the website

```
psql
```

Now type the following
```
CREATE USER grchombo WITH PASSWORD 'grchombo';
CREATE DATABASE grchombo_dev WITH OWNER 'grchombo';
CREATE DATABASE grchombo_test WITH OWNER 'grchombo';
ALTER USER grchombo CREATEDB;
\q
```
This will now intialise the GRchombo development database.

### The Website

Clone the repository and ```cd ``` into it.
Next type

```
bundle install
```
This will install all relevant gems required. Finally

```
rake db:migrate
```

Once these have been done you can type ```rails s```. You will be able to access the site at ```localhost:3000```.
## References

[[1](http://bundler.io)] - Bundler Website
