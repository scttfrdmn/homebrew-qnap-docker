class QnapDocker < Formula
  desc "CLI tool for deploying containers to QNAP Container Station"
  homepage "https://github.com/scttfrdmn/qnap-docker"
  url "https://github.com/scttfrdmn/qnap-docker/archive/v0.2.0.tar.gz"
  sha256 "843728097011f68277aeba891f1e46622ee48681568ac84d2d14e41108131b53"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    system "#{bin}/qnap-docker", "--version"
  end
end