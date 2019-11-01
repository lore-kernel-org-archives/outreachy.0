X-GM-THRID: 6754188364413403136
X-Received: by 2002:a9d:39e3:: with SMTP id y90mr3366548otb.194.1572582093973;
        Thu, 31 Oct 2019 21:21:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f0b:: with SMTP id d11ls1062583otl.0.gmail; Thu, 31 Oct
 2019 21:21:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7WRuJCpILlU1Hjj9ZeGveE9WPT4HdEqKvF4gvJhyZnzfpPnNbxS6Y7Ly6KITM/L4ksShh
X-Received: by 2002:a05:6830:1507:: with SMTP id k7mr3422509otp.316.1572582092497;
        Thu, 31 Oct 2019 21:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572582092; cv=none;
        d=google.com; s=arc-20160816;
        b=IofmQxxkiWY1DSgJmCXAVYW1Ct2zCcdopsH2VcehBA4LYkvg3qi0l4fo5+x2wTJDY9
         tAicvXGUpoXAw3DJP76EmzorMVHSjKgJvE27+NUOHjWQSnNr648evi46Vdr/9eJS1y6D
         wDGIHnnvGqRQVRkr/NfO/YUJoZcXrN+ytEgg+74+BbOexrj+Q8SQ7vMe8d3B8NgAZ2G/
         o9lJ5K1lmPtu1EA72EjNnOPjB4Ybcl7GZWhaN20U4mN9cJWyCfg8Kjwv6HMMhSH1aNpt
         j00MacZbUTtE0Vbl0DeGLa5aFN6ViqmczemewFioJiV2mkBRqxDL9/wZSDJdyL1Fo7Mu
         q9XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Niie9be/XqZ/re+DxXjuHpbkSW5RAlLvAhvGPvDQ88o=;
        b=HaqwBPNzdEi3HZ54e1d2qod/mTI6B9uenItI8qlE42ngbZggjOKV59EKR5ueCrJ/Ir
         p+8okGbvzQjoYRn3t0zza4CohjTrmm5S7sI4fRClPsvtN0U2MYp5faJYg2gkeLbCBJ00
         c1DrvysaArMGo2/xKiRbXcv++ffoAZzQCNKnFhXTxJyQvahpWfeouNXdPy33qch0RTHA
         o5+cVGb2fAYqYcQ3ZwWPP+604a6DzvZUCnpqbbSq14En4pbA3IOB/c3Jjxqrj8DbxRQO
         DgsX1rOjySfolrk8BW3pGfse0K8NRg4Q+tMiiZXbsO/GuGgMpSGWDXsO+i+ZejS/us8E
         DsZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=VdguHWsu;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id l5si320476otb.1.2019.10.31.21.21.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=VdguHWsu;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa42.google.com with SMTP id t5so1920838vkm.7
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 21:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Niie9be/XqZ/re+DxXjuHpbkSW5RAlLvAhvGPvDQ88o=;
        b=VdguHWsuUaaf6rlCbuJp3zwvlSRmoHyCCRQL5S9vx4mBN9/Nov62aopeXqobyr1512
         HYaHVa3cEXHo1mOCu8eUjp31DFQJw3XXXeG/DwRfjMmJuqHfBlUmjztjF3G4U2seTY7G
         MllH5FoL84+0y/yiu+gmW7rkpqBfGcmj5gYCe7NVdAKfmjh2i/h4xucpfB9yhF935ISw
         hHuyG95zRMlg4L6cm7xoq6oq/4CuXdj5IhtyuQI2ir8iuTCxrKx1SWTOd+z62xkk9QBp
         MaJ1Tbu+V9zSDlnrl4A3a7G05o/xw9/gTtRACPrwEYBGD9SJjJ4/Fe35YU0qlVGoDjqT
         tiUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Niie9be/XqZ/re+DxXjuHpbkSW5RAlLvAhvGPvDQ88o=;
        b=pjGMkbyMxZBd3pyE5JAJ6IRpbasNURIpzT1IxQLFeYmwdEbdTZ+JRQD7Z8H/+WUxGK
         QqrCSV0uPXXfRNmwg4gVH2Fnf50q6Ydd0yjRi1HymE5mxTzYIxy4kV54GliV3fV3+DRk
         Icr7L2B8DqYoeWygg4TZ9VCXdCOxVbXbWF+EX/rlPFND6e6vZQb1NgdNjqAoFq/lIwYx
         /Mksz3GnSWgLDpAQbk66l6Vp5jOC2uUbgCBdoCs5dKXZtoz+Qr9kpVzKpgCfa6+/5CQd
         dKiAysTCjoMbzhMnXfZpI5FcFTMw+aysdL7gY68iSloYJMJ8o9G0ER3ZphqLhKL5zNff
         mkXg==
X-Gm-Message-State: APjAAAUOS2R+Sco1Wy+cfqeR2e653zhJIE+Aetuy78s7kf+FbMY1fUQU
	xrvxGQ8kgHTD/Y9WS0Bh5ATQg5blylEZiE63
X-Received: by 2002:a1f:bf84:: with SMTP id p126mr4313639vkf.98.1572582091655;
        Thu, 31 Oct 2019 21:21:31 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id k202sm1847092vkk.12.2019.10.31.21.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:21:31 -0700 (PDT)
Date: Fri, 1 Nov 2019 04:21:25 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH 2/3] staging: vt6655: Fix the spacing around operators
Message-ID: <11dac423918f85bc8b2d040d12b82b69c777174c.1572581578.git.frank@generalsoftwareinc.com>
References: <cover.1572581578.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572581578.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:SPACING: spaces preferred around that ...

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/device_main.c | 6 +++---
 drivers/staging/vt6655/rf.c          | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index ab7b690c622d..f73446f379a9 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -661,12 +661,12 @@ static int device_init_td0_ring(struct vnt_private *priv)
 		desc->td_info->buf = priv->tx0_bufs + i * PKT_BUF_SZ;
 		desc->td_info->buf_dma = priv->tx_bufs_dma0 + i * PKT_BUF_SZ;
 
-		desc->next = &(priv->apTD0Rings[(i+1) % priv->opts.tx_descs[0]]);
+		desc->next = &(priv->apTD0Rings[(i + 1) % priv->opts.tx_descs[0]]);
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_tx_desc));
 	}
 
 	if (i > 0)
-		priv->apTD0Rings[i-1].next_desc = cpu_to_le32(priv->td0_pool_dma);
+		priv->apTD0Rings[i - 1].next_desc = cpu_to_le32(priv->td0_pool_dma);
 	priv->apTailTD[0] = priv->apCurrTD[0] = &priv->apTD0Rings[0];
 
 	return 0;
@@ -706,7 +706,7 @@ static int device_init_td1_ring(struct vnt_private *priv)
 	}
 
 	if (i > 0)
-		priv->apTD1Rings[i-1].next_desc = cpu_to_le32(priv->td1_pool_dma);
+		priv->apTD1Rings[i - 1].next_desc = cpu_to_le32(priv->td1_pool_dma);
 	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
 
 	return 0;
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index e80fed69bafe..7cbc5bc4aad2 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -436,7 +436,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	ret &= IFRFbWriteEmbedded(priv, (0x3ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	/* TXDCOC:disable, RCK:disable */
-	ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
+	ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ - 1]);
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
@@ -558,7 +558,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	ret &= IFRFbWriteEmbedded(priv, (0x00780f00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
-	ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);
+	ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ - 1]);
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
-- 
2.17.1


