X-GM-THRID: 6332335989632008192
X-Received: by 10.129.103.69 with SMTP id b66mr4462344ywc.14.1474362422107;
        Tue, 20 Sep 2016 02:07:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls1403343ott.0.gmail; Tue, 20 Sep
 2016 02:07:01 -0700 (PDT)
X-Received: by 10.13.253.198 with SMTP id n189mr5816910ywf.114.1474362421772;
        Tue, 20 Sep 2016 02:07:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si6037079pfw.1.2016.09.20.02.07.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 02:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so665322pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 02:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=seVuniG+8LeHzQVFBi17A4MxXBr+/tT+9+/ssI2jgI0=;
        b=oP72Qgt0smqOY+okS00our377z2kTRmr2U8Kq3X0s/axA9dRxkFCFCpvNG43bU2GI3
         +DgRL4J+zxh27JB3BIF6Uv59NNxNCVgrV39CYBXVn+SIK9RLoOBTJ+oCW5WPlrtpI4fb
         mMEBbrIXt/OtcxQ9CAr9JsfR//ZSZDzq3SXsOYNxkyI2weeoo0Iqd3M3IEY4lfTLFA/T
         eVGmM/2j1FI0Dl6HBhhrXQ+GC3grpWm1Suy1H9NiaY5FYHYL6p5k6c/DIiCdmGOKwzeT
         hzUe37kjxTgwpn2xJh9Ov9nDEkyKfwBRu1tvvOUSws7VVVE3zimxMfBNMMlEKcaremoR
         HQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=seVuniG+8LeHzQVFBi17A4MxXBr+/tT+9+/ssI2jgI0=;
        b=k9/BTT43t5z/+Uzi3+1kTfMefExMvA8BUhdhDWT4u/oqh9LhgdFdYzxIgaOVmij/Oe
         Ga7cgKvoOgiH22HQcTGVEQZM0bv9GhzBNT5pGZb5O2tZkXQMoZ/psWaQDpYBfJHvvJQM
         On/UOcuCE1svmIWPTiluN4pugnnx+y+2klIbb/4DLWI0F/3vWh9ZfxIpvdje6KeYkciv
         YlT7Cy8ikXQVvassrDofPZA9gT8p7mArbyzm1e+5tt8cIvHTGjfYuItfUoFKWqVC2rnK
         16AO7n6dr+aZqElINKDeIp6xxSKDFmaaAv2pwDfyRlewINNnF7rbwkSxgDxuZv8M47vP
         bENA==
X-Gm-Message-State: AE9vXwO4/z1ZpSyTxIKbwYq3M1dyXpNIVIKC7MS/5QrZF7VxYPmMmMEKOUOeLkUMhKyxtA==
X-Received: by 10.66.25.74 with SMTP id a10mr53936591pag.151.1474362421513;
        Tue, 20 Sep 2016 02:07:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id y9sm30792526pfk.2.2016.09.20.02.06.59
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 20 Sep 2016 02:07:01 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:37:43 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Subject: [PATCH 4/4] Staging: rtl8712: rtl871x_cmd: Use !x instead of x ==
 NULL.
Message-ID: <3a737d19a0b2c90b51a8ecf4b6b45d38062097b5.1474360940.git.bankarsandhya512@gmail.com>
References: <cover.1474360939.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474360939.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c |   22 +++++++++++-----------
 1 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 51b6959..b7ee5e6 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -66,13 +66,13 @@ static sint _init_cmd_priv(struct cmd_priv *pcmdpriv)
 	pcmdpriv->cmd_seq = 1;
 	pcmdpriv->cmd_allocated_buf = kmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ,
 					      GFP_ATOMIC);
-	if (pcmdpriv->cmd_allocated_buf == NULL)
+	if (!pcmdpriv->cmd_allocated_buf)
 		return _FAIL;
 	pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf  +  CMDBUFF_ALIGN_SZ -
 			    ((addr_t)(pcmdpriv->cmd_allocated_buf) &
 			    (CMDBUFF_ALIGN_SZ - 1));
 	pcmdpriv->rsp_allocated_buf = kmalloc(MAX_RSPSZ + 4, GFP_ATOMIC);
-	if (pcmdpriv->rsp_allocated_buf == NULL)
+	if (!pcmdpriv->rsp_allocated_buf)
 		return _FAIL;
 	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 -
 			    ((addr_t)(pcmdpriv->rsp_allocated_buf) & 3);
@@ -88,7 +88,7 @@ static sint _init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->event_seq = 0;
 	pevtpriv->evt_allocated_buf = kmalloc(MAX_EVTSZ + 4, GFP_ATOMIC);
 
-	if (pevtpriv->evt_allocated_buf == NULL)
+	if (!pevtpriv->evt_allocated_buf)
 		return _FAIL;
 	pevtpriv->evt_buf = pevtpriv->evt_allocated_buf  +  4 -
 			    ((addr_t)(pevtpriv->evt_allocated_buf) & 3);
@@ -123,7 +123,7 @@ static sint _enqueue_cmd(struct  __queue *queue, struct cmd_obj *obj)
 {
 	unsigned long irqL;
 
-	if (obj == NULL)
+	if (!obj)
 		return _SUCCESS;
 	spin_lock_irqsave(&queue->lock, irqL);
 	list_add_tail(&obj->list, &queue->queue);
@@ -181,7 +181,7 @@ u32 r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 	unsigned long irqL;
 	struct  __queue *queue;
 
-	if (obj == NULL)
+	if (!obj)
 		return _SUCCESS;
 	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
 		return _FAIL;
@@ -477,7 +477,7 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 		}
 	}
 	psecnetwork = &psecuritypriv->sec_bss;
-	if (psecnetwork == NULL) {
+	if (!psecnetwork) {
 		kfree(pcmd);
 		return _FAIL;
 	}
@@ -884,16 +884,16 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 		if (!psta) {
 			psta = r8712_alloc_stainfo(&padapter->stapriv,
 						   pnetwork->MacAddress);
-			if (psta == NULL)
+			if (!psta)
 				goto createbss_cmd_fail;
 		}
 		r8712_indicate_connect(padapter);
 	} else {
 		pwlan = _r8712_alloc_network(pmlmepriv);
-		if (pwlan == NULL) {
+		if (!pwlan) {
 			pwlan = r8712_get_oldest_wlan_network(
 				&pmlmepriv->scanned_queue);
-			if (pwlan == NULL)
+			if (!pwlan)
 				goto createbss_cmd_fail;
 			pwlan->last_scanned = jiffies;
 		} else
@@ -925,7 +925,7 @@ void r8712_setstaKey_cmdrsp_callback(struct _adapter *padapter,
 	struct sta_info *psta = r8712_get_stainfo(pstapriv,
 						  psetstakey_rsp->addr);
 
-	if (psta == NULL)
+	if (!psta)
 		goto exit;
 	psta->aid = psta->mac_id = psetstakey_rsp->keyid; /*CAM_ID(CAM_ENTRY)*/
 exit:
@@ -945,7 +945,7 @@ void r8712_setassocsta_cmdrsp_callback(struct _adapter *padapter,
 	struct sta_info *psta = r8712_get_stainfo(pstapriv,
 						  passocsta_parm->addr);
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
 	spin_lock_irqsave(&pmlmepriv->lock, irqL);
-- 
1.7.1


