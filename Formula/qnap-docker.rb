class QnapDocker < Formula
  desc "CLI tool for deploying containers to QNAP Container Station"
  homepage "https://github.com/scttfrdmn/qnap-docker"
  url "https://github.com/scttfrdmn/qnap-docker/archive/v0.2.0.tar.gz"
  sha256 "3fcf11a544eee0f7c025d555ea9f7b0db4bfb0d49b1284386f3335007d93aa3c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    system "#{bin}/qnap-docker", "--version"
  end
end