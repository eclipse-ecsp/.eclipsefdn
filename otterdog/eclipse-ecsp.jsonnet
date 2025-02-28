local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.ecsp', 'eclipse-ecsp') {
  settings+: {
    description: "",
    name: "Eclipse Connected Services Platform",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  secrets+: [        
    orgs.newOrgSecret('DOCKER_USERNAME') {
      value: "pass:bots/automotive.ecsp/docker.com/username",
    },
    orgs.newOrgSecret('DOCKER_API_TOKEN') {
      value: "pass:bots/automotive.ecsp/docker.com/api-token",
    },
    orgs.newOrgSecret('GPG_KEY_ID') {
      value: "pass:bots/automotive.ecsp/gpg/key_id",
    },
    orgs.newOrgSecret('GPG_PASSPHRASE') {
      value: "pass:bots/automotive.ecsp/gpg/passphrase",
    },
    orgs.newOrgSecret('GPG_PRIVATE_KEY') {
      value: "pass:bots/automotive.ecsp/gpg/secret-subkeys.asc",
    },
    orgs.newOrgSecret('OSSRH_PASSWORD') {
      value: "pass:bots/automotive.ecsp/oss.sonatype.org/gh-token-password",
    },
    orgs.newOrgSecret('OSSRH_USERNAME') {
      value: "pass:bots/automotive.ecsp/oss.sonatype.org/gh-token-username",
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
    },
    orgs.newRepo('ecsp-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP website",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('entities') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP entities",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-entities",
        },
      ],
    },
    orgs.newRepo('utils') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP utils",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-utils",
        },
      ],
    },
    orgs.newRepo('nosql-dao') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP NoSQL DAO library",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-nosql-dao",
        },
      ],
    },
    orgs.newRepo('androidVehicleConnectSDK') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP Android VehicleConnect SDK",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-androidVehicleConnectSDK",
        },
      ],
    },
    orgs.newRepo('androidVehicleConnectApp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP Android VehicleConnect App",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-androidVehicleConnectApp",
        },
      ],
    },
    orgs.newRepo('iOSVehicleConnectSDK') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP iOS VehicleConnect SDK",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-iOSVehicleConnectSDK",
        },
      ],
    },
    orgs.newRepo('iOSVehicleConnectApp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP iOS VehicleConnect App",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-iOSVehicleConnectApp",
        },
      ],
    },
  ],
}
