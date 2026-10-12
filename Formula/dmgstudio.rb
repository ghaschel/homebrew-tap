class Dmgstudio < Formula
  desc "Create drag-to-install macOS disk images"
  homepage "https://github.com/ghaschel/dmgstudio"
  url "https://github.com/ghaschel/dmgstudio/releases/download/v1.0.0/dmgstudio-1.0.0-macos-universal.tar.gz"
  sha256 "68f8c5180aa20c3a76748baa32dfd0665deb272d3b1743f6ffe35ce3c1a495d0"
  license "MIT"

  def install
    bin.install "dmgstudio"
  end

  test do
    assert_match "Usage: dmgstudio create", shell_output("#{bin}/dmgstudio --help")
  end
end
