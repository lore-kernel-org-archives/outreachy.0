X-GM-THRID: 6668974051336126464
X-Received: by 2002:a02:7342:: with SMTP id a2mr5094221jae.16.1552741521988;
        Sat, 16 Mar 2019 06:05:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6f44:: with SMTP id x65ls2222050itb.1.gmail; Sat, 16 Mar
 2019 06:05:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVHOOTi20eTF1VRoUXvQDbcuBLksIXGW0layviKE+TM05ZwOA7YVYy1S2mQfjf2pPchhoo
X-Received: by 2002:a24:5c5:: with SMTP id 188mr5026558itl.3.1552741521068;
        Sat, 16 Mar 2019 06:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552741521; cv=none;
        d=google.com; s=arc-20160816;
        b=LusthYRnOQg/zCRC7MnAllPTConQx4bcJIXz7U9QUpj39O8LzX0xSZ7p8fLtyitDJD
         tkHy51UCFaHCacimR3hd97mzahbc8lSJ0xuNzg86no1cF67gn68iTiHwTi+B1eWaLg5M
         GeKrWdQyiVgaofgm/EZd72BStqdN5dRsIYPbR1Li7UcDx9pRfdLTSMQ/53Eja5dhdF1/
         7DtWFZIIEojnwUDmFrWWqooDSVJaNPzWvB85X/CPmwaewUGiGFOsYQOxqAVptXYEj/nK
         KXAuVm7VN1H2jieCsy5GmFtPsbkmaWuPQt4hv5WYZpJjnRtCWEHAxYygNXSTymADD06a
         PN4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=phShLwTPQcUFwiTbxjkjh9q09QQFdn/nnHIwXRIGXKs=;
        b=aS8MWmuitHNtLHcoD81aky4iwcFS95l9Rrvk9VSfXcyge6O5h5vUi2nOkbeHrzCBev
         dEv6+bJ6lFJdwTdp0js0nxXq8yLvz3ilrP6olmIV5QQ2cV6jsxDcPP+B2twfZUngvjeh
         6uphUvuG3UNwRHjdpnzEAbrTIAHxOgsUIdyVZxFWWfinzdUQ4Fv9QxTT2DPN05sgpCCU
         tl+LaYsGZxGFuyFiiFCIkrmgLbU0YYXNecAnlTew/7TcKGEUN6N9rSdgZJTo/f6ye9ye
         0fODG9mh0IydROzgW98OJ3XI9fBZDM3+m3li5UrT0glqGWsj7XWuLLocGC1hKF9nUyF5
         peWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qoGMgIHZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id f13si263121iok.3.2019.03.16.06.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:05:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qoGMgIHZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id w139so775020oie.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=phShLwTPQcUFwiTbxjkjh9q09QQFdn/nnHIwXRIGXKs=;
        b=qoGMgIHZGy13dhlAdWMc9aOGSkCOjL5ns2rt50OzlqBOzwVRcQxv/UxfEDtEg6ETUf
         BZCN6XgTxb0TPHyBqGXPGiwQVHDiSHS7J2rv/V+irqUl9U+stq13kznYB+9Nq6yLv2fe
         i9xlEBYWOlwfGub+izC+MJqvRZkNvzZxM1DVw5ky13UQCX0E8yzTq/3ZaEgP2gBbYy1E
         vK7YnBNA6X4TpP0JEJTyamTjjKVpZYVQqnxOzUTSgS4Y7OFMcgTuIdqSxd3zD+qK3NAF
         l7LU0Xw26Z/K3rpO7qbhpbVwS+Nnv3LNyVC15KGc3vzXDz+CuSgjBHC0Ko9YwH1OU1Y1
         yTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=phShLwTPQcUFwiTbxjkjh9q09QQFdn/nnHIwXRIGXKs=;
        b=V77fYSdCSvb32+TcucZPWnMUdaQThh0eH/uq09PPJD8pcT2x/geqgguyqgJaMQXW31
         rZeHVOaP4daXgGJfad0PuHZEUUHhiRv4lya1zzUFxvSpqZ2XAuoD9FTDxBo9PT7JAH1g
         Hf9xvF9lj75PrAudzwybBqYOONBZKImAcQrzdvdYjh7zCcdwRGBO2kjgW5V8xG3Onwun
         HKxsrFDoc2fcVUcf7+Z3zOHeQQnywS+AGHnJjzzfRazX2ojsOYNa72YlLGVoo1Bsq2Rj
         TOLLUwcscV2xui3XU4TuiAHMf32wUNcRTZr13PyIMP/Z+1aa17KQr3JlI3d0LbMGlfFg
         91JQ==
X-Gm-Message-State: APjAAAX1DFike4EDG8TKPw27eB/EQ3ZAT657P2xlqlrIBOj4pCBIuI9Z
	ov1jXZxd8722lno7B/X5TPzPblYCXcQ=
X-Received: by 2002:aca:3bc5:: with SMTP id i188mr4578345oia.59.1552741520798;
        Sat, 16 Mar 2019 06:05:20 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id n2sm1707929otq.33.2019.03.16.06.05.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 06:05:20 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8723bs: Remove functions and replace return types
Date: Sat, 16 Mar 2019 08:05:11 -0500
Message-Id: <9e058ab3c889d2d59b0e7c7e0296e8640a513d23.1552740889.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552740889.git.madhumithabiw@gmail.com>
References: <cover.1552740889.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552740889.git.madhumithabiw@gmail.com>
References: <cover.1552740889.git.madhumithabiw@gmail.com>

- Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
purpose is to call the other functions _rtw_init_cmd_priv and
_rtw_init_evt_priv, respectively.
- Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
rtw_init_cmd_priv and rtw_init_evt_priv.
- Replace return types from sint to int
- Replace local variable 'res' data type from sint to int in both the
functions.

Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

Change in v2-
- Changed the commit log
- Modified the return types from sint to int.
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca3bbad..ab450f717f34 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
+int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
@@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 	return obj;
 }
 
-u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
-{
-	u32 res;
-
-	res = _rtw_init_cmd_priv(pcmdpriv);
-	return res;
-}
-
-u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
-{
-	int	res;
-
-	res = _rtw_init_evt_priv(pevtpriv);
-	return res;
-}
-
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 {
 	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
-- 
2.17.1


