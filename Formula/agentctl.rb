class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "9b085616cb1abd8175dfd56d04e589b791020b44bfd3354ffbdf529d59def915"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "6a3ce5e6c0c4fe0369ce04e42098a7a70ea86714bbf4145453b17c9171f82d09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "1d997f2faeb134cf78d70557c493af5b23a7a0c2d7413d3557d7d324f5a8dc2c"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "e2d70994f71f9066ebe6f278c1d4df2b4d39bbfa8c5174fcddf6d2304c2ad344"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    system bin/"agentctl", "version", "--client"
  end
end
