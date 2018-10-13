X-GM-THRID: 6612208840785002496
X-Received: by 2002:a25:1f86:: with SMTP id f128-v6mr6995445ybf.64.1539524840199;
        Sun, 14 Oct 2018 06:47:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:9b82:: with SMTP id v2-v6ls5024882ybo.6.gmail; Sun, 14
 Oct 2018 06:47:19 -0700 (PDT)
X-Google-Smtp-Source: ACcGV626zVgEazmkSICBHxmwupf3CQHHXjAzCL6YofhNEtV2LFyxlECOqUtKywlalPn119CjczHc
X-Received: by 2002:a25:af84:: with SMTP id g4-v6mr7347302ybh.99.1539524839192;
        Sun, 14 Oct 2018 06:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539524839; cv=none;
        d=google.com; s=arc-20160816;
        b=V7nHxhPygAmluxEcvg4B1zmD6QM2ow1kLE0rWI5rBwX7t1IWGVt0xpvgg3jeBub10o
         PAZqIkEDkZ57jMxwQdWq7vZzGhM2+TwarYHnNetzpiQDy2a319i/3DVhJ4JSULVTqxTt
         W6okeCLdNarLc7QqD8DOIDPOnjVskVttxkHFwsiblMTw0IriP1lzIFwGiK6y5tFO4ZDf
         xQHEPiC687wWen4/vTDzMt+MKqM4RvN96m1mVX0Fr4kNMlbXgmMGCpRuPCIAmQJfHlKA
         JeRNnqvqvQoQ4/yJtDpGJafxqniUHBatioj6OagrDogOEr1X5IQuW1xodNsbBP3DqI5J
         Nr+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=haqHyUznBSJm8mJO+lf0+TCrrtw38VW2kd5PnKStdSQ=;
        b=HGc7XvHB55imdwQ9pJ7rpxxDWLX1wzm77X1777OJYYMaettTq/Zk3J9Izy1+mYHMrG
         a7xKtZ6gu857eM67JJ0sRK6z2gevh39vJo48O2tPv0Nf3R+jnIiNonWIQWvcYaPTy4nn
         KcuxqxIybQ5SRPFo+XLyJ4DltwmvsmkJVwnF6gp137xfIncuuvS+iPqPTr57+3eJrYPM
         8Zx7nJPIKZP/D2lj7pFtWW1vvgU2dczfvYelIhFbqo7fXbKIUn0gy+eyxw5sQohZkiV5
         Bhcdryi2sDBMw+X55ntw6OmNSYheL8g/4iJ64QtcOlcHhu2d6M7W/khltwCH3Ql2X5x5
         9MrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gxa+Rpo1;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x12-v6si336823ybl.4.2018.10.14.06.47.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Oct 2018 06:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gxa+Rpo1;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id c8-v6so8001826plo.9
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Oct 2018 06:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=haqHyUznBSJm8mJO+lf0+TCrrtw38VW2kd5PnKStdSQ=;
        b=gxa+Rpo12AQ9kPTwYR5wFqMVhrRlFbG40WrGp9yyiRPYfLwdHyZKCFWybHLIw6Yei2
         823dfA1MvLrLpKG+9Ca+7uZ3cw2GB+hVt4JJhn45kUKgK70O4zKUcIZhEa3fInAbInCe
         OyqRgbslLrD76NUC/wmb6yW9kwB4JgHFtfU6ay/HISf4Q31yz9o/LSpA3z01ycRPjiL+
         7YSdhfRfRXpM+O2HG1q4hGS22L1vmUN1/enqazIYAHY8RIo9UYcZLxHrLjYV+Ri6kl3C
         DLfpO9k9YyYMZweMWdu4KotfDV4BdjCgq2ubTJZaqscuYuAYDYMZH4Iod4S9I3QqdvqL
         E0gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=haqHyUznBSJm8mJO+lf0+TCrrtw38VW2kd5PnKStdSQ=;
        b=Icv9TwLNrog02VQfZyertNSolS/Nomsv3+10UtWBEhvU9oi5XbM8KgtSAdnR1M30XB
         NT5Ch7Bl+ckC8mZd7Mykk8furAKpY/ZgY2r6WhWSYJJPue77u9/2F/iZpWyoc/hxQtLn
         wgws8WBaQDU49DA3fUP3b3Y4aSCYJkGehtikxRbyVzhbk3Mwlk4o6e2IB49Ur+FpqOtD
         1lyGKNvc50a/HV94621QKfDCzPkpUkoPI99C9yWyxiyFl0yg2I76o06nwRRlCLOqiBqz
         2V/zHUVBvk+WrCqY0URpT0o99541L9tMWn+RuECKLrQpNvj3NjMprJ0ywTXlqUwGpwNi
         D0aA==
X-Gm-Message-State: ABuFfohDRIAphSIVeXVcYAukCXpfJLHNUuu6V/LPExm6rVUB+Xc37leC
	UF7P/TapswadPU3hSFo8JfdjSuzW
X-Received: by 2002:a17:902:bcc3:: with SMTP id o3-v6mr13395847pls.66.1539524838223;
        Sun, 14 Oct 2018 06:47:18 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.53.130])
        by smtp.gmail.com with ESMTPSA id p4-v6sm9621991pfg.188.2018.10.14.06.47.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Oct 2018 06:47:17 -0700 (PDT)
Date: Sat, 13 Oct 2018 12:26:06 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8188eu: core: Use sizeof(*p) instead of
 sizeof(struct P) for memory allocation
