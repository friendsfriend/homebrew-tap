# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "e98fdb0204c98ae32dca0e35cc1e6254cce2bf2ed7525c05894ddc78578fd966"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "a36a94d851ed383efdf7ba9579e58602e2fbbb88d6c7da246c96ade5929293a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "fc5933f83ab5da413b503781e3a2d08100c6b743128feb25a687cead3fda0308"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "e7e6edde72568c728067c3e3c4cebb2dcb131553186ff611507c86ca5d27d96b"
    end
  end

  def install
    bin.install "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
