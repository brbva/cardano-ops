pkgs: {

  deploymentName = "mainnet-candidate-2";

  environmentName = "mainnet_candidate_2";

  topology = import ./topologies/mainnet-candidate-2.nix pkgs;

  withExplorer = true;
  withLegacyExplorer = false;
  withHighLoadRelays = true;
  withSmash = true;

  withFaucet = true;
  faucetHostname = "faucet";

  ec2 = {
    credentials = {
      accessKeyIds = {
        IOHK = "default";
        dns = "dev";
      };
    };
  };

  alertTcpHigh = "150";
  alertTcpCrit = "180";
}
