X-GM-THRID: 6754482318874771456
X-Received: by 2002:a67:5c41:: with SMTP id q62mr7133706vsb.236.1572650726804;
        Fri, 01 Nov 2019 16:25:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:22c2:: with SMTP id 60ls398784uan.15.gmail; Fri, 01 Nov
 2019 16:25:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYjMoFmWL0oRInPQhKAy7tsclhVTKYlgfl+dWpNf+D1fFXQDVgqLKer1iBoavpo2CswQxH
X-Received: by 2002:ab0:1d4:: with SMTP id 78mr7166636ual.6.1572650725580;
        Fri, 01 Nov 2019 16:25:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650725; cv=none;
        d=google.com; s=arc-20160816;
        b=VD5YeTbrA1Lv4LSAVUtGfviqAbC3I7zjfQ8Tv0QqEztpqKa68g6nI/bZP39N4KxV3u
         7vweRVTo6N7Ey9mDOJF9DtcJ3K2ZSpKAnP2YWmXpnRemc+40GS3W+cQFI5IE3+oj1xoo
         aKF7JH7lrfOaWA+MvTDuiBBPX86Np2Kyk83lWl4hCw2WvYPv9aNyTrDm2+NY/LSaICwD
         oZuVmyU39VNbBriaL2qfz5wZMy/2qRZLk2AOt+QMFR4f+G909glqNGWj+8L3U/huVL3w
         t0bHZAyK/ORHzriDxAx0pyXXmNBRR4T8JnUlfoKKmxMI4a1TMZmQvSJkqecBV1QPpNBS
         cjVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=07BXZzHOPwWyOZ4ZPcHe6+zN2QgtsYiJUOX2S9fSQPQ=;
        b=HkTfN3cyICt2OKXXFtM648Mdsk3OE6RB2pVXzRTeB2D7d0aK5uZ//txideiOGAsTta
         sCqQdF1wd8+flsGUCVAV0RHy3eI7S28/IooooHiusvNlaK2GL76C3pWrMLGpEbXopyn8
         ib9/i9EflVSU4ILcNu0hZ5v+pOKJC8VczbScaMmRAX/ezdMIczTMzg/Md8mruWFuXny9
         TKIbW8PYzzXnUiIZBhS6rRhAD6bPKr1NUPvIMBDrS1oEvjKsMnZCE51uD0uvXTGI7LK1
         3Svnbizg90kPMOate13QkTsLmNrnY2K58miQ08F+zP0J3zrKXaU9PYVR1AOKOvUrB1fE
         nbfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=WBYQGeFQ;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id s19si424900vsj.0.2019.11.01.16.25.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:25:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=WBYQGeFQ;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x943.google.com with SMTP id k11so754643ual.10
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=07BXZzHOPwWyOZ4ZPcHe6+zN2QgtsYiJUOX2S9fSQPQ=;
        b=WBYQGeFQmcOIQ/C0TvEFH5H6wNnzLTOTJAT+eMXJKaTlSP05xKgPjZaO+t8rQwMmqc
         3SBdTY9MTKy7I1YA/Q5KhB/DBxvlaz+I5F7YvANGliYmmMa2UUQKSgO8ShqH0dRtPEb7
         MWFfWGeXD+BXW81+nUJPIMSWNTtNtajPbuy93aZ2bLVjG1QDMAaSbQ6GbV+lCRw1zmS0
         njA8HmwrS2uMoXnAbDAF8ESl9l6JsJ2zAwph/c5IPL13w4hT5VJag8t2er7IozjArSDm
         Fp7SV2fZP6KEFh556p2eUemIIAYMo/8xH694/LFNflz3iyY7/eOTl6NhWxb+KqE5H1D2
         gzLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=07BXZzHOPwWyOZ4ZPcHe6+zN2QgtsYiJUOX2S9fSQPQ=;
        b=uoThiukFr1sJWi+95h7AkdlcWI3+5MI3g1/v+MAWukvU/DIDCWZQy283xDTeRTRv2B
         VxmhXgVkGVclgNmyroarmqs0vT6/I8jvxQBMH/buuiMx761rbpDM+BVpAdN36DuLal9o
         ncSBN2BikS84rGojemLxpxWKWbkoK7DBQGeMXUnNu+dn/zyFffEO+gsrM64MQdirH4u/
         R0v3mjStNDygcm2xf4u4Gt0pdBtf//7LvkVRKplChgda80poCGKRfaRQJtBMvNsVFlTy
         q1oATW5Zq5kzWvVuvqEkfNTM0k6apj2s3Q+QOpUF9a2hL6tqNm2+QjLf72prHS5Sc1x8
         0+xQ==
X-Gm-Message-State: APjAAAUyy3TI2UTNBVfEQDP0LTSzZ/ZkAhVZn7BGzet+sq5c92VlJWJV
	bqGEHVXrs62Slavy5ctK/YCaeQ==
X-Received: by 2002:ab0:5949:: with SMTP id o9mr6930581uad.65.1572650725068;
        Fri, 01 Nov 2019 16:25:25 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id x2sm2237820vsq.32.2019.11.01.16.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:25:24 -0700 (PDT)
Date: Fri, 1 Nov 2019 23:25:22 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2 4/4] staging: vt6655: Fix long lines
Message-ID: <588c73f275b22f55323797706e5ceae44d7aa160.1572649242.git.frank@generalsoftwareinc.com>
References: <cover.1572649242.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572649242.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

Lines longer than 80 characters should be avoided because they are ugly
and harder to read. Fix a few of long lines to comply with the preferred
coding style for the linux kernel. Issues found by checkpatch.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/device_main.c | 6 ++++--
 drivers/staging/vt6655/rf.c          | 3 ++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index be3883f10520..f69fc687d4c3 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -295,7 +295,8 @@ static void device_init_registers(struct vnt_private *priv)
 	/* Get Desire Power Value */
 	priv->byCurPwr = 0xFF;
 	priv->byCCKPwr = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_CCK);
-	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_OFDMG);
+	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset,
+					      EEP_OFS_PWR_OFDMG);
 
 	/* Load power Table */
 	for (ii = 0; ii < CB_MAX_CHANNEL_24G; ii++) {
@@ -660,7 +661,8 @@ static int device_init_td0_ring(struct vnt_private *priv)
 		desc->td_info->buf_dma = priv->tx_bufs_dma0 + i * PKT_BUF_SZ;
 
 		desc->next = &(priv->apTD0Rings[(i + 1) % priv->opts.tx_descs[0]]);
-		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_tx_desc));
+		desc->next_desc = cpu_to_le32(curr +
+					      sizeof(struct vnt_tx_desc));
 	}
 
 	if (i > 0)
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 7cbc5bc4aad2..fb2855e686a7 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -558,7 +558,8 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	ret &= IFRFbWriteEmbedded(priv, (0x00780f00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
-	ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ - 1]);
+	ret &= IFRFbWriteEmbedded(priv,
+				  dwAL2230InitTable[CB_AL2230_INIT_SEQ - 1]);
 
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE3    |
 							 SOFTPWRCTL_SWPE2    |
-- 
2.17.1


