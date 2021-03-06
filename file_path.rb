# -*- coding: utf-8 -*-

Plugin.create(:file_path) do

  # Windows local file path
  filter_uri_filter do |uri|
    if uri.is_a?(String) && uri =~ /^[a-zA-Z]+:(\\|\/)/
      [Addressable::URI.new(scheme: 'file', path: uri)]
    else
      [uri]
    end
  end

end
