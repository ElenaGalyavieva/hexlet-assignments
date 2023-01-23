# frozen_string_literal: true
require 'uri'
require 'forwardable'
# BEGIN
class Url
  include Comparable
  extend Forwardable

  def_delegators :@uri, :to_s, :host, :scheme

  def initialize(url)
    @uri = URI.parse(url)
    query = @uri.query || ''
    @params = query.split('&').each_with_object({}) do |query_parts, acc|
      key, value = query_parts.split '='
      acc[key.to_sym] = value
    end
  end

  def query_params
    @params
  end

  def query_param(key, default = nil)
    @params.fetch(key, default)
  end

  def <=>(other)
    s1 = to_s
    s2 = other.to_s
    s1 <=> s2
  end
end
# END
