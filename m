X-GM-THRID: 6807884729429262336
X-Received: by 2002:a50:ec0e:: with SMTP id g14mr24364719edr.107.1585084193338;
        Tue, 24 Mar 2020 14:09:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c818:: with SMTP id a24ls134525edt.4.gmail; Tue, 24 Mar
 2020 14:09:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKxQGQLf7J/o7XDteXckqvxtVPLcZH1mdv+AyvF6x2Y3vMYIewsdd7+HYfkL9blCBLSrPP
X-Received: by 2002:aa7:cd78:: with SMTP id ca24mr29220542edb.293.1585084191994;
        Tue, 24 Mar 2020 14:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084191; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9ofIIhKjcAurfz8XRWYF8ybKa8c7orBD4zAPUDsUlEWGGb+PI4q5IBA8RnVpDUo/D
         1WZ5jQzAkZrv//Ni3oVEPfUhGTu0gFIjzaetVupGE74x3jiC1mGZ7/G1FdEgBPXza91r
         ZkYMF10s1DIVr5CU+GukglnUqb70fH/8QZj3F9KjAz1o9pRb+XBVopKDyFVsz7i7i2NC
         1FBd2EU013hnlGT3Rfq4GMhhbg4Ab8IzDfuvuZygzJqoyLLEKMolH5n81gPbiHDNx+rm
         1ypNIdKbFW4rz8a+fen5iiZACQX9oE7Ag9QlN0P+yAhUYwvnZeYAPRwk4qWgXjRScPCi
         FUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/eWg+01uIPEv2c1cDNUJkEyeqMPDc4YJKFDv0yj17UM=;
        b=RazKC6skH9IjcN8C/bnwWZLUulQfMVnNJKgUEFVt5xBQjMPm4wfFUGzqmdEk+w1mWj
         iYbEGscleTzTov83piqQ4rtKF/MoNFWM9Qa0WZunbwSkh53x7AhJUtr2lJAPWYv74FAr
         kghxEJZsJJswEtxGu2ehJCC9cO0uHR7vBqTPf3c6hLtL7B4mb00c5P5/0l8eeFhki0fU
         DjppXPB3Ta5zLeloxjh39eOzSICNggs0LQZjh9W80uyGUO/XI7T/ScoHDOSyU9dTkixV
         wABPQP69v4DNEOJ8ZJGWTybtMF9gj8HKmT1sopwShPE8DddnGqA6ESCF4OWhVq6oeoCP
         D+HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L9+dgbte;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id f2si760773edm.1.2020.03.24.14.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L9+dgbte;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id m17so250258wrw.11
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/eWg+01uIPEv2c1cDNUJkEyeqMPDc4YJKFDv0yj17UM=;
        b=L9+dgbteolH5osRrpPjUVXk9z8iMIFWqjqnlP2usupIgWYqPyjbQo4ZNZjs+dkGcyR
         68QXsXtuHE9LJZlxoUdWhN6IsMPZg2td1GZ9buk5OpiB63WEJ0S98fkuvMhkJMFLoh9/
         o3auzdJT8cGJqLWkkhvhfNXwPz+5jRhvOlYiDpIVRM2xnIq0NVDxNZ3woYJKNQB1pxrE
         Dvad1AwJ8L8IUeicyaQRafYqIRCoDKWa9uYiHONSKx0oXT3NF2G5/jR/vgiwZTwk5Hk2
         186gkXmRypEbsK2Vr2PTpzWOvt+IQoD5dy0fXVJpgQCH3aePxW0iMtHUmU+YrCNTmBTL
         AhpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/eWg+01uIPEv2c1cDNUJkEyeqMPDc4YJKFDv0yj17UM=;
        b=F33u6WRo5RCo6hC72RjSdJmAY0+WUDBcmUx/EYUBFdrpMSFUDsG+V1A4GcZ03njBR/
         fLG12j2IAJ5owxjk3gOgrhmmNiqM73wNpvoRdrgG+ZlUndGD/dbw7ENcGqRHxpG9CvE2
         3/8N/e6Ztn88pbV0fX86ossASKQgZR7HQmBSpX+Ggg5eL2LfzxKBd2VnJVKdKUSzbQTK
         Du/2hd1fTEzcPYAhnscQFRzCetCRMHguOWrlz+Y2pwTVeVBfQzH4cLKXH7urwSfDPHTc
         R9g2pAlawU3KIG+EOsPTpzDZb9L2Jkx+rBlrtggqmV3zFwQw6H4/5gSSEczPBTE7X5IR
         jYhQ==
X-Gm-Message-State: ANhLgQ2hYG9DUr5PCG/tUTzT4Oj+/wABEGuHlCzNZBwEm4FRRkpKpVE5
	7EcOPiScHCziw0FHKnz40/E=
X-Received: by 2002:adf:a319:: with SMTP id c25mr3262843wrb.197.1585084191721;
        Tue, 24 Mar 2020 14:09:51 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:51 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 3/6] Staging: kpc2000: kpc_dma: Remove unnecessary braces.
Date: Tue, 24 Mar 2020 17:09:16 -0400
Message-Id: <0a3ec63321dce008fc8dd790f42ef8490135b307.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removing braces of single statement blocks,
they are not really needed.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
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

