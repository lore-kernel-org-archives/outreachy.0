X-GM-THRID: 6668974051336126464
X-Received: by 2002:a24:612:: with SMTP id 18mr6419281itv.7.1552782757994;
        Sat, 16 Mar 2019 17:32:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls2456874itb.1.canary-gmail; Sat,
 16 Mar 2019 17:32:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxxCa5lMLNKcgTmw6kXIFCac0XkLJA3TYCqiPHTf3MOmQeis4ALLqTfJ42MV9GneuclYVd3
X-Received: by 2002:a05:660c:744:: with SMTP id a4mr5993080itl.19.1552782757510;
        Sat, 16 Mar 2019 17:32:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782757; cv=none;
        d=google.com; s=arc-20160816;
        b=wmUJ0b7MqYOx6WuiMs048YwzRyqioLO4FXLbNme/z8qm78TzFcwUBBUOLow6V9E5EN
         e5QFadgi0ROQMoxu/c41WpWBJwvxy4Pg6UZrSz8LYB1Wfgf+8n07hycFwFFbDPo8ckr5
         lyYGQqfk6zrfgyB6Mq4WjygFr9GilfUcu4u2/tY21d6Oduklob/bPb6NOjcBRDug9j6o
         eQ7Gh7nMABmbM56otV9Bzr+AqQHOCPqVQH3VNN1VM7zR2Mu/OHtplxTcK1hHUnBdZT4l
         AscSk0V9Fr+6A7EkFnN/2YzyKNEo9Q0XkCzIOoKKUHaXx70pgwVqFmvmm0qgW37k5BUh
         BQJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Rxw7X5h8MVv+qqymaIxa+XHUjbZKZxDQ7RM8QJU1JMA=;
        b=nGXcgUwTX8iTUMOjC9weEcJIU5SySAOUQ8jQTa78rKI5xniEV5K3PK9M2IxqDkVSsZ
         ILK6O7ELYtRIHGZllkEf9f/Olnt17ymS0TmTMpKbdqItlJtEkxPtPCRj6o3faYnaql+f
         m+27eCOeeSgTHeiuk17dSlTQOsc6lijgy+hjGT/EmJVINKkB9kb+rUewA4gOQCLy7obL
         HHn6i65wucBgecnqINi/jHTC3e92mN0o+Hsn2Jk7q/4yfrgWwfBGyoSRSbNEM3jJZfbH
         6vD61Q7qb9SbwfZ1QPA6C2T5DN8Xq3v2mkzQ6EdZh3wsEh1OP23C5AXagl9hr4qRUQ/z
         J24w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pj5uR5yA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f13si319009iok.3.2019.03.16.17.32.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pj5uR5yA;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id f10so4094830otb.6
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Rxw7X5h8MVv+qqymaIxa+XHUjbZKZxDQ7RM8QJU1JMA=;
        b=pj5uR5yAK4WwS7FOooSSCuFDfIQ8TN0mRarh9KY4j579zxEL9Bbe4Mdn/x36vyFgrc
         h5kmkp/fv7xbMp+6wLtOuukxQu/wt+uXFECZSLITTFESeYVLSaGrlDNgY01Nmc6Jwnuv
         z7wus6+Cvf/Fp4a1DmvlXinXP11gAKooC47QfLkWAErPL14hINx4n/SddzNRlIYix5S2
         JoV8OGNSS38aLlc9gwjBIHhIl5tH6gM2DM6gJob3znhz/xoUbBWqxdHX9wYFp6htmEnV
         ErvM8Rxou5hadMKzhr5+qoe76YTn6PIbQbnNS64RXukiOrKqXdMd9o6pUVgNI5X0wOcU
         6D2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Rxw7X5h8MVv+qqymaIxa+XHUjbZKZxDQ7RM8QJU1JMA=;
        b=Nu3TPRoGc4ATgewS+GGnGQfCzSneo2UE68jdZzmpYvELO6wwzXxEezkjHuwP2VxTYl
         tmGinuuPuEEtxjcNnuWmZ0J3uA+N/+6IDHRvLKFEwUSJYD9P6Zim1gvuXTHTZ58zVi16
         7kCD7pW5s0lFCTIZ10Uddry1iP58b7mJtwnSDfNGZzWPylcT/KAw+QARvIZB1D5mdlfB
         GYLL8+Gna8ndGVXj9EUc48ekOVF3CuDsQezpxTOpEhDl+50u4oyTUbyAtHEYk2/Reb7J
         Usu4NOlAKC42vs3+jJqBsYD02dXeYm4v/3r20XrHHtjZKBiAuT12wUrh/9haLA/pCOgj
         nLdQ==
X-Gm-Message-State: APjAAAVeEawLJwpOUrXMLL/XgS7MU577ROPa/rj9QjGGrQO4GZ8S8pTr
	dPynDgcWllTJiGKfTk0Vg+k=
X-Received: by 2002:a9d:6453:: with SMTP id m19mr6565542otl.271.1552782757096;
        Sat, 16 Mar 2019 17:32:37 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id 97sm2411133otc.25.2019.03.16.17.32.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:36 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 3/7] Staging: rtl8723bs: Change values of error codes in functions
Date: Sat, 16 Mar 2019 19:32:20 -0500
Message-Id: <df295896fcdcd016cc097c3812812582658c7319.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

Change values of error codes _SUCCESS and _FAIL in function
rtw_init_cmd_priv and rtw_init_evt_priv, as the code need to be
compatible with kernel, _SUCCESS should be 0 and _FAIL should be -ENOMEM
(as in this case, these are memory allocating functions).

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index ab450f717f34..2890e12f6fb1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+int rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
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
-- 
2.17.1


