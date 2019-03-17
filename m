X-GM-THRID: 6668974051336126464
X-Received: by 2002:a62:fb03:: with SMTP id x3mr5606551pfm.130.1552858451328;
        Sun, 17 Mar 2019 14:34:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls183874pfw.7.gmail; Sun, 17 Mar
 2019 14:34:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysuhgj37mRkFf/cxqG+McvmwnklDZ0Q8VELAmf3q8Q3cP4rkP+z2/yWfxNsxXqbuqnVX0S
X-Received: by 2002:a63:4307:: with SMTP id q7mr5249253pga.113.1552858450500;
        Sun, 17 Mar 2019 14:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858450; cv=none;
        d=google.com; s=arc-20160816;
        b=Mv/5zWMGAf66OYFvVeu8BLEKLcmld1Ri4PX+VT6z2KV1zAl5sNN7U4hMXtVElz1HMm
         z/HItUSpJDBXzmPgmsrHTPXFxev5Xx46hoOti6KdRvZqamm0w55go15gCY3rj4BT3Xb8
         wdI+82fF7TQAXkKz9Y9bkC1ja+eqP9DCWpCJCheW1gJAzOjMf+bqiU3C+Nf8kOVBF3GQ
         dev42COsvlijDqVFIv+8PlSYCKBZExmflN9ex0odkPp8/mRIwhw3WQO2xNtHh8IoSkNQ
         +b8v7JHSLuCh9KVYd4pZGYR4qjGRvzKb84P4l8hzl+dfU7Pe7uYwX3jvn3QUUeDDqIds
         k7NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=5JeWZrAdDmlPlr4vYkHRPisaWFb8bQM8l2CmCAKOoIo=;
        b=IzPOwaVldfOcerW+jORvxjmpsEDdeWBiR5nemcL4UemCXWA6UEI25j6iXxdraceolK
         eeNOp8GpSgU1faEhVq0KY7icuICWgwkMT8gagWKxFku/kXrjB1HZS5LQna/NTylbgB/L
         4tnJhDfC9OFuHyHx/mjJ/8uBRji+sDHWciDhNKO5vAt0xgX7qhS5Vxttn8oAzIm1ZsH0
         bL0T8t8QVfMCnHRCRN1cYOIWCxxIgUyFp0kSITf9PIsniq92/2GQOJLgs1q2DHt8itl0
         kRP/ldFc830KPvy76NaoU/XitdjiS4qoUY4zN/8DdGjDS+4gOZw/cmoz225blHYtt6fX
         c91g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZUr1YFCa;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id 67si498837pga.1.2019.03.17.14.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZUr1YFCa;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id u12so8501837oiv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5JeWZrAdDmlPlr4vYkHRPisaWFb8bQM8l2CmCAKOoIo=;
        b=ZUr1YFCaRruv153p2KwVCSvDcCLw2S577Cr/DTi1ztwZCNq8H3d1Yn2OepjMClLBQs
         29Lm3athRHiZBFLcu+q1s4K1O5p2kpB8GpNaUVSr74TQzjfExFNvbeAD42tlgKLzCr/H
         3GHjcUNhJQN2r5yzkDW0yD3P5NOYlna+4sQvrOS79Q2iSUZXNAwJCsa7JR2fGnoR5vqm
         MDtc+d0TnjgSH3m3VYJqs4E/+u8gJmLEJUCEHBB7YFChav0a6RZZCIuniVBEVCjWWchd
         4UQRoLHLCrIF+dd0u8FfMxN12TeJj30CbFL4gdXqMWmfMb8KGEdnko/UN3NM85KXJmS2
         yNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5JeWZrAdDmlPlr4vYkHRPisaWFb8bQM8l2CmCAKOoIo=;
        b=QZihFSRx3fmMayVYnCccNdVbQglRS1ymGSVYRscIaoyjR0GtK1BHRpVMidHiVCorG0
         QsWkgoyG1B2alrW2SyDQrZL/DN+aHJrmfPWfswQRkVP2sXlqq7Dp/KM8QGGuVddnAUjx
         bdA1T97mf1zkIrkAIZJX0R12q/+zkHM01/KKs7cEgsIJxBTiltDt0oNyDzc3TwKwP8jN
         QYKylLD3TmAOQxcltd/hIYAGfq7gXsdJG1jpt3rR19wN/1FTF17I8iB/s/MwcC+RwFfo
         S2lUAQJWAp5PonsWsoUeazl2bU2EAb4j79dZE5jDdBMlYTOqELwoZRvcWmC4sEH+NpuG
         G31w==
X-Gm-Message-State: APjAAAVyn9qtA2FbBpCym4y859sI/kzzMtgcwiqYXG7BVorjkzC733xY
	I+/6orKCP0mB1LwXc67Bsrc=
X-Received: by 2002:aca:bb87:: with SMTP id l129mr8153030oif.9.1552858449821;
        Sun, 17 Mar 2019 14:34:09 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id 88sm1083402otj.3.2019.03.17.14.34.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:09 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 3/5] Staging: rtl8723bs:  Change values to standard error codes in functions
Date: Sun, 17 Mar 2019 16:33:56 -0500
Message-Id: <3079e4485a34348cdaed25939551424267ee32f6.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>

Change values to stand error codes in functions rtw_init_cmd_priv and
rtw_init_evt_priv, as _SUCCESS should be 0 and _FAIL should be -ENOMEM
(as in this case, these are memory allocating functions). Also, change
the values in corresponding call sites of the functions.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c    | 8 ++++----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index ab450f717f34..f8a4f910bfea 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -164,7 +164,7 @@ No irqsave is necessary.
 
 int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	int res = _SUCCESS;
+	int res = 0;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -178,7 +178,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
 
 	if (pcmdpriv->cmd_allocated_buf == NULL) {
-		res = _FAIL;
+		res = -ENOMEM;
 		goto exit;
 	}
 
@@ -187,7 +187,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
 
 	if (pcmdpriv->rsp_allocated_buf == NULL) {
-		res = _FAIL;
+		res = -ENOMEM;
 		goto exit;
 	}
 
@@ -203,7 +203,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 static void c2h_wk_callback(_workitem *work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	int res = _SUCCESS;
+	int res = 0;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 143e3f9b31aa..6b3def0397f0 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -757,7 +757,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	rtw_init_hal_com_default_value(padapter);
 
-	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
+	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
@@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	padapter->cmdpriv.padapter = padapter;
 
-	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
+	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
-- 
2.17.1


