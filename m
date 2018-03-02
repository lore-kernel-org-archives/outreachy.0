X-GM-THRID: 6528466201738215424
X-Received: by 10.107.12.94 with SMTP id w91mr4940152ioi.85.1520027002385;
        Fri, 02 Mar 2018 13:43:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.80 with SMTP id x77ls2067415ioe.16.gmail; Fri, 02 Mar
 2018 13:43:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELsBeVvvzBhMrkRSryzYq3z/+v9N9yvuE2gPnNr3ONlYIO3NOcywV3EB8bmQ4tkJSBTLmjk8
X-Received: by 10.107.129.66 with SMTP id c63mr4934484iod.89.1520027001539;
        Fri, 02 Mar 2018 13:43:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520027001; cv=none;
        d=google.com; s=arc-20160816;
        b=BJo0x0tpcJibx17XmyhdbTX4enwe+vn44hfcpxGLofVH+YqAz4XZ0EEM8mR30QaHUX
         rxjDv7XA3WmEo7jkSbiITIi5EyFgsx/HPJdXGc//Y42oAEVhWPG7u7gcnojYn+6y9XZ4
         Cjwse0jQctnvUf7dOs7629tiHpDiMEqpG3evkzHUXsiIiYM98DH0TlkMk1rBOck86HoW
         1L5gMjCZttBbzwBMI4GkaIeItlbSDuqy/XdwLTk1ipRBsi6irUH16+fYIThWeZWEZgun
         5K333OLE09aTJQFk5UMrz/naHZZg9ix3wWY9DFrqbNw/wKCUJKjlkYyMihODb5jXSKWY
         9aOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=0GJiFrdNAk1pW3S74iFp5gnCMi7bUohB05lOqCb6ucCyNOTyw0b/0pjXtVpmy2jnik
         9KCCtTDD6qVpIW7VyiP5Yl2k5QRHA/O8u0ONmFHuE++m1J/lNyNWwcwEhjOAIOD5JF6B
         kFy7gFpgsl9DAiiKNketcIoYnzKBhTtzBDmXBrZobzgrdUEm44FE9pn6LoHklNa7ORSZ
         NcujBXHfSa/SwqVJULxmoeH37NOGzOaJJ+BoTrnsE9eSPlNtniVcUPbGWQWJkM7Ipso7
         z45rWShm7e+YFMV5WiZt+2LFoFpPR5zzRsVCQ7rSCsBt0DJ93J92dEv4Ibi38ClAXGHz
         9B7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZNbrRYT;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id o6si116607ith.3.2018.03.02.13.43.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 13:43:21 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZNbrRYT;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id u13-v6so6423284plq.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 13:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=CZNbrRYTndu7was5K8A9eFoFJst7Awcc0wXK/FCg+VKbBpOsLy7dZbjUu/ieS8BZgs
         TEyezBvekX4kKfXsaoCLjlx8mxZSuKqktqxdKlU0VGE+RKLbfu29EE4P6KYibpwgLmSG
         5o9AOJaU3+juh/cEmvJVlkszc9APJkSnyEiRQzwWe0xxEw7ie+M9khHsEQ6duzUfH/2l
         xqTnSNPlVLxCHLvDVwwKf7q7yL2DLWdS/ABqxjwW4rAoexqSQNq/I2pewNkNYYdhnNAv
         3jMBm7XcJBDw6Zohcs7sPnRo8QqQKCk5OsnQAgvF55x/LrgBBNssotu6j59wftviALAc
         blrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=RGNFyNAVFEqI2vaMRbu8XaEVjUarPkp/oDa6F1kW61t4RomNfg56CM39BJBLKbNmiR
         uGRGZWPffxiVn5TaqXYb8DydfRz68NyO7MR6dUoLwF310p1vHhwuH2+LniHX7s+aQR+l
         YaPm7ISc0D1FGcp50s/PbvZFFkvJG/V4iq6rRM7lq6s/ERcTzy6QkO7VvxyujZaBmDsS
         6YKa0BlnMIEMDvOtOn1pgCjUiE2udCf3VVLay/fhD0tHNAh/nw23g5quniJCehviSDzJ
         +Xv+hganJlDXEUhZCTW1Ha4ajsX2zA6s1/8Rv88ngRv2yBOxb90w3pOcgUIFVwEJr3Jj
         yoig==
