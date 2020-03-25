X-GM-THRID: 6807884729429262336
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr3874717wrb.90.1585146449515;
        Wed, 25 Mar 2020 07:27:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4b4f:: with SMTP id w15ls867794wrs.1.gmail; Wed, 25 Mar
 2020 07:27:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vugsMyafgM2mV8A6fF5p0+LvNQkrEqvm1kuCbyHfHONajMgJ+7LkRFN76SAiNHDKpo/686k
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr3815868wrq.345.1585146448207;
        Wed, 25 Mar 2020 07:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146448; cv=none;
        d=google.com; s=arc-20160816;
        b=NsXq2AKj5+VDigDhKUTqTP2thtm/vsrGoOAqaXB7jz8gni8k2xGD6o3MI0TdGBCaME
         2P5gyzcJVQW/9NqIEW3HeJDBwTUGYwRbOmLVE4OEO/W/sNqdFvVgvg8A0mBC/AhlJqtE
         M2Dumlqk9tnnq0otmEQ1Dai2eCaZuTdzt9lEZIAs87GuOTNWCoLjakDPiuhsE2QeqeuY
         ixwtK00a/JdYSpXF55K9hlvkO/vg6+S1075aOVvP7wM8CoruWHiGVRU54Gv696mabeoy
         WstNGGvGEF+UMiyEVN2rwHOEBuRjxfeY+/jNPKs1vkSErmVuiD+fFRzIAFeXmvQF8p+O
         czWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=za6UBv3AX92+S2s9b3KHiBIXZeqb4CroiiObs6rODCU=;
        b=i5K8xFzN1QhZ+wFUecBJtbszBHqMY1g8XmHN/7xjxHZeBnJU93ptPsaiFk8NOTXNDh
         tzPs/u1tpXSuVNJq8ROhVntcIOIi0OovKuj7Ij2BuORJOBxs0lMYMNJ9ck4t/nUNJ8mZ
         H4HWF4kjW3jn8S04puzTvkcTt0cgepwh7c5m//F52pzXcUB2qX7Cnf+lcdXZOFJ1kQUo
         f4ht3XCwbVsIoLAT+AUc3wCmZ9px2qmIdGf5Sm1cq3TvYU2rYcqYqtvXOUvnOeCyUgWL
         RNDcQPjruEGL+jPpV9GclI7EJKS6eAiqdvn3eB6fTttiLsAKB00KGi3aFJLfeZ4t/dOu
         0MFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XceJbxQv;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v12si1258519wrp.5.2020.03.25.07.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XceJbxQv;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id z5so2675357wml.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=za6UBv3AX92+S2s9b3KHiBIXZeqb4CroiiObs6rODCU=;
        b=XceJbxQvqMkiLw8JAHxgZ24mqisvsrVLDH7M4ELsa8/k6/7CYHTqpqFnk3Jz1mdnQ8
         34+x+FRsgRMJLnqdatDgkoZqsrXD8Mq8xM67XhM8Gg+vT2BWIj4uQrqoY+/gBYE+ynmG
         wvfAACWVIJxctQpo00d+rrvO4HHa10qwzuw/Q83hXbbU6DfrbO6LaheV61asrNTK9tR/
         pyhiLh+y9Hax8nDKbOu9R1qG2EsbS6BMzDiCph83JTL7645EqrAQNHdo0LJxnkfpKKJG
         VtTiOjrJL1uFMhyQmZAk7j3Ak12bHsCbpIH+wzPiYRFh9Z5/0AQ5iREAmahlC1h1HOOt
         2zWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=za6UBv3AX92+S2s9b3KHiBIXZeqb4CroiiObs6rODCU=;
        b=ASAy/qVNjI+qx5kdvdnkvex/UDIM8/PfBtmL3a8EcZEVxjGsDKkK0C0wiNAj5k2IXm
         egsDAykh6zTo9hIUNhcU5T6yEwd73efAwqNUWwozmiEK80oJLZ7dhMcbWVXJ3aSj3PLK
         SY5f1I+lbRzc1kn6Spa7x2pdfDD1P7s47Z0ATFttI9P36C9QEClXRFX2VXECD4+bePh7
         OzyN5xbUhoU+hVZfaAiUR0Myo+mr0kXmsc43yb4TaapMQa+yCXyhkIcfBPSTsuHn+ABC
         r+bHWvTJhOWru479Ane6+0gGWWNNEReEFa/oJuJE99ZXQbecID4fklq49LHwlpNqNBws
         mzsQ==
