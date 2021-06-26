<#
.SYNOPSIS
    This function will let you send a message via a slack webhook
.DESCRIPTION
    This function will take a webhook you've already created, take the message you'd like to send, and send it 
    to the webhook.

    See https://api.slack.com/messaging/webhooks for instructions on how to create a Slack webhook

.EXAMPLE
    $params = @{
        SlackWebhookUri = <my webhook uri>
        Message         = <my message>
    }
    Send-PSSlackWebhookMessage @params
#>
function Send-PSSlackWebhookMessage {
    [CmdletBinding()]
    Param (
        # The webhook url you'd like to send a message to
        [Parameter(Mandatory)]
        [string]
        $SlackWebhookUri,
        
        # The message you'd like to send
        [Parameter(Mandatory)]
        [string]
        $Message
    )

    $postParams = @{
        Method      = 'POST'
        Uri         = $SlackWebhookUri
        Body        = (ConvertTo-Json @{
                text = $Message
            })
        ContentType = 'application/json'
    }
    
    try {
        Write-Verbose "Attempting to send Slack message: `"$Message`", to: `"$SlackWebhookUri`""
        Invoke-RestMethod @postParams
    }
    catch {
        throw "Unable to send message. Error: $_"
    }
}