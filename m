X-GM-THRID: 6528466201738215424
X-Received: by 10.202.60.85 with SMTP id j82mr3714873oia.85.1520055248183;
        Fri, 02 Mar 2018 21:34:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.145 with SMTP id h17ls5558291otc.11.gmail; Fri, 02 Mar
 2018 21:34:07 -0800 (PST)
X-Google-Smtp-Source: AG47ELuYKSZB3HHA1oPG+CqLdWAeGPzP4v4gcUI8WO9go4S0ryUa02jpnCeHxieb5Lsw8f6z8i2h
X-Received: by 10.157.47.155 with SMTP id r27mr4017301otb.106.1520055247347;
        Fri, 02 Mar 2018 21:34:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055247; cv=none;
        d=google.com; s=arc-20160816;
        b=R5/KCzCYtNEbt5KCIlabWId7CrdMQudNt21mlDwYJ687iuKgz8TD20IJ+3dOvUcJJX
         Gn2fsXlPO+cXbwfHlUL65iNgHifwQ6aBpbCf+wV+zJLN+L43XIlzCZqV4yF1mTAGl9UA
         h2lmzYnpZB3bjVcB/CaRJhVeU8sJkVsPqCnoCsWFKKck8vDsYoU/Du6vvORRTDjLE417
         3y0cdrm5L2UPTLrirEiUKuMdlPD6eZcwk+yheP2j/Ww4Uj+COaFPoP8jIB41tyuN9l3Z
         dbh4Ir3eTykuxro5Nk2HAAXjCmoxRZiPzEDdmsK5AfXK2XqtqxY1jkl/GxdpoVQoDq3X
         5JGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=Zx8aNAYkJDFmc/T7Vlo+N7kFJAMQtogpaZaK69d857Rdfvm/Wnz4vHEz53Q3zUvY20
         7iVS6TOda+KGMnhOCuXxXcUEelLynldEG03BbRR9OxKwbwNfsCyEQNue9KPQMJfzOPDa
         VPM07ahrfERtybJYyQkwnDTdZlUofm3vVEZBwQC02fgtA3uL45aBM44V0qVOHJqHZZbV
         TJzkfcOn/1x/I0qs1BMVv+f0+67X60tUomSjNJKqYP+dan5uYU6Ll1GnBce18ISKp52r
         CwVSKYOat7KlxdFKfazRk13gSjgef6VoZhum+NS8OOChoBo97MRpu0RuuxagyOxs42Gm
         afPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FNiIYDer;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id 11si538051oie.1.2018.03.02.21.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FNiIYDer;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id i6-v6so6895672plt.7
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=FNiIYDer7344fk1hLf0d2Ho4VMRO6Zgtkra4YW/dtLkY08r5J5+1sCAL145EXCyaCB
         ETEw89tXKBW1ijLayD+hbKV+/tYPPiAL2gFp/Q5/6qvrCcGtO8FVxtBR4SWauHV/O/3F
         NCfmjPpwE7vZ8ZXNApcRa7bBX0Ui9squzsoTTjQsS4O1AGQolrT8RRAl+5pMjswUfyHz
         mjCtfjOz9Vanz0SNGcD+VG2Sk0TuuGAKBXGSPS6qmu5SdTrKJwAA+HImvY7HiJn9lVFC
         R1FQC6OgpBhser2w+a60t4ujv8cxxsIAX3e5CRPrW9f5j220d8IGmgj21c9gjDfQn7HU
         vBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=V2QoZ+4nVUWayVnGoecC8Xmgrv23MQpc+sGsOl+apQE=;
        b=OgGOvr2kn1BJwTdgSIRkh0U9ZYB/7aWv/o33lM0SEup2XpLq4sv8FbPONQ44NldPKQ
         NAZw4jX2E1nFAK/TCq/dyTLI8q2WlS/hUUpYCM4Ir/267h6O8VPTFA7QrkmWI9f1gbs3
         93TEAKaxxoLlZb/ug3Odtr1oFTvKEo6VhskY1oEaCyvsLquh0LfErX2Nlgoe6s4vK8Ub
         WcxVTqbRG4SI1Nao+Wqiz/byI6Ozn4fMBp2VN721nfFWVwqdrjs4fHHBHWMCRENCDn0y
         wP/mArjEYW62TFDooMjv7HV01SqWCuu08AHWdAmHQRBxD2Z2EASXVWTb/JD9y3A7mpAa
         /Kgw==
X-Gm-Message-State: APf1xPCgpfWvGHM2E2xgCSEpJP7L4GKkDnO9c5diWahk0vCXpIPoxMDC
	lhFhhEFbXDauhiCK5SdVUYyr7A==
X-Received: by 2002:a17:902:7598:: with SMTP id j24-v6mr7424894pll.1.1520055245933;
        Fri, 02 Mar 2018 21:34:05 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.34.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:34:04 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 6/6] staging: rtl8712: remove unnecessary parentheses
Date: Sat,  3 Mar 2018 11:02:36 +0530
Message-Id: <1520055156-8388-7-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

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