Message-ID: <20181013065606.GA16644@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use sizeof(*ptr) instead of sizeof(ptr_type) makes memory
allocation easy in case the type of pointer changes.
Fix all checkpatch reported issues for "CHECK: Prefer
kzalloc(sizeof(*<p>)...) over kzalloc(sizeof(struct <P>)...)".

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 56 ++++++++++++++++----------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 42bdbb6a..9b2a497 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -243,11 +243,11 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c)
 		return _FAIL;
 
-	psurveyPara = kzalloc(sizeof(struct sitesurvey_parm), GFP_ATOMIC);
+	psurveyPara = kzalloc(sizeof(*psurveyPara), GFP_ATOMIC);
 	if (!psurveyPara) {
 		kfree(ph2c);
 		return _FAIL;
@@ -325,7 +325,7 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
 
-	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
@@ -367,7 +367,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
 
-	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
@@ -527,8 +527,8 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum ndis_802_11_network_infra n
 
 	struct	cmd_priv   *pcmdpriv = &padapter->cmdpriv;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	psetop = kzalloc(sizeof(struct setopmode_parm), GFP_KERNEL);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
+	psetop = kzalloc(sizeof(*psetop), GFP_KERNEL);
 	if (!ph2c || !psetop) {
 		kfree(ph2c);
 		kfree(psetop);
@@ -552,9 +552,9 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, u8 *psta, u8 unicast_key)
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct sta_info *sta = (struct sta_info *)psta;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_KERNEL);
-	psetstakey_rsp = kzalloc(sizeof(struct set_stakey_rsp), GFP_KERNEL);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
+	psetstakey_para = kzalloc(sizeof(*psetstakey_para), GFP_KERNEL);
+	psetstakey_rsp = kzalloc(sizeof(*psetstakey_rsp), GFP_KERNEL);
 
 	if (!ph2c || !psetstakey_para || !psetstakey_rsp) {
 		kfree(ph2c);
@@ -597,20 +597,20 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, u8 *psta, u8 entry, u8 enqueue)
 	if (!enqueue) {
 		clear_cam_entry(padapter, entry);
 	} else {
-		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+		ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}
 
-		psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_ATOMIC);
+		psetstakey_para = kzalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
 		if (!psetstakey_para) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
 		}
 
-		psetstakey_rsp = kzalloc(sizeof(struct set_stakey_rsp), GFP_ATOMIC);
+		psetstakey_rsp = kzalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
 		if (!psetstakey_rsp) {
 			kfree(ph2c);
 			kfree(psetstakey_para);
@@ -642,13 +642,13 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
 	struct addBaReq_parm *paddbareq_parm;
 	u8	res = _SUCCESS;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
-	paddbareq_parm = kzalloc(sizeof(struct addBaReq_parm), GFP_ATOMIC);
+	paddbareq_parm = kzalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
 	if (!paddbareq_parm) {
 		kfree(ph2c);
 		res = _FAIL;
@@ -677,13 +677,13 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 	u8	res = _SUCCESS;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
-	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
+	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
@@ -719,7 +719,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
 	}
 
 	/* prepare cmd parameter */
-	setChannelPlan_param = kzalloc(sizeof(struct SetChannelPlan_param), GFP_KERNEL);
+	setChannelPlan_param = kzalloc(sizeof(*setChannelPlan_param), GFP_KERNEL);
 	if (!setChannelPlan_param) {
 		res = _FAIL;
 		goto exit;
@@ -728,7 +728,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
 
 	if (enqueue) {
 		/* need enqueue, prepare cmd_obj and enqueue */
-		pcmdobj = kzalloc(sizeof(struct	cmd_obj), GFP_KERNEL);
+		pcmdobj = kzalloc(sizeof(*pcmdobj), GFP_KERNEL);
 		if (!pcmdobj) {
 			kfree(setChannelPlan_param);
 			res = _FAIL;
@@ -883,13 +883,13 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
 	u8	res = _SUCCESS;
 
 	if (enqueue) {
-		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+		ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}
 
-		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
+		pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 		if (!pdrvextra_cmd_parm) {
 			kfree(ph2c);
 			res = _FAIL;
@@ -925,13 +925,13 @@ u8 rtw_rpt_timer_cfg_cmd(struct adapter *padapter, u16 min_time)
 
 	u8	res = _SUCCESS;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
-	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
+	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
@@ -966,13 +966,13 @@ u8 rtw_antenna_select_cmd(struct adapter *padapter, u8 antenna, u8 enqueue)
 		return res;
 
 	if (enqueue) {
-		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
+		ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
 		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}
 
-		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_KERNEL);
+		pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_KERNEL);
 		if (!pdrvextra_cmd_parm) {
 			kfree(ph2c);
 			res = _FAIL;
@@ -999,8 +999,8 @@ u8 rtw_ps_cmd(struct adapter *padapter)
 	struct drvextra_cmd_parm	*pdrvextra_cmd_parm;
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 
-	ppscmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
+	ppscmd = kzalloc(sizeof(*ppscmd), GFP_ATOMIC);
+	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 	if (!ppscmd || !pdrvextra_cmd_parm) {
 		kfree(ppscmd);
 		kfree(pdrvextra_cmd_parm);
@@ -1063,13 +1063,13 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
 	u8	res = _SUCCESS;
 
-	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
+	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
 	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
-	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
+	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
 	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
-- 
1.9.1


