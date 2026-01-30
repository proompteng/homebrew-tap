class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "c9d64e83495557e61f00a6faf4b622732c7b315dc700ad3e6a0001a32884d86f"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "871bfbc8d410d30ffca7d060528b3d3c6c171c46816d596b7412245fb8d86477"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "532d6e5a034398eabf9383de9163ceabe73d8dd03f7bb5176c1d15d1072fa4f3"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "16b55aa1df5c9f283407d0da6059d0696ef04eb7d97c4bfc067f41a3470c6423"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    system bin/"agentctl", "version", "--client"
  end
end
