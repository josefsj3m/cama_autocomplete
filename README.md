## Example Cama Autocomplete Plugin

* Source code created by [MyTeamDesigners](http://www.myteamdesigners.com)

* [Working Demo](http://www.panamebusinesscenter.com)

* [Camaleon CMS Plugin](http://camaleon.tuzitio.com/store/plugins/cama_autocomplete)

### Installation

1. Create a Camaleon CMS Project

2. Add this to your Gemfile

```ruby
   gem 'cama_autocomplete', github: 'gaelfokou/cama_autocomplete'
```

3. Open Console and then execute

```bash
   $ bundle install
```

4. Go to your admin panel -> plugins

5. Enable plugin Cama Autocomplete

6. Add this to your layout

```ruby
   <%= stylesheet_link_tag plugin_asset_path("main", "cama_autocomplete") %>
   <%= javascript_include_tag plugin_asset_path("main", "cama_autocomplete") %>
```

```javascript
   <script type="text/javascript">
     $(document).ready(function() {
       new app.Posts;
     });
   </script>
```

Remove the lignes bellow in your javascript file

//= require jquery
//= require jquery_ujs

7. Copy this code and paste in your page

```html
   <div class="posts-search">
     <input type="text" id="posts-search-txt" autofocus>
     <input type="hidden" id="posts-search-type" value="post">
     <div class="results" id="posts-search-results"></div>
   </div>
```

Choose any posts type for the value bellow

value="post"
