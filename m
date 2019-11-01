X-GM-THRID: 6754482318874771456
X-Received: by 2002:a92:7f0f:: with SMTP id a15mr14907354ild.116.1572650570707;
        Fri, 01 Nov 2019 16:22:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b7c5:: with SMTP id h188ls1193763iof.9.gmail; Fri, 01
 Nov 2019 16:22:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDVQVzbW1S5WujSANH6Etr1zmre7yAd0kHZ4U9Is7vBjxcRim110BugnhT6OqM9NA9uMEf
X-Received: by 2002:a6b:c916:: with SMTP id z22mr13132322iof.267.1572650569485;
        Fri, 01 Nov 2019 16:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650569; cv=none;
        d=google.com; s=arc-20160816;
        b=in0vDa+mZ2NfD0lp6/6xcD/8q5Uti2B16tTDAvc4NcRA8uXvjF30kJqpjtJqtlKOot
         m56rLJ8YEoDRfThpdgNy9XdpupIQ4Oe5ykdSwzeSRoFDMy6b0A5ZC50yVLEDx4xyDKwk
         /62TjiaDQTkRrNxObVCLPq44IeGDXiAP8UYbIc997iCwlVsKld/wcPNeMC15Uc8z5GB4
         1WEJ88jZEzhud9TW7rW631zUt6Upd7FnfEM3PsP3lvn0560oUYFnQ7RmtCzEmXu3XSJo
         yhVMY82aDyyxCACDUS0TNVAKrSx+vGo85QbsTizd79fD+NlApDAVtJ56KrLMmDywruWd
         +Guw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ltuSLZVA45OlVK7GS3l69FOWu3lHYtOlGWbvIxrEoRo=;
        b=o62ulg5xKX/5nIjtNeZPkSRdUyIAqnOy02TXg+wpaWl0Gwq+c1bgL2dfWyesZo4R0J
         ADFXK7RJFbVjFPRMcGRLOL/AolASE2tMoBNzCBfS8ThxC4vSwmMb6F01n//pBGvuvLJl
         1S9q7mzL7PxK7hqFQP27VIaPFbkGPROjwebhNVMCfp8SeRIKVofVJ3lNYKXlLwrDlCtS
         hby8w6uWMGX/ZlCtstxgBr/yOAnsFnb8gZR4gqFDU6qngt+IvfPi2j6vw8kjd/7fGzLv
         qr0T3P8TLv6UApUDFGIwm6J6acDiGyCYpSd81J8gQ6iPzqHZ3mfzJQOKYDOBiO4TB8pU
         ay5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QqqtoLOe;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id t64si553588ill.0.2019.11.01.16.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QqqtoLOe;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa41.google.com with SMTP id d126so2578714vkb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ltuSLZVA45OlVK7GS3l69FOWu3lHYtOlGWbvIxrEoRo=;
        b=QqqtoLOewZ2wrVakL/DfLB5bIDXFkCTSjTxdQlZq+HvyddSPVSprncfLK8TRv7DKsM
         B9+LA33MGRdTqVawR084OTvXthvLmEwVz+MfsyxrBrHdaFt76xkLgGmMMHA5G0RDHnVs
         XYDyjky5919PFGB/SulPq+i4qACL84KtkBU158V6lIbcZPhAX1ZMa6pivQ7OPOVKrMHd
         cYIx87fZU9JjZv2J0ZMqm0ML838BIgDBMr9N/9y0Zs0kZ1BoKdPGEUwI1qa9OM9LT/2B
         4IDHdB6ch1OyCsWsyHN0jrG8qMEPXcrqyxW33X22zXiZyo62PjHboXzpsKVTqDnYR05j
         QOXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ltuSLZVA45OlVK7GS3l69FOWu3lHYtOlGWbvIxrEoRo=;
        b=bgwg/pV+DKOPcHKhTUVqaqRBJwr6q7B8oOZAJnbZ2cEeMAuCSxRyDJLVKsV0OhO8Xn
         paGTdhTaU/vDSo4O3Y5ElHgQKA/TlLZvJEuFNz6SWDWOHT9m46gqzdiYzA/IH4oGYv5v
         u+OVLZOCOnIpm5VBYXh79y0T+xsCA9PHi+Pu6gR7XhSfTfTb346hGVfU4iPT8jljg65t
         u5Iyjcm2IfLJNzf+p3CBgqS1L1Lv9bLIlAKA2IWVOlNPS+shc/lZs8LnT/J14v5zwjrl
         I4twof70M5P6Bk8FQcmXXBv1Tc3D7LY7Z3mtsUPRvrvJ9ERykthhmEHBRl0zckSygP5w
         da6Q==
X-Gm-Message-State: APjAAAXr+3rJ13gwgfmGuxXw90n4aHanOemjotpKCuBXKmooOI0XkpQO
	EpCpV1dnvxXXDGug7iHMoXZK6Lt+FS4qsbv0
X-Received: by 2002:a1f:54c5:: with SMTP id i188mr5241399vkb.65.1572650568910;
        Fri, 01 Nov 2019 16:22:48 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id h12sm2025672vsp.26.2019.11.01.16.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:22:48 -0700 (PDT)
Date: Fri, 1 Nov 2019 23:22:46 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2 2/4] staging: vt6655: Fix the spacing around operators
Message-ID: <0f77b97e88c28c503caf25fafb84729509969ec3.1572649242.git.frank@generalsoftwareinc.com>
References: <cover.1572649242.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572649242.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

Add space around operators to comply in that way with the preferred
coding style for the linux kernel. Issue found by checkpatch.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/device_main.c | 6 +++---
 drivers/staging/vt6655/rf.c          | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 2b93bea1f574..be3883f10520 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -659,12 +659,12 @@ static int device_init_td0_ring(struct vnt_private *priv)
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
@@ -704,7 +704,7 @@ static int device_init_td1_ring(struct vnt_private *priv)
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


