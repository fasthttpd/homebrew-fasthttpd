# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fasthttpd < Formula
  desc "FastHttpd is a lightweight http server using valyala/fasthttp"
  homepage "https://github.com/fasthttpd/fasthttpd"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.2/fasthttpd_0.4.2_Darwin_x86_64.tar.gz"
      sha256 "bb09dc31ab42dcf6c3dc744c933a7c6535775ee834459ae7a32bca83530527c4"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.2/fasthttpd_0.4.2_Darwin_arm64.tar.gz"
      sha256 "f3579b1315304a94cb2846fe1366f33fc89e10643991d8b7551a5a06e3cf6425"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.2/fasthttpd_0.4.2_Linux_x86_64.tar.gz"
      sha256 "32f1ae01dfe8d7f59d1c5cb2280a7e27d321ab4a266f8209390a0aeeb08d19f2"

      def install
        bin.install "fasthttpd"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fasthttpd/fasthttpd/releases/download/v0.4.2/fasthttpd_0.4.2_Linux_arm64.tar.gz"
      sha256 "2d38ee79754e7dfc1ddaadd40a86848a0f6447625f29879880a5eb664e4d2724"

      def install
        bin.install "fasthttpd"
      end
    end
  end

  test do
    system "#{bin}/fasthttpd -v"
  end
end
