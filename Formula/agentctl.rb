class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.2"
  license "MIT"
  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "8c093249cd10d33dfa5db1f6011d5cabad8dd643be3bca0fa262e1ab200fae2b"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "f8062937f03238bbbeed5f088dc8984dbd7a59d124b941fb13f3894c27ab2d82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "545e73b37e0c5c9d9e7f7a0d0ce190d7ea8f4e03fd25e04e214bbc2296c57322"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "290bca244db2eaa8af66f670d8f464c3c665b0834aea5aeb71a239e78a073b43"
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
