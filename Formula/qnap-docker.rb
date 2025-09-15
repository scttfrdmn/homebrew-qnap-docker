class QnapDocker < Formula
  desc "CLI tool for deploying containers to QNAP Container Station"
  homepage "https://github.com/scttfrdmn/qnap-docker"
  url "https://github.com/scttfrdmn/qnap-docker/archive/v0.2.1.tar.gz"
  sha256 "892ce58e659f5de40ead276e43cf572dbd2283a1b90eb38361bacd3d836eae02"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}")
  end

  test do
    system "#{bin}/qnap-docker", "--version"
  end
end