# typed: true
# frozen_string_literal: true

class Devenv < Formula
  desc "Development environment manager — hybrid Go backend + TypeScript OpenTUI"
  homepage "https://github.com/friendsfriend/devenv"
  license "Proprietary"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-arm64.tar.gz"
      sha256 "c0bf3060a4d77237cc30f1d62d53955e7906be368e045b55e0dab37717d067b8"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-darwin-x64.tar.gz"
      sha256 "29b47cfa3003b79309a578bc597fa795f78231bb209b3919f1e5d31912b31709"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-arm64.tar.gz"
      sha256 "b02fdbca3c26252814b48c994a436474654ed0742e4e84c6fb1302fe3fb7bbbe"
    end
    on_intel do
      url "https://github.com/friendsfriend/devenv/releases/download/v#{version}/devenv-linux-x64.tar.gz"
      sha256 "e2c3b64946445a0fc9b8ba3cce4b27f9bacb96c119e94ac3c44633868bf007bb"
    end
  end

  def install
    bin.install "bin/devenv"
  end

  test do
    assert_match "spawn", shell_output("#{bin}/devenv --help")
  end
end
