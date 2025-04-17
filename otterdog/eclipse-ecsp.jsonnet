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
    orgs.newOrgSecret('GPG_SUBKEY_ID') {
      value: "pass:bots/automotive.ecsp/gpg/subkey_id",
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
    orgs.newOrgSecret('GITLAB_API_TOKEN') {
      value: "pass:bots/automotive.ecsp/gitlab.eclipse.org/api-token",
    },
    orgs.newOrgSecret('ECSP_BOT_PAT') {
      value: "pass:/bots/automotive.ecsp/github.com/token-hd5703",
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
    orgs.newRepo('cache-enabler') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Enabler for caching functionality",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-cache-enabler",
        },
      ],
    },
    orgs.newRepo('transformers') {
      aliases: ['tranformers'],
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP Transformers",
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
    orgs.newRepo('streambase') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Enabler for event-driven microservices and MQTT communication",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-streambase",
        },
      ],
    },
    orgs.newRepo('api-gateway') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "A Spring cloud gateway based API Gateway that serves as a single entry point for microservices",
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
    orgs.newRepo('helloWorldService') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP service for CICD integration test",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "pass:bots/automotive.ecsp/sonarcloud.io/token-helloWorldService",
        },
      ],
    },
    orgs.newRepo('device-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP device-client",
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
    orgs.newRepo('uidam-user-management') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP UIDAM User Management Service",
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
    orgs.newRepo('uidam-authorization-server') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ECSP UIDAM Authorization Server",
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
    orgs.newRepo('services-dependencies') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "services-dependencies manages versions of eclipse ecsp and third-party dependencies",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      }
    },
    orgs.newRepo('services-common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "services-common library provides common utilities for micro-services",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      }
    },
    orgs.newRepo('api-common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "api-common is library provides common functionality for exposing Rest APIs",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      }
    },
  ],
}
