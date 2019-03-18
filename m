X-GM-THRID: 6668974051336126464
X-Received: by 2002:a17:902:b60a:: with SMTP id b10mr6534715pls.147.1552950773847;
        Mon, 18 Mar 2019 16:12:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls9466408plb.6.gmail; Mon, 18
 Mar 2019 16:12:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlSuH74pBSc/qf/QB37d6TPKGRjIygL6K9sPC2BEhtn7r6/pAgIttpoVmRCRbnAwI3L7vG
X-Received: by 2002:a17:902:b714:: with SMTP id d20mr4250951pls.107.1552950773255;
        Mon, 18 Mar 2019 16:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552950773; cv=none;
        d=google.com; s=arc-20160816;
        b=GefxLyWvgrwZg9WaOqeo1Q6X54eCg5KSFrngr2xftjswaI1rhxvPyGSpNJVwVEbG3B
         bN2zGy+ZAlm57r2LlRJF3DH1tOupIN6oHSFgLZaP0GO3OFht+So+9v+bE5Mj/dWRPKwP
         IZ3gu/6GaWrSS9b6LHfdtsApBKj6rHHLZtsQ8wWKQ755Nvzbu8nTfqp3odG1EsrZiFk0
         I5lcIYOfd9Fxsg9kU5eRcWlRTffGalKm5QLqYutVssJHhQ1rUhhdi376gFcQWeFlSn7V
         sxycqufN1NrDhSvtiE0C+9ED7kSnOf1anmqhqIQfhJ3gKRswOnX5d5c5+LJ0ExxO26Yh
         Kf1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dRSx6kc4k58DyAIK5Yuj6cHlqY6s2L+3HKkLDWuyfKg=;
        b=GUatBvCzgGHFPTwW6rNZ8VocWeJCP+fufoPsGaKU/Lco/7Eo4ty01alry5rfdGFYLF
         aduoKFgUdPI1btQ9EpFPs958j21fb52OmBIyyna8U0ZRjRobFMqGOXwdnlAIr6aQ1sk8
         xRFb29RAtwHgYSy3MmVnzRY6DIkeSkQg9bx/zLrQSF3yRmAli9X1qGHpakDkqBlJRmcH
         /E7fl3DJbIdZYvYHpFpQjwg8HLMkzm/ugP0Cb7h3NbTi5kSeeHT9vEfCQIZjDTaqWwJ9
         yTtGOdLBobSBLziUzBqU/iibCsCMhwdhwdqMx80lg2q/F0rcEU9DlvS5ZkwTaXpC7UnP
         Oneg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LJsiinP9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com. [2607:f8b0:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id p15si632320plr.4.2019.03.18.16.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 16:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) client-ip=2607:f8b0:4864:20::32c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LJsiinP9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32c.google.com with SMTP id 103so654047otd.9
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 16:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dRSx6kc4k58DyAIK5Yuj6cHlqY6s2L+3HKkLDWuyfKg=;
        b=LJsiinP9H9WVtw8NPNh8pdAUGFB5dR/MTHspYiBrDR5SU01B1nggYFF7RWiF88y1un
         ezI8TC8GGuwrdSZQFcO56vVXXWDO1q4JcY/hKZMib7ga00PHK4bskt9ld/mfjOriihVN
         CqcvocSZZydjRSEQrB90JSB1k65GpJeMzclpV9ZFUnFnH1gLCSM9rprlYtd5Wk/VLQTD
         sxl6HNdAcjOcNCg7ufZIJisBDB18sdB6zh3yWB55vJRr0Y1Cmd+bspsf4W8Dxg/0vU0o
         1l56f+2z1jMYD79l/8v1v3niH0YLwZnrgwoVD8QVgFtf6oSC1m4AJJN5QNzYMKOg7v2J
         0pHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dRSx6kc4k58DyAIK5Yuj6cHlqY6s2L+3HKkLDWuyfKg=;
        b=KvGZMcn2rHr8qHLwK2CusJTOcXxLTIeems0iYR93Kc3FtSvyA29/ok8subOVfjSdMs
         9foA1H8owijYpidf+n7zNg9mRLnHUKEqgrLzccZ9mD+S/kwTp0CTGp4o7kYW5pAquJGl
         BbuXTe5FmfILMruGkePAIDrdJtzs9FPJPRWAMalEWUsu/J/kZ+YaBouNlgeRRK9J7yVl
         5Xbx6CTMfk3gCj481vUJ2jrrrSwrMwph6bvJcR/ts4AELpHBqKAPJitp4O7DgUzPlLek
         3fx67MyMHJnsRuDnsSNUIrJ/y00ZUl3vExJzhLmM03s1xYsHUMyKtPAdezHi0i4NwPWC
         2htA==
X-Gm-Message-State: APjAAAU3CTgnA/Bnq8c3tiMSI3BTpy2w8gWoAz+tk2d9CGJuNcnAwWlO
	N7VmlurY55K6Q8l7lhLFXIk=
X-Received: by 2002:a9d:7c86:: with SMTP id q6mr11868784otn.104.1552950772955;
        Mon, 18 Mar 2019 16:12:52 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:34ed:fd05:e76:6c04])
        by smtp.gmail.com with ESMTPSA id a23sm802148otf.69.2019.03.18.16.12.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 16:12:52 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 3/4] Staging: rtl8723bs: Replace NULL comparison with !
Date: Mon, 18 Mar 2019 18:12:35 -0500
Message-Id: <b57e2c9f1edee606f52e40e96d5bbe078868a651.1552950374.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>

Replace NULL comparison with ! in function rtw_init_cmd_priv, to
maintain Linux kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 32d8ff9e41bd..9edd0dda3c06 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -177,7 +177,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
 
-	if (pcmdpriv->cmd_allocated_buf == NULL) {
+	if (!pcmdpriv->cmd_allocated_buf) {
 		res = -ENOMEM;
 		goto exit;
 	}
@@ -186,7 +186,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
 
-	if (pcmdpriv->rsp_allocated_buf == NULL) {
+	if (!pcmdpriv->rsp_allocated_buf) {
 		res = -ENOMEM;
 		goto exit;
 	}
-- 
2.17.1


