X-GM-THRID: 6474151874881650688
X-Received: by 10.99.3.8 with SMTP id 8mr490746pgd.20.1507380948034;
        Sat, 07 Oct 2017 05:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.176.1 with SMTP id h1ls278824pgf.12.gmail; Sat, 07 Oct 2017
 05:55:47 -0700 (PDT)
X-Received: by 10.84.141.1 with SMTP id 1mr240445plu.39.1507380947032;
        Sat, 07 Oct 2017 05:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507380947; cv=none;
        d=google.com; s=arc-20160816;
        b=ISPMMRMjFQRj3uTvuN4FjAB/uuXLDzLcV5Y5AfMruVgtY4+xuEuZxJuhWpu18P0nyX
         pCNPuyHlmuWGV0gIJg6KMQ73Up6cS2P32pfQjU3zbUOagqdv9UCUwnusyEvX4xWW8Nah
         g5NLo7w1/zqR2cPIw1ecxQv5Vab26n2RWA9grUA0LbEql7xnCJGvqRtkyVcwvghERFFI
         2gejVqa8CTimgMSPTdu+ZWAqNTk8074tJcLRNAtfMvFyDor/Wa7OHEd5y7+Gr09IKGxx
         k7+EbKVtI/MvH6T039Vk36holnzyMbJwW6yJhH9YHOR4j4mJKbi73BnAA5rjOUvchLSX
         WWmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=YEYecqg2hUBPOWGFh8lRMdZP/8PO1tLxfWKyrXZ/mSM=;
        b=DhlYWeWtLXdvUdkWcVF6nLPqPOfRcgtkzg7cDeGowE557NmP3W2uZhzpgJYQWt0kM8
         V1gcZurj6JNhop+ylXVeVSASdnN4ApdUMRrQXrNVeojgxnsimUYoVhcP0Y9Q4DWXUzc5
         9kg0Z5u5UG1PZmsDaehJh7eS3AU1GfaNp97DlRh9wE7IYii48MCSroUtjM25IUS8wRaf
         XqlE/NqnLLrfs3ec3i5rAJVYEupG3SAZiirK7rAD/7dob1pu4Gs4k5HWDr7glwzqZL8S
         cZn21nnN/lXDMmOdEq5ynNailt4JSUfELHg2nNDxIGmhI9+PRHvr4DsTUdAh1h+Mxd5f
         cxkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjZeSRnz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y12si482488pfe.23.2017.10.07.05.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 05:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pjZeSRnz;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id m28so18978782pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 05:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YEYecqg2hUBPOWGFh8lRMdZP/8PO1tLxfWKyrXZ/mSM=;
        b=pjZeSRnzVa7fV9T7IgSlT81ohl4Jm2zvnjJUOmVNwU/vqHYaZ46NmuMR053neJNa4B
         ZiXDT+qUBYuV/irW+jaF6Ld0OE35oaHy96vCFkmutLOERbLANMmY3gDBvJSFhjWlfCdv
         YgC5m3L8xXwKKSk5tPuBqjfGj9QYEijr1ZZMtffC3lOroHTd3OdZreHGQu+7H8sOP+uZ
         Co3WGB6B0NZ7fznTuyocjQMjCSiq0QHvHWX4qTF8CKERDEZykNeqwsXpz3qCnxJVs6XJ
         jiqYdaIzkU8bfXq+v0S1VRpkeBrLBXqqJ+SqRYZyfn3ur8wmQQxL0m+Th/7Kxh0WYlLQ
         GJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YEYecqg2hUBPOWGFh8lRMdZP/8PO1tLxfWKyrXZ/mSM=;
        b=oQ5hZ7UrTeal6Y2Y327w4k+WBQJNqBKZY1dRSThMS02Oe35ISXN2LNIr6EsIPbKJC/
         AM/u4t0hZya2OxAcJOigZ7RBQktRTg+bgZHN7zHHPrtSmDvy8y7+HRQiBHlJFtAt5Sqa
         xQ1qyMy4/57jRkJyIZWBJ3enqhv7iR8zfXUkAXdSoxOKszd2geN1P/b+nz8kLLDk9zb9
         lX5WC38w4PLWhBg3nEG9vvNP+NzNi5dUq+ubVNokdaozEPfRiEnKH5WyAllcX7xfFU2X
         R33HYP2b/PWtbj/+sq55iwo/aVZ/j0tIe/qFPAuwU3bfIsX5rNg+ML9ZRR8oljRvyhFg
         1OwA==
X-Gm-Message-State: AMCzsaUtGezwDk9A0TH2T6FtPFeoSqySoXXdN4FjfDLybYZotmHcZyI0
	ZclKLkvlSQFREJErbmD7rWQR+Q==
X-Google-Smtp-Source: AOwi7QAawreurH+vJUJz4skco0iJe1yLk1887DjlI1PHN4e7bK37CBwnpvXtwHh4m+zwhjaZqcuD0g==
X-Received: by 10.84.247.8 with SMTP id n8mr4705483pll.318.1507380946584;
        Sat, 07 Oct 2017 05:55:46 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id b79sm7841450pfd.37.2017.10.07.05.55.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 05:55:45 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: core: rtw_cmd: Remove cast to pointer types in kfree
