class NdnCxx < Formula
  desc "ndn-cxx: NDN C++ library with eXperimental eXtensions"
  homepage "http://www.named-data.net/doc/ndn-cxx/"
  url "https://github.com/named-data/ndn-cxx/archive/ndn-cxx-0.3.3.tar.gz"
  sha256 "9560ca83386c79d8ce542d6e96fede2e6c677881546145ffe8b15a79e3303272"

  depends_on "boost"
  depends_on "sqlite"
  depends_on "cryptopp"
  depends_on "libxml2"

  def install
    system "./waf", "configure"

    system "./waf"

    system "./waf", "install"
  end

  test do
    system "false"
  end
end
