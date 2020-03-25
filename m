X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:600c:257:: with SMTP id 23mr3847760wmj.155.1585146459999;
        Wed, 25 Mar 2020 07:27:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls868310wrw.3.gmail; Wed, 25 Mar
 2020 07:27:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsaDlHqLdSciWrw6r0rtJLS5C3h529ZOO8GJgy8Hb4HUi0BWTQ6GEy47QniK3BV/NtbzGC5
X-Received: by 2002:adf:bb06:: with SMTP id r6mr3831552wrg.324.1585146458575;
        Wed, 25 Mar 2020 07:27:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146458; cv=none;
        d=google.com; s=arc-20160816;
        b=RtXN33XDbyGJ3hv6PIiXX45apYTsQhXfGI9q1nvV6htUn3siEvS1Io3DTCt+CVk9ZD
         IqZXTzkKHaL+NBORvpG0MLBHNrjEVQyG6+sd/XAVjp3UmTsaTRNeXt0knZziHm4TY9m0
         OMREo0egNnMzMjdPvTcFkzrCrcuML4uVhbm/gyvPMB8DadxLbXY7AdPgByHls9JfcF2d
         wxN29gTbVqdRMgrIms+mbt33XHNePlyYLg6bM3SS3U3dXcEzIRpqpjZdOEXvgMpRzTf1
         iIvVtq+JheAHyfuOjAad3P+umWVixOoTloioBU6n2rbsXyiZdnZA6zK4VUdPJYAWo4VO
         6LMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2hRt03I8drrQuUGYgB/HyhA2ZxjUuGJQS+gaNF6HLO4=;
        b=stXTTK4nRfs9PhPw8vNfYXXZR+TSmfGCOWfEjDyHFhQd3LR2OZ9TCc0qDgx55Siipv
         P9/+1gArKfYtKWbKDr8LZa5U63aR2UwLiDZKuy3/kAqlXzNLua8E7NpT70Upd6sEuU/V
         ew0ZR8boPoYW2VkjMXipazhgdnune/wybifptWdZ6D6Hj+aE/6zFRSwJlpgzgGqbxf4t
         JL54sYcsfobztYQMYsyrareHnHbNXl7ye7RDguc2h6nUH4RneK0E+655QbcC0WAZ2n0M
         qe3LRC1pb3/ttgacpwjRz6wUrfRwll6uJ56+i0tfsLlqntmYFx1zWLu8dUsrWGVmsYzD
         +Vqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pu16KU+Z;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v12si1258519wrp.5.2020.03.25.07.27.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pu16KU+Z;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id z5so2675357wml.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2hRt03I8drrQuUGYgB/HyhA2ZxjUuGJQS+gaNF6HLO4=;
        b=pu16KU+ZHWHZVoyXpItCOUc6NU2PWd5DEUAcmjn3sILl/Q3jJH+BfQwRY+8BxgRxVg
         eOdvq5mnY2t5/1cbdkreK2iBqTHMls8e7Pd4UQmbxGQi/iXUQcHl2gJl6aIu71XFUDcu
         FejhFcVtSm11mPkjITiFPyNIA7O89jHzLspdLXoK43W7gUQyKBnKVgLK0w9Cv7V24iak
         BFwbyfDsH9BSkSyXJHd5Ctjuf11KDilTlFHvkv6KdaGRZQ7AznjiKFz8IJEMggjpiODc
         idCNJR08eJWWWkniNAd5+ie4DKwb2FPkj6V9Vq7GlheyV0TUXfKkDjQTQToPShuqBuqN
         XMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2hRt03I8drrQuUGYgB/HyhA2ZxjUuGJQS+gaNF6HLO4=;
        b=qULIERapZGKvpP+WSdft2FNcaZosUC8ebay2sN0FZhiqIsICKONVzXBIdK7tZu2+F4
         WeFEROzbUR1BsemmhWxhHWdQ0QFT1eeHQMmM8jNLzgpAC1QrTCThlz0k5FT9HQ2pnVZQ
         uEH7ouuL9jLuBXYzxZ8AIfOu9TtzeHIEdpse9uSu532BtC8hc9CTV7o3e3y5dMloqG8j
         Igrzv7dhZFUHR8hDXcnPknZ+DP9rUoKoH2S0d0fhq6EjaIlyw1QZbVwImBev+hCXncSW
         oY+mSWdMV/F52zs+zg0/62dNVZdUI++f/7yU3MROjE3jW6qMJYyScG50RKfCsUsCDvKE
         IToQ==
X-Gm-Message-State: ANhLgQ1LRfmpMYTlL629dGdNcYhDowzuhXEpr+6h0oO5uBhEuKmuTlF9
	BWxaKuR307QpS1Pjg6mMXVIkfM/f7A8=
X-Received: by 2002:a1c:790f:: with SMTP id l15mr3749112wme.92.1585146458368;
        Wed, 25 Mar 2020 07:27:38 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:38 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 7/7] Staging: kpc2000: kpc_dma: Use spaces around operators.
Date: Wed, 25 Mar 2020 10:26:42 -0400
Message-Id: <22025abc8f8f3452c2d886e8faf1fe0532e8bb1d.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup Checkpatch.pl CHECKs about missing
spaces around multiple operators.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- Recover a properly aligned code in count_pages()
  that was messed up in the previous revision.

 drivers/staging/kpc2000/kpc_dma/fileops.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8c7859ed1237..7caabdd77bbf 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -18,8 +18,8 @@
 static inline
 unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
 {
-	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
-	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
+	unsigned long first = (iov_base                 & PAGE_MASK) >> PAGE_SHIFT;
+	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;

 	return last - first + 1;
 }
@@ -84,7 +84,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	}

 	// Allocate and setup the sg_table (scatterlist entries)
-	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
+	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
 		goto err_alloc_sg_table;
@@ -127,7 +127,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			// Fill out the descriptor
 			BUG_ON(!desc);
 			clear_desc(desc);
-			if (p != pcnt-1)
+			if (p != pcnt - 1)
 				desc->DescByteCount = 0x80000;
 			else
 				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
@@ -137,7 +137,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
 			if (i == 0 && p == 0)
 				desc->DescControlFlags |= DMA_DESC_CTL_SOP;
-			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
+			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				desc->DescControlFlags |= DMA_DESC_CTL_EOP | DMA_DESC_CTL_IRQONDONE;

 			desc->DescCardAddrLS = (card_addr & 0xFFFFFFFF);
@@ -149,13 +149,13 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;

 			user_ctl = acd->priv->user_ctl;
-			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
+			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				user_ctl = acd->priv->user_ctl_last;

 			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
 			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;

-			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
+			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				desc->acd = acd;

 			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
---
2.20.1

