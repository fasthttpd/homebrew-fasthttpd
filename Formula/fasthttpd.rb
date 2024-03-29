# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fasthttpd < Formula
  desc "FastHttpd is a lightweight http server using valyala/fasthttp"
  homepage "https://github.com/fasthttpd/fasthttpd"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.5/fasthttpd_0.4.5_Darwin_x86_64.tar.gz"
      sha256 "17a794b54794bc069fe0dd4674015f671608bf08d68493b7c8f6b2b0c429dab7"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.5/fasthttpd_0.4.5_Darwin_arm64.tar.gz"
      sha256 "928bb0e431d518bc82290c88a4cd2bc7d987703c35f0ca2103b86cfe46d70219"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.5/fasthttpd_0.4.5_Linux_arm64.tar.gz"
      sha256 "e8978604fcd77e14ceaeded2cb6c40b76cceea44545fc270b607ee89b3c67fa8"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.5/fasthttpd_0.4.5_Linux_x86_64.tar.gz"
      sha256 "7a9f0d2d02311b3334748a360798f5f3a753f311c0d84d3b17f5ffff9e7de558"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  test do
    system "#{bin}/fasthttpd -v"
  end
end
