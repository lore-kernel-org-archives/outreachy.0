X-GM-THRID: 6674748196483235840
X-Received: by 2002:ab0:6042:: with SMTP id o2mr5961135ual.26.1554085918990;
        Sun, 31 Mar 2019 19:31:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254b:: with SMTP id l11ls1293617uan.1.gmail; Sun, 31 Mar
 2019 19:31:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoccslr8RYsDr3EMBSQh0ZhFRRd2gLPfDRSQCOuLrggZ9yVg/dgMtnX34gQ9wycQAVrZzx
X-Received: by 2002:ab0:2983:: with SMTP id u3mr6953206uap.8.1554085918327;
        Sun, 31 Mar 2019 19:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554085918; cv=none;
        d=google.com; s=arc-20160816;
        b=qGIezLzVLPFgeLWjA/qs1L9IqLkmnkzqhQxXZBJGPZwYZ1JfxBmRn1uI6nf5YlSDOK
         Nh1aQRfoxuz9T1xMU2+jHKu2012DByIanP/6yE3GmhIP0GBD68+MXBuelaF/25YUvWyr
         auxNzIT7hKfgljHK0W9+YXsVta6tjrCHw1VbJBvOUOcA1ccMuvH0HAy7LIXkdwP8rgFs
         Q64+bMiqlSDXAs4ebrStjMwgGXTjRR/6ix841SvU3BfUzwTcXlZPqazpbeSg5QHF+bwu
         b8ADslGxRafaZCkwSjduNehIHMJivxZL+3OhDqVr3oAj9/YYC1XmXPV/eg/wsPU9kjNr
         /XEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YcHEU+g3GK4i1OCnR++jxY9OitFvBtQktK56LxSDwTE=;
        b=Xsemc26vebPgDe4ZGlXfW5uE8vbIQY4NufPAUgPciHAQ5a0RbBHhCfh3z8trMd5zGG
         GR3OLwzm+HXowrQhyHWJV3QaAku4MoohyFS61CRiubUCp/Cd32WxsVp3EVBC3IjHEi4S
         kamUEdLtPr84000RYyL59e0BL81nuQ5DYIevprde2onkYLyG22vuV2RAYNUl4h2OY0+l
         epd/c8BRF0u1rw5W6g+fq/kHn46GhvELY0E5LZS/yZn+mVcfgNJ3p475xyK0ryRZAz3j
         FZkLPTBIqUJJRSFu9UdkeXNQ6zjVbZjB5F1SqNMRUnipmyQXvpecpgUaNBFa/N8qGYd4
         mgCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=flV7Qh5J;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n74si658007vke.2.2019.03.31.19.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 19:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=flV7Qh5J;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id f10so7125765otb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 19:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YcHEU+g3GK4i1OCnR++jxY9OitFvBtQktK56LxSDwTE=;
        b=flV7Qh5JgUVgr+mEvEOu3WHWlbi3AkREXqr1dY6ToxvsKSAORYJWF+b0uEXFtBk4HF
         G6vX2WFAMTtsYE44nG8gcjbWyuB0ZPPfxW3+iIAvhZYZ0VtjqggTVUIjt30Q2qCMNH9N
         lfHb/sx3b4GxOCPsSZWKw6HVWkHqb+MJFTHhsGo1RY95QQ8WcNem6zehm1qmGR7D4EH4
         YZBoOgfiHVXWA2QPB8gFO7HBV5u8Nit3JDNBPK3I1pT3RdVGuOGpvXjmrml00IKzWLtQ
         T/jFyvqVnwNut6YxH2dco5l8kyFlxgKek+pwFqsGv/OyF2AaccXTlwUHSKY9YeChye8J
         SZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YcHEU+g3GK4i1OCnR++jxY9OitFvBtQktK56LxSDwTE=;
        b=ebGNLGcyS47BNd2Zi0w3gKxfI8j4FT3JcrZCeRxtIHB1qNa6GLqUx0yTNLO27gXGW3
         IXAW+9sr0xfbsyi63t+ZxeFHtXApvs0w2HCwNjqVEiDYW8H6DLX7CifefoqkOiJWC62e
         KPKHfdbNslWmmnj2J+VWmPMhNvxh9d19yvuEw4GsBSuD3ghpAsYva1apwcheEtBNAubI
         VZlTzZNP9wPfelmGgLk4RNufoOmUbGyTgRkshPcSTNfcGw5Ml9qI0AA8BZapU2ASB1ox
         6xsq8KdFabHVtZRe544FKgNjMt2aRuRcw7KwJZlQDVxhK+EOVVdetzQL4CIdiSInsbsW
         RjRQ==
X-Gm-Message-State: APjAAAVS50kGpAqanmrLGcnJ69483O9bS8cBoh0moVOFaax3kwuCRccS
	ERvab6GReGjVAq7QPpi9W8theu0i
X-Received: by 2002:a9d:648f:: with SMTP id g15mr22454377otl.160.1554085917649;
        Sun, 31 Mar 2019 19:31:57 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id u22sm3642493otk.49.2019.03.31.19.31.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 31 Mar 2019 19:31:56 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: core: rtw_mlme_ext.c: Remove typecast in kfree
Date: Sun, 31 Mar 2019 21:31:54 -0500
Message-Id: <20190401023154.3644-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typecast in kfree, as the function will free any memory
that is allocated with kmalloc.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d97c1e6d5c01..430758f298af 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -816,7 +816,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 					update_network(&(pmlmepriv->cur_network.network), pbss, padapter, true);
 					rtw_get_bcn_info(&(pmlmepriv->cur_network));
 				}
-				kfree((u8 *)pbss);
+				kfree(pbss);
 			}
 
 			/* check the vendor of the assoc AP */
@@ -5043,7 +5043,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5064,8 +5064,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
 	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
-		kfree((u8 *)pcmd_obj);
-		kfree((u8 *)pevtcmd);
+		kfree(pcmd_obj);
+		kfree(pevtcmd);
 		return;
 	}
 
@@ -5096,7 +5096,7 @@ void report_surveydone_event(struct adapter *padapter)
 	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5143,7 +5143,7 @@ void report_join_res(struct adapter *padapter, int res)
 	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5194,7 +5194,7 @@ void report_wmm_edca_update(struct adapter *padapter)
 	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree((pcmd_obj);
 		return;
 	}
 
@@ -5241,7 +5241,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5296,7 +5296,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5822,7 +5822,7 @@ void survey_timer_hdl(struct timer_list *t)
 
 		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
 		if (psurveyPara == NULL) {
-			kfree((unsigned char *)ph2c);
+			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
 
@@ -6589,7 +6589,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
 	if (ptxBeacon_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.17.1


