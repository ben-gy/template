# README
## Initial setup

### Required setup steps (production)

* Create ```config/application.yml```
* Setup a Postmark account
* Update robots.txt
* Update settings.yml
* Generate new sitemap ````rake sitemap:refresh```

### Optional setup steps

* Install bugsnag
* Setup tracking custom events with Ahoy
* Modify ahoy.rb for GDPR compliance
* If platform has UGC, move the sitemap generator gem to production
* Add additional metadata
* Add trackers and fonts to ```views/layouts/scipts``` folder

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
* Generate new sitemap ````rake sitemap:refresh```

## To Do (future)

* Delete older visitor automatically: https://github.com/ankane/ahoy#data-retention
* Setup visitor geocoding: https://github.com/ankane/ahoy#geocoding

## Troubleshooting

* If using ```request.remote_ip``` in your code, make sure to diable ```config.middleware.insert_after ActionDispatch::RemoteIp, IpAnonymizer::MaskIp``` in application.rb
