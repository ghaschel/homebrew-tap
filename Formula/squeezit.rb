class Squeezit < Formula
  desc "Lossless image optimizer CLI"
  homepage "https://github.com/ghaschel/squeezit"
  url "https://registry.npmjs.org/squeezit/-/squeezit-2.4.3.tgz"
  sha256 "125f7545577ad5f43a868ec43f137209d78d5ea4c4920dcdd0c9c7ad76eb0ab1"
  license "MIT"

  depends_on "node"
  depends_on "dnglab"
  depends_on "exiftool"
  depends_on "gifsicle"
  depends_on "icoutils"
  depends_on "imagemagick"
  depends_on "jpeg-xl"
  depends_on "jpegoptim"
  depends_on "libavif"
  depends_on "libheif"
  depends_on "libtiff"
  depends_on "mozjpeg"
  depends_on "optipng"
  depends_on "oxipng"
  depends_on "pngcrush"
  depends_on "svgo"
  depends_on "webp"
  depends_on "zopfli"

  def install
    system "npm", "install", *std_npm_args
    (bin/"sqz").write_env_script libexec/"bin/sqz",
      SQUEEZIT_MOZJPEGTRAN: Formula["mozjpeg"].opt_bin/"jpegtran"
    (bin/"squeezit").write_env_script libexec/"bin/squeezit",
      SQUEEZIT_MOZJPEGTRAN: Formula["mozjpeg"].opt_bin/"jpegtran"
  end

  test do
    require "json"
    assert_equal version.to_s, JSON.parse(shell_output("#{bin}/sqz version --json")).dig("data", "version")
  end
end
