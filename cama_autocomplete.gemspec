$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cama_autocomplete/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cama_autocomplete"
  s.version     = CamaAutocomplete::VERSION
  s.authors     = ["MyTeamDesigners"]
  s.email       = ["contact@myteamdesigners.com"]
  s.homepage    = ""
  s.summary     = ": Summary of CamaAutocomplete."
  s.description = ": Description of CamaAutocomplete."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "camaleon_cms"
end
