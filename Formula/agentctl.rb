class Agentctl < Formula
  desc "CLI for managing Agents through Kubernetes or Jangar gRPC"
  homepage "https://github.com/proompteng/lab/tree/main/services/jangar/agentctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-arm64.tar.gz"
      sha256 "9df0df65210aeddbd0f5f9f7a530802e42c15ca1c5180289b5e5976aed077939"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-darwin-amd64.tar.gz"
      sha256 "d1dc93e7b18309cfc399cff6570ead2d87b649fd187516bdc8b489d6638cc127"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-arm64.tar.gz"
      sha256 "a817a7b367e118278dbdcda57c605888581c77ee89c28b8272df1377a6cfdfe8"
    end
    on_intel do
      url "https://github.com/proompteng/lab/releases/download/agentctl-v#{version}/agentctl-#{version}-linux-amd64.tar.gz"
      sha256 "f4b70fff38085caa282467a0edb21e6beb2d64f8141cbc9c81750484e393a073"
    end
  end

  def install
    bin.install "agentctl"
  end

  test do
    system bin/"agentctl", "version", "--client"
  end
end
