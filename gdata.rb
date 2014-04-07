require 'formula'

class Gdata < Formula
  homepage 'https://gdata-python-client.googlecode.com/'
  url 'https://gdata-python-client.googlecode.com/files/gdata-2.0.18.tar.gz'
  sha1 '4cd6804f2af81697219307421996c6055c7c16e4'

  depends_on :python

  def install
    system "python", "setup.py", "install", "--prefix=#{prefix}"

    bin.env_script_all_files(libexec+'bin', :PYTHONPATH => ENV['PYTHONPATH'])
  end
end

