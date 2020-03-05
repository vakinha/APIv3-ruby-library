=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for SibApiV3Sdk::SMSCampaignsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SMSCampaignsApi' do
  before do
    # run before each test
    @instance = SibApiV3Sdk::SMSCampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SMSCampaignsApi' do
    it 'should create an instance of SMSCampaignsApi' do
      expect(@instance).to be_instance_of(SibApiV3Sdk::SMSCampaignsApi)
    end
  end

  # unit tests for create_sms_campaign
  # Creates an SMS campaign
  # @param create_sms_campaign Values to create an SMS Campaign
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sms_campaign
  # Delete the SMS campaign
  # @param campaign_id id of the SMS campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sms_campaign
  # Get an SMS campaign
  # @param campaign_id id of the SMS campaign
  # @param [Hash] opts the optional parameters
  # @return [GetSmsCampaign]
  describe 'get_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sms_campaigns
  # Returns the informations for all your created SMS campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Status of campaign.
  # @option opts [DateTime] :start_date Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
  # @option opts [DateTime] :end_date Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
  # @option opts [Integer] :limit Number limitation for the result returned
  # @option opts [Integer] :offset Beginning point in the list to retrieve from.
  # @return [GetSmsCampaigns]
  describe 'get_sms_campaigns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for request_sms_recipient_export
  # Exports the recipients of the specified campaign.
  # It returns the background process ID which on completion calls the notify URL that you have set in the input.
  # @param campaign_id id of the campaign
  # @param [Hash] opts the optional parameters
  # @option opts [RequestSmsRecipientExport] :recipient_export Values to send for a recipient export request
  # @return [CreatedProcessId]
  describe 'request_sms_recipient_export test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_sms_campaign_now
  # Send your SMS campaign immediately
  # @param campaign_id id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_sms_campaign_now test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_sms_report
  # Send report of SMS campaigns
  # Send report of Sent and Archived campaign, to the specified email addresses, with respective data and a pdf attachment in detail.
  # @param campaign_id id of the campaign
  # @param send_report Values for send a report
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_sms_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_test_sms
  # Send an SMS
  # @param campaign_id Id of the SMS campaign
  # @param phone_number Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_test_sms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sms_campaign
  # Updates an SMS campaign
  # @param campaign_id id of the SMS campaign
  # @param update_sms_campaign Values to update an SMS Campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sms_campaign_status
  # Update the campaign status
  # @param campaign_id id of the campaign
  # @param status Status of the campaign.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_sms_campaign_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
