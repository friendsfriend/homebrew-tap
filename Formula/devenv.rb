# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "bcb230def9eb0ba9bb26f3bf5d3ebfb46e9b22080355b599e392d501a27be794"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "0ce1a6cc33e103196b6000f3c38bdb895663064b50570fdac7fa393a999a17b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "b3226177778776223b8f129d3ffb0fb4947ee9ef3c7707f1a19c9ef638fe3b82"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "bd82eb5705d2c1a7a16e34304f8d9b894804a7db5f90f3e46372f4a11deca9ac"
    end
  end

  def install
    platform_dir = Pathname.new(Dir["devenv-*"].first)
    bin.install platform_dir + "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