X-Gm-Message-State: APf1xPBnbqCKUaUyoYEd1GC6s8sLSHuM6VzCDX8fzTUYiOzByoagJjaq
	MiV+TZdnofrms//2g98VO9k=
X-Received: by 2002:a17:902:4643:: with SMTP id o61-v6mr6625446pld.103.1520027000944;
        Fri, 02 Mar 2018 13:43:20 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id a28sm13774531pfe.70.2018.03.02.13.43.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 13:43:19 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: outreachy-kernel@googlegroups.com,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 4/4] staging: rtl8712: remove unnecessary parentheses
Date: Sat,  3 Mar 2018 03:12:21 +0530
Message-Id: <1520026941-16548-5-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520026941-16548-1-git-send-email-arushisinghal19971997@gmail.com>

Remove unnecessary parentheses around variables to conform to the Linux
kernel coding style. Issue found using checkpatch.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c  |  4 +-
 drivers/staging/rtl8712/rtl8712_cmd.c |  8 ++--
 drivers/staging/rtl8712/rtl8712_led.c | 70 +++++++++++++++++------------------
 3 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 986a55b..8cf4286 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -111,8 +111,8 @@ void r8712_recv_indicatepkt(struct _adapter *padapter,
 	_pkt *skb;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 
-	precvpriv = &(padapter->recvpriv);
-	pfree_recv_queue = &(precvpriv->free_recv_queue);
+	precvpriv = &padapter->recvpriv;
+	pfree_recv_queue = &precvpriv->free_recv_queue;
 	skb = precv_frame->u.hdr.pkt;
 	if (!skb)
 		goto _recv_indicatepkt_drop;
diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 9c8e0c5..b1dfe9f 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -320,7 +320,7 @@ int r8712_cmd_thread(void *context)
 	struct tx_desc *pdesc;
 	void (*pcmd_callback)(struct _adapter *dev, struct cmd_obj *pcmd);
 	struct _adapter *padapter = context;
-	struct	cmd_priv	*pcmdpriv = &(padapter->cmdpriv);
+	struct	cmd_priv *pcmdpriv = &padapter->cmdpriv;
 	struct completion *cmd_queue_comp =
 		&pcmdpriv->cmd_queue_comp;
 	struct mutex *pwctrl_lock = &padapter->pwrctrlpriv.mutex_lock;
@@ -334,7 +334,7 @@ int r8712_cmd_thread(void *context)
 		if (r8712_register_cmd_alive(padapter) != _SUCCESS)
 			continue;
 _next:
-		pcmd = r8712_dequeue_cmd(&(pcmdpriv->cmd_queue));
+		pcmd = r8712_dequeue_cmd(&pcmdpriv->cmd_queue);
 		if (!(pcmd)) {
 			r8712_unregister_cmd_alive(padapter);
 			continue;
@@ -419,7 +419,7 @@ int r8712_cmd_thread(void *context)
 	}
 	/* free all cmd_obj resources */
 	do {
-		pcmd = r8712_dequeue_cmd(&(pcmdpriv->cmd_queue));
+		pcmd = r8712_dequeue_cmd(&pcmdpriv->cmd_queue);
 		if (!pcmd)
 			break;
 		r8712_free_cmd_obj(pcmd);
@@ -433,7 +433,7 @@ void r8712_event_handle(struct _adapter *padapter, __le32 *peventbuf)
 	u8 evt_code, evt_seq;
 	u16 evt_sz;
 	void (*event_callback)(struct _adapter *dev, u8 *pbuf);
-	struct	evt_priv *pevt_priv = &(padapter->evtpriv);
+	struct	evt_priv *pevt_priv = &padapter->evtpriv;
 
 	if (!peventbuf)
 		goto _abort_event_;
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index 455fba7..e907734 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -181,11 +181,11 @@ static void SwLedOff(struct _adapter *padapter, struct LED_871x *pLed)
  */
 void r8712_InitSwLeds(struct _adapter *padapter)
 {
-	struct led_priv	*pledpriv = &(padapter->ledpriv);
+	struct led_priv	*pledpriv = &padapter->ledpriv;
 
 	pledpriv->LedControlHandler = LedControl871x;
-	InitLed871x(padapter, &(pledpriv->SwLed0), LED_PIN_LED0);
-	InitLed871x(padapter, &(pledpriv->SwLed1), LED_PIN_LED1);
+	InitLed871x(padapter, &pledpriv->SwLed0, LED_PIN_LED0);
+	InitLed871x(padapter, &pledpriv->SwLed1, LED_PIN_LED1);
 }
 
 /*	Description:
@@ -193,10 +193,10 @@ void r8712_InitSwLeds(struct _adapter *padapter)
  */
 void r8712_DeInitSwLeds(struct _adapter *padapter)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 
-	DeInitLed871x(&(ledpriv->SwLed0));
-	DeInitLed871x(&(ledpriv->SwLed1));
+	DeInitLed871x(&ledpriv->SwLed0);
+	DeInitLed871x(&ledpriv->SwLed1);
 }
 
 /*	Description:
@@ -206,7 +206,7 @@ void r8712_DeInitSwLeds(struct _adapter *padapter)
 static void SwLedBlink(struct LED_871x *pLed)
 {
 	struct _adapter *padapter = pLed->padapter;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 bStopBlinking = false;
 
 	/* Change LED according to BlinkingLedState specified. */
@@ -281,14 +281,14 @@ static void SwLedBlink(struct LED_871x *pLed)
 static void SwLedBlink1(struct LED_871x *pLed)
 {
 	struct _adapter *padapter = pLed->padapter;
-	struct led_priv *ledpriv = &(padapter->ledpriv);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct eeprom_priv *peeprompriv = &(padapter->eeprompriv);
-	struct LED_871x *pLed1 = &(ledpriv->SwLed1);
+	struct led_priv *ledpriv = &padapter->ledpriv;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct eeprom_priv *peeprompriv = &padapter->eeprompriv;
+	struct LED_871x *pLed1 = &ledpriv->SwLed1;
 	u8 bStopBlinking = false;
 
 	if (peeprompriv->CustomerID == RT_CID_819x_CAMEO)
-		pLed = &(ledpriv->SwLed1);
+		pLed = &ledpriv->SwLed1;
 	/* Change LED according to BlinkingLedState specified. */
 	if (pLed->BlinkingLedState == LED_STATE_ON)
 		SwLedOn(padapter, pLed);
@@ -499,7 +499,7 @@ static void SwLedBlink2(struct LED_871x *pLed)
 static void SwLedBlink3(struct LED_871x *pLed)
 {
 	struct _adapter *padapter = pLed->padapter;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	u8 bStopBlinking = false;
 
 	/* Change LED according to BlinkingLedState specified. */
@@ -593,8 +593,8 @@ static void SwLedBlink3(struct LED_871x *pLed)
 static void SwLedBlink4(struct LED_871x *pLed)
 {
 	struct _adapter *padapter = pLed->padapter;
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
-	struct LED_871x *pLed1 = &(ledpriv->SwLed1);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
+	struct LED_871x *pLed1 = &ledpriv->SwLed1;
 	u8 bStopBlinking = false;
 
 	/* Change LED according to BlinkingLedState specified. */
@@ -844,7 +844,7 @@ static void BlinkWorkItemCallback(struct work_struct *work)
 {
 	struct LED_871x *pLed = container_of(work, struct LED_871x,
 				BlinkWorkItem);
-	struct led_priv	*ledpriv = &(pLed->padapter->ledpriv);
+	struct led_priv	*ledpriv = &pLed->padapter->ledpriv;
 
 	switch (ledpriv->LedStrategy) {
 	case SW_LED_MODE0:
@@ -886,13 +886,13 @@ static void BlinkWorkItemCallback(struct work_struct *work)
 static void SwLedControlMode1(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv *ledpriv = &(padapter->ledpriv);
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct sitesurvey_ctrl *psitesurveyctrl = &(pmlmepriv->sitesurveyctrl);
+	struct led_priv *ledpriv = &padapter->ledpriv;
+	struct LED_871x *pLed = &ledpriv->SwLed0;
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct sitesurvey_ctrl *psitesurveyctrl = &pmlmepriv->sitesurveyctrl;
 
 	if (padapter->eeprompriv.CustomerID == RT_CID_819x_CAMEO)
-		pLed = &(ledpriv->SwLed1);
+		pLed = &ledpriv->SwLed1;
 	switch (LedAction) {
 	case LED_CTL_START_TO_LINK:
 	case LED_CTL_NO_LINK:
@@ -1106,9 +1106,9 @@ static void SwLedControlMode1(struct _adapter *padapter,
 static void SwLedControlMode2(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	 *ledpriv = &(padapter->ledpriv);
+	struct led_priv	 *ledpriv = &padapter->ledpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
+	struct LED_871x *pLed = &ledpriv->SwLed0;
 
 	switch (LedAction) {
 	case LED_CTL_SITE_SURVEY:
@@ -1239,9 +1239,9 @@ static void SwLedControlMode2(struct _adapter *padapter,
 static void SwLedControlMode3(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
+	struct LED_871x *pLed = &ledpriv->SwLed0;
 
 	switch (LedAction) {
 	case LED_CTL_SITE_SURVEY:
@@ -1383,10 +1383,10 @@ static void SwLedControlMode3(struct _adapter *padapter,
 static void SwLedControlMode4(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
-	struct LED_871x *pLed1 = &(ledpriv->SwLed1);
+	struct LED_871x *pLed = &ledpriv->SwLed0;
+	struct LED_871x *pLed1 = &ledpriv->SwLed1;
 
 	switch (LedAction) {
 	case LED_CTL_START_TO_LINK:
@@ -1650,12 +1650,12 @@ static void SwLedControlMode4(struct _adapter *padapter,
 static void SwLedControlMode5(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
+	struct LED_871x *pLed = &ledpriv->SwLed0;
 
 	if (padapter->eeprompriv.CustomerID == RT_CID_819x_CAMEO)
-		pLed = &(ledpriv->SwLed1);
+		pLed = &ledpriv->SwLed1;
 
 	switch (LedAction) {
 	case LED_CTL_POWER_ON:
@@ -1723,9 +1723,9 @@ static void SwLedControlMode5(struct _adapter *padapter,
 static void SwLedControlMode6(struct _adapter *padapter,
 			      enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct LED_871x *pLed = &(ledpriv->SwLed0);
+	struct LED_871x *pLed = &ledpriv->SwLed0;
 
 	switch (LedAction) {
 	case LED_CTL_POWER_ON:
@@ -1737,7 +1737,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
 		pLed->CurrLedState = LED_STATE_ON;
 		pLed->BlinkingLedState = LED_STATE_ON;
 		pLed->bLedBlinkInProgress = false;
-		mod_timer(&(pLed->BlinkTimer), jiffies + msecs_to_jiffies(0));
+		mod_timer(&pLed->BlinkTimer, jiffies + msecs_to_jiffies(0));
 		break;
 	case LED_CTL_TX:
 	case LED_CTL_RX:
@@ -1807,7 +1807,7 @@ static void SwLedControlMode6(struct _adapter *padapter,
  */
 void LedControl871x(struct _adapter *padapter, enum LED_CTL_MODE LedAction)
 {
-	struct led_priv	*ledpriv = &(padapter->ledpriv);
+	struct led_priv	*ledpriv = &padapter->ledpriv;
 
 	if (!ledpriv->bRegUseLed)
 		return;
-- 
2.7.4


