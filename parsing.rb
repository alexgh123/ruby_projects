require 'net/http'
url = URI.parse('www.wired.com')
response = Net::HTTP.start(url.host, url.port) do |http|
    http.get(url.path)
  end
content = response.body