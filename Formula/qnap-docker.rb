class QnapDocker < Formula
  desc "CLI tool for deploying containers to QNAP Container Station"
  homepage "https://github.com/scttfrdmn/qnap-docker"
  url "https://github.com/scttfrdmn/qnap-docker/archive/v0.2.2.tar.gz"
  sha256 "a7c9f149442d5ef2fad40405419dd109d2b68fe757886ca7e88faa003d78130c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    system "#{bin}/qnap-docker", "--version"
  end
end