X-GM-THRID: 6250664265920806912
X-Received: by 10.107.62.8 with SMTP id l8mr6355644ioa.11.1455346450415;
        Fri, 12 Feb 2016 22:54:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.13 with SMTP id c13ls214354qge.68.gmail; Fri, 12 Feb
 2016 22:54:09 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr5580952ywc.55.1455346449967;
        Fri, 12 Feb 2016 22:54:09 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ff2si1861547pad.2.2016.02.12.22.54.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:54:09 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id w128so4338589pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Fh7VrniPaWeAma0K4ILtAACQF/Xe3BEvVjr7MDma/E0=;
        b=P+zCsHdW5LMdEbOMUt/PFmZIX9tDAoXZCuYOJf3Tlcka3aWBp3Fuz+DrsYaatdTCnV
         X6KNNODjrD9p608pdSwt02MM6WX3B89XXUf4IH1HTL+DY10pC0GsY9rNwcxyQ7oA63op
         oA7jWzPJxfb4p8dERDXFvw4KV3vJZLmCPvl/MbHwMkQB9YGuiIHK8y4JViOnwVuxJP8x
         VBwXXha+h7ACj+rA7TUJsVt9KUpkCtJTJeYmYma5z/kT1oqMwyhEeIydNjjpVSZPVviI
         ff/Qz/Mg+P+7uiOGIGPnNHScLhCOCKZ7Bycbj1P//dYA8vtLMPPUaEVfcx77xYy7Bz6Q
         RwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Fh7VrniPaWeAma0K4ILtAACQF/Xe3BEvVjr7MDma/E0=;
        b=Ct/5NGQbz5PlVom7KceJai5Cxcuu89bCLjvCkP/NcGM8YssmeCYvTdu2eYSeYEQQ/M
         qCM+1gnut9f4TYPeWSBLJBicXWS+mDMsi8Pqghp7v46yxo998IfqDIqrUeC322AC9JCR
         BURA+c1pTi35syxmtxCmvw2M2VdqZgrAOnIAgpGsR80E9LKyJ+pUlvpz7proJGdH6K+T
         BSAIIPRMRrMapOVhpBziwnHk7SdxojLJWUwu56ORycBURMKMB/VO4UTYKkVkLs2eILbJ
         IfSWpRtKNgSmVArJRRbK5LLviktmzp270oX7L2c+vtSlgrSZtVt5G7hy4CEoC5iaUQrM
         D3kQ==
X-Gm-Message-State: AG10YOSA8SNR5IMLDViTvrUfySdRG1q+KiUCraqEbvW79NLVDqHDmTPGZepQKPZzxr5O7A==
X-Received: by 10.98.80.91 with SMTP id e88mr7918829pfb.62.1455346449807;
        Fri, 12 Feb 2016 22:54:09 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id fa3sm23760439pab.45.2016.02.12.22.54.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:54:09 -0800 (PST)
Date: Fri, 12 Feb 2016 22:54:08 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: wilc1000: wilc_wfi_cfgoperations: remove cast
 on void pointers
Message-ID: <95681b08ddcc8b9e7b5218f9bc911f9b8ee5e281.1455344328.git.amsfield22@gmail.com>
References: <cover.1455344328.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455344328.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove cast on void pointers. C programming language guarantees
the conversion from void pointer to any other pointer type.

Coccinelle patch:
@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 97d1b80..81a2ee9 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -228,7 +228,7 @@ static void refresh_scan(void *user_void, u8 all, bool direct_scan)
 	int i;
 	int rssi = 0;
 
-	priv = (struct wilc_priv *)user_void;
+	priv = user_void;
 	wiphy = priv->dev->ieee80211_ptr->wiphy;
 
 	for (i = 0; i < last_scanned_cnt; i++) {
@@ -404,7 +404,7 @@ static void CfgScanResult(enum scan_event scan_event,
 	struct ieee80211_channel *channel;
 	struct cfg80211_bss *bss = NULL;
 
-	priv = (struct wilc_priv *)user_void;
+	priv = user_void;
 	if (priv->bCfgScanning) {
 		if (scan_event == SCAN_EVENT_NETWORK_FOUND) {
 			wiphy = priv->dev->ieee80211_ptr->wiphy;
@@ -525,7 +525,7 @@ static void CfgConnectResult(enum conn_event enuConnDisconnEvent,
 
 	wilc_connecting = 0;
 
-	priv = (struct wilc_priv *)pUserVoid;
+	priv = pUserVoid;
 	dev = priv->dev;
 	vif = netdev_priv(dev);
 	wl = vif->wilc;
@@ -1713,7 +1713,7 @@ void WILC_WFI_p2p_rx (struct net_device *dev, u8 *buff, u32 size)
 
 static void WILC_WFI_mgmt_tx_complete(void *priv, int status)
 {
-	struct p2p_mgmt_data *pv_data = (struct p2p_mgmt_data *)priv;
+	struct p2p_mgmt_data *pv_data = priv;
 
 
 	kfree(pv_data->buff);
@@ -1724,7 +1724,7 @@ static void WILC_WFI_RemainOnChannelReady(void *pUserVoid)
 {
 	struct wilc_priv *priv;
 
-	priv = (struct wilc_priv *)pUserVoid;
+	priv = pUserVoid;
 
 	priv->bInP2PlistenState = true;
 
@@ -1739,7 +1739,7 @@ static void WILC_WFI_RemainOnChannelExpired(void *pUserVoid, u32 u32SessionID)
 {
 	struct wilc_priv *priv;
 
-	priv = (struct wilc_priv *)pUserVoid;
+	priv = pUserVoid;
 
 	if (u32SessionID == priv->strRemainOnChanParams.u32ListenSessionID) {
 		priv->bInP2PlistenState = false;
-- 
2.1.4


