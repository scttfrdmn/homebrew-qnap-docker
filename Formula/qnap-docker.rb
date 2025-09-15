class QnapDocker < Formula
  desc "CLI tool for deploying containers to QNAP Container Station"
  homepage "https://github.com/scttfrdmn/qnap-docker"
  url "https://github.com/scttfrdmn/qnap-docker/archive/v0.1.0.tar.gz"
  sha256 "57d92a4f50f0e208a858c0261c947f332b40a0113c6abde70b1fac83fd2f7b64"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    system "#{bin}/qnap-docker", "--version"
  end
end