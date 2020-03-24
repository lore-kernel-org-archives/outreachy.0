X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:b801:: with SMTP id u1mr17464455ljo.84.1585084196336;
        Tue, 24 Mar 2020 14:09:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls17129ljp.1.gmail; Tue, 24
 Mar 2020 14:09:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtx3Do+pNviscR7bs69oSmMw9CkIdCC3EmSkur17SR0JuMfX9ozBv8AGzl0nhKXvFrOd2Qe
X-Received: by 2002:a2e:86c6:: with SMTP id n6mr18785830ljj.46.1585084194156;
        Tue, 24 Mar 2020 14:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084194; cv=none;
        d=google.com; s=arc-20160816;
        b=IGKLarNL36nZZyaHAORqza97m0vxeCKoLVzs9L3+9eQwzFjJIE6sOlu65S4uf5Aq+J
         oehtegieMEBycpeCdBoU8r9pzXYoDnXgMHFmB5JscFPnwpiuWsaI8DDMx36DTCpbR0m3
         2Hqm34vMWv+1nnIpXIAHGbopJoMG43hxsR2Sf5qLtqKV+I4phHzYttVSg81VabLUdYv3
         3F9EFLATvyvDqPHlR5HG5Fvt/t0qynQ/SYsMuy4yjO/w6o0VqcvyfGKtEMtasxTkj6ZX
         ynUb5Me9GkoeIyQa83JM9Xmw4E2Fus2ncfyZHStiu+MkLuIZqUFijUyx1M7Oa8cxomLO
         9Xsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1iG9ibdn77q78G49UFY7O8wfmstpztRmijhuo7+/HdA=;
        b=AUmUYW5gVn+IPM+ZOJWSgKSSzho33Xfpxie2JGI02Ca7AV1YaasJtOmoL+xE+Rhp1l
         I0zasrGY70+RAY3diXQRMAm4zhrn3SvjF0ARfW7oTjjJHFN3y4nsodpb2bVtCFeO/CiQ
         VN+q3TjpH2xvQnNWkgby1zlNuC1nXjyCz8NIX6z9p/V6qDWCPTd1VAFk6IN6fsibmEsA
         4uuOkPLo4j2WQ+WjKvlNZUK6f97dM5upWQR/R5mPHok05xupJRGdUN6YZptfUXuY1hfS
         dfdX9B3RgcN9+/UQAStjQWAAdDOQr4B5fSUqNCPjXfKX8OmYliVIq6yKZMtevzTI2SIT
         PtEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MHNROQ6A;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t17si630143lff.0.2020.03.24.14.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MHNROQ6A;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id h15so271834wrx.9
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1iG9ibdn77q78G49UFY7O8wfmstpztRmijhuo7+/HdA=;
        b=MHNROQ6A3l78mpitkoj2InmmL6zZ/iz4+bk2QbnK586AH0B2rSKMqRGjd8WLJPmn2M
         RKxfwwPmIPpftIWcnhyLgUJx+zD5nNJrONiXoOV+FFm13niCm67+3s9k8UCvsQBGgk3X
         /6DKyvicLg70f3NdLW/Zd9oVO9qh53n+oUwiQIgmR42I67ATmx+ypU9o8x5Ei5NO3aCq
         GesD3njFehk3mbxn8tWvpfbDLtSegwEHTkYm7JTzU2HCvGVpUsH8pZhl/qjxilAAxngO
         JrFdDr9sKJZRpQ2vunc7PxX+wkmjfxI9v0DO7eLr8gKiMLJhUxNRII+68fknp5dcPWAD
         QXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1iG9ibdn77q78G49UFY7O8wfmstpztRmijhuo7+/HdA=;
        b=mmYiZ8zwLzlWF71MgLLUIMx1y3DGsMt09M2B1MqhTKsML8bpi/BbMbOgYw0clMaCMa
         KoQPKWDEzNJIkwLlSXifUarfXVTJIYAfnrIzJ9QUY8b5zrOc9xAcolTWHZkshf/xXwXN
         WYUvWycDUpJosz+Yb3voud9X44GhUQFUI426vM0muNbFk3cVs8AWELb3DSER4iVFeFN7
         R5d8cXAz/8ZuG0VabN3gDuot4dPASa0nG/SlP9hNrfHooavB2jDLEtwLh3Fnbs+tRSTx
         iwu2l9Ye9JQrajaqKQDFjErSKqxAWyjxm2XP6fQ5Brmq5QrKztRch3A4aJpDbeFoS39z
         lzuw==
X-Gm-Message-State: ANhLgQ0IAOUaL2aWcPW/+28ITm+ayiAu2sNfQd3nwxz+0W2ddVTQyJcF
	pHZVcn6yEoED9GbiErtR+PA=
X-Received: by 2002:a5d:53ce:: with SMTP id a14mr6512760wrw.129.1585084193777;
        Tue, 24 Mar 2020 14:09:53 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:53 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 4/6] Staging: kpc2000: kpc_dma: Use spaces around operators.
Date: Tue, 24 Mar 2020 17:09:17 -0400
Message-Id: <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleanup Checkpatch.pl CHECKs about missing
spaces around multiple operators.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index d93097ed781c..e599ae1bdfd0 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -19,7 +19,7 @@ static inline
 unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
 {
 	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
-	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
+	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;

 	return last - first + 1;
 }
@@ -83,7 +83,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	}

 	// Allocate and setup the sg_table (scatterlist entries)
-	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
+	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
 		goto err_alloc_sg_table;
@@ -126,7 +126,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			// Fill out the descriptor
 			BUG_ON(!desc);
 			clear_desc(desc);
-			if (p != pcnt-1)
+			if (p != pcnt - 1)
 				desc->DescByteCount = 0x80000;
 			else
 				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
@@ -136,7 +136,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
 			if (i == 0 && p == 0)
 				desc->DescControlFlags |= DMA_DESC_CTL_SOP;
-			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
+			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				desc->DescControlFlags |= DMA_DESC_CTL_EOP | DMA_DESC_CTL_IRQONDONE;

 			desc->DescCardAddrLS = (card_addr & 0xFFFFFFFF);
@@ -148,13 +148,13 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
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

