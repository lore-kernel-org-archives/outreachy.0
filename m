X-GM-THRID: 6668974051336126464
X-Received: by 2002:a24:7d06:: with SMTP id b6mr2358308itc.6.1552858452761;
        Sun, 17 Mar 2019 14:34:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls2099032jad.0.gmail; Sun, 17 Mar
 2019 14:34:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx0rWCmsB13DPDtiyGx3TU27h7I3Ru4Gn129rGwi2fvl2E+ilOZd5DHI//pD96sOl/TQfAW
X-Received: by 2002:a02:7e5a:: with SMTP id h87mr8925401jac.1.1552858452290;
        Sun, 17 Mar 2019 14:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858452; cv=none;
        d=google.com; s=arc-20160816;
        b=pYgMu/ufRMd1Eq+nTIshQG6Q9+VwoQk1JAYPhG0LByL0cRheLQByG1wUYLCzQMd200
         1z7bi9uTKNzCgAsEpuZCfwsAPDs6SuQaD1PMbVQjnz75EHOhuTDdd6+9nfqargvR8cDK
         E0ONweVL1cHLwu7UPcoV0tt7x9qn8pYSQyxx/lkZG2ao1NpqhEp7o3OuSjctNz+3gpDJ
         3VbieVwXFr0QoqPSkgn8S2admTdDtjyY6AuuIZuIrLlj5TQHIXoruTjeD+0Q06S2sZTl
         cZN8WTnwj/JXyQwH7hq0mCmNlNDpTVNc7xwNdZi3wzjgEaX+EHNv+xELpNP0ovT4O7sy
         J0NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=WEGIhzwL7055w6igli6EuWLP5vrRa8X3RihNwwy0VWA=;
        b=hm4fv0NVrxVsxF91S6dLQ0ln36suJxcIl4Oh9A4EfUCf6rwxBUgte+UzZXBCEyBO49
         dthBbdbyIDNRbxDKi1coCbnvy/xMXwTdV8VERwH1xY/NZ7YE0z84XLbVze5CoTornqmg
         biFKgNhbA64SioISlKF8DR5ah9fJGAa9rxYNDQOUwOcH2vQLRT74XiY5TlAS8Gvy2oMz
         rRInvbbMhmnd2SIZUoYTTcnNg3yXiF1u/QXUqtE8M7Ugc70W+71MN808HFaSReq5Li/R
         m8xzfG6rDzriQ5AdrqkaB717SoTnDkoghiHhOXblE2vBwfEvRZjsmCbawdd+t+Rp2DYU
         SL1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+hrxENg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id t17si217968itb.2.2019.03.17.14.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+hrxENg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id w139so2668616oie.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WEGIhzwL7055w6igli6EuWLP5vrRa8X3RihNwwy0VWA=;
        b=j+hrxENgUQ+2gXdI4KSB9ybCuYcijICi90B1Fous9SlWSawZZ+Nfu554JpWCGKXgUT
         PFMo3DdgyH0TCctckOZxxmmXgxX0imiHYcoJHtr5sTn5cEBah+2ESi+Rga7mZUpRj5aN
         s+uMkc7Ulcoq+Jq5by4BommXME0E7JmKXBOL901g2Ace0gB64i+bHINIx049b6Z5EMX5
         dQy7X/668CwnowTEhO6C3nsDBh1lyGvBkDaNSzv5Cd3lg5fD/86a8vHpcyQBGt78f6RD
         yt0LGnWGEVUsyeSOzYwXYxWart666JQMM1VdspB8lLp5qdyqXwWUcFc9N67yvZi7BR42
         Bz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WEGIhzwL7055w6igli6EuWLP5vrRa8X3RihNwwy0VWA=;
        b=OBSlRTG9qAq95iijTsZKjiV1a75P6oZ6R/LAiAvAu++kRZBrrYedvvj+wwPh+wYxvv
         ++JiutOnipQwCiox6/LuY53r/gRCJmIJ/tDRyDGGantJxIJL2Sf1H4N5jHC9kZIRUhxY
         PWOy+tHZgrVIjclPYnqtglCQ69CaNP1EzzkCc1+tsCt2Ix6MhKS8hq38KoGddjsBHFjs
         WW1k9I898ZjbB75ZSn/UkfSsbuvsAGNfsaPnwJZaPPQmwIXeYaIY0ygmz5Y49Tj1G2sQ
         AJ3khzT73r6NK0bXqIX3oDkF7DzO0GcFN2SEYOoB/BRCBgi8GHqDgq9k5saowTjtcc3L
         01uw==
X-Gm-Message-State: APjAAAX9dSeZW2I7Bo4eEA3NTanaSrhJvZoYDBFA73aOaFyTPXtaj/av
	mb978w0f4JL6crWFfp3aRuU=
X-Received: by 2002:aca:3209:: with SMTP id y9mr8256795oiy.145.1552858452054;
        Sun, 17 Mar 2019 14:34:12 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id u5sm3260431otb.62.2019.03.17.14.34.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:11 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 4/5] Staging: rtl8723bs: Replace NULL comparison with !
Date: Sun, 17 Mar 2019 16:33:57 -0500
Message-Id: <a2897bba0eb6903f7b0248826a099f9e2a89aa62.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>

Replace NULL comparison with ! in function rtw_init_cmd_priv, to
maintain Linux kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index f8a4f910bfea..3550de9f12c3 100644
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


