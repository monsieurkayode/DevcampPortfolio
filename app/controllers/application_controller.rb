class ApplicationController < ActionController::Base
  include NotFound
  include DeviseWhitelist
end