Date: Sat,  7 Oct 2017 18:24:44 +0530
Message-Id: <1507380884-10906-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

The cast to pointer types in kfree is not needed and can be dropped.
Done using the following semantic by coccinelle.

@r@
type T,P;
T* x;
@@

kfree(
-(P *)
x )

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 58 ++++++++++++++++----------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 1843c44..e71e3ab 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -408,7 +408,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 	}
 
 	/* free cmd_obj */
-	kfree((unsigned char *)pcmd);
+	kfree(pcmd);
 }
 
 
@@ -619,7 +619,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 
 	psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
 	if (psurveyPara == NULL) {
-		kfree((unsigned char *) ph2c);
+		kfree(ph2c);
 		return _FAIL;
 	}
 
@@ -689,7 +689,7 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
 
 	pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
 	if (pbsetdataratepara == NULL) {
-		kfree((u8 *) ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -707,7 +707,7 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
 {
 	/* rtw_free_cmd_obj(pcmd); */
 	kfree((unsigned char *) pcmd->parmbuf);
-	kfree((unsigned char *) pcmd);
+	kfree(pcmd);
 }
 
 u8 rtw_createbss_cmd(struct adapter  *padapter)
@@ -847,7 +847,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	psecnetwork = (struct wlan_bssid_ex *)&psecuritypriv->sec_bss;
 	if (psecnetwork == NULL) {
 		if (pcmd != NULL)
-			kfree((unsigned char *)pcmd);
+			kfree(pcmd);
 
 		res = _FAIL;
 
@@ -955,7 +955,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 		cmdobj = rtw_zmalloc(sizeof(*cmdobj));
 		if (cmdobj == NULL) {
 			res = _FAIL;
-			kfree((u8 *)param);
+			kfree(param);
 			goto exit;
 		}
 		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
@@ -964,7 +964,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
 		if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
 			res = _FAIL;
-		kfree((u8 *)param);
+		kfree(param);
 	}
 
 exit:
@@ -990,7 +990,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (ph2c == NULL) {
-			kfree((u8 *)psetop);
+			kfree(psetop);
 			res = _FAIL;
 			goto exit;
 		}
@@ -999,7 +999,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
 		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 	} else{
 		setopmode_hdl(padapter, (u8 *)psetop);
-		kfree((u8 *)psetop);
+		kfree(psetop);
 	}
 exit:
 	return res;
@@ -1042,15 +1042,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (ph2c == NULL) {
-			kfree((u8 *) psetstakey_para);
+			kfree(psetstakey_para);
 			res = _FAIL;
 			goto exit;
 		}
 
 		psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
 		if (psetstakey_rsp == NULL) {
-			kfree((u8 *) ph2c);
-			kfree((u8 *) psetstakey_para);
+			kfree(ph2c);
+			kfree(psetstakey_para);
 			res = _FAIL;
 			goto exit;
 		}
@@ -1061,7 +1061,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
 	} else{
 		set_stakey_hdl(padapter, (u8 *)psetstakey_para);
-		kfree((u8 *) psetstakey_para);
+		kfree(psetstakey_para);
 	}
 exit:
 	return res;
@@ -1091,15 +1091,15 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 
 		psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
 		if (psetstakey_para == NULL) {
-			kfree((u8 *) ph2c);
+			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
 		}
 
 		psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
 		if (psetstakey_rsp == NULL) {
-			kfree((u8 *) ph2c);
-			kfree((u8 *) psetstakey_para);
+			kfree(ph2c);
+			kfree(psetstakey_para);
 			res = _FAIL;
 			goto exit;
 		}
@@ -1136,7 +1136,7 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
 
 	paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
 	if (paddbareq_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1170,7 +1170,7 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1205,7 +1205,7 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1241,7 +1241,7 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1294,7 +1294,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 		/* need enqueue, prepare cmd_obj and enqueue */
 		pcmdobj = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (pcmdobj == NULL) {
-			kfree((u8 *)setChannelPlan_param);
+			kfree(setChannelPlan_param);
 			res = _FAIL;
 			goto exit;
 		}
@@ -1306,7 +1306,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 		if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
 			res = _FAIL;
 
-		kfree((u8 *)setChannelPlan_param);
+		kfree(setChannelPlan_param);
 	}
 
 	/* do something based on res... */
@@ -1561,7 +1561,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
 
 		pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 		if (pdrvextra_cmd_parm == NULL) {
-			kfree((unsigned char *)ph2c);
+			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
 		}
@@ -1603,7 +1603,7 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1676,7 +1676,7 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1727,7 +1727,7 @@ u8 rtw_ps_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ppscmd);
+		kfree(ppscmd);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1799,7 +1799,7 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1898,7 +1898,7 @@ u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((u8 *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1933,7 +1933,7 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
 	if (pdrvextra_cmd_parm == NULL) {
-		kfree((u8 *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.7.4


