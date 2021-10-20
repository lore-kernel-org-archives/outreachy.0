X-GM-THRID: 7020829636261052416
X-Received: by 2002:a6b:db0d:: with SMTP id t13mr22856152ioc.149.1634731014365;
        Wed, 20 Oct 2021 04:56:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:1602:: with SMTP id x2ls261077jas.9.gmail; Wed, 20
 Oct 2021 04:56:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzc7mvOgXpR+VZ/LhGbg3mKIz+pqfiPTlaM4NeIl961gbPbSrbang07oMQsM8Tp6bL0DKYs
X-Received: by 2002:a05:6638:2650:: with SMTP id n16mr8580376jat.72.1634731013669;
        Wed, 20 Oct 2021 04:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634731013; cv=none;
        d=google.com; s=arc-20160816;
        b=gUuljUwAeo88eL4L+DKk3qhoSH4n1WHXvxhQNzLughl1XGEKJvFqq06BRzTrdCvNDy
         hu56P0Sar+aC4rkp6aO6ettZZQDhIwYwUxh5ZFJb1iIjNQGAdjvL5nK6k44h47WBnVmZ
         3Bg0K8wOBjfYa4X2KwESfRPjSKGx6M4JjOx4zv4cxo/X7GIWLKWCQMSo0x8CP4F3Whjf
         +/ovmS3iy0OwNStaW2vxdk2BQmYEYW//ikbwp1kjZGOB24Lt2a15Ga4bH7p4XJRywPp3
         olX0KAxk0mqumKM4+uXtzstlEJYBIC7KYp0mKnf2jgPVe5ElTiSiOV7d9L+iDbakyywy
         NYVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DGAGxcqlo2VW/AD37sxcgcQQxtJtu50Aw5qmQcfn3f0=;
        b=QDcl2KMXJ7fvYGeWQQb/P/fNczdk2mB/luAX94TiKj5kJsKEXhEgD9adp5L8RgQgty
         VZmj3PNwd7ZopXJsM9K0NqsPfbM/B0d589EQiqyfnpuLSnBOL+g+gQr0r4374bl+Gopa
         qRNO4LGxY3v8AZwwOxeKYH5xmfOcckJoQQ3SEhj/d2lR70XnR8FU8Uvm9RwALcQ7/GS7
         ySzhTnVMUv5XUM2hU6UOaU5poBL1k2ITMtDGRoDDWmO5SblEmN4xWeJ0PNnpQiYrClyU
         w/UwnDJdHqOJu/ac1ywfDCVstvu+YDaEbJuQxKVjFPbmp4KhbcyV2cUfYhM6Z3avSQPX
         k3fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nWcCHUcG;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id h10si178575ilq.2.2021.10.20.04.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 04:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nWcCHUcG;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id c4so15244484pgv.11
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 04:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DGAGxcqlo2VW/AD37sxcgcQQxtJtu50Aw5qmQcfn3f0=;
        b=nWcCHUcGDK6BW8OB5AJLUUIO7gptFX8QO0j/5OvUausYIl0D5IAIT64E2k72XGS6x0
         1yXLCMSsI7/Zo2cqbC/C6JuN74EcYLx20EBEme6wzn+MBJZaO4c3cwCe62hZTRZ6apNt
         RjVGJnFWLWGX6vbZ93vEtQy42pHj7byVor9Rs4/oe53Cqs0Om6dUa7spWAlk8VXsQ5TW
         JtmxwN2cir6TlJr1uMGpJzO18UTy6Ig/Zyb9CnZCKdZjPyuXHNWBwYPWreuQhFY4ltbr
         dkOJbgMpSt+HkTkpcMMnBjlLOo3iCRo8u1S8wiUFJJV9b/1FufGQmyy8Nt3kHofYx++X
         4e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DGAGxcqlo2VW/AD37sxcgcQQxtJtu50Aw5qmQcfn3f0=;
        b=IGZxIu8nQj3JrVrNz9XCk3YGxiyS3uYwZs0OFRQAhjjciFERilPHW3E1QFfh4b1weu
         EzCxUySSwcdaQuFNJQbP0+QEHAOUdS4IXUMpY1D92329CQeBlbBoIWpWLNW2rp5aq8az
         8Df3HCulwxu8WX7C7JQHj/6P7HE9jNnNd+PAjVrQbFhinypyNPuom10cdGip+2NrJY1i
         A9bifv8+je3v2+/fLHDiZHwDQGGNyuSSNn2igyZY9zJ8+DtKESl+j4HUVkIgfAW/a4yR
         X/IRe4F4RepZBafLQBYT0CR2lT37p1bDSkLLxR4b54hEwaOYrR8E1WZmAqsnq4giN0o8
         53pg==
X-Gm-Message-State: AOAM533yLrB10GS7FYjnr0zW/Sc6f0MEgjAvnnRzR2LTTSbofB/uwnw9
	vowYG1lOnFOXRQz4mj11Ui4=
X-Received: by 2002:a63:ed13:: with SMTP id d19mr32905295pgi.430.1634731012850;
        Wed, 20 Oct 2021 04:56:52 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id rj2sm2417213pjb.32.2021.10.20.04.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 04:56:52 -0700 (PDT)
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
Subject: [PATCH v3] staging: rtl8723bs: core: Remove true and false comparison
Date: Wed, 20 Oct 2021 17:26:21 +0530
Message-Id: <20211020115621.132500-1-kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone 

Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
---

Changes in v2: No changes
Changes in v3: Remove unnecessary parantheses

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index efc9b1974e38..2624e994513f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -309,9 +309,8 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
 		bAllow = true;
 
-	if ((pcmdpriv->padapter->hw_init_completed == false && bAllow == false)
-		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
-	)
+	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow) ||
+		!atomic_read(&pcmdpriv->cmdthd_running))	/* com_thread not running */
 		return _FAIL;
 
 	return _SUCCESS;
@@ -407,7 +406,7 @@ int rtw_cmd_thread(void *context)
 			break;
 		}
 
-		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
+		if (padapter->bDriverStopped || padapter->bSurpriseRemoved) {
 			netdev_dbg(padapter->pnetdev,
 				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
 				   __func__, padapter->bDriverStopped,
@@ -430,7 +429,7 @@ int rtw_cmd_thread(void *context)
 			continue;
 
 _next:
-		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
+		if (padapter->bDriverStopped || padapter->bSurpriseRemoved) {
 			netdev_dbg(padapter->pnetdev,
 				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
 				   __func__, padapter->bDriverStopped,
@@ -927,7 +926,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
 
-	if (unicast_key == true)
+	if (unicast_key)
 		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
 	else
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
@@ -1283,7 +1282,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 			(pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {
 			bEnterPS = false;
 
-			if (bBusyTraffic == true) {
+			if (bBusyTraffic) {
 				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount <= 4)
 					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 4;
 
@@ -1619,7 +1618,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
 
 	rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
 
-	while (false == empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
+	while (!empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
 		msleep(100);
 		rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
 	}
@@ -2054,7 +2053,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 
 	spin_lock_bh(&pmlmepriv->lock);
 
-	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true))
+	if (check_fwstate(pmlmepriv, WIFI_MP_STATE) && check_fwstate(pmlmepriv, _FW_UNDER_LINKING))
 		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
 
 	set_fwstate(pmlmepriv, _FW_LINKED);
-- 
2.25.1


