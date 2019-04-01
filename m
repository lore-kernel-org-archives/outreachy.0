X-GM-THRID: 6674748196483235840
X-Received: by 2002:a02:a490:: with SMTP id d16mr583350jam.5.1554143179092;
        Mon, 01 Apr 2019 11:26:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls3895700ioc.1.gmail; Mon, 01 Apr
 2019 11:26:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy7TAdR2ekTyiX3g6rkqo4ZWYZwBNN8Rotuk/kCCM69OD4D2nzByTUdcXIadM+UuGwNfUvi
X-Received: by 2002:a6b:251:: with SMTP id 78mr10385575ioc.39.1554143178325;
        Mon, 01 Apr 2019 11:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554143178; cv=none;
        d=google.com; s=arc-20160816;
        b=aASxMqh4FBSQ3sac8ZhDy5la9vfRHIVqcjWefjUXJ4nWPDIaQyWoKQyjjGibE1WCL+
         D6mG5/UZIbG2VNMVboPATVX1gnVB5sYBjnXgwBocVxkCjpmrg3XjtbrE0fFdPpdI1QqC
         IGH/Rmg3phzjFpwGYKiDnTKMEmElpY6qpOVy6mhffXpdUGOi3cO5ztvepT3aSepibc5/
         zxvdjiRta5+3TYnoJdaxnmAPzOoU89tC9+hz/ZCAz3Vxl54mIuVg+h1cbXzhha//Ilun
         OfJHAe1tyAC1Rt7Xrpt4SI4Mox5cnIBVgf6MJZX3w4wRdHnWvAH/fuqGJW02n0QZ9Zxf
         oGuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vaJnq/be85ltrvhTG8G4NTxddNzkmPRqf4Fx2Zfs8y4=;
        b=GvrEGdjxSqJ5FbXMbyAjqICkkeTLP/prU/cfAcH5+IvTzYCcCVKNoPgWCtj90FO8OR
         wkGHCaxuICVqXCY+AMQgCrephlOaZpK8sji3Czo7GuEg8dYLQOZBxjAzvqfRGkMCJmWM
         CrqdNJQscCyo5EdtzWTu0c7xwhdJGvqJb4Z/8D130nQOcwzRX9EFHZ0Mn60QX17kI7RB
         bPY1P3jhLmOwpFydTjkDWdYsv7F7QkBIbZDaZQM6P2nG6s3cC/drxc/kIhrtXmHRelBa
         Qw59tdeU/bDIAKjCmW2rVyAX+uJ5XSGj8AN6BHQ/0vuchvP2gF289FLPOEH/iek5+j+x
         KANQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZ6RBonD;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id k26si441896ioh.5.2019.04.01.11.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 11:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZ6RBonD;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id k21so9637016otf.1
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 11:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vaJnq/be85ltrvhTG8G4NTxddNzkmPRqf4Fx2Zfs8y4=;
        b=qZ6RBonDeudyD9LlwH8dZKAO4oLL31Vvh+IEFaWVCCQsGL1EnfzaCLQvnhrzCvEYmT
         t+pj3HIgkkY4Z1NDoByXEzlAgXAJVIE/cPQ7trDTIZ4iTBHea1JGQ1bwg1eNx0KTDkTR
         h5Sloz10Y/ra9pLGwnrmXdy2jNDfIOGcQzJJhLQYhmqIsOxcUwMdHLMd6NZiOR7bnRkT
         d92b96Z3CUxywT6YvStCBEe92lyLHuPyW8ykEX8zqMFXhpLhKeu81kpUGFpyEzOZbzAH
         K/A3AFb8N6bAdULtdt5/AdWFnzDuwwTCjgMoL4687F2wd3bGD7b6Vr1vvE2yD/AzRyAF
         Jfwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vaJnq/be85ltrvhTG8G4NTxddNzkmPRqf4Fx2Zfs8y4=;
        b=QEvAOtqd4twagLolCw42uXaTpov3ZbxRuWLdy9SF6IcD89TJiJH1w6MabYvcwrKIgh
         4M4itkmdWglfwdsBgH3/znBniWMd1r6Rp1wvQRTkYV3JSOX7pfLXYMtOHZkYnfcGburi
         mDtmqtmroTW0j6yxZH8Hsz9pgTM2r2UkrfmoaK1nKjXjQAB6kGS9XcR+10zEa3VWwMCC
         wEQKG+4KDtvluZeC2gwApYOMdzLjnymfpG9utFwzsyysp0UjkAbW3y6Q/mYnCxd0ZPGL
         nbWTJa7l1m3nByQbIeJzvYVCLOontb7ala0zdEt/CeCgtprbkWNzAteFPENAOSonD4U5
         ruxQ==
X-Gm-Message-State: APjAAAWfxmhxuxyrfsh/Bk+hGn1kuTwQ9KvFpK8d31KjIRm6lUfWsXKC
	RCu+r6uQps85nYkF5+gC28U=
X-Received: by 2002:a9d:d66:: with SMTP id 93mr45413470oti.25.1554143177963;
        Mon, 01 Apr 2019 11:26:17 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id j18sm4398948otq.68.2019.04.01.11.26.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 11:26:16 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: rtl8723bs: core: rtw_mlme_ext.c: Remove typecast in kfree
Date: Mon,  1 Apr 2019 13:26:14 -0500
Message-Id: <20190401182614.14755-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typecast in kfree, as per definition of kfree in
include/linux/slab.h#L144, the parameter type of kfree is void*, and
hence C compiler casts any pointer type to void*.
that is allocated with kmalloc.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3 -

- Tested and compiled the patch

Changes in v2:

- Commit log modified
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ebb45acb4446..6ac2b03805e4 100644
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
@@ -5052,7 +5052,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5073,8 +5073,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
 	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
-		kfree((u8 *)pcmd_obj);
-		kfree((u8 *)pevtcmd);
+		kfree(pcmd_obj);
+		kfree(pevtcmd);
 		return;
 	}
 
@@ -5105,7 +5105,7 @@ void report_surveydone_event(struct adapter *padapter)
 	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5152,7 +5152,7 @@ void report_join_res(struct adapter *padapter, int res)
 	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5203,7 +5203,7 @@ void report_wmm_edca_update(struct adapter *padapter)
 	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5250,7 +5250,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5305,7 +5305,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5836,7 +5836,7 @@ void survey_timer_hdl(struct timer_list *t)
 
 		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
 		if (psurveyPara == NULL) {
-			kfree((unsigned char *)ph2c);
+			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
 
@@ -6603,7 +6603,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
 	if (ptxBeacon_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.17.1


