class Muharc < Formula
  desc "macOS wrapper for the UHARC 0.6b archival utility"
  homepage "https://github.com/ghaschel/muharc"
  url "https://github.com/ghaschel/muharc/releases/download/v0.1.7/muharc-0.1.7-macos-x86_64.tar.gz"
  sha256 "08e4981a786a446fee04d3b6201f2f8884692b813c0ab26b4efe56140844a27b"
  license :cannot_represent

  def install
    bin.install "bin/uharc"
    libexec.install "libexec/muharc"
    (share/"zsh/site-functions").install "share/zsh/site-functions/_uharc"
  end

  test do
    assert_match "uharc 0.1.7", shell_output("#{bin}/uharc --version")
  end
end