X-Gm-Message-State: ANhLgQ1sdUxxAZZjteebFAXv9PRJHZ+Copb8virtPFXVe2cMBJfKuIoF
	j1l00OHuLmMnM6Xj1+EpEzM=
X-Received: by 2002:a7b:c94b:: with SMTP id i11mr3537910wml.113.1585146447840;
        Wed, 25 Mar 2020 07:27:27 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:27 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 3/7] Staging: kpc2000: kpc_dma: Remove unnecessary braces.
Date: Wed, 25 Mar 2020 10:26:38 -0400
Message-Id: <0a3ec63321dce008fc8dd790f42ef8490135b307.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove braces of single statement blocks,
they are not really needed.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- Correct the log message.

 drivers/staging/kpc2000/kpc_dma/dma.c         |  5 ++---
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 20 +++++++++----------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  3 +--
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 4bfbc717bc07..5ccc93ed2b61 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -97,11 +97,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 	if (WARN(!(caps & ENG_CAP_PRESENT), "%s() called for DMA Engine at %p which isn't present in hardware!\n", __func__, eng))
 		return -ENXIO;

-	if (caps & ENG_CAP_DIRECTION) {
+	if (caps & ENG_CAP_DIRECTION)
 		eng->dir = DMA_FROM_DEVICE;
-	} else {
+	else
 		eng->dir = DMA_TO_DEVICE;
-	}

 	eng->desc_pool_cnt = desc_cnt;
 	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 21ebab7dbc7b..d93097ed781c 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -126,11 +126,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			// Fill out the descriptor
 			BUG_ON(!desc);
 			clear_desc(desc);
-			if (p != pcnt-1) {
+			if (p != pcnt-1)
 				desc->DescByteCount = 0x80000;
-			} else {
+			else
 				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
-			}
+
 			desc->DescBufferByteCount = desc->DescByteCount;

 			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
@@ -148,9 +148,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;

 			user_ctl = acd->priv->user_ctl;
-			if (i == acd->mapped_entry_count-1 && p == pcnt-1) {
+			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
 				user_ctl = acd->priv->user_ctl_last;
-			}
+
 			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
 			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;

@@ -188,9 +188,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++) {
+	for (i = 0 ; i < acd->page_count ; i++)
 		put_page(acd->user_pages[i]);
-	}
+
  err_get_user_pages:
 	kfree(acd->user_pages);
  err_alloc_userpages:
@@ -210,16 +210,14 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 	BUG_ON(!acd->ldev->pldev);

 	for (i = 0 ; i < acd->page_count ; i++) {
-		if (!PageReserved(acd->user_pages[i])) {
+		if (!PageReserved(acd->user_pages[i]))
 			set_page_dirty(acd->user_pages[i]);
-		}
 	}

 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);

-	for (i = 0 ; i < acd->page_count ; i++) {
+	for (i = 0 ; i < acd->page_count ; i++)
 		put_page(acd->user_pages[i]);
-	}

 	sg_free_table(&acd->sgt);

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 25ea16a1981e..bc81afb6ade2 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -26,9 +26,8 @@ struct kpc_dma_device *kpc_dma_lookup_device(int minor)

 	mutex_lock(&kpc_dma_mtx);
 	list_for_each_entry(c, &kpc_dma_list, list) {
-		if (c->pldev->id == minor) {
+		if (c->pldev->id == minor)
 			goto out;
-		}
 	}
 	c = NULL; // not-found case
 out:
---
2.20.1

