class Muharc < Formula
  desc "macOS wrapper for the UHARC 0.6b archival utility"
  homepage "https://github.com/ghaschel/muharc"
  url "https://github.com/ghaschel/muharc/releases/download/v0.1.9/muharc-0.1.9-macos-x86_64.tar.gz"
  sha256 "fe9ade7410e0a4ae42898af152a1bae329832f6a43615750b0e75f47d3263a56"
  license :cannot_represent

  def install
    bin.install "bin/uharc"
    libexec.install "libexec/muharc"
    (share/"zsh/site-functions").install "share/zsh/site-functions/_uharc"
  end

  test do
    assert_match "uharc 0.1.9", shell_output("#{bin}/uharc --version")
  end
end
