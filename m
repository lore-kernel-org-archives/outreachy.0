X-GM-THRID: 6264236778940530688
X-Received: by 10.13.223.211 with SMTP id i202mr20819313ywe.4.1458506397398;
        Sun, 20 Mar 2016 13:39:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.99 with SMTP id zr3ls978209obc.59.gmail; Sun, 20 Mar
 2016 13:39:57 -0700 (PDT)
X-Received: by 10.182.226.162 with SMTP id rt2mr21212931obc.24.1458506397075;
        Sun, 20 Mar 2016 13:39:57 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si3040679pfb.1.2016.03.20.13.39.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 13:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so26727878pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 13:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hqupYP8Zdr0X0ZVB1h0WEXG3PE2nrMHHDEldwIrT7vQ=;
        b=E5qvXyJOiLZaf7eTwRl7daC03S0MS28Z2Kq20rDJAEMEtBSC/Gyig1+lydgJLrxsL5
         v887TR9YM7poIssBsf+uyLSmzn6OQezBn2Ez2eYen5pkoMla6ml2XySzGgNtUROLEzV7
         eoWOkX1GeKpczGoEmOJ+RvYRCFIUIIRfLSykroFYay4Ee0+//Vo8RTIF+DhrPfk/1DXy
         RrEF37H9zIytVyGLOpxCqq7ZzlVqKoRxavVE0MpEsUAW2vK3KnNJaW2uBJMzab0mWhpx
         VWjA2aq8QxzPQ7zdtYvFqadgBYuszFzm4v8rPixJ7T9pQHvG+MHC90yyLGq7mPRD80nN
         3Ffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hqupYP8Zdr0X0ZVB1h0WEXG3PE2nrMHHDEldwIrT7vQ=;
        b=ko3MhE5VYJL/QWSTEZobaVDpBuzYEHMwsZpuq1n2/dFzFxOXxd6z0fji3tznN4ou/8
         ENwAe+TzhuVXamUlyFYXYBPoiemDxvWrXylguz9FPoT6ViAk30U2uiQkGF4TCTKWsJWJ
         BI0js4/WDcqHK0o6g72uz3UKKunAQwAtHKKI+zwu0ygcInuBjKa0/isXsmfpDlCixj0S
         H9qhh+LDtr++MmKSZmnm7bv/wZSEC1M1ida0psXb6sXdhJc1r7hxF+iGvkzz5Hd3RbsY
         pAynRAL/b+28iJvBVWhmWipQ9Yb/YaSg7AY5nqtbMjU28gLqSJrQ3hy/ECnVLuWobb1+
         fgiA==
X-Gm-Message-State: AD7BkJLIPQVcQTlc61t/dn2rNk5EFqVT/fYY94fwlYuBEEEWn00JdumoaIrfg+VTvJTarg==
X-Received: by 10.66.145.194 with SMTP id sw2mr39675041pab.69.1458506396857;
        Sun, 20 Mar 2016 13:39:56 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id qy7sm35298113pab.34.2016.03.20.13.39.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 13:39:56 -0700 (PDT)
Date: Mon, 21 Mar 2016 02:09:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8712: rtl871x_cmd: Clean up tests if NULL
 returned on failure
