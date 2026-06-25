# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "f2253d4e5154fc7da9ba8d98eeac12d611848b1307f55a2afce2cd96e01f3f3e"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "5d12f4d426d6dacbc9f7b19a8c724f67807e6805623426d2543d0bb7f9637f41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "71d732aa0e37052f1cd796692018d4521b82ee7a7fc4f3180a62f32a42030600"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "3e90cbfdc3c119e84e47120d90ebc4cc68000a653270c7c5fc99f2dc45c85355"
    end
  end

  def install
    bin.install "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
