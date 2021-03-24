@RestResource(urlMapping='/Chatt2MeWhatsAppWebhook/*')
global without sharing class C2MeZenviaWhatsAppWebhook {
    @httpGet
    global static String isWorking() {
        return 'Everything is working!';
    }

    @HttpPost
    global static void webhook() {
        C2Me.C2MeWebhookHandler.webhook(RestContext.request);
    }
}
