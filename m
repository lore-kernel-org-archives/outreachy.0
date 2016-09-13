X-GM-THRID: 6329897292818022400
X-Received: by 10.66.153.107 with SMTP id vf11mr1978181pab.44.1473794060953;
        Tue, 13 Sep 2016 12:14:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.131 with SMTP id n3ls1850600otn.39.gmail; Tue, 13 Sep
 2016 12:14:20 -0700 (PDT)
X-Received: by 10.13.219.210 with SMTP id d201mr1947343ywe.53.1473794060395;
        Tue, 13 Sep 2016 12:14:20 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id m82si26690ywm.2.2016.09.13.12.14.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 12:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so6822364qka.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 12:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=lH+4BUts5V3GbRNrN2vyEHmM+b7l/2vzEATTFBFuuAY=;
        b=YBYjd11P9resRNHkNTZ4D7NxjdnrLkpPoMYZp2ibewcnyqIUQ3WDcs9vcvE5ADzvJq
         ts5PK1avQsXrBBzdP0FJxsO76s1EsuR28lRrT3dVoSbfn+OWqfng8jVYSajJ0CFEBvgu
         iyFPqZxA6twXRzkQNjB7RaSYwJqBTI0qnyHUZcHVXFirqVXBB2pM62FBmLrwmh9DrFCE
         W3rGEPfiWWVu2OlVRNDgEzJt34ApBiNXDlA1tcXg49vUAMqu9R6jzI32nW9rtBjommDS
         SB+7S2QBHlA7s1KlkkcEGb968HQAr6CviTSIug/a0UM7CydeARh+L8VclrBD9bVO0Q3I
         QFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lH+4BUts5V3GbRNrN2vyEHmM+b7l/2vzEATTFBFuuAY=;
        b=O7SIUcmxn+WgP3wDZn5Np8dCpXChLbwIM6hGST/+4BnjAzNBq4J4t5osHW9z6xAyG1
         rOU1Q7cO0W4AlhNPobdPxu/07otn92kWtmkcxCNIWj/4YQbR6xE2NPVB5MbK2eJNKq0A
         LkfEFae3c4n4Lj9hgEmYamX4mRfvqQm7zV/kSfRdBSvdZTmnVQwXEhnk7UWZR/Juaorj
         kSvDxAr9WUAIksl6yCmKVp16aiwbzlsaWBRk3xZbXfosJRy/ksE+KzjpXYnKGhVVjRJN
         Jwn0SF1CP2Gjtj0hWn+svpXeqGA/Cf5+kudz8QVAmKp678pnDBF6Ttkob2DWFjuZ/A+D
         bOzQ==
X-Gm-Message-State: AE9vXwOL3Q/L79G23ScNBChGn8RMi4YHUA9chX554Ka0+H7Dr0k+BYcweWxPisEozgwi3cmmlwquFFHPDHDVYw==
X-Received: by 10.55.127.1 with SMTP id a1mr3276484qkd.49.1473794059947; Tue,
 13 Sep 2016 12:14:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Tue, 13 Sep 2016 12:13:59 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Wed, 14 Sep 2016 00:43:59 +0530
Message-ID: <CAFrQyDG5Q2TraHNkj+ytkUSYXeoUMteFXYTy9hwNmfr23TiMdQ@mail.gmail.com>
Subject: [PATCH] staging: rtl8712: Rename misspelt macro
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Larry Finger <Larry.Finger@lwfinger.net>, Luis de Bethencourt <luisbg@osg.samsung.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: multipart/alternative; boundary=94eb2c0665ca6a597f053c686b65

--94eb2c0665ca6a597f053c686b65
Content-Type: text/plain; charset=UTF-8

This patch corrects the word 'success' being misspelt in the macro:
- LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA =>  LED_BLINK_WPS_SUCCESS_
INTERVAL_ALPHA

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c
b/drivers/staging/rtl8712/rtl8712_led.c
index 9055827..20c4995 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -43,7 +43,7 @@
 #define LED_BLINK_LINK_INTERVAL_ALPHA          500
 #define LED_BLINK_SCAN_INTERVAL_ALPHA          180
 #define LED_BLINK_FASTER_INTERVAL_ALPHA                50
