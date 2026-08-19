class Muharc < Formula
  desc "macOS wrapper for the UHARC 0.6b archival utility"
  homepage "https://github.com/ghaschel/muharc"
  url "https://github.com/ghaschel/muharc/releases/download/v0.1.8/muharc-0.1.8-macos-x86_64.tar.gz"
  sha256 "d27a52d6fabfcc6ba6510dee6c2c1ffc534f3ec9c18c2dbd9b5b664bedea1ae0"
  license :cannot_represent

  def install
    bin.install "bin/uharc"
    libexec.install "libexec/muharc"
    (share/"zsh/site-functions").install "share/zsh/site-functions/_uharc"
  end

  test do
    assert_match "uharc 0.1.8", shell_output("#{bin}/uharc --version")
  end
end
