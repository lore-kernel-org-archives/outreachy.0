X-GM-THRID: 6668974051336126464
X-Received: by 2002:a05:660c:68d:: with SMTP id n13mr6142575itk.24.1552782755438;
        Sat, 16 Mar 2019 17:32:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7644:: with SMTP id z65ls2539376itb.4.gmail; Sat, 16 Mar
 2019 17:32:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5lDuDyDHo9i3mkBS4mcDwFuX3CWoO3LOdpmYFbX3+mp8m+s6Nb4tn8FOmWwP/08LQp3aV
X-Received: by 2002:a24:df45:: with SMTP id r66mr6090148itg.21.1552782754965;
        Sat, 16 Mar 2019 17:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782754; cv=none;
        d=google.com; s=arc-20160816;
        b=dCZ5PDxXAZgLZg3zdBZ+aDtb8YZ6FCddtHxz1EhvT+FiAfJkhHi97XD4HDActQzEl2
         nE3IWla2T2JOyXrNxbvxweuEbqHczuQQ73iTINsye9kTi1/iV4+9ZWRqLyzxGA1YC1UN
         VvvMRyi7Z/1hquMt17i2iKf4CDMp4TNEVFGMOvI1RnmJvJPedaQZId0J05UQF/tpGtLC
         /+e0A7gypCMCpEJ68Kmkrz15bN6ohqqDakUsXSgiUxb5AGt0lR79FGEw61MQEissXmjn
         umzx9597jkYOwgj1hc5DSypE+wzzNS9TZiyFvTUqdeQe3pAHKxbHSjq6UkqpPnFmqmFD
         nLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=CF90U03BRXMryxhGOxfY/8yO5tq/hvlHjA6ORHxq0gY=;
        b=iOcwtbBGXRdf8zxqqJ8PKO+OPatx5/t0gj4IuCQUTiC+RTcefeIulGuJg91mfV6Tns
         vwNMxH/cR48Alscl2GbU4vMPCEngxjBQ8lIWEsXv0f72xxml5rmpAZDdnI1+a/gUOtbp
         Z+5r67MOIIPl5ngDTdVVEeRl+qfPcHTnhdDue4aZ+EJtGyavlopq/DKeGncLdNqiaynn
         BmA+Afqh3VopOiNd6ze3iJNlA9WnMHkGAcxQMmXfMv7F05AgUZubWvK3BOcvmIjhFfDf
         Laq/xeTXC3Jh1TNO0HCOtA1ON6DgqjXcJmwgRYYPQTqaLUzpoPNNGSDusKVKkyRCi4iO
         ujiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2fliVvn;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n185si706763itn.3.2019.03.16.17.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2fliVvn;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id e22so3174325oiy.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CF90U03BRXMryxhGOxfY/8yO5tq/hvlHjA6ORHxq0gY=;
        b=M2fliVvn40M8qdQCjcVxRawzoYpFhBmWSDDx0CwsUjvxLnNtmfVUmw6XdeJeqwLo7P
         8RVcoLhaWqFJlwvi4lB2C9UeZPxO7hKXBKEe/HggPyc5Wk0u3vGhFz4YX4hqk7BR7gNh
         cSVUoN50sIF2D8AHAW4LYoheNh6xqMxIJSz2x4K9rD9GRrfFRGQWkGYmpNCpZ4LPeUwB
         HJJA3MsPM/mQcK9h44clWJqhIIuAL35I9kBM7vBjGvQxCINroGYzOL6sgzZGww+dBak9
         vS3AnYn4MOCbJaS4dSQi9++1nvtsulAFkw3W5Hd9Cr3XmOK1LrbxfekWRHkhtDHBk2Xo
         Xf8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CF90U03BRXMryxhGOxfY/8yO5tq/hvlHjA6ORHxq0gY=;
        b=QeUDxLQFU7XuWEvSBg82m3HQs8o+uPzXMp7R6P4rXGZgzK+9xkf5Sz/jULtxfxyY4v
         XXuIIBsy3dx+xaglrpdxuVzItPhm3IKGXha9fx0/4nVnzq4SLrlGhgIozG/wuQXA+UU/
         NiH2y2/LYcXG6HaVhzJS6nk+pxXieNw4D4fWhZ1VPI11SDQ1TThdw2k84M8TCWYpFFMk
         mp8EOzjxZpM9TYwMMsh3Oi5kg2iTg6ZEbZwg7ODUQMPIe+eupb6XW7T24wIhxEzOSRyX
         NrhC/MvH/xPukotGutwFpPznCSgIC9eQbWU/2XBKNtP+nrX/SuhZUESqYD/RbYV9gwJ2
         qiFg==
X-Gm-Message-State: APjAAAWVUTAFiQtYkZoMQjApIYZas/49gMsDZJz8QuImVA9BBb3HjTNR
	/HQa49/MCUm8o2FuVjt21/kXyBR2
X-Received: by 2002:aca:cc58:: with SMTP id c85mr5562508oig.22.1552782754509;
        Sat, 16 Mar 2019 17:32:34 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id i16sm2298390oto.77.2019.03.16.17.32.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:33 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/7] Staging: rtl8723bs: Convert type of local variables and return types
Date: Sat, 16 Mar 2019 19:32:19 -0500
Message-Id: <6fe78b33f085802256075bd94f5e02474cefacd5.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

Convert types from sint to int for local variable 'res' and return types
of function 'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
return types are defined for error codes _SUCCESS and _FAIL.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 793bc505fa9c..ab450f717f34 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -201,9 +201,9 @@ sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
+int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
-- 
2.17.1


