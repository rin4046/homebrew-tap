class ArmNoneEabiGcc < Formula
  desc "Binary distribution of GNU Arm Embedded GCC"
  homepage "https://xpack.github.io/arm-none-eabi-gcc/"
  version "10.3.1-2.3"
  if Hardware::CPU.arm?
    url "https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v#{version}/xpack-arm-none-eabi-gcc-#{version}-darwin-arm64.tar.gz"
    sha256 "a207301fb6c136f661a09024eb49424adf74cbc952a4cff150dfc7927206ab1a"
  else
    url "https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v#{version}/xpack-arm-none-eabi-gcc-#{version}-darwin-x64.tar.gz"
    sha256 "eb9218eaafb74a05fab9cbbeb49fd4fe7b85c6ba411aefc66f681a5a862e8d8e"
  end
  license "MIT"

  def install
    prefix.install Dir["./*"]
  end
end
