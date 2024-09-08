# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fasthttpd < Formula
  desc "FastHttpd is a lightweight http server using valyala/fasthttp"
  homepage "https://github.com/fasthttpd/fasthttpd"
  version "0.5.2"

  on_macos do
    on_intel do
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.5.2/fasthttpd_0.5.2_darwin_amd64.tar.gz"
      sha256 "120add8f3440ec8bf44fcb7df869fc893cc6d7122be102a1b50939873f9ccbd3"

      def install
        bin.install "fasthttpd"
      end
    end
    on_arm do
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.5.2/fasthttpd_0.5.2_darwin_arm64.tar.gz"
      sha256 "4962b35d9340a492764a6b46723d52f0bd892e4a7c3a06ad4e6d061f56792a50"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.5.2/fasthttpd_0.5.2_linux_amd64.tar.gz"
        sha256 "e2bd6b5e46f3d1af8456280865e17421ea8f88dc3c352580b8fc45e8d96bf741"

        def install
          bin.install "fasthttpd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.5.2/fasthttpd_0.5.2_linux_arm64.tar.gz"
        sha256 "a0ea723164f668575a0e6db73a856425ab2c27397e2113af44cca2acae647af4"

        def install
          bin.install "fasthttpd"
        end
      end
    end
  end

  test do
    system "#{bin}/fasthttpd -v"
  end
end
