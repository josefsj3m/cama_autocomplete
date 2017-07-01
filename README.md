## Example Cama Autocomplete Plugin

* Source code created by [MyTeamDesigners](http://www.myteamdesigners.com)

* [Working Demo](http://www.panamebusinesscenter.com)

##### Installation

1. Create a Camaleon CMS Project

2. Add this to your Gemfile

* gem 'cama_autocomplete', github:  'gaelfokou/cama_autocomplete'

3. Open Console

* bundle install

4. Go to your admin panel -> plugins

5. Enable plugin Cama Autocomplete

6. Add this to your layout

* <%= stylesheet_link_tag plugin_asset_path("main", "cama_autocomplete") %>

* <%= javascript_include_tag plugin_asset_path("main", "cama_autocomplete") %>

7. Copy this code and paste in your page

  <div class="posts-search">
    <input type="text" id="posts-search-txt" autofocus>
    <input type="hidden" id="posts-search-type" value="service">
    <div class="results" id="posts-search-results"></div>
  </div>

* value="service" can also be any posts type
