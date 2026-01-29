class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.1"
  license "MIT"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "b0264df4a23bf37d65b1b59692cf43cb1963bad0318f9a876f3dbb5a461df9ad"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "77dc0e29b587d081e22bab8b4fd900e46083e1229d3615f0a78aef7192f2db04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "4f449e8c8da4590c599a4bd8d8d2c0c4d1767052f9679858ba391c73f18ab5b4"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "78f2fcc0e4bc1cba9a37a1c54d32038929f372636e69ade073c4d52ae9a6df79"
    end
  end

  def install
    libexec.install "agentctl-bun", "agentctl.js"
    bin.install "agentctl"
  end

  test do
    system bin/"agentctl", "version", "--client"
  end
end
