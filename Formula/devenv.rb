# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "f56b1870c1ab4518f5738c86be925eba9418a73c3fb2a7dc752ff4eef4ca4702"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "86003f9741ef8fef22d9ac9f5b1c2bede35dac8b33621f149ce0a5670cdd9f1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "d61bf01a777f2430d934e283fe10125109ccebacb0b9037bb01cb04538c3360d"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "b9c507568cc391a068918da9f3da70bee9fb41d6927cffe0b1b73679b6787aec"
    end
  end

  def install
    bin.install "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
