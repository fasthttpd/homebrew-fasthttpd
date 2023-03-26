# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fasthttpd < Formula
  desc "FastHttpd is a lightweight http server using valyala/fasthttp"
  homepage "https://github.com/fasthttpd/fasthttpd"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.3/fasthttpd_0.4.3_Darwin_arm64.tar.gz"
      sha256 "e12faeeb1a063236538ddd908e4104edf9e38785028bdd290d731fa3c5f5c909"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.3/fasthttpd_0.4.3_Darwin_x86_64.tar.gz"
      sha256 "324abdf333440baa8a713bf35133de84f3b33de9894f02d0e41b12639079cf60"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.3/fasthttpd_0.4.3_Linux_x86_64.tar.gz"
      sha256 "227e38f0dce81236ad307383d1a1af4529659b0908e173d7e19e57051394981e"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.3/fasthttpd_0.4.3_Linux_arm64.tar.gz"
      sha256 "e3dea9af650c8d42d529b807b4ecc76359cae1bf46477e4e526f65aa233a5fea"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  test do
    system "#{bin}/fasthttpd -v"
  end
end
