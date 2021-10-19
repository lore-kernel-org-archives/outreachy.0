X-GM-THRID: 7020829636261052416
X-Received: by 2002:a4a:d5c8:: with SMTP id a8mr5741942oot.18.1634664283325;
        Tue, 19 Oct 2021 10:24:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:460d:: with SMTP id y13ls6284736ote.11.gmail; Tue, 19
 Oct 2021 10:24:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZCkxGmlfoKDeySv4gcv5VbM8bhlb3q0G1cjgbTVwCXEdsICmuOLj0QOqi6MrM7otfkkQa
X-Received: by 2002:a05:6830:2146:: with SMTP id r6mr6238688otd.1.1634664282358;
        Tue, 19 Oct 2021 10:24:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634664282; cv=none;
        d=google.com; s=arc-20160816;
        b=fXvHfWALCplo6ZY8p7862Jig9pls635/yPc1bpfdbFTODgFUtzsJr5nNeBnhZjbWX8
         SdbuanGBAtIcuImfaNBGoJYx0pNbDmbzCx/tkXcZpUURCJAg1+AmBf2HRWZZC881ENim
         uCwCaiAsO5ddlmSarBjfRaF60O33I/BRLqYmojczK9RykhaJxgDc35Z/JnQfCbT41S9G
         HqWeu2SGQ5KgPnSHlzK5vqOB4/9tveGTQFD3FnWe7OdyRbwWhRBNPQ1xf7ctyqq2fmGc
         oP3mCLCsuU313+fZUKaYnr4noJTKCosVIEP2OBSjTtFh6Ic31Il8IxkwRFYx12nZ8D+c
         KzkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5kvyUu/ou5/zjB+qAPejgXQ9ckRr2OTQAJI3Yt7aNfk=;
        b=y5tFPkXGL4MMr997n4VUNy2lTe7/ujIXSxDemdascKnbtg3qrnNz0PohbTPakAw/o0
         bnYtmjAz2o88c+hT0leFsXpCUXA3YPwwnL8Iac5x3mzMOqSDu3kfnbB38V2NkVJHs98P
         hWy4hQJ4dtu4M7N2EvPa3brIK2Ynegy8WJOw2q/Oin4+IrttJNAESwN37nUowCDUS4Ax
         yk607Dh9Jvvhq9O51m5t1U9r8kITUx+gyvSub6o6Ee5CscOZg+pB1umawf/tvRtcyZCK
         DLM6GRunSEkeayLwOoiQEwIA3eCR43KDP3AJ4F+KlUk8gwsyOS5hUZES4YR5eB6Vkmwl
         Jbxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bb6h49qM;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id b22si264359ots.3.2021.10.19.10.24.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 10:24:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bb6h49qM;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id e65so17590960pgc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 10:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5kvyUu/ou5/zjB+qAPejgXQ9ckRr2OTQAJI3Yt7aNfk=;
        b=Bb6h49qMbdOzJlZS1zXLlVZp/5Q7KCs1ve2qL9ZJ5qIjpR2IhPxwyHH64KNcZQjlEk
         0sCI99712I7mmpie62XQINyMfM1rh4+ztTivnOke2FaDEvOUmxKdI0K+Ib/vVjrgC+2g
         ZLrluHFki65ByTgu49Q5gn6X81xi4CeHfopPJjYrcbCVOwebj0EOg5crA+lVBxbH31YG
         cCUd2VeAm/3Y7DIe+mt19/ET0tC8xEB9gnS270I05Qwmhp+xiCbGS0iftpzp4t3+eMTC
         8c6nju39PzeUEyweBCgInixov1gNok/KXiqakoJakZxf+XOjwM4Y3vZKPxz6kc1IfsaX
         kkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5kvyUu/ou5/zjB+qAPejgXQ9ckRr2OTQAJI3Yt7aNfk=;
        b=CHdH2sEMWYl0/7u2majMPJYjdZudu+sXIF7tul610emjqKbqVmcSIYKNz6JjiH+zGG
         wRItnrlm3KHrPFste3uZVyhiTqFcaJDumrWvB1q4yALSBGjGmukE/SSBsAbp9rJmdAEX
         e0bPXci++Vew0M4u6CNvXH8PbaNE32m6WQxLHY4kVRpUt2odjQqxpto47P5KJXKtlvk1
         NpxtVjep/kfx1+6ks546UYia0pJjWlu+W38MwuWmfOZ3PzdGanjWBTlCOg++9e3GxDZX
         Nt8Bqxpxk94lEhVvLrmEyQAmUaKGTMmgghfQTSBeUdEmVV4l6KoZ0BsfiC2A4FifNF19
         FKDg==
X-Gm-Message-State: AOAM530Yl9edaGIOTzwIucOHX8HYJz+DCIHI1h+QOWaHIxg5IaQFIHnx
	kn/VfSYjx7WPfXljUJrDbiU=
X-Received: by 2002:a65:62c4:: with SMTP id m4mr30125512pgv.453.1634664281808;
        Tue, 19 Oct 2021 10:24:41 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id q8sm3132468pfu.167.2021.10.19.10.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 10:24:41 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org,
	fabioaiuto83@gmail.com,
	marcocesati@gmail.com,
	dan.carpenter@oracle.com,
	ross.schm.dev@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	mike.rapoport@gmail.com
Cc: Kushal Kothari <kushalkothari285@gmail.com>
Subject: [PATCH] staging: rtl8723bs: core:  Remove true and false comparison
Date: Tue, 19 Oct 2021 22:53:59 +0530
Message-Id: <20211019172359.63583-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index efc9b1974e38..b473f1d1ce08 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -309,8 +309,8 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
 		bAllow = true;
 
-	if ((pcmdpriv->padapter->hw_init_completed == false && bAllow == false)
-		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
+	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow)
+		|| !atomic_read(&(pcmdpriv->cmdthd_running))	/* com_thread not running */
 	)
 		return _FAIL;
 
@@ -407,7 +407,7 @@ int rtw_cmd_thread(void *context)
 			break;
 		}
 
-		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
+		if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved)) {
 			netdev_dbg(padapter->pnetdev,
 				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
 				   __func__, padapter->bDriverStopped,
@@ -430,7 +430,7 @@ int rtw_cmd_thread(void *context)
 			continue;
 
 _next:
-		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
+		if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved)) {
 			netdev_dbg(padapter->pnetdev,
 				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
 				   __func__, padapter->bDriverStopped,
@@ -927,7 +927,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
 
-	if (unicast_key == true)
+	if (unicast_key)
 		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
 	else
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
@@ -1283,7 +1283,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 			(pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {
 			bEnterPS = false;
 
-			if (bBusyTraffic == true) {
+			if (bBusyTraffic) {
 				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount <= 4)
 					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 4;
 
@@ -1619,7 +1619,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
 
 	rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
 
-	while (false == empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
+	while (!empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
 		msleep(100);
 		rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
 	}
@@ -2054,7 +2054,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 
 	spin_lock_bh(&pmlmepriv->lock);
 
-	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true))
+	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE)) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)))
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 
 	set_fwstate(pmlmepriv, _FW_LINKED);
-- 
2.25.1


