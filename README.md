# sunshine-conversations-ruby

SunshineConversationsClient - the Ruby gem for the Sunshine Conversations API

This SDK is automatically generated by the [OpenAPI Generator Codegen](https://github.com/OpenAPITools/openapi-generator) project using the [Sunshine Conversations API spec](https://github.com/zendesk/sunshine-conversations-api-spec).

- API version: 9.15.0
- Package version: 9.15.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Sunshine Conversations API Version

The Sunshine Conversations API offers multiple [versions](https://docs.smooch.io/guide/versioning/). Each release of this project targets one and only one Sunshine Conversations API version. If you depend on an older version of the Sunshine Conversations API, you may need to use an older release of this library. Use the table below as your guide:

| Sunshine Conversations API version | `zendesk/sunshine-conversations-ruby` version to use |
|--------------------|--------------------------------|
| `v2` [Implementation guide](https://docs.smooch.io/guide/multi-party-conversations/#implementation-guide/) | `9.*` or newer      |
| `v1.1` [Upgrade guide](https://docs.smooch.io/guide/versioning/#upgrading-to-v11-from-v1) | `4.0.0` or newer      |
| `v1`               | `3.*` or older                 |


## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build sunshine-conversations-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./sunshine-conversations-client-9.15.0.gem
```

(for development, run `gem install --dev ./sunshine-conversations-client-9.15.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'sunshine-conversations-client', '~> 9.15.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'sunshine-conversations-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Familiarity with [Sunshine Conversations API authentication](https://docs.smooch.io/guide/authentication-overview) is recommended.

### Basic Authentication (recommended)

With [basic authentication](https://docs.smooch.io/guide/basic-authentication), you can use your API key ID and secret to authenticate API requests. See below for a code sample.

### Authentication with JSON Web Tokens (JWTs)

See the [JSON Web Tokens (JWTs)](https://docs.smooch.io/guide/jwt) guide for more information and guidelines on when to use this method. In general, you'll want to favor using basic authentication.

To generate a JWT, use your API key ID and secret.

Using the [ruby-jwt](https://github.com/jwt/ruby-jwt) gem:

```ruby
require 'jwt'

payload = {:scope => 'app'}
jwtHeader = {:kid => API_KEY_ID}

token = JWT.encode payload, API_KEY_SECRET, 'HS256', jwtHeader
```

### Running the code

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'sunshine-conversations-client'

# Setup authorization
SunshineConversationsClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = SunshineConversationsClient::ActivitiesApi.new
app_id = '5d8cff3cd55b040010928b5b' # String | Identifies the app.
conversation_id = '029c31f25a21b47effd7be90' # String | Identifies the conversation.
activity_post = {"author":{"type":"user","userId":"5963c0d619a30a2e00de36b8"},"type":"conversation:read"} # ActivityPost | 

begin
  #Post Activity
  result = api_instance.post_activity(app_id, conversation_id, activity_post)
  p result
rescue SunshineConversationsClient::ApiError => e
  puts "Exception when calling ActivitiesApi->post_activity: #{e}"
end

```

### Region

Sunshine Conversations is available in the following [regions](https://docs.smooch.io/rest/#section/Introduction/Regions). The US region will be used by default. To target any other region, specify the region's API host in `config.host`. For example:

```ruby
SunshineConversationsClient.configure do |config|
  config.host = 'api.eu-1.smooch.io'
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.smooch.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SunshineConversationsClient::ActivitiesApi* | [**post_activity**](docs/ActivitiesApi.md#post_activity) | **POST** /v2/apps/{appId}/conversations/{conversationId}/activity | Post Activity
*SunshineConversationsClient::AppKeysApi* | [**create_app_key**](docs/AppKeysApi.md#create_app_key) | **POST** /v2/apps/{appId}/keys | Create App Key
*SunshineConversationsClient::AppKeysApi* | [**delete_app_key**](docs/AppKeysApi.md#delete_app_key) | **DELETE** /v2/apps/{appId}/keys/{keyId} | Delete App Key
*SunshineConversationsClient::AppKeysApi* | [**get_app_key**](docs/AppKeysApi.md#get_app_key) | **GET** /v2/apps/{appId}/keys/{keyId} | Get App Key
*SunshineConversationsClient::AppKeysApi* | [**list_app_keys**](docs/AppKeysApi.md#list_app_keys) | **GET** /v2/apps/{appId}/keys | List App Keys
*SunshineConversationsClient::AppsApi* | [**create_app**](docs/AppsApi.md#create_app) | **POST** /v2/apps | Create App
*SunshineConversationsClient::AppsApi* | [**delete_app**](docs/AppsApi.md#delete_app) | **DELETE** /v2/apps/{appId} | Delete App
*SunshineConversationsClient::AppsApi* | [**get_app**](docs/AppsApi.md#get_app) | **GET** /v2/apps/{appId} | Get App
*SunshineConversationsClient::AppsApi* | [**list_apps**](docs/AppsApi.md#list_apps) | **GET** /v2/apps | List Apps
*SunshineConversationsClient::AppsApi* | [**update_app**](docs/AppsApi.md#update_app) | **PATCH** /v2/apps/{appId} | Update App
*SunshineConversationsClient::AttachmentsApi* | [**delete_attachment**](docs/AttachmentsApi.md#delete_attachment) | **POST** /v2/apps/{appId}/attachments/remove | Delete Attachment
*SunshineConversationsClient::AttachmentsApi* | [**generate_media_json_web_token**](docs/AttachmentsApi.md#generate_media_json_web_token) | **POST** /v2/apps/{appId}/attachments/token | Generate Media Token
*SunshineConversationsClient::AttachmentsApi* | [**set_cookie**](docs/AttachmentsApi.md#set_cookie) | **GET** /v2/apps/{appId}/attachments/cookie | Set Cookie
*SunshineConversationsClient::AttachmentsApi* | [**upload_attachment**](docs/AttachmentsApi.md#upload_attachment) | **POST** /v2/apps/{appId}/attachments | Upload Attachment
*SunshineConversationsClient::ClientsApi* | [**create_client**](docs/ClientsApi.md#create_client) | **POST** /v2/apps/{appId}/users/{userIdOrExternalId}/clients | Create Client
*SunshineConversationsClient::ClientsApi* | [**list_clients**](docs/ClientsApi.md#list_clients) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId}/clients | List Clients
*SunshineConversationsClient::ClientsApi* | [**remove_client**](docs/ClientsApi.md#remove_client) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId}/clients/{clientId} | Remove Client
*SunshineConversationsClient::ConversationsApi* | [**create_conversation**](docs/ConversationsApi.md#create_conversation) | **POST** /v2/apps/{appId}/conversations | Create Conversation
*SunshineConversationsClient::ConversationsApi* | [**delete_conversation**](docs/ConversationsApi.md#delete_conversation) | **DELETE** /v2/apps/{appId}/conversations/{conversationId} | Delete Conversation
*SunshineConversationsClient::ConversationsApi* | [**get_conversation**](docs/ConversationsApi.md#get_conversation) | **GET** /v2/apps/{appId}/conversations/{conversationId} | Get Conversation
*SunshineConversationsClient::ConversationsApi* | [**list_conversations**](docs/ConversationsApi.md#list_conversations) | **GET** /v2/apps/{appId}/conversations | List Conversations
*SunshineConversationsClient::ConversationsApi* | [**update_conversation**](docs/ConversationsApi.md#update_conversation) | **PATCH** /v2/apps/{appId}/conversations/{conversationId} | Update Conversation
*SunshineConversationsClient::CustomIntegrationApiKeysApi* | [**create_custom_integration_key**](docs/CustomIntegrationApiKeysApi.md#create_custom_integration_key) | **POST** /v2/apps/{appId}/integrations/{integrationId}/keys | Create Integration Key
*SunshineConversationsClient::CustomIntegrationApiKeysApi* | [**delete_custom_integration_key**](docs/CustomIntegrationApiKeysApi.md#delete_custom_integration_key) | **DELETE** /v2/apps/{appId}/integrations/{integrationId}/keys/{keyId} | Delete Integration Key
*SunshineConversationsClient::CustomIntegrationApiKeysApi* | [**get_custom_integration_key**](docs/CustomIntegrationApiKeysApi.md#get_custom_integration_key) | **GET** /v2/apps/{appId}/integrations/{integrationId}/keys/{keyId} | Get Integration Key
*SunshineConversationsClient::CustomIntegrationApiKeysApi* | [**list_custom_integration_keys**](docs/CustomIntegrationApiKeysApi.md#list_custom_integration_keys) | **GET** /v2/apps/{appId}/integrations/{integrationId}/keys | List Integration Keys
*SunshineConversationsClient::IntegrationsApi* | [**create_integration**](docs/IntegrationsApi.md#create_integration) | **POST** /v2/apps/{appId}/integrations | Create Integration
*SunshineConversationsClient::IntegrationsApi* | [**delete_integration**](docs/IntegrationsApi.md#delete_integration) | **DELETE** /v2/apps/{appId}/integrations/{integrationId} | Delete Integration
*SunshineConversationsClient::IntegrationsApi* | [**get_integration**](docs/IntegrationsApi.md#get_integration) | **GET** /v2/apps/{appId}/integrations/{integrationId} | Get Integration
*SunshineConversationsClient::IntegrationsApi* | [**list_integrations**](docs/IntegrationsApi.md#list_integrations) | **GET** /v2/apps/{appId}/integrations | List Integrations
*SunshineConversationsClient::IntegrationsApi* | [**update_integration**](docs/IntegrationsApi.md#update_integration) | **PATCH** /v2/apps/{appId}/integrations/{integrationId} | Update Integration
*SunshineConversationsClient::MessagesApi* | [**delete_all_messages**](docs/MessagesApi.md#delete_all_messages) | **DELETE** /v2/apps/{appId}/conversations/{conversationId}/messages | Delete All Messages
*SunshineConversationsClient::MessagesApi* | [**delete_message**](docs/MessagesApi.md#delete_message) | **DELETE** /v2/apps/{appId}/conversations/{conversationId}/messages/{messageId} | Delete Message
*SunshineConversationsClient::MessagesApi* | [**list_messages**](docs/MessagesApi.md#list_messages) | **GET** /v2/apps/{appId}/conversations/{conversationId}/messages | List Messages
*SunshineConversationsClient::MessagesApi* | [**post_message**](docs/MessagesApi.md#post_message) | **POST** /v2/apps/{appId}/conversations/{conversationId}/messages | Post Message
*SunshineConversationsClient::OAuthEndpointsApi* | [**authorize**](docs/OAuthEndpointsApi.md#authorize) | **GET** /oauth/authorize | Authorize
*SunshineConversationsClient::OAuthEndpointsApi* | [**get_token**](docs/OAuthEndpointsApi.md#get_token) | **POST** /oauth/token | Get Token
*SunshineConversationsClient::OAuthEndpointsApi* | [**revoke_access**](docs/OAuthEndpointsApi.md#revoke_access) | **DELETE** /oauth/authorization | Revoke Access
*SunshineConversationsClient::ParticipantsApi* | [**join_conversation**](docs/ParticipantsApi.md#join_conversation) | **POST** /v2/apps/{appId}/conversations/{conversationId}/join | Join Conversation
*SunshineConversationsClient::ParticipantsApi* | [**leave_conversation**](docs/ParticipantsApi.md#leave_conversation) | **POST** /v2/apps/{appId}/conversations/{conversationId}/leave | Leave Conversation
*SunshineConversationsClient::ParticipantsApi* | [**list_participants**](docs/ParticipantsApi.md#list_participants) | **GET** /v2/apps/{appId}/conversations/{conversationId}/participants | List Participants
*SunshineConversationsClient::SwitchboardActionsApi* | [**accept_control**](docs/SwitchboardActionsApi.md#accept_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/acceptControl | Accept Control
*SunshineConversationsClient::SwitchboardActionsApi* | [**offer_control**](docs/SwitchboardActionsApi.md#offer_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/offerControl | Offer Control
*SunshineConversationsClient::SwitchboardActionsApi* | [**pass_control**](docs/SwitchboardActionsApi.md#pass_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/passControl | Pass Control
*SunshineConversationsClient::SwitchboardActionsApi* | [**release_control**](docs/SwitchboardActionsApi.md#release_control) | **POST** /v2/apps/{appId}/conversations/{conversationId}/releaseControl | Release Control
*SunshineConversationsClient::SwitchboardIntegrationsApi* | [**create_switchboard_integration**](docs/SwitchboardIntegrationsApi.md#create_switchboard_integration) | **POST** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations | Create Switchboard Integration
*SunshineConversationsClient::SwitchboardIntegrationsApi* | [**delete_switchboard_integration**](docs/SwitchboardIntegrationsApi.md#delete_switchboard_integration) | **DELETE** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId} | Delete Switchboard Integration
*SunshineConversationsClient::SwitchboardIntegrationsApi* | [**list_switchboard_integrations**](docs/SwitchboardIntegrationsApi.md#list_switchboard_integrations) | **GET** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations | List Switchboard Integrations
*SunshineConversationsClient::SwitchboardIntegrationsApi* | [**update_switchboard_integration**](docs/SwitchboardIntegrationsApi.md#update_switchboard_integration) | **PATCH** /v2/apps/{appId}/switchboards/{switchboardId}/switchboardIntegrations/{switchboardIntegrationId} | Update Switchboard Integration
*SunshineConversationsClient::SwitchboardsApi* | [**create_switchboard**](docs/SwitchboardsApi.md#create_switchboard) | **POST** /v2/apps/{appId}/switchboards | Create Switchboard
*SunshineConversationsClient::SwitchboardsApi* | [**delete_switchboard**](docs/SwitchboardsApi.md#delete_switchboard) | **DELETE** /v2/apps/{appId}/switchboards/{switchboardId} | Delete Switchboard
*SunshineConversationsClient::SwitchboardsApi* | [**list_switchboards**](docs/SwitchboardsApi.md#list_switchboards) | **GET** /v2/apps/{appId}/switchboards | List Switchboards
*SunshineConversationsClient::SwitchboardsApi* | [**update_switchboard**](docs/SwitchboardsApi.md#update_switchboard) | **PATCH** /v2/apps/{appId}/switchboards/{switchboardId} | Update Switchboard
*SunshineConversationsClient::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /v2/apps/{appId}/users | Create User
*SunshineConversationsClient::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId} | Delete User
*SunshineConversationsClient::UsersApi* | [**delete_user_personal_information**](docs/UsersApi.md#delete_user_personal_information) | **DELETE** /v2/apps/{appId}/users/{userIdOrExternalId}/personalinformation | Delete User Personal Information
*SunshineConversationsClient::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /v2/apps/{appId}/users/{userIdOrExternalId} | Get User
*SunshineConversationsClient::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /v2/apps/{appId}/users/{userIdOrExternalId} | Update User
*SunshineConversationsClient::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /v2/apps/{appId}/integrations/{integrationId}/webhooks | Create Webhook
*SunshineConversationsClient::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Delete Webhook
*SunshineConversationsClient::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Get Webhook
*SunshineConversationsClient::WebhooksApi* | [**list_webhooks**](docs/WebhooksApi.md#list_webhooks) | **GET** /v2/apps/{appId}/integrations/{integrationId}/webhooks | List Webhooks
*SunshineConversationsClient::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PATCH** /v2/apps/{appId}/integrations/{integrationId}/webhooks/{webhookId} | Update Webhook


## Documentation for Models

 - [SunshineConversationsClient::AcceptControlBody](docs/AcceptControlBody.md)
 - [SunshineConversationsClient::Action](docs/Action.md)
 - [SunshineConversationsClient::ActionSubset](docs/ActionSubset.md)
 - [SunshineConversationsClient::Activity](docs/Activity.md)
 - [SunshineConversationsClient::ActivityAllOf](docs/ActivityAllOf.md)
 - [SunshineConversationsClient::ActivityPost](docs/ActivityPost.md)
 - [SunshineConversationsClient::ActivityPostAllOf](docs/ActivityPostAllOf.md)
 - [SunshineConversationsClient::ActivityTypes](docs/ActivityTypes.md)
 - [SunshineConversationsClient::Android](docs/Android.md)
 - [SunshineConversationsClient::AndroidAllOf](docs/AndroidAllOf.md)
 - [SunshineConversationsClient::AndroidUpdate](docs/AndroidUpdate.md)
 - [SunshineConversationsClient::AndroidUpdateAllOf](docs/AndroidUpdateAllOf.md)
 - [SunshineConversationsClient::ApiKey](docs/ApiKey.md)
 - [SunshineConversationsClient::App](docs/App.md)
 - [SunshineConversationsClient::AppCreateBody](docs/AppCreateBody.md)
 - [SunshineConversationsClient::AppKey](docs/AppKey.md)
 - [SunshineConversationsClient::AppKeyCreateBody](docs/AppKeyCreateBody.md)
 - [SunshineConversationsClient::AppKeyListResponse](docs/AppKeyListResponse.md)
 - [SunshineConversationsClient::AppKeyResponse](docs/AppKeyResponse.md)
 - [SunshineConversationsClient::AppListFilter](docs/AppListFilter.md)
 - [SunshineConversationsClient::AppListResponse](docs/AppListResponse.md)
 - [SunshineConversationsClient::AppResponse](docs/AppResponse.md)
 - [SunshineConversationsClient::AppSettings](docs/AppSettings.md)
 - [SunshineConversationsClient::AppSubSchema](docs/AppSubSchema.md)
 - [SunshineConversationsClient::AppUpdateBody](docs/AppUpdateBody.md)
 - [SunshineConversationsClient::Apple](docs/Apple.md)
 - [SunshineConversationsClient::AppleAllOf](docs/AppleAllOf.md)
 - [SunshineConversationsClient::AppleUpdate](docs/AppleUpdate.md)
 - [SunshineConversationsClient::AttachmentDeleteBody](docs/AttachmentDeleteBody.md)
 - [SunshineConversationsClient::AttachmentMediaTokenBody](docs/AttachmentMediaTokenBody.md)
 - [SunshineConversationsClient::AttachmentMediaTokenResponse](docs/AttachmentMediaTokenResponse.md)
 - [SunshineConversationsClient::AttachmentResponse](docs/AttachmentResponse.md)
 - [SunshineConversationsClient::AttachmentSchema](docs/AttachmentSchema.md)
 - [SunshineConversationsClient::AttachmentUploadBody](docs/AttachmentUploadBody.md)
 - [SunshineConversationsClient::Author](docs/Author.md)
 - [SunshineConversationsClient::AuthorWebhook](docs/AuthorWebhook.md)
 - [SunshineConversationsClient::Buy](docs/Buy.md)
 - [SunshineConversationsClient::Campaign](docs/Campaign.md)
 - [SunshineConversationsClient::CarouselMessage](docs/CarouselMessage.md)
 - [SunshineConversationsClient::CarouselMessageDisplaySettings](docs/CarouselMessageDisplaySettings.md)
 - [SunshineConversationsClient::Client](docs/Client.md)
 - [SunshineConversationsClient::ClientAddEvent](docs/ClientAddEvent.md)
 - [SunshineConversationsClient::ClientAddEventAllOf](docs/ClientAddEventAllOf.md)
 - [SunshineConversationsClient::ClientAddEventAllOfPayload](docs/ClientAddEventAllOfPayload.md)
 - [SunshineConversationsClient::ClientAssociation](docs/ClientAssociation.md)
 - [SunshineConversationsClient::ClientCreate](docs/ClientCreate.md)
 - [SunshineConversationsClient::ClientListResponse](docs/ClientListResponse.md)
 - [SunshineConversationsClient::ClientRemoveEvent](docs/ClientRemoveEvent.md)
 - [SunshineConversationsClient::ClientRemoveEventAllOf](docs/ClientRemoveEventAllOf.md)
 - [SunshineConversationsClient::ClientRemoveEventAllOfPayload](docs/ClientRemoveEventAllOfPayload.md)
 - [SunshineConversationsClient::ClientResponse](docs/ClientResponse.md)
 - [SunshineConversationsClient::ClientType](docs/ClientType.md)
 - [SunshineConversationsClient::ClientUpdateEvent](docs/ClientUpdateEvent.md)
 - [SunshineConversationsClient::ClientUpdateEventAllOf](docs/ClientUpdateEventAllOf.md)
 - [SunshineConversationsClient::ClientUpdateEventAllOfPayload](docs/ClientUpdateEventAllOfPayload.md)
 - [SunshineConversationsClient::Confirmation](docs/Confirmation.md)
 - [SunshineConversationsClient::Content](docs/Content.md)
 - [SunshineConversationsClient::Conversation](docs/Conversation.md)
 - [SunshineConversationsClient::ConversationAllOf](docs/ConversationAllOf.md)
 - [SunshineConversationsClient::ConversationCreateBody](docs/ConversationCreateBody.md)
 - [SunshineConversationsClient::ConversationCreateEvent](docs/ConversationCreateEvent.md)
 - [SunshineConversationsClient::ConversationCreateEventAllOf](docs/ConversationCreateEventAllOf.md)
 - [SunshineConversationsClient::ConversationCreateEventAllOfPayload](docs/ConversationCreateEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationJoinEvent](docs/ConversationJoinEvent.md)
 - [SunshineConversationsClient::ConversationJoinEventAllOf](docs/ConversationJoinEventAllOf.md)
 - [SunshineConversationsClient::ConversationJoinEventAllOfPayload](docs/ConversationJoinEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationLeaveEvent](docs/ConversationLeaveEvent.md)
 - [SunshineConversationsClient::ConversationLeaveEventAllOf](docs/ConversationLeaveEventAllOf.md)
 - [SunshineConversationsClient::ConversationLeaveEventAllOfPayload](docs/ConversationLeaveEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationListFilter](docs/ConversationListFilter.md)
 - [SunshineConversationsClient::ConversationListResponse](docs/ConversationListResponse.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryChannelEvent](docs/ConversationMessageDeliveryChannelEvent.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryChannelEventAllOf](docs/ConversationMessageDeliveryChannelEventAllOf.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryFailureEvent](docs/ConversationMessageDeliveryFailureEvent.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryFailureEventAllOf](docs/ConversationMessageDeliveryFailureEventAllOf.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryPayload](docs/ConversationMessageDeliveryPayload.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryPayloadDestination](docs/ConversationMessageDeliveryPayloadDestination.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryPayloadExternalMessages](docs/ConversationMessageDeliveryPayloadExternalMessages.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryPayloadMessage](docs/ConversationMessageDeliveryPayloadMessage.md)
 - [SunshineConversationsClient::ConversationMessageDeliveryUserEvent](docs/ConversationMessageDeliveryUserEvent.md)
 - [SunshineConversationsClient::ConversationMessageEvent](docs/ConversationMessageEvent.md)
 - [SunshineConversationsClient::ConversationMessageEventAllOf](docs/ConversationMessageEventAllOf.md)
 - [SunshineConversationsClient::ConversationMessageEventAllOfPayload](docs/ConversationMessageEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationPostbackEvent](docs/ConversationPostbackEvent.md)
 - [SunshineConversationsClient::ConversationPostbackEventAllOf](docs/ConversationPostbackEventAllOf.md)
 - [SunshineConversationsClient::ConversationPostbackEventAllOfPayload](docs/ConversationPostbackEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationReadEvent](docs/ConversationReadEvent.md)
 - [SunshineConversationsClient::ConversationReadEventAllOf](docs/ConversationReadEventAllOf.md)
 - [SunshineConversationsClient::ConversationReadEventAllOfPayload](docs/ConversationReadEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationReferralEvent](docs/ConversationReferralEvent.md)
 - [SunshineConversationsClient::ConversationReferralEventAllOf](docs/ConversationReferralEventAllOf.md)
 - [SunshineConversationsClient::ConversationReferralEventAllOfPayload](docs/ConversationReferralEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationRemoveEvent](docs/ConversationRemoveEvent.md)
 - [SunshineConversationsClient::ConversationRemoveEventAllOf](docs/ConversationRemoveEventAllOf.md)
 - [SunshineConversationsClient::ConversationRemoveEventAllOfPayload](docs/ConversationRemoveEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationResponse](docs/ConversationResponse.md)
 - [SunshineConversationsClient::ConversationTruncated](docs/ConversationTruncated.md)
 - [SunshineConversationsClient::ConversationType](docs/ConversationType.md)
 - [SunshineConversationsClient::ConversationTypingEvent](docs/ConversationTypingEvent.md)
 - [SunshineConversationsClient::ConversationTypingEventAllOf](docs/ConversationTypingEventAllOf.md)
 - [SunshineConversationsClient::ConversationTypingEventAllOfPayload](docs/ConversationTypingEventAllOfPayload.md)
 - [SunshineConversationsClient::ConversationUpdateBody](docs/ConversationUpdateBody.md)
 - [SunshineConversationsClient::Custom](docs/Custom.md)
 - [SunshineConversationsClient::CustomAllOf](docs/CustomAllOf.md)
 - [SunshineConversationsClient::CustomUpdate](docs/CustomUpdate.md)
 - [SunshineConversationsClient::Destination](docs/Destination.md)
 - [SunshineConversationsClient::Device](docs/Device.md)
 - [SunshineConversationsClient::EventSubSchema](docs/EventSubSchema.md)
 - [SunshineConversationsClient::ExtraChannelOptions](docs/ExtraChannelOptions.md)
 - [SunshineConversationsClient::ExtraChannelOptionsMessenger](docs/ExtraChannelOptionsMessenger.md)
 - [SunshineConversationsClient::Field](docs/Field.md)
 - [SunshineConversationsClient::FileMessage](docs/FileMessage.md)
 - [SunshineConversationsClient::FormMessage](docs/FormMessage.md)
 - [SunshineConversationsClient::FormResponseMessage](docs/FormResponseMessage.md)
 - [SunshineConversationsClient::Identity](docs/Identity.md)
 - [SunshineConversationsClient::ImageMessage](docs/ImageMessage.md)
 - [SunshineConversationsClient::InlineObject](docs/InlineObject.md)
 - [SunshineConversationsClient::Instagram](docs/Instagram.md)
 - [SunshineConversationsClient::InstagramAllOf](docs/InstagramAllOf.md)
 - [SunshineConversationsClient::InstagramUpdate](docs/InstagramUpdate.md)
 - [SunshineConversationsClient::InstagramUpdateAllOf](docs/InstagramUpdateAllOf.md)
 - [SunshineConversationsClient::Integration](docs/Integration.md)
 - [SunshineConversationsClient::IntegrationApiKey](docs/IntegrationApiKey.md)
 - [SunshineConversationsClient::IntegrationApiKeyListResponse](docs/IntegrationApiKeyListResponse.md)
 - [SunshineConversationsClient::IntegrationApiKeyResponse](docs/IntegrationApiKeyResponse.md)
 - [SunshineConversationsClient::IntegrationId](docs/IntegrationId.md)
 - [SunshineConversationsClient::IntegrationListFilter](docs/IntegrationListFilter.md)
 - [SunshineConversationsClient::IntegrationListResponse](docs/IntegrationListResponse.md)
 - [SunshineConversationsClient::IntegrationResponse](docs/IntegrationResponse.md)
 - [SunshineConversationsClient::IntegrationType](docs/IntegrationType.md)
 - [SunshineConversationsClient::IntegrationUpdate](docs/IntegrationUpdate.md)
 - [SunshineConversationsClient::IntegrationUpdateBase](docs/IntegrationUpdateBase.md)
 - [SunshineConversationsClient::Ios](docs/Ios.md)
 - [SunshineConversationsClient::IosAllOf](docs/IosAllOf.md)
 - [SunshineConversationsClient::IosUpdate](docs/IosUpdate.md)
 - [SunshineConversationsClient::IosUpdateAllOf](docs/IosUpdateAllOf.md)
 - [SunshineConversationsClient::Item](docs/Item.md)
 - [SunshineConversationsClient::Line](docs/Line.md)
 - [SunshineConversationsClient::LineAllOf](docs/LineAllOf.md)
 - [SunshineConversationsClient::LineUpdate](docs/LineUpdate.md)
 - [SunshineConversationsClient::Link](docs/Link.md)
 - [SunshineConversationsClient::Links](docs/Links.md)
 - [SunshineConversationsClient::ListMessage](docs/ListMessage.md)
 - [SunshineConversationsClient::LocationMessage](docs/LocationMessage.md)
 - [SunshineConversationsClient::LocationMessageCoordinates](docs/LocationMessageCoordinates.md)
 - [SunshineConversationsClient::LocationMessageLocation](docs/LocationMessageLocation.md)
 - [SunshineConversationsClient::LocationRequest](docs/LocationRequest.md)
 - [SunshineConversationsClient::Mailgun](docs/Mailgun.md)
 - [SunshineConversationsClient::MailgunAllOf](docs/MailgunAllOf.md)
 - [SunshineConversationsClient::MailgunUpdate](docs/MailgunUpdate.md)
 - [SunshineConversationsClient::MailgunUpdateAllOf](docs/MailgunUpdateAllOf.md)
 - [SunshineConversationsClient::MatchCriteria](docs/MatchCriteria.md)
 - [SunshineConversationsClient::MatchCriteriaBase](docs/MatchCriteriaBase.md)
 - [SunshineConversationsClient::MatchCriteriaMailgun](docs/MatchCriteriaMailgun.md)
 - [SunshineConversationsClient::MatchCriteriaMailgunAllOf](docs/MatchCriteriaMailgunAllOf.md)
 - [SunshineConversationsClient::MatchCriteriaMessagebird](docs/MatchCriteriaMessagebird.md)
 - [SunshineConversationsClient::MatchCriteriaMessagebirdAllOf](docs/MatchCriteriaMessagebirdAllOf.md)
 - [SunshineConversationsClient::MatchCriteriaTwilio](docs/MatchCriteriaTwilio.md)
 - [SunshineConversationsClient::MatchCriteriaTwilioAllOf](docs/MatchCriteriaTwilioAllOf.md)
 - [SunshineConversationsClient::MatchCriteriaWhatsapp](docs/MatchCriteriaWhatsapp.md)
 - [SunshineConversationsClient::MatchCriteriaWhatsappAllOf](docs/MatchCriteriaWhatsappAllOf.md)
 - [SunshineConversationsClient::Message](docs/Message.md)
 - [SunshineConversationsClient::MessageBirdUpdate](docs/MessageBirdUpdate.md)
 - [SunshineConversationsClient::MessageListResponse](docs/MessageListResponse.md)
 - [SunshineConversationsClient::MessageOverride](docs/MessageOverride.md)
 - [SunshineConversationsClient::MessageOverrideApple](docs/MessageOverrideApple.md)
 - [SunshineConversationsClient::MessageOverrideLine](docs/MessageOverrideLine.md)
 - [SunshineConversationsClient::MessageOverrideMessenger](docs/MessageOverrideMessenger.md)
 - [SunshineConversationsClient::MessageOverridePayload](docs/MessageOverridePayload.md)
 - [SunshineConversationsClient::MessageOverrideWhatsapp](docs/MessageOverrideWhatsapp.md)
 - [SunshineConversationsClient::MessagePost](docs/MessagePost.md)
 - [SunshineConversationsClient::MessagePostResponse](docs/MessagePostResponse.md)
 - [SunshineConversationsClient::MessageWebhook](docs/MessageWebhook.md)
 - [SunshineConversationsClient::Messagebird](docs/Messagebird.md)
 - [SunshineConversationsClient::MessagebirdAllOf](docs/MessagebirdAllOf.md)
 - [SunshineConversationsClient::Messenger](docs/Messenger.md)
 - [SunshineConversationsClient::MessengerAllOf](docs/MessengerAllOf.md)
 - [SunshineConversationsClient::MessengerUpdate](docs/MessengerUpdate.md)
 - [SunshineConversationsClient::Meta](docs/Meta.md)
 - [SunshineConversationsClient::OfferControlBody](docs/OfferControlBody.md)
 - [SunshineConversationsClient::Page](docs/Page.md)
 - [SunshineConversationsClient::Participant](docs/Participant.md)
 - [SunshineConversationsClient::ParticipantJoinBody](docs/ParticipantJoinBody.md)
 - [SunshineConversationsClient::ParticipantLeaveBody](docs/ParticipantLeaveBody.md)
 - [SunshineConversationsClient::ParticipantLeaveBodyParticipantId](docs/ParticipantLeaveBodyParticipantId.md)
 - [SunshineConversationsClient::ParticipantLeaveBodyUserExternalId](docs/ParticipantLeaveBodyUserExternalId.md)
 - [SunshineConversationsClient::ParticipantLeaveBodyUserId](docs/ParticipantLeaveBodyUserId.md)
 - [SunshineConversationsClient::ParticipantListResponse](docs/ParticipantListResponse.md)
 - [SunshineConversationsClient::ParticipantResponse](docs/ParticipantResponse.md)
 - [SunshineConversationsClient::ParticipantSubSchema](docs/ParticipantSubSchema.md)
 - [SunshineConversationsClient::ParticipantWithUserExternalId](docs/ParticipantWithUserExternalId.md)
 - [SunshineConversationsClient::ParticipantWithUserId](docs/ParticipantWithUserId.md)
 - [SunshineConversationsClient::PassControlBody](docs/PassControlBody.md)
 - [SunshineConversationsClient::Postback](docs/Postback.md)
 - [SunshineConversationsClient::PostbackWebhook](docs/PostbackWebhook.md)
 - [SunshineConversationsClient::PrechatCapture](docs/PrechatCapture.md)
 - [SunshineConversationsClient::Profile](docs/Profile.md)
 - [SunshineConversationsClient::QuotedMessage](docs/QuotedMessage.md)
 - [SunshineConversationsClient::QuotedMessageExternalMessageId](docs/QuotedMessageExternalMessageId.md)
 - [SunshineConversationsClient::QuotedMessageMessage](docs/QuotedMessageMessage.md)
 - [SunshineConversationsClient::Referral](docs/Referral.md)
 - [SunshineConversationsClient::ReferralDetails](docs/ReferralDetails.md)
 - [SunshineConversationsClient::Reply](docs/Reply.md)
 - [SunshineConversationsClient::Source](docs/Source.md)
 - [SunshineConversationsClient::SourceWebhook](docs/SourceWebhook.md)
 - [SunshineConversationsClient::SourceWithCampaignWebhook](docs/SourceWithCampaignWebhook.md)
 - [SunshineConversationsClient::SourceWithCampaignWebhookAllOf](docs/SourceWithCampaignWebhookAllOf.md)
 - [SunshineConversationsClient::Status](docs/Status.md)
 - [SunshineConversationsClient::Switchboard](docs/Switchboard.md)
 - [SunshineConversationsClient::SwitchboardAcceptControl](docs/SwitchboardAcceptControl.md)
 - [SunshineConversationsClient::SwitchboardAcceptControlAllOf](docs/SwitchboardAcceptControlAllOf.md)
 - [SunshineConversationsClient::SwitchboardAcceptControlAllOfPayload](docs/SwitchboardAcceptControlAllOfPayload.md)
 - [SunshineConversationsClient::SwitchboardAcceptControlFailure](docs/SwitchboardAcceptControlFailure.md)
 - [SunshineConversationsClient::SwitchboardAcceptControlFailureAllOf](docs/SwitchboardAcceptControlFailureAllOf.md)
 - [SunshineConversationsClient::SwitchboardAcceptControlFailureAllOfPayload](docs/SwitchboardAcceptControlFailureAllOfPayload.md)
 - [SunshineConversationsClient::SwitchboardIntegration](docs/SwitchboardIntegration.md)
 - [SunshineConversationsClient::SwitchboardIntegrationCreateBody](docs/SwitchboardIntegrationCreateBody.md)
 - [SunshineConversationsClient::SwitchboardIntegrationListResponse](docs/SwitchboardIntegrationListResponse.md)
 - [SunshineConversationsClient::SwitchboardIntegrationResponse](docs/SwitchboardIntegrationResponse.md)
 - [SunshineConversationsClient::SwitchboardIntegrationUpdateBody](docs/SwitchboardIntegrationUpdateBody.md)
 - [SunshineConversationsClient::SwitchboardIntegrationWebhook](docs/SwitchboardIntegrationWebhook.md)
 - [SunshineConversationsClient::SwitchboardListResponse](docs/SwitchboardListResponse.md)
 - [SunshineConversationsClient::SwitchboardOfferControl](docs/SwitchboardOfferControl.md)
 - [SunshineConversationsClient::SwitchboardOfferControlAllOf](docs/SwitchboardOfferControlAllOf.md)
 - [SunshineConversationsClient::SwitchboardOfferControlAllOfPayload](docs/SwitchboardOfferControlAllOfPayload.md)
 - [SunshineConversationsClient::SwitchboardOfferControlFailure](docs/SwitchboardOfferControlFailure.md)
 - [SunshineConversationsClient::SwitchboardPassControl](docs/SwitchboardPassControl.md)
 - [SunshineConversationsClient::SwitchboardPassControlAllOf](docs/SwitchboardPassControlAllOf.md)
 - [SunshineConversationsClient::SwitchboardPassControlAllOfPayload](docs/SwitchboardPassControlAllOfPayload.md)
 - [SunshineConversationsClient::SwitchboardPassControlFailure](docs/SwitchboardPassControlFailure.md)
 - [SunshineConversationsClient::SwitchboardResponse](docs/SwitchboardResponse.md)
 - [SunshineConversationsClient::SwitchboardUpdateBody](docs/SwitchboardUpdateBody.md)
 - [SunshineConversationsClient::Target](docs/Target.md)
 - [SunshineConversationsClient::Telegram](docs/Telegram.md)
 - [SunshineConversationsClient::TelegramAllOf](docs/TelegramAllOf.md)
 - [SunshineConversationsClient::TelegramUpdate](docs/TelegramUpdate.md)
 - [SunshineConversationsClient::TemplateMessage](docs/TemplateMessage.md)
 - [SunshineConversationsClient::TextMessage](docs/TextMessage.md)
 - [SunshineConversationsClient::Twilio](docs/Twilio.md)
 - [SunshineConversationsClient::TwilioAllOf](docs/TwilioAllOf.md)
 - [SunshineConversationsClient::TwilioUpdate](docs/TwilioUpdate.md)
 - [SunshineConversationsClient::Twitter](docs/Twitter.md)
 - [SunshineConversationsClient::TwitterAllOf](docs/TwitterAllOf.md)
 - [SunshineConversationsClient::TwitterUpdate](docs/TwitterUpdate.md)
 - [SunshineConversationsClient::User](docs/User.md)
 - [SunshineConversationsClient::UserAllOf](docs/UserAllOf.md)
 - [SunshineConversationsClient::UserCreateBody](docs/UserCreateBody.md)
 - [SunshineConversationsClient::UserMergeEvent](docs/UserMergeEvent.md)
 - [SunshineConversationsClient::UserMergeEventAllOf](docs/UserMergeEventAllOf.md)
 - [SunshineConversationsClient::UserMergeEventAllOfPayload](docs/UserMergeEventAllOfPayload.md)
 - [SunshineConversationsClient::UserMergeEventAllOfPayloadMergedClients](docs/UserMergeEventAllOfPayloadMergedClients.md)
 - [SunshineConversationsClient::UserMergeEventAllOfPayloadMergedConversations](docs/UserMergeEventAllOfPayloadMergedConversations.md)
 - [SunshineConversationsClient::UserMergeEventAllOfPayloadMergedUsers](docs/UserMergeEventAllOfPayloadMergedUsers.md)
 - [SunshineConversationsClient::UserResponse](docs/UserResponse.md)
 - [SunshineConversationsClient::UserTruncated](docs/UserTruncated.md)
 - [SunshineConversationsClient::UserUpdateBody](docs/UserUpdateBody.md)
 - [SunshineConversationsClient::UserUpdateEvent](docs/UserUpdateEvent.md)
 - [SunshineConversationsClient::UserUpdateEventAllOf](docs/UserUpdateEventAllOf.md)
 - [SunshineConversationsClient::UserUpdateEventAllOfPayload](docs/UserUpdateEventAllOfPayload.md)
 - [SunshineConversationsClient::Viber](docs/Viber.md)
 - [SunshineConversationsClient::ViberAllOf](docs/ViberAllOf.md)
 - [SunshineConversationsClient::ViberUpdate](docs/ViberUpdate.md)
 - [SunshineConversationsClient::Web](docs/Web.md)
 - [SunshineConversationsClient::WebAllOf](docs/WebAllOf.md)
 - [SunshineConversationsClient::WebUpdate](docs/WebUpdate.md)
 - [SunshineConversationsClient::WebUpdateAllOf](docs/WebUpdateAllOf.md)
 - [SunshineConversationsClient::Webhook](docs/Webhook.md)
 - [SunshineConversationsClient::WebhookBody](docs/WebhookBody.md)
 - [SunshineConversationsClient::WebhookCreateBody](docs/WebhookCreateBody.md)
 - [SunshineConversationsClient::WebhookListResponse](docs/WebhookListResponse.md)
 - [SunshineConversationsClient::WebhookResponse](docs/WebhookResponse.md)
 - [SunshineConversationsClient::WebhookSubSchema](docs/WebhookSubSchema.md)
 - [SunshineConversationsClient::Webview](docs/Webview.md)
 - [SunshineConversationsClient::WhatsAppUpdate](docs/WhatsAppUpdate.md)
 - [SunshineConversationsClient::WhatsAppUpdateAllOf](docs/WhatsAppUpdateAllOf.md)
 - [SunshineConversationsClient::Whatsapp](docs/Whatsapp.md)
 - [SunshineConversationsClient::WhatsappAllOf](docs/WhatsappAllOf.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication

### bearerAuth

- **Type**: Bearer authentication (JWT)

