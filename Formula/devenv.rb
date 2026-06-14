# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "REPLACE_ME_WITH_ACTUAL_SHA256"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "REPLACE_ME_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "REPLACE_ME_WITH_ACTUAL_SHA256"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "REPLACE_ME_WITH_ACTUAL_SHA256"
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
