X-GM-THRID: 6662033797389746176
X-Received: by 2002:a62:15cd:: with SMTP id 196mr7314240pfv.105.1551125617960;
        Mon, 25 Feb 2019 12:13:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2c81:: with SMTP id s123ls2382704pgs.6.gmail; Mon, 25
 Feb 2019 12:13:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYI7AgcQDDNwIuvHHZS+2retOr21bdTKRFdrDvuzW2PIi1X9/8UJa5YJpN5WK+29Qb2D20F
X-Received: by 2002:a63:ff66:: with SMTP id s38mr7613916pgk.102.1551125617143;
        Mon, 25 Feb 2019 12:13:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551125617; cv=none;
        d=google.com; s=arc-20160816;
        b=oouQrztKVXEv/WmN+00uhlWJzSBDYN1fGw15g2wFhW0M01c+8yJDTclYI5k8Krp4PS
         d11tWDPzNXfDewSLZqPwnD/ueitN+ru4bd+cX7M46M6M981KDFAmSJvt3fPkWbynVUXg
         uLUGL/6Gd+hARQFG/2Fqq4Y7S2qvYNQTxBVUbh9BHCbGFvU17a6PrckwnvMGhGVv4Fla
         4ErxKXM+lDnjvG9w3YzDECT/EudYJWH5aRd/waV4kIINbBdO95xfpvyTQCAxYCpQ5rrq
         l3XMDVNpSnFAbadLvSnUKSwl5Jg/9Mnx3g17l82KONyG+TImba984J9f+/nYXLGrzq+q
         SaRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eJ65un63/wo7oUdsD9FCnHOkEcZ5Y4GImMPmIBpLsk8=;
        b=naOb9Ez+uMr9FvQ6FWPbqS9lx/CdGO/G8eYDMzdoG+dvTHSaBlndLvG2BLTorAuSo9
         V4qeQ0ZWD7YcCt/L0YuyOcIavANUoAZu28TrAsdvcZK5VdmI1b+XkzcjFu4019muJtD1
         qZTq83NWsprpbH1J1qjNh849yjIr2ManJIzfcJF2KzDqDG3IFAuR0h10PNUhKprzq5Gw
         DNif4PxmmoJ3O8iQPYpzn24M0lPrtDdYah7Eg6jku5WrHkCsgfdvDayHlNZ2IkTwjeUb
         uO/kA3lcfkp/WF0RHGfaD7B9WGkKwBa31JDQTNQyJcUqajHIZOgaGtA4+3X+D1Gng4sk
         JvHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVmCzVSY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m189si779635pfb.0.2019.02.25.12.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 12:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pVmCzVSY;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id v20so9018583otk.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 12:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eJ65un63/wo7oUdsD9FCnHOkEcZ5Y4GImMPmIBpLsk8=;
        b=pVmCzVSYkplTTKeTzK5Q3WIN6cb3LEHtml//973ToMagoyYimtetYrt9q+2FGCT4wB
         1R4kC1DSonLMgf2xtqpKNTEyDipbFA7oOONYRDMxIuqFjil9AjcIlNoPRRB9vJ/NB6zp
         +itMmkudWcgdVRWUj1mxYYvnOXOUbyBC6f2YbQt3uxAJN7mJ9drVKi84OEDoLLMduQzE
         p4cBZhEOXuQnD1seVynvyt0EAYaxpwglYaBdTSX4FqTrZtmoOglE2poUcFT3Osa1nA7Q
         7auuI5WrziQExerm7FlqJczeniTtmdSrkH87w21Utlq1gm+t2tsGSDQEpRiyYHVFR6HS
         +4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eJ65un63/wo7oUdsD9FCnHOkEcZ5Y4GImMPmIBpLsk8=;
        b=JHpEVBlr1pq+BJpZO44mK9e+Sa5rzTKdzd0nhPI5msaKC+RdNZvG/jdEDa8D47pDaE
         1qo7msHkXK0kFZsfXd1k7e3VhpvV1R67uPO0g4oTr6ZZClrT+n2OMVqyf+iYlo7+p2PW
         LSaD+JKB1DW3EsnzNW9M7tZQetp02vYg6p0laKtCbwLn3kghKmqQq0amlcQPX3McLZm9
         P/vw62XXH3kZOacn9P/mPJW4h3GXnRVISRL+YHX0Yg+/1Df3kw9uOj3nlCXNcGZWjbTL
         VipbyOf/y7yYLAn+0QZ74kVQwIffAfjHbqiQGPP8Iw6mk9g36zZ/ucgXI28SSKE4470D
         QwHg==
X-Gm-Message-State: AHQUAubMhhXd58vpE9ImkFt8npXNF4WNtTGkSOdt498tgwHfLNROYg+R
	QDAOabr43aNQCnAkf6KdbvBL2gWAzwcT4Q==
X-Received: by 2002:a05:6830:1554:: with SMTP id l20mr5245245otp.295.1551125616191;
        Mon, 25 Feb 2019 12:13:36 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w22sm4412540oth.45.2019.02.25.12.13.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Feb 2019 12:13:35 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Alignment should match open parenthesis
Date: Mon, 25 Feb 2019 14:13:32 -0600
Message-Id: <20190225201332.31367-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the check to improve readibility.
CHECK: Alignment should match open parenthesis

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index d7227e804f31..b370985b58a1 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -810,7 +810,7 @@ static void device_free_rx_buf(struct vnt_private *priv,
 	struct vnt_rd_info *rd_info = rd->rd_info;
 
 	dma_unmap_single(&priv->pcid->dev, rd_info->skb_dma,
-			priv->rx_buf_sz, DMA_FROM_DEVICE);
+			 priv->rx_buf_sz, DMA_FROM_DEVICE);
 	dev_kfree_skb(rd_info->skb);
 }
 
-- 
2.17.1


