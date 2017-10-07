X-GM-THRID: 6474151874881650688
X-Received: by 10.84.240.140 with SMTP id z12mr273979plk.51.1507408412096;
        Sat, 07 Oct 2017 13:33:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.25.216 with SMTP id 207ls60830pfz.3.gmail; Sat, 07 Oct 2017
 13:33:31 -0700 (PDT)
X-Received: by 10.99.109.196 with SMTP id i187mr628476pgc.136.1507408411039;
        Sat, 07 Oct 2017 13:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507408411; cv=none;
        d=google.com; s=arc-20160816;
        b=v5ex4jJdgw3w+SDjz6PxOiUsQZlao3nNlXQqmxCZah3vZSPcNqjdp0UImd2QQePbiS
         X7qNg9Z6wZIkHs5vroIYup1GxvaF52D8lajsVD7FEbnAwk5nOh7hd8z/MjoYV9jpg6jH
         i3te2Bluyd+FWSNkJnR3thPNgdUQcNRIaVry7ZyHRC6/05p9qs1pb7+ovinUJp3ufmtm
         NzagFQffqoZdTYYlVpnDUPsWHVurWNI0M7UJJEJV8xqMcE/8WmpERHbzgVCLzjJAOMMh
         2joAgvUvYLx6xzSXZFBuWdwnoaApMUnS/CXwmrajDfdo6tf2f3TA3yu4wv5vVGwFGVUk
         BY/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yzi/jBQ/PaZc/1SAnLJeuJlQWcKZRfGa34az4X3R6d0=;
        b=QEHgb2VBimz2V/wnonsHSL077iysXQD3drYZiOb7f1fGtg+H9P7X8RNp9l75H7CxGn
         5qevm+ZtBIwWK9pWmCSjkW7LjWXt1PXdTTGil06OM1GY5/LrDM5jrBr5064BSSXR9c9M
         m3FNQr24wb3RU3J+CCU9kqj8XC1H4SCY1IIZ647XivBqUP4Lyq7G45/RoK5csT4qMTAZ
         f4kxA5xzp+6R40kTQIG5LF9gsLXxZ26NpOnki71QlsOqDliGzQFLyEZC+A9etrG1j0Qp
         bRkAzO6gtlIWDu2r4EZ1B/4m0wB0pTwoYhbUCRUv7f+7JaX+R+IYnsiby//7Kl7ySHJi
         r70Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jBi84pYc;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id e26si559205pfi.12.2017.10.07.13.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 13:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jBi84pYc;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id u27so21832431pgn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 13:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yzi/jBQ/PaZc/1SAnLJeuJlQWcKZRfGa34az4X3R6d0=;
        b=jBi84pYcBoAKsVissq1ReBSERWZR6HdUQ1d/1FRu1Q5aOBUeuwKTS0o/T6X7ehxERC
         dJDEg3+Wtj+B7yzeLn20e4Kgx8cNMR9YAO+laF3UNvlOigkj80uFPL0SUze7Sci07C/V
         j/6Kwhf/nzQ9NY+z91Xerpqm8mcSw6wHDudfePFiUQAmnBIOhiGrCzDqj/0V8lAtTcPi
         CYcDQqf65h7RLQ80FFuBNdZD5ml+7TxDcToCrrkLtuTygdU7hfLK9Fe6RaYj6st6t3Ah
         KUKI6KWfpPa30Bdc01iWwFf+0Ksuz717qBfE3nxTFXtq43IevcLTh9+2oBsPhRVkxEKr
         yKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yzi/jBQ/PaZc/1SAnLJeuJlQWcKZRfGa34az4X3R6d0=;
        b=M+L4qlm4qsGueOW2MVeMu6cHK+bzDuYqZNOS8UoSZmtCrU+2Q37VCizPaGdRboR9tw
         XyiBgzVk3uwONJTcXweGNM7OW0RaZt7jsd9yra7Cw85TYemBRZejIUDRNkWfw5yBYfZM
         wIYJhbc5YguHN7HHbtyCIXbPbUE1Tfmy2fGksSPeMKROLXmxpvm/mCX8W/hhFgwV6rN9
         ERx9zCZaO+HuVmkTpkH9Uwnll5cBwLKx2xa/oQyWsTbalmirnqyRoGU6O8/m5C/2c/mK
         jsEaHFTAGW93wYFYr/LYitEgP8hR/LzEEW7UdaEODjyB8Mh840LHozL37DK62Bls0kro
         cXcg==
X-Gm-Message-State: AMCzsaWj51H31N/3GOPyShihKSzg5oOVuPvJvyGRczhTU5YxqPsQOLhG
	nwsWbLq2DKaBCnqhxO9MtSA=
X-Google-Smtp-Source: AOwi7QAYoDd7joR4cLZChtnf8DwQ9jjKgL7IeV04FxWyvuccBTHS8V4i28TsqmnPhbkY2afGy8MDgA==
X-Received: by 10.84.211.144 with SMTP id c16mr5474636pli.233.1507408410649;
        Sat, 07 Oct 2017 13:33:30 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id u8sm8757792pgp.17.2017.10.07.13.33.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 13:33:30 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: core: rtw_cmd: Remove cast to pointer types in kfree
Date: Sun,  8 Oct 2017 02:03:24 +0530
Message-Id: <1507408404-5719-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

The cast to pointer types in kfree is not needed and can be dropped.
This was done using the following semantic patch by coccinelle,
except kfree((unsigned char*) pcmd->parmbuf) which was transformed by
hand because coccinelle didn't have enough type information.

@r@
type T,P;
T* x;
@@

kfree(
-(P *)
x )

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 -Do transformation left out by coccinelle
 -Improve commit message

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 60 ++++++++++++++++----------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 1843c44..9ac2dea 100644
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
@@ -706,8 +706,8 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
 void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 {
 	/* rtw_free_cmd_obj(pcmd); */
-	kfree((unsigned char *) pcmd->parmbuf);
-	kfree((unsigned char *) pcmd);
+	kfree(pcmd->parmbuf);
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


