class Shelltestrunner < Formula
  desc "shelltestrunner"
  homepage "https://github.com/simonmichael/shelltestrunner"
  url "https://github.com/simonmichael/shelltestrunner/archive/1.9.tar.gz"
  sha256 "066b0f41ee180cf4acc548cdb26034b6cda0c6c81b22f608b0c3f0a93bfcd9c9"

 
  depends_on "haskell-stack"

  def install
    # system "autoreconf", "-if" if build.head?
    system "stack", "build", "--system-ghc"
#    system "make", "install"
  end

  test do
    system "#{bin}/shelltestrunner --version"
  end
end


#  curl -O https://github.com/simonmichael/shelltestrunner/archive/1.9.tar.gz