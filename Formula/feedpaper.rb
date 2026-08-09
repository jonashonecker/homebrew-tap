class Feedpaper < Formula
  desc "Build an ePub newspaper from your unread Feedbin blog posts"
  homepage "https://github.com/jonashonecker/feedpaper"
  url "https://github.com/jonashonecker/feedpaper/releases/download/v0.1.1/feedpaper-macos.tar.gz"
  version "0.1.1"
  sha256 "659a2428da1591869b943d0f30ef12d5b4e66295db2328405ce54a1f9de50817"

  depends_on :macos
  depends_on arch: :arm64

  def install
    libexec.install Dir["feedpaper/*"]
    bin.install_symlink libexec/"feedpaper"
  end

  test do
    assert_match "feedpaper", shell_output("#{bin}/feedpaper --help")
  end
end
