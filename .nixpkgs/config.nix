with import <nixpkgs> {};

let

  all-hies = import (fetchTarball "https://github.com/infinisil/all-hies/tarball/master") {};

in
  {
    allowBroken = true;
    allowUnfree = true;

    haskellPackageOverrides = with pkgs.haskell.lib; self: super: {
      # pictune-core = self.callPackage ../stuff/repo/bitbucket.com/pictune/hcore {};
      # pictune-hapi = self.callPackage ../stuff/repo/bitbucket.com/pictune/hapi {};
      haxl = doJailbreak super.haxl;
    };

    packageOverrides = pkgs: rec {

      shellEnv = pkgs.buildEnv {
        name = "shellEnv";
        paths = [
          haskellDevEnv

          cachix
          figlet
          jq
          neovim
          nix-index
          nixfmt
          ponysay
          postgresql
          # yq

          autoconf
          automake
          bashInteractive
          cacert
          cmake
          coreutils
          curl
          darcs
          diffutils
          file
          findutils
          fish
          ghostscript
          gitAndTools.gitFull
          gitAndTools.hub
          gnugrep
          gnumake
          gnupatch
          #gnupg
          gnused
          gnutar
          gnutls
          graphviz
          imagemagick
          nix-prefetch-scripts
          patchutils
          pkgconfig
          rlwrap
          silver-searcher
          sloccount
          terminal-notifier
          tmux
          tree
          wget
          xz
          zsh
        ];
      };

      haskellDevEnv = pkgs.haskellPackages.ghcWithHoogle (p: with p; [
        ghc

        #haxl

        # pointfree

        amazonka
        amazonka-alexa-business
        amazonka-apigateway
        amazonka-application-autoscaling
        amazonka-appstream
        amazonka-appsync
        amazonka-athena
        amazonka-autoscaling
        amazonka-autoscaling-plans
        amazonka-batch
        amazonka-budgets
        amazonka-certificatemanager
        amazonka-certificatemanager-pca
        amazonka-cloud9
        amazonka-clouddirectory
        amazonka-cloudformation
        amazonka-cloudfront
        amazonka-cloudhsm
        amazonka-cloudhsmv2
        amazonka-cloudsearch
        amazonka-cloudsearch-domains
        amazonka-cloudtrail
        amazonka-cloudwatch
        amazonka-cloudwatch-events
        amazonka-cloudwatch-logs
        amazonka-codebuild
        amazonka-codecommit
        amazonka-codedeploy
        amazonka-codepipeline
        amazonka-codestar
        amazonka-cognito-identity
        amazonka-cognito-idp
        amazonka-cognito-sync
        amazonka-comprehend
        amazonka-config
        amazonka-connect
        amazonka-core
        amazonka-cost-explorer
        amazonka-cur
        amazonka-datapipeline
        amazonka-devicefarm
        amazonka-directconnect
        amazonka-discovery
        amazonka-dms
        amazonka-ds
        amazonka-dynamodb
        amazonka-dynamodb-dax
        amazonka-dynamodb-streams
        amazonka-ecr
        amazonka-ecs
        amazonka-efs
        amazonka-elasticache
        amazonka-elasticbeanstalk
        amazonka-elasticsearch
        amazonka-elastictranscoder
        amazonka-elb
        amazonka-elbv2
        amazonka-emr
        amazonka-fms
        amazonka-gamelift
        amazonka-glacier
        amazonka-glue
        amazonka-greengrass
        amazonka-guardduty
        amazonka-health
        amazonka-iam
        amazonka-iam-policy
        amazonka-importexport
        amazonka-inspector
        amazonka-iot
        amazonka-iot-analytics
        amazonka-iot-dataplane
        amazonka-iot-jobs-dataplane
        amazonka-kinesis
        amazonka-kinesis-analytics
        amazonka-kinesis-firehose
        amazonka-kinesis-video
        amazonka-kinesis-video-archived-media
        amazonka-kinesis-video-media
        amazonka-kms
        amazonka-lambda
        amazonka-lex-models
        amazonka-lex-runtime
        amazonka-lightsail
        amazonka-marketplace-analytics
        amazonka-marketplace-entitlement
        amazonka-marketplace-metering
        amazonka-mechanicalturk
        amazonka-medialive
        amazonka-mediapackage
        amazonka-mediastore
        amazonka-mediastore-dataplane
        amazonka-migrationhub
        amazonka-ml
        amazonka-mobile
        amazonka-mq
        amazonka-opsworks
        amazonka-opsworks-cm
        amazonka-organizations
        amazonka-pinpoint
        amazonka-polly
        amazonka-pricing
        amazonka-rds
        amazonka-redshift
        amazonka-rekognition
        amazonka-resourcegroups
        amazonka-resourcegroupstagging
        amazonka-route53
        amazonka-route53-autonaming
        amazonka-route53-domains
        amazonka-s3
        amazonka-s3-streaming
        amazonka-sagemaker
        amazonka-sagemaker-runtime
        amazonka-sdb
        amazonka-secretsmanager
        amazonka-serverlessrepo
        amazonka-servicecatalog
        amazonka-ses
        amazonka-shield
        amazonka-sms
        amazonka-snowball
        amazonka-sns
        amazonka-sqs
        amazonka-ssm
        amazonka-stepfunctions
        amazonka-storagegateway
        amazonka-sts
        amazonka-support
        amazonka-swf
        amazonka-test
        amazonka-transcribe
        amazonka-translate
        amazonka-waf
        amazonka-waf-regional
        amazonka-workdocs
        amazonka-workmail
        amazonka-workspaces
        amazonka-xray

        # hsimport
        Chart
        Chart-gtk
        QuickCheck
        aeson-pretty
        async
        base-unicode-symbols
        base64
        base64-lens
        basic-prelude
        cabal-install
        cabal2nix
        cache
        chronos
        classy-prelude
        convertible
        data-textual
        diagrams
        extra
        ghcide
        hlint
        hpack
        iso8601-time
        lens
        lens-datetime
        lifted-async
        lifted-base
        megaparsec
        monad-loops
        regex-tdfa
        say
        shell-escape
        stack
        stm-lifted
        string-interpolate
        temporary
        utf8-string
        utility-ht
        uuid
        vector-algorithms
        wreq
        yesod
        yesod-bin

      ]);

      vscode = pkgs.vscode.overrideDerivation (old: {
        nativeBuildInputs = old.nativeBuildInputs or [] ++ [ pkgs.makeWrapper ];
        postFixup = ''
          wrapProgram $out/bin/code --prefix PATH : ${lib.makeBinPath [all-hies.latest]}
        '';
      });

    };
  }