Message-ID: <9dd7a7d5590eb1c894440f0d5af6dafcad6860ba.1458506158.git.bhaktipriya96@gmail.com>
References: <cover.1458506158.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458506158.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 80 +++++++++++++++++------------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 86136cc..aed03cf 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -225,10 +225,10 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psurveyPara = kmalloc(sizeof(*psurveyPara), GFP_ATOMIC);
-	if (psurveyPara == NULL) {
+	if (!psurveyPara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -258,10 +258,10 @@ u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset)
 	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pbsetdataratepara = kmalloc(sizeof(*pbsetdataratepara), GFP_ATOMIC);
-	if (pbsetdataratepara == NULL) {
+	if (!pbsetdataratepara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -280,10 +280,10 @@ u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetchplanpara = kmalloc(sizeof(*psetchplanpara), GFP_ATOMIC);
-	if (psetchplanpara == NULL) {
+	if (!psetchplanpara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -301,10 +301,10 @@ u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pssetbasicratepara = kmalloc(sizeof(*pssetbasicratepara), GFP_ATOMIC);
-	if (pssetbasicratepara == NULL) {
+	if (!pssetbasicratepara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -322,10 +322,10 @@ u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pwriteptmparm = kmalloc(sizeof(*pwriteptmparm), GFP_ATOMIC);
-	if (pwriteptmparm == NULL) {
+	if (!pwriteptmparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -342,10 +342,10 @@ u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pwriteptmparm = kmalloc(sizeof(*pwriteptmparm), GFP_ATOMIC);
-	if (pwriteptmparm == NULL) {
+	if (!pwriteptmparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -362,10 +362,10 @@ u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val)
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pwriterfparm = kmalloc(sizeof(*pwriterfparm), GFP_ATOMIC);
-	if (pwriterfparm == NULL) {
+	if (!pwriterfparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -383,10 +383,10 @@ u8 r8712_getrfreg_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	prdrfparm = kmalloc(sizeof(*prdrfparm), GFP_ATOMIC);
-	if (prdrfparm == NULL) {
+	if (!prdrfparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -427,7 +427,7 @@ u8 r8712_createbss_cmd(struct _adapter *padapter)

 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_START_TO_LINK);
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return _FAIL;
 	INIT_LIST_HEAD(&pcmd->list);
 	pcmd->cmdcode = _CreateBss_CMD_;
@@ -457,7 +457,7 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)

 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_START_TO_LINK);
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return _FAIL;

 	/* for hidden ap to set fw_state here */
@@ -587,10 +587,10 @@ u8 r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	pdisconnect_cmd = kmalloc(sizeof(*pdisconnect_cmd), GFP_ATOMIC);
-	if (pdisconnect_cmd == NULL)
+	if (!pdisconnect_cmd)
 		return _FAIL;
 	pdisconnect = kmalloc(sizeof(*pdisconnect), GFP_ATOMIC);
-	if (pdisconnect == NULL) {
+	if (!pdisconnect) {
 		kfree(pdisconnect_cmd);
 		return _FAIL;
 	}
@@ -609,10 +609,10 @@ u8 r8712_setopmode_cmd(struct _adapter *padapter,
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetop = kmalloc(sizeof(*psetop), GFP_ATOMIC);
-	if (psetop == NULL) {
+	if (!psetop) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -633,15 +633,15 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 	struct sta_info *sta = (struct sta_info *)psta;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetstakey_para = kmalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
-	if (psetstakey_para == NULL) {
+	if (!psetstakey_para) {
 		kfree(ph2c);
 		return _FAIL;
 	}
 	psetstakey_rsp = kmalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
-	if (psetstakey_rsp == NULL) {
+	if (!psetstakey_rsp) {
 		kfree(ph2c);
 		kfree(psetstakey_para);
 		return _FAIL;
@@ -673,10 +673,10 @@ u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetrfintfsparm = kmalloc(sizeof(*psetrfintfsparm), GFP_ATOMIC);
-	if (psetrfintfsparm == NULL) {
+	if (!psetrfintfsparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -695,10 +695,10 @@ u8 r8712_setrttbl_cmd(struct _adapter *padapter,
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetrttblparm = kmalloc(sizeof(*psetrttblparm), GFP_ATOMIC);
-	if (psetrttblparm == NULL) {
+	if (!psetrttblparm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -716,10 +716,10 @@ u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 	struct SetMacAddr_param	*psetMacAddr_para;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetMacAddr_para = kmalloc(sizeof(*psetMacAddr_para), GFP_ATOMIC);
-	if (psetMacAddr_para == NULL) {
+	if (!psetMacAddr_para) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -738,15 +738,15 @@ u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr)
 	struct set_assocsta_rsp		*psetassocsta_rsp = NULL;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	psetassocsta_para = kmalloc(sizeof(*psetassocsta_para), GFP_ATOMIC);
-	if (psetassocsta_para == NULL) {
+	if (!psetassocsta_para) {
 		kfree(ph2c);
 		return _FAIL;
 	}
 	psetassocsta_rsp = kmalloc(sizeof(*psetassocsta_rsp), GFP_ATOMIC);
-	if (psetassocsta_rsp == NULL) {
+	if (!psetassocsta_rsp) {
 		kfree(ph2c);
 		kfree(psetassocsta_para);
 		return _FAIL;
@@ -766,10 +766,10 @@ u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid)
 	struct addBaReq_parm	*paddbareq_parm;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	paddbareq_parm = kmalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
-	if (paddbareq_parm == NULL) {
+	if (!paddbareq_parm) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -787,10 +787,10 @@ u8 r8712_wdg_wk_cmd(struct _adapter *padapter)
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	pdrvintcmd_param = kmalloc(sizeof(*pdrvintcmd_param), GFP_ATOMIC);
-	if (pdrvintcmd_param == NULL) {
+	if (!pdrvintcmd_param) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -961,10 +961,10 @@ u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 	struct cmd_priv *pcmdpriv = &adapter->cmdpriv;

 	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 	param = kzalloc(sizeof(*param), GFP_ATOMIC);
-	if (param == NULL) {
+	if (!param) {
 		kfree(ph2c);
 		return _FAIL;
 	}
--
2.1.4


