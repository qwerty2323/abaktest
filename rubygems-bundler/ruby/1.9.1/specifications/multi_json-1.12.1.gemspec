# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{multi_json}
  s.version = "1.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Michael Bleigh}, %q{Josh Kalderimis}, %q{Erik Michaels-Ober}, %q{Pavel Pravosud}]
  s.cert_chain = [%q{-----BEGIN CERTIFICATE-----
MIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MQ4wDAYDVQQDDAVwYXZl
bDEYMBYGCgmSJomT8ixkARkWCHByYXZvc3VkMRMwEQYKCZImiZPyLGQBGRYDY29t
MB4XDTE2MDQyNDIyMDk1MVoXDTE3MDQyNDIyMDk1MVowPzEOMAwGA1UEAwwFcGF2
ZWwxGDAWBgoJkiaJk/IsZAEZFghwcmF2b3N1ZDETMBEGCgmSJomT8ixkARkWA2Nv
bTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK+YCSpSUOeZvxOyp0Zm
DhlQ9Kc8ZxgaB3ekCS6lp7hV+eE6nZ84j4RLEqhfx0Vffx+yCmSx0lWum6eY9aOy
rr+uCtiSiL+HR7t6KHqQ5myXwIvT7B+SqMYw8223fMFZMUit73PfTaMlIon+EsZB
9TWzVU7MSRIHLr8P92/kExOuDhVcqFgmz+pWLeZjCk7r0JI0vxacFEK+ONjXThHk
W1IRwy8qaFNiUdnIfTRgZV45T/PHzuLttdkgySTDQkZp198t9Y0m0eEDhpPjHNlr
KoXtqUIqk1lmgsKKrOj4vsSX004v869GT45C4qR4/Oa2OyUsWiPf8N3GCYDBnK9C
RDcCAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFKm/
jUdmc0kO/erio7IwB4zhYGmxMB0GA1UdEQQWMBSBEnBhdmVsQHByYXZvc3VkLmNv
bTAdBgNVHRIEFjAUgRJwYXZlbEBwcmF2b3N1ZC5jb20wDQYJKoZIhvcNAQEFBQAD
ggEBAGZprwh9PfxTaukluduGO2NWJpI5NC7A/OpoVFrtLTlMKDeoPvCgmNdSejS3
6CyH8P3SI3OEkymRnLtQiJeQ//WDb7QPPQDPG0ZuxAylc35ITz7jTPAFC41AoTWM
eSDWXP6yq0Gi6vlcvyIoBrvfFRPsg/gGhUp5DYKDLYzaEjNE30bME9fwDvlab7XR
v4so5Zmmcof+9apAoaXDtj7HijhJWJcia8GWN5ycuDX38qMcpSU9/PF84s567W6e
De8xFEGqLG8vclcTv7gGjDJH5FJTXuwLg41wc8p4ONXEBgLiaC7+S/DVDXWpYxuB
akI17ua4eRKTFNvBtzP1802SP1k=
-----END CERTIFICATE-----
}]
  s.date = %q{2016-05-18}
  s.description = %q{A common interface to multiple JSON libraries, including Oj, Yajl, the JSON gem (with C-extensions), the pure-Ruby JSON gem, NSJSONSerialization, gson.rb, JrJackson, and OkJson.}
  s.email = [%q{michael@intridea.com}, %q{josh.kalderimis@gmail.com}, %q{sferik@gmail.com}, %q{pavel@pravosud.com}]
  s.homepage = %q{http://github.com/intridea/multi_json}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{A common interface to multiple JSON libraries.}

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