-#define LED_BLINK_WPS_SUCESS_INTERVAL_ALPHA    5000
+#define LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA   5000

 /*==========================================================
=================
  * LED object.
@@ -407,7 +407,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
                if (pLed->BlinkingLedState == LED_ON) {
                        pLed->BlinkingLedState = LED_OFF;
                        mod_timer(&pLed->BlinkTimer, jiffies +
-                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCESS_INTERVAL_ALPHA));
+                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCCESS_INTERVAL_ALPHA));
                        bStopBlinking = false;
                } else {
                        bStopBlinking = true;
@@ -571,7 +571,7 @@ static void SwLedBlink3(struct LED_871x *pLed)
                if (pLed->BlinkingLedState == LED_ON) {
                        pLed->BlinkingLedState = LED_OFF;
                        mod_timer(&pLed->BlinkTimer, jiffies +
-                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCESS_INTERVAL_ALPHA));
+                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCCESS_INTERVAL_ALPHA));
                        bStopBlinking = false;
                } else {
                        bStopBlinking = true;
@@ -1048,7 +1048,7 @@ static void SwLedControlMode1(struct _adapter
*padapter,
                if (pLed->bLedOn) {
                        pLed->BlinkingLedState = LED_OFF;
                        mod_timer(&pLed->BlinkTimer, jiffies +
-                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCESS_INTERVAL_ALPHA));
+                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCCESS_INTERVAL_ALPHA));
                } else {
                        pLed->BlinkingLedState = LED_ON;
                        mod_timer(&pLed->BlinkTimer,
@@ -1328,7 +1328,7 @@ static void SwLedControlMode3(struct _adapter
*padapter,
                if (pLed->bLedOn) {
                        pLed->BlinkingLedState = LED_OFF;
                        mod_timer(&pLed->BlinkTimer, jiffies +
-                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCESS_INTERVAL_ALPHA));
+                                 msecs_to_jiffies(LED_BLINK_
WPS_SUCCESS_INTERVAL_ALPHA));
                } else {
                        pLed->BlinkingLedState = LED_ON;
                        mod_timer(&pLed->BlinkTimer,

--94eb2c0665ca6a597f053c686b65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+VGhpcyBwYXRjaCBjb3JyZWN0cyB0aGUgd29yZCAmIzM5O3N1Y2Nlc3Mm
IzM5OyBiZWluZyBtaXNzcGVsdCBpbiB0aGUgbWFjcm86PGJyPg0KLSBMRURfQkxJTktfV1BTX1NV
Q0VTU19JTlRFUlZBTF88d2JyPkFMUEhBID0mZ3Q7wqAgTEVEX0JMSU5LX1dQU19TVUNDRVNTXzx3
YnI+SU5URVJWQUxfQUxQSEE8YnI+DQo8YnI+DQpTaWduZWQtb2ZmLWJ5OiBOYW1yYXRhIEEgU2hl
dHRhciAmbHQ7PGEgaHJlZj0ibWFpbHRvOm5hbXJhdGFhc2hldHRhckBnbWFpbC5jb20iPm5hbXJh
dGFhc2hldHRhckBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCi0tLTxicj4NCsKgZHJpdmVycy9zdGFn
aW5nL3J0bDg3MTIvPHdicj5ydGw4NzEyX2xlZC5jIHwgMTAgKysrKystLS0tLTxicj4NCsKgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSk8YnI+DQo8YnI+DQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvPHdicj5ydGw4NzEyX2xlZC5jIGIv
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvPHdicj5ydGw4NzEyX2xlZC5jPGJyPg0KaW5kZXggOTA1
NTgyNy4uMjBjNDk5NSAxMDA2NDQ8YnI+DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcxMi88
d2JyPnJ0bDg3MTJfbGVkLmM8YnI+DQorKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcxMi88d2Jy
PnJ0bDg3MTJfbGVkLmM8YnI+DQpAQCAtNDMsNyArNDMsNyBAQDxicj4NCsKgI2RlZmluZSBMRURf
QkxJTktfTElOS19JTlRFUlZBTF9BTFBIQcKgIMKgIMKgIMKgIMKgIDUwMDxicj4NCsKgI2RlZmlu
ZSBMRURfQkxJTktfU0NBTl9JTlRFUlZBTF9BTFBIQcKgIMKgIMKgIMKgIMKgIDE4MDxicj4NCsKg
I2RlZmluZSBMRURfQkxJTktfRkFTVEVSX0lOVEVSVkFMXzx3YnI+QUxQSEHCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCA1MDxicj4NCi0jZGVmaW5lIExFRF9CTElOS19XUFNfU1VDRVNTX0lOVEVSVkFM
Xzx3YnI+QUxQSEHCoCDCoCA1MDAwPGJyPg0KKyNkZWZpbmUgTEVEX0JMSU5LX1dQU19TVUNDRVNT
Xzx3YnI+SU5URVJWQUxfQUxQSEHCoCDCoDUwMDA8YnI+DQo8YnI+DQrCoC8qPT09PT09PT09PT09
PT09PT09PT09PT09PT09PTx3YnI+PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PHdicj49
PT09PT09PT09PT09PT09PTxicj4NCsKgICogTEVEIG9iamVjdC48YnI+DQpAQCAtNDA3LDcgKzQw
Nyw3IEBAIHN0YXRpYyB2b2lkIFN3TGVkQmxpbmsxKHN0cnVjdCBMRURfODcxeCAqcExlZCk8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAocExlZC0mZ3Q7QmxpbmtpbmdMZWRTdGF0ZSA9
PSBMRURfT04pIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBwTGVk
LSZndDtCbGlua2luZ0xlZFN0YXRlID0gTEVEX09GRjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBtb2RfdGltZXIoJmFtcDtwTGVkLSZndDtCbGlua1RpbWVyLCBqaWZm
aWVzICs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBtc2Vjc190b19qaWZmaWVzKExFRF9CTElOS188d2JyPldQU19TVUNFU1NfSU5URVJWQUxf
QUxQSEEpKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBtc2Vjc190b19qaWZmaWVzKExFRF9CTElOS188d2JyPldQU19TVUNDRVNTX0lOVEVS
VkFMX0FMUEhBKSk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYlN0
b3BCbGlua2luZyA9IGZhbHNlOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIH0gZWxzZSB7
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYlN0b3BCbGlua2luZyA9
IHRydWU7PGJyPg0KQEAgLTU3MSw3ICs1NzEsNyBAQCBzdGF0aWMgdm9pZCBTd0xlZEJsaW5rMyhz
dHJ1Y3QgTEVEXzg3MXggKnBMZWQpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKHBM
ZWQtJmd0O0JsaW5raW5nTGVkU3RhdGUgPT0gTEVEX09OKSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgcExlZC0mZ3Q7QmxpbmtpbmdMZWRTdGF0ZSA9IExFRF9PRkY7
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgbW9kX3RpbWVyKCZhbXA7
cExlZC0mZ3Q7QmxpbmtUaW1lciwgamlmZmllcyArPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbXNlY3NfdG9famlmZmllcyhMRURfQkxJTktf
PHdicj5XUFNfU1VDRVNTX0lOVEVSVkFMX0FMUEhBKSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbXNlY3NfdG9famlmZmllcyhMRURfQkxJ
TktfPHdicj5XUFNfU1VDQ0VTU19JTlRFUlZBTF9BTFBIQSkpOzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJTdG9wQmxpbmtpbmcgPSBmYWxzZTs8YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCB9IGVsc2Ugezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGJTdG9wQmxpbmtpbmcgPSB0cnVlOzxicj4NCkBAIC0xMDQ4LDcgKzEwNDgsNyBA
QCBzdGF0aWMgdm9pZCBTd0xlZENvbnRyb2xNb2RlMShzdHJ1Y3QgX2FkYXB0ZXIgKnBhZGFwdGVy
LDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChwTGVkLSZndDtiTGVkT24pIHs8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBwTGVkLSZndDtCbGlua2luZ0xl
ZFN0YXRlID0gTEVEX09GRjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBtb2RfdGltZXIoJmFtcDtwTGVkLSZndDtCbGlua1RpbWVyLCBqaWZmaWVzICs8YnI+DQotwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtc2Vjc190b19q
aWZmaWVzKExFRF9CTElOS188d2JyPldQU19TVUNFU1NfSU5URVJWQUxfQUxQSEEpKTs8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtc2Vjc190
b19qaWZmaWVzKExFRF9CTElOS188d2JyPldQU19TVUNDRVNTX0lOVEVSVkFMX0FMUEhBKSk7PGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfSBlbHNlIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBwTGVkLSZndDtCbGlua2luZ0xlZFN0YXRlID0gTEVEX09OOzxi
cj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG1vZF90aW1lcigmYW1wO3BM
ZWQtJmd0O0JsaW5rVGltZXIsPGJyPg0KQEAgLTEzMjgsNyArMTMyOCw3IEBAIHN0YXRpYyB2b2lk
IFN3TGVkQ29udHJvbE1vZGUzKHN0cnVjdCBfYWRhcHRlciAqcGFkYXB0ZXIsPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgaWYgKHBMZWQtJmd0O2JMZWRPbikgezxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHBMZWQtJmd0O0JsaW5raW5nTGVkU3RhdGUgPSBMRURf
T0ZGOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG1vZF90aW1lcigm
YW1wO3BMZWQtJmd0O0JsaW5rVGltZXIsIGppZmZpZXMgKzxicj4NCi3CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1zZWNzX3RvX2ppZmZpZXMoTEVEX0JM
SU5LXzx3YnI+V1BTX1NVQ0VTU19JTlRFUlZBTF9BTFBIQSkpOzxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1zZWNzX3RvX2ppZmZpZXMoTEVE
X0JMSU5LXzx3YnI+V1BTX1NVQ0NFU1NfSU5URVJWQUxfQUxQSEEpKTs8YnI+DQrCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCB9IGVsc2Ugezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHBMZWQtJmd0O0JsaW5raW5nTGVkU3RhdGUgPSBMRURfT047PGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgbW9kX3RpbWVyKCZhbXA7cExlZC0mZ3Q7QmxpbmtU
aW1lciw8L2Rpdj4NCg==
--94eb2c0665ca6a597f053c686b65--

