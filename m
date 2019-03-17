X-GM-THRID: 6668974051336126464
X-Received: by 2002:a1f:a4c5:: with SMTP id n188mr9356993vke.26.1552858455641;
        Sun, 17 Mar 2019 14:34:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2aca:: with SMTP id q193ls2324215vkq.2.gmail; Sun, 17
 Mar 2019 14:34:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+jnfeGXBsr4aWqAxL/CWYIugZhCjHtQsi64DBxD4VVuK702+2fQhR7tAVSPmS/4GV8u7C
X-Received: by 2002:a1f:c507:: with SMTP id v7mr9368536vkf.18.1552858454801;
        Sun, 17 Mar 2019 14:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858454; cv=none;
        d=google.com; s=arc-20160816;
        b=gnAb8uV7oEGKdfy7yGe4fdspJpUn5E4nI4bDwWocHBs/RR0gAbdIxJfUN2CFnsBQbY
         gRG2JCGKziU0LD4wbcaERMztLw23ddCOaltjo4Dsd9n7DoAx173BN0zjomZ9o3oQO/9T
         WrBiqUfXkdtSo+/hG5s2lpEtwwTSgNlBxQdBHm0xECPZUDl3ln0aIPz9B/SQQ0Ooj7Hq
         h9fxh5qnQXAkVW3dspm2LZceH308jOFB3tHet2FalihfL4EjJXt+Mf7vGT/3dlo2zFIP
         MlxhgoL/a93piQP+e+eX2ZY+TXi8NioRIMG2DoDFFNidP2zbS5EmD9Dt4R8mj/q69Iau
         c+wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dzNQp0U4pUsoXyK2+pGgyGcQnVZZZjKIEB2M+7CMzVs=;
        b=Kppx0s1nCZrA+dYQ9r7JiaTofEMp/IkFJKYKxJz4R2B+f9N2glVyGFV5cpyW7I/o3Z
         mZI+nYCdGxtfRNABR0jeGtUGnLYzQronTQ1NM4b8/udBre2hlgqSGkcTQfB20+TVqjjs
         BlodCmuM2FkyHDAWIZWr01wOmGBM2i1NwY2kWJBc22me3T47CVYA8vbrXMHw0mFqQsxL
         977jT1/TYZX90GRP3ueOxfF+PqEy5t3Tm2VJWbdQZr09/NFZy9jUJg0GdwUmc4Vhtif0
         LclitsS4Cn4yTVT51n0GqBtN5UrNI+rAx2hJO95SzTSu0gUjjajbrem0FyzzbnBT1m4E
         yWDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ylieo/i0";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id x82si293257vkd.1.2019.03.17.14.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ylieo/i0";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id f10so5325406otb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dzNQp0U4pUsoXyK2+pGgyGcQnVZZZjKIEB2M+7CMzVs=;
        b=Ylieo/i024VwBmw9IRNfD1Y0OVaxnVDjdb1zBKqUCU3mloRlVx23InoK+SN4bp3vny
         P0MlMeiPXvKIvi17qgU9aRxaiVYVa+aC8cMEMRfa9WUQvD4v4cGjFpE/25bJ2KxWPJcc
         nhgyLSQe59n4f+WhmeqQkQN0RB/JY7XPOSs/a/4I7aSZ9TcINO8eLeWcTR4sd6Z6s91k
         RwQB5leFkCHqd8djJQB0b59cJ4JY6djbSFu2vxI6ddj8+G1/z+N0pehMtRbjDruYC538
         X9ZGe14hZ1ne1xSpH6QhbLIRQM9JofZXQZw1JMONqKPiLmSPdrUjqsfZOPyP6iJvz8JF
         mazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dzNQp0U4pUsoXyK2+pGgyGcQnVZZZjKIEB2M+7CMzVs=;
        b=qtTO9WLaSiBEAIlgO7DXp5J5rYZa7/TjAfXgcpQbrWV9BKFLZiMuBQfRxn5o3rJWoM
         eO1BDPdaP8OE+oGHjzTJ42EUM6jv/Be1MVoH9YobxIgbnr2UiqHIbBmHykExYwVZ8kvL
         GNm67kssoZdQDuMhwyrCeiOpJCqXMbnLNPoqzbOpc1NmihCP6pJDNLGuKX3+yGJL22tx
         pUCa5hdYr4woM353l9S8bmpN+CF0AOBM160rXSIiKP+9LIgc8zfdAAWK0TwkpvlkcwPi
         gxCSkDN//JDfo+w3HO6hDYC6ESXXvMuFiKdw9EnLNiKJnwSyMKSmMIu7DH5GDA64avvU
         LF0w==
X-Gm-Message-State: APjAAAU/+N0jumBM0NZFW8ujA4AUJcjQyYkSWAfFcCLpqMDOFLEXXYam
	MsJq71curvtLuO/VV+DEO5gwt1pqhqU=
X-Received: by 2002:a9d:5505:: with SMTP id l5mr8357987oth.259.1552858454499;
        Sun, 17 Mar 2019 14:34:14 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id i9sm3226080otl.43.2019.03.17.14.34.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:13 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 5/5] Staging: rtl8723bs: Add missing NULL check for kmalloc
Date: Sun, 17 Mar 2019 16:33:58 -0500
Message-Id: <4010080c4d3e2bd0ed50a747eff3d00c66eea169.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>

Include missing NULL check for kmalloc in function rtw_init_evt_priv.
Also, remove unnecessary local variable 'res' in the function and
replace the value directly in the return of the function.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3550de9f12c3..c76f27a6b3ab 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -203,8 +203,6 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 static void c2h_wk_callback(_workitem *work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	int res = 0;
-
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
 	pevtpriv->evt_done_cnt = 0;
@@ -213,7 +211,10 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->c2h_wk_alive = false;
 	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
 
-	return res;
+	if (!pevtpriv->c2h_queue)
+		return -ENOMEM;
+
+	return 0;
 }
 
 void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
-- 
2.17.1


