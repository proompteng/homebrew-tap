class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "f5ba66d554bb3f9ff19de97f4c7d03f236a5f76d2e49193d77a118b9968003c3"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "a72650d86644e13b6316a990f5479e0b79e17981e6c4437bb2ba80e17bf74787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "48b5bfb8f850afda8a77eb01747f18d1cf31f489084d67aa80d6fded0373d720"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "9593fe05c61a14a3d6bb1274d21b29d3ae4d70f994e59ead1d1d41bc4c85d7e1"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    system bin/"agentctl", "version", "--client"
  end
end
