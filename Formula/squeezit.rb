class Squeezit < Formula
  desc "Lossless image optimizer CLI"
  homepage "https://github.com/ghaschel/squeezit"
  url "https://registry.npmjs.org/squeezit/-/squeezit-2.5.0.tgz"
  sha256 "fb817522953d7b194c9f82310a9238dda9b1fb23c31fc6c1f486547cfc711202"
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
  depends_on "qpdf"
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
