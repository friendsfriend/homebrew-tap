# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.12.2"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "0940c8a21e894a6e82d75bc04fe2cfc667e0441bb6b09a044306b607e0b6dfac"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "1ee020d92b6c8775a7219f68781f1b76f7282675931cd48432f2ffd8fed6172d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "93ccdc30343bf8177c0b352c6dba77f7763d8fe5463872e61fb0ad1ea32eb31a"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "417ce19cadb300bdc1679893fc0f635ef49dfa3a163e838ab15c1f6d720fa33d"
    end
  end

  def install
    bin.install "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
