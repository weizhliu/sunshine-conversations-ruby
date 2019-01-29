# smooch-ruby

SmoochApi - the Ruby gem for the Smooch API

The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project using the [Smooch api spec](https://github.com/smooch/api-spec).

## Smooch API Version

The Smooch API offers multiple [versions](https://docs.smooch.io/guide/versioning/). Each release of this project targets one and only one Smooch API version. If you depend on an older version of the Smooch API, you may need to use an older release of this library. Use the table below as your guide:

| Smooch API version | `smooch-ruby` version to use |
|--------------------|--------------------------------|
| `v1.1` [Upgrade guide](https://docs.smooch.io/guide/versioning/#upgrading-to-v11-from-v1) | `4.0.0` or newer      |
| `v1`               | `3.*` or older                 |

## Installation

Install the gem:

```shell
gem install smooch-api
```

Add this to the Gemfile:

    gem 'smooch-api', '~> 5.4.0'

## Getting Started

### Authentication with JSON Web Tokens (JWTs)

JSON Web Tokens (JWTs) are an industry standard authentication mechanism. A great introduction to the technology is available [here](https://jwt.io/introduction/), and a broad set of supported JWT libraries for a variety of languages and platforms are available.

A JWT is composed of a header, a payload, and a signature. The payload contains information called claims which describe the subject to whom the token was issued.

Before you can make calls to the Smooch API, you'll need to create a JWT that proves you are authorized to use the API.

#### **Step 1** Generate a KEY ID and SECRET on the settings tab in the [Smooch Dashboard](https://app.smooch.io/).

![secret key and id](https://docs.smooch.io/images/secret_keys.png)

 #### **Step 2** Generate the JWT

Using the [ruby-jwt](https://github.com/jwt/ruby-jwt) gem:

```ruby
require 'jwt'

payload = {:scope => 'app'}
jwtHeader = {:kid => KEY_ID}

token = JWT.encode payload, SECRET, 'HS256', jwtHeader
```

### Running the code

```ruby
# Load the gem
require 'smooch-api'

# Setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

appCreateBody = SmoochApi::AppCreate.new # AppCreate | Body for a createApp request.


begin
  result = api_instance.create_app(appCreateBody)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_app: #{e}"
end

```

### Region

Smooch is available in the following [regions](https://docs.smooch.io/rest/#region). The US region will be used by default. To target any other region, specify the region [API host](https://docs.smooch.io/rest/#region) in `config.host`. For example:

```ruby
SmoochApi.configure do |config|
  config.api_key['Authorization'] = '<jwt>'
  config.api_key_prefix['Authorization'] = 'Bearer'
  config.host = 'api.eu-1.smooch.io'
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.smooch.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SmoochApi::AppApi* | [**create_app**](docs/AppApi.md#create_app) | **POST** /v1.1/apps | 
*SmoochApi::AppApi* | [**create_secret_key**](docs/AppApi.md#create_secret_key) | **POST** /v1.1/apps/{appId}/keys | 
*SmoochApi::AppApi* | [**delete_app**](docs/AppApi.md#delete_app) | **DELETE** /v1.1/apps/{appId} | 
*SmoochApi::AppApi* | [**delete_secret_key**](docs/AppApi.md#delete_secret_key) | **DELETE** /v1.1/apps/{appId}/keys/{keyId} | 
*SmoochApi::AppApi* | [**get_app**](docs/AppApi.md#get_app) | **GET** /v1.1/apps/{appId} | 
*SmoochApi::AppApi* | [**get_app_jwt**](docs/AppApi.md#get_app_jwt) | **GET** /v1.1/apps/{appId}/keys/{keyId}/jwt | 
*SmoochApi::AppApi* | [**get_secret_key**](docs/AppApi.md#get_secret_key) | **GET** /v1.1/apps/{appId}/keys/{keyId} | 
*SmoochApi::AppApi* | [**list_apps**](docs/AppApi.md#list_apps) | **GET** /v1.1/apps | 
*SmoochApi::AppApi* | [**list_secret_keys**](docs/AppApi.md#list_secret_keys) | **GET** /v1.1/apps/{appId}/keys | 
*SmoochApi::AppApi* | [**update_app**](docs/AppApi.md#update_app) | **PUT** /v1.1/apps/{appId} | 
*SmoochApi::AppUserApi* | [**delete_app_user**](docs/AppUserApi.md#delete_app_user) | **DELETE** /v1.1/apps/{appId}/appusers/{userId} | 
*SmoochApi::AppUserApi* | [**delete_app_user_profile**](docs/AppUserApi.md#delete_app_user_profile) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/profile | 
*SmoochApi::AppUserApi* | [**get_app_user**](docs/AppUserApi.md#get_app_user) | **GET** /v1.1/apps/{appId}/appusers/{userId} | 
*SmoochApi::AppUserApi* | [**get_app_user_auth_code**](docs/AppUserApi.md#get_app_user_auth_code) | **GET** /v1.1/apps/{appId}/appusers/{userId}/authcode | 
*SmoochApi::AppUserApi* | [**get_app_user_business_system_ids**](docs/AppUserApi.md#get_app_user_business_system_ids) | **GET** /v1.1/apps/{appId}/appusers/{userId}/businesssystems | 
*SmoochApi::AppUserApi* | [**get_app_user_entity_ids**](docs/AppUserApi.md#get_app_user_entity_ids) | **GET** /v1.1/apps/{appId}/appusers/{userId}/channels | 
*SmoochApi::AppUserApi* | [**get_link_requests**](docs/AppUserApi.md#get_link_requests) | **GET** /v1.1/apps/{appId}/appusers/{userId}/linkrequest | 
*SmoochApi::AppUserApi* | [**link_app_user**](docs/AppUserApi.md#link_app_user) | **POST** /v1.1/apps/{appId}/appusers/{userId}/channels | 
*SmoochApi::AppUserApi* | [**post_image_message**](docs/AppUserApi.md#post_image_message) | **POST** /v1.1/apps/{appId}/appusers/{userId}/images | 
*SmoochApi::AppUserApi* | [**pre_create_app_user**](docs/AppUserApi.md#pre_create_app_user) | **POST** /v1.1/apps/{appId}/appusers | 
*SmoochApi::AppUserApi* | [**unlink_app_user**](docs/AppUserApi.md#unlink_app_user) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/channels/{channel} | 
*SmoochApi::AppUserApi* | [**update_app_user**](docs/AppUserApi.md#update_app_user) | **PUT** /v1.1/apps/{appId}/appusers/{userId} | 
*SmoochApi::AttachmentsApi* | [**remove_attachment**](docs/AttachmentsApi.md#remove_attachment) | **POST** /v1.1/apps/{appId}/attachments/remove | 
*SmoochApi::AttachmentsApi* | [**upload_attachment**](docs/AttachmentsApi.md#upload_attachment) | **POST** /v1.1/apps/{appId}/attachments | 
*SmoochApi::ConversationApi* | [**conversation_activity**](docs/ConversationApi.md#conversation_activity) | **POST** /v1.1/apps/{appId}/appusers/{userId}/conversation/activity | 
*SmoochApi::ConversationApi* | [**delete_message**](docs/ConversationApi.md#delete_message) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/messages/{messageId} | 
*SmoochApi::ConversationApi* | [**delete_messages**](docs/ConversationApi.md#delete_messages) | **DELETE** /v1.1/apps/{appId}/appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**get_messages**](docs/ConversationApi.md#get_messages) | **GET** /v1.1/apps/{appId}/appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**post_message**](docs/ConversationApi.md#post_message) | **POST** /v1.1/apps/{appId}/appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**reset_unread_count**](docs/ConversationApi.md#reset_unread_count) | **POST** /v1.1/apps/{appId}/appusers/{userId}/conversation/read | 
*SmoochApi::IntegrationApi* | [**create_integration**](docs/IntegrationApi.md#create_integration) | **POST** /v1.1/apps/{appId}/integrations | 
*SmoochApi::IntegrationApi* | [**create_integration_menu**](docs/IntegrationApi.md#create_integration_menu) | **POST** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**delete_integration**](docs/IntegrationApi.md#delete_integration) | **DELETE** /v1.1/apps/{appId}/integrations/{integrationId} | 
*SmoochApi::IntegrationApi* | [**delete_integration_menu**](docs/IntegrationApi.md#delete_integration_menu) | **DELETE** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**get_integration**](docs/IntegrationApi.md#get_integration) | **GET** /v1.1/apps/{appId}/integrations/{integrationId} | 
*SmoochApi::IntegrationApi* | [**get_integration_menu**](docs/IntegrationApi.md#get_integration_menu) | **GET** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**list_integrations**](docs/IntegrationApi.md#list_integrations) | **GET** /v1.1/apps/{appId}/integrations | 
*SmoochApi::IntegrationApi* | [**update_integration**](docs/IntegrationApi.md#update_integration) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId} | 
*SmoochApi::IntegrationApi* | [**update_integration_menu**](docs/IntegrationApi.md#update_integration_menu) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**update_integration_profile**](docs/IntegrationApi.md#update_integration_profile) | **PUT** /v1.1/apps/{appId}/integrations/{integrationId}/profile | 
*SmoochApi::MenuApi* | [**delete_menu**](docs/MenuApi.md#delete_menu) | **DELETE** /v1.1/apps/{appId}/menu | 
*SmoochApi::MenuApi* | [**get_menu**](docs/MenuApi.md#get_menu) | **GET** /v1.1/apps/{appId}/menu | 
*SmoochApi::MenuApi* | [**update_menu**](docs/MenuApi.md#update_menu) | **PUT** /v1.1/apps/{appId}/menu | 
*SmoochApi::ServiceAccountApi* | [**create_secret_key**](docs/ServiceAccountApi.md#create_secret_key) | **POST** /v1.1/serviceaccounts/{serviceAccountId}/keys | 
*SmoochApi::ServiceAccountApi* | [**create_service_account**](docs/ServiceAccountApi.md#create_service_account) | **POST** /v1.1/serviceaccounts | 
*SmoochApi::ServiceAccountApi* | [**delete_secret_key**](docs/ServiceAccountApi.md#delete_secret_key) | **DELETE** /v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId} | 
*SmoochApi::ServiceAccountApi* | [**delete_service_account**](docs/ServiceAccountApi.md#delete_service_account) | **DELETE** /v1.1/serviceaccounts/{serviceAccountId} | 
*SmoochApi::ServiceAccountApi* | [**get_jwt**](docs/ServiceAccountApi.md#get_jwt) | **GET** /v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId}/jwt | 
*SmoochApi::ServiceAccountApi* | [**get_secret_key**](docs/ServiceAccountApi.md#get_secret_key) | **GET** /v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId} | 
*SmoochApi::ServiceAccountApi* | [**get_service_account**](docs/ServiceAccountApi.md#get_service_account) | **GET** /v1.1/serviceaccounts/{serviceAccountId} | 
*SmoochApi::ServiceAccountApi* | [**list_secret_keys**](docs/ServiceAccountApi.md#list_secret_keys) | **GET** /v1.1/serviceaccounts/{serviceAccountId}/keys | 
*SmoochApi::ServiceAccountApi* | [**list_service_accounts**](docs/ServiceAccountApi.md#list_service_accounts) | **GET** /v1.1/serviceaccounts | 
*SmoochApi::ServiceAccountApi* | [**update_service_account**](docs/ServiceAccountApi.md#update_service_account) | **PUT** /v1.1/serviceaccounts/{serviceAccountId} | 
*SmoochApi::TemplateApi* | [**create_template**](docs/TemplateApi.md#create_template) | **POST** /v1.1/apps/{appId}/templates | 
*SmoochApi::TemplateApi* | [**delete_template**](docs/TemplateApi.md#delete_template) | **DELETE** /v1.1/apps/{appId}/templates/{templateId} | 
*SmoochApi::TemplateApi* | [**get_template**](docs/TemplateApi.md#get_template) | **GET** /v1.1/apps/{appId}/templates/{templateId} | 
*SmoochApi::TemplateApi* | [**list_templates**](docs/TemplateApi.md#list_templates) | **GET** /v1.1/apps/{appId}/templates | 
*SmoochApi::TemplateApi* | [**update_template**](docs/TemplateApi.md#update_template) | **PUT** /v1.1/apps/{appId}/templates/{templateId} | 
*SmoochApi::WebhookApi* | [**create_webhook**](docs/WebhookApi.md#create_webhook) | **POST** /v1.1/apps/{appId}/webhooks | 
*SmoochApi::WebhookApi* | [**delete_webhook**](docs/WebhookApi.md#delete_webhook) | **DELETE** /v1.1/apps/{appId}/webhooks/{webhookId} | 
*SmoochApi::WebhookApi* | [**get_webhook**](docs/WebhookApi.md#get_webhook) | **GET** /v1.1/apps/{appId}/webhooks/{webhookId} | 
*SmoochApi::WebhookApi* | [**list_webhooks**](docs/WebhookApi.md#list_webhooks) | **GET** /v1.1/apps/{appId}/webhooks | 
*SmoochApi::WebhookApi* | [**update_webhook**](docs/WebhookApi.md#update_webhook) | **PUT** /v1.1/apps/{appId}/webhooks/{webhookId} | 


## Documentation for Models

 - [SmoochApi::Action](docs/Action.md)
 - [SmoochApi::App](docs/App.md)
 - [SmoochApi::AppCreate](docs/AppCreate.md)
 - [SmoochApi::AppResponse](docs/AppResponse.md)
 - [SmoochApi::AppSettings](docs/AppSettings.md)
 - [SmoochApi::AppUpdate](docs/AppUpdate.md)
 - [SmoochApi::AppUser](docs/AppUser.md)
 - [SmoochApi::AppUserBusinessSystemsResponse](docs/AppUserBusinessSystemsResponse.md)
 - [SmoochApi::AppUserChannelsResponse](docs/AppUserChannelsResponse.md)
 - [SmoochApi::AppUserLink](docs/AppUserLink.md)
 - [SmoochApi::AppUserPreCreate](docs/AppUserPreCreate.md)
 - [SmoochApi::AppUserResponse](docs/AppUserResponse.md)
 - [SmoochApi::AppUserUpdate](docs/AppUserUpdate.md)
 - [SmoochApi::AttachmentRemove](docs/AttachmentRemove.md)
 - [SmoochApi::AttachmentResponse](docs/AttachmentResponse.md)
 - [SmoochApi::AuthCodeResponse](docs/AuthCodeResponse.md)
 - [SmoochApi::BusinessSystemItem](docs/BusinessSystemItem.md)
 - [SmoochApi::ChannelEntityItem](docs/ChannelEntityItem.md)
 - [SmoochApi::Client](docs/Client.md)
 - [SmoochApi::ClientInfo](docs/ClientInfo.md)
 - [SmoochApi::Confirmation](docs/Confirmation.md)
 - [SmoochApi::Conversation](docs/Conversation.md)
 - [SmoochApi::ConversationActivity](docs/ConversationActivity.md)
 - [SmoochApi::Destination](docs/Destination.md)
 - [SmoochApi::DisplaySettings](docs/DisplaySettings.md)
 - [SmoochApi::Enums](docs/Enums.md)
 - [SmoochApi::GetMessagesResponse](docs/GetMessagesResponse.md)
 - [SmoochApi::Integration](docs/Integration.md)
 - [SmoochApi::IntegrationCreate](docs/IntegrationCreate.md)
 - [SmoochApi::IntegrationProfileUpdate](docs/IntegrationProfileUpdate.md)
 - [SmoochApi::IntegrationResponse](docs/IntegrationResponse.md)
 - [SmoochApi::IntegrationUpdate](docs/IntegrationUpdate.md)
 - [SmoochApi::JwtResponse](docs/JwtResponse.md)
 - [SmoochApi::LinkRequestResponse](docs/LinkRequestResponse.md)
 - [SmoochApi::LinkRequestResponseLinkRequests](docs/LinkRequestResponseLinkRequests.md)
 - [SmoochApi::ListAppsResponse](docs/ListAppsResponse.md)
 - [SmoochApi::ListIntegrationsResponse](docs/ListIntegrationsResponse.md)
 - [SmoochApi::ListSecretKeysResponse](docs/ListSecretKeysResponse.md)
 - [SmoochApi::ListServiceAccountsResponse](docs/ListServiceAccountsResponse.md)
 - [SmoochApi::ListTemplatesResponse](docs/ListTemplatesResponse.md)
 - [SmoochApi::ListWebhooksResponse](docs/ListWebhooksResponse.md)
 - [SmoochApi::Menu](docs/Menu.md)
 - [SmoochApi::MenuItem](docs/MenuItem.md)
 - [SmoochApi::MenuResponse](docs/MenuResponse.md)
 - [SmoochApi::Message](docs/Message.md)
 - [SmoochApi::MessageItem](docs/MessageItem.md)
 - [SmoochApi::MessageOverride](docs/MessageOverride.md)
 - [SmoochApi::MessageOverrideWhatsapp](docs/MessageOverrideWhatsapp.md)
 - [SmoochApi::MessagePost](docs/MessagePost.md)
 - [SmoochApi::MessageResponse](docs/MessageResponse.md)
 - [SmoochApi::SecretKey](docs/SecretKey.md)
 - [SmoochApi::SecretKeyCreate](docs/SecretKeyCreate.md)
 - [SmoochApi::SecretKeyResponse](docs/SecretKeyResponse.md)
 - [SmoochApi::ServiceAccount](docs/ServiceAccount.md)
 - [SmoochApi::ServiceAccountCreate](docs/ServiceAccountCreate.md)
 - [SmoochApi::ServiceAccountResponse](docs/ServiceAccountResponse.md)
 - [SmoochApi::ServiceAccountUpdate](docs/ServiceAccountUpdate.md)
 - [SmoochApi::Source](docs/Source.md)
 - [SmoochApi::SubMenuItem](docs/SubMenuItem.md)
 - [SmoochApi::Template](docs/Template.md)
 - [SmoochApi::TemplateCreate](docs/TemplateCreate.md)
 - [SmoochApi::TemplateResponse](docs/TemplateResponse.md)
 - [SmoochApi::TemplateUpdate](docs/TemplateUpdate.md)
 - [SmoochApi::Webhook](docs/Webhook.md)
 - [SmoochApi::WebhookCreate](docs/WebhookCreate.md)
 - [SmoochApi::WebhookResponse](docs/WebhookResponse.md)
 - [SmoochApi::WebhookUpdate](docs/WebhookUpdate.md)


## Documentation for Authorization


### jwt

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

