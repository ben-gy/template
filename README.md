# README
## Initial setup

### Required setup steps (production)

* Rename the database
* Create ```config/application.yml```
* Update robots.txt
* Update settings.yml
* Generate new sitemap ```rake sitemap:refresh```
* Install figaro ```bundle exec figaro install```
* Setup lockup codeword and hint in ```config/application.yml```
```
lockup_codeword: codewordgoeshere
lockup_hint: hintgoeshere
```

### Optional setup steps

* Install bugsnag
* Setup a Postmark account and update ```production.rb / staging.rb```
* Enable S3 on in ```config/storage.yml``` and ```production.rb / staging.rb```
* Setup tracking custom events with Ahoy
* Modify ahoy.rb for GDPR compliance
* If platform has UGC, move the sitemap generator gem to production
* Add additional metadata
* Add trackers and fonts to ```views/layouts/scipts``` folder
* Remove Procfile if not using Heroku

### Front-end setup options

* Delete ```assets/stylsheets/scaffolds.scss```
* Install Bootstrap with ```yarn add bootstrap```
* Install Flexbox Grid  ```yarn add flexboxgrid```
* Install Normalize ```yarn add normalize.scss```
* Install Autoprefixer ```yarn add autoprefixer```
* Install JQuery (multiple steps, google it)

## Creation guides
### When creating a new model
#### Make it trackable with Ahoy

* Add ```visitable :ahoy_visit``` to the model
* Migrate ```add_column :{{table_name}}, :ahoy_visit_id, :bigint```

#### Hash the IDs in the URL

* Add ```include Hashid::Rails``` to hash the IDs
* Update all lookups to ModelName.find_by_hashid

#### Version control changes

* Add ```has_paper_trail``` to the model
* Limit action tracking like this ```has_paper_trail on: [:create, :update, :touch]```
* Limit tracking sensitive information like this ```has_paper_trail skip: [:email, :phone, :address]```

#### Protect confidential info / PII

* Add encrypted column using lockbox
* Use blind_index to make encrypted data searchable
* Update bugsnag.rb to filter out sensitive data
```
if Rails.env.production? || Rails.env.staging?
  Bugsnag.configure do |config|
    config.api_key = ENV["BUGSNAG_KEY"]
    config.meta_data_filters += [
      'name',
      'email',
      'phone',
      'password'
    ]
  end
end
```

### When creating a new static page

* Follow these steps - https://github.com/thoughtbot/high_voltage
* Generate new sitemap ```rake sitemap:refresh```

### When adding a new font

* Use asset-url instead of url in your @fontface css class e.g.
```
src: asset-url("kollektif/Kollektif.ttf") format("truetype")
```

## To Do (future)

* Delete older visitor automatically: https://github.com/ankane/ahoy#data-retention
* Setup visitor geocoding: https://github.com/ankane/ahoy#geocoding
* Setup basic auth on staging: https://lockupgem.com
* Setup meta-tags gem

## Troubleshooting

* If using ```request.remote_ip``` in your code, make sure to disable ```config.middleware.insert_after ActionDispatch::RemoteIp, IpAnonymizer::MaskIp``` in application.rb
* If you have commited files before the .gitignore file, use ```git rm -r --cached .``` to reset the committed files.
* If you are having issues with login authenticyty token run ```rails dev:cache``` to ensure "Development mode is now being cached."

## Running the app

1. redis-server
2. rails s
3. sidekiq

## Heroku Test

This repo auto-deploys to ```https://bens-rails-template.herokuapp.com```
