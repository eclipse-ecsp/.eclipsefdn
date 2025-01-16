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
  _repositories+:: [
    orgs.newRepo('.github') {
    },
    orgs.newRepo('androidVehicleConnectApp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
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
    orgs.newRepo('androidVehicleConnectSDK') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
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
    orgs.newRepo('api-common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-api-common",
        },
      ],
    },
    orgs.newRepo('api-gateway') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-api-gateway",
        },
      ],
    },
    orgs.newRepo('cache-utils') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP cache utils library",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-cache-utils",
        },
      ],
    },
    orgs.newRepo('device-activation') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-activation",
        },
      ],
    },
    orgs.newRepo('device-association') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-association",
        },
      ],
    },
    orgs.newRepo('device-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-client",
        },
      ],
    },
    orgs.newRepo('device-factory-management') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-factory-management",
        },
      ],
    },
    orgs.newRepo('device-message') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-message",
        },
      ],
    },
    orgs.newRepo('device-shadow') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-device-shadow",
        },
      ],
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
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-ecsp-website",
        },
      ],
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
    orgs.newRepo('hivemq') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-hivemq",
        },
      ],
    },
    orgs.newRepo('iOSVehicleConnectApp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
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
    orgs.newRepo('iOSVehicleConnectSDK') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
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
    orgs.newRepo('kafka-utils') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-kafka-utils",
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
    orgs.newRepo('redis-cache') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-redis-cache",
        },
      ],
    },
    orgs.newRepo('redis-jar') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP redis jar utility component for providing Redis JARs to run integration test cases",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-redis-jar",
        },
      ],
    },
    orgs.newRepo('ro') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-ro",
        },
      ],
    },
    orgs.newRepo('services-common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-services-common",
        },
      ],
    },
    orgs.newRepo('sql-dao') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP SQL DAO library",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-sql-dao",
        },
      ],
    },
    orgs.newRepo('stream-base') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP stream-base library",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-stream-base",
        },
      ],
    },
    orgs.newRepo('transformers') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP transformers",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-transformers",
        },
      ],
    },
    orgs.newRepo('uidam-authorization-server') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-uidam-authorization-server",
        },
      ],
    },
    orgs.newRepo('uidam-user-management') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-uidam-user-management",
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
    orgs.newRepo('vehicle-profile') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-vehicle-profile",
        },
      ],
    },
  ],
}
