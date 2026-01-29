class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.3"
  license "MIT"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "ffb9cf4da1128c6ebd21564803afd4867f14c08df704e0f27566c2af26e064ba"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "807ae27cb07d9fe0f65e9bba9c3f12d1a43fd4090fe6d2329d250baeb26fdf06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "67441e0d1b6409ba03028d4af91a61d9ddc6eac4a48d369de25955f436949b47"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "80d66112613a0c6213ea6a2ccfc7fc1c7d36bba7d8505173f31d9db1e343e3c0"
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
