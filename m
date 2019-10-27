X-GM-THRID: 6752322786481405952
X-Received: by 2002:a17:90a:8048:: with SMTP id e8mr14919432pjw.0.1572147660317;
        Sat, 26 Oct 2019 20:41:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:9c01:: with SMTP id f1ls1686207pge.0.gmail; Sat, 26 Oct
 2019 20:40:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPVXIyOCCbMc+eZj/K06029uKp6o6QXbzghaxzo8Yp4Ec/RQHUYRuMAzHz97ErqPWIht0U
X-Received: by 2002:aa7:8b02:: with SMTP id f2mr14089808pfd.151.1572147659275;
        Sat, 26 Oct 2019 20:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572147659; cv=none;
        d=google.com; s=arc-20160816;
        b=uTNzPMP5NMQHooD4x+kdcVcdFCAIJpoKx3KwZtwCDcOfrWcKOkrtH+03f9QdDq+1L3
         W0PnOSt1pC3S0ZbfFtNGHB+XQcBdRISTcfWoF9G/ZImiqqiEj3Vx/NVCm1G0PMM+d515
         I3OxjXwW24mG8i5OrCkf4SH1OPPEWnRDGI275t3JQyENZ8F5iit2iSiNTXhqSqxWNKbP
         aU22r0ApV8m+nSnBEzgyhxCFIBnkWUBo5XqdQpgttrSOk6UdgKqOI2nhtvvptiR8Cs6O
         49WkL28HZUtEggsy0DWLMYrtFYTEQf79wXKQcAvjkXIkbTjBiRn0aoPKndkY/3IZFQHJ
         jaMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wpiLg6icfBSGqyKOgmvrHXDessNF48pSRV4PH5qo5Xc=;
        b=EmUAdyEm6gM+khpn94zCodtv28EcfppChTDx7OcsK7sIgkzH6RVmGzm3z9f5JDGUGR
         g1IIemPzglLKR7G/u96mWYSJZ/FElqyc+z77pHfc/R5W5uwqxOr4Z7DiCszo7pPedcwD
         bhCNFGpKQiXW18mIAOoJvsZhNqqGzACMNhlwXTlk8iUtGlGUAHUCntvgYsiEwv/cN5o8
         rZJ5btQED0e4FCX+o0ereklBLvLsZ5xVlWbHoDFUr7XB0KQ+ImsvEwVOpIKSlGS0zBBl
         kyiqR6Bl26+s5h8B3EkGoRqZVg/HVqh1M9DMPeg/VeAAnrYymWFzyWf0hHm5ROANoN3/
         yRbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=FciFXqHX;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id t71si256859pjb.2.2019.10.26.20.40.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 20:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=FciFXqHX;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa41.google.com with SMTP id o2so1323897vkc.13
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 20:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wpiLg6icfBSGqyKOgmvrHXDessNF48pSRV4PH5qo5Xc=;
        b=FciFXqHXwwoDqIjdwqRQL4jy4M9cfzt//j1lb4UE32ejRSauMg62n4B0FqHEGmFysb
         mo9e8kQMQhR6C9RsDF8X3K5MnzyVoM4upcRLw8URBYOxUDxAzli/BWmrBdEDSRRnHCfE
         RCmBPnI/wjExNT7V9NraAx3oGr2McsToF/2bw/sJ7rek+Ed11NYDtGeKfOz7Xc9I2/vY
         DAnU2japQEr34YkkloboW6e2S+VCqv769aj6var6RRGQMXrhXalRB5ifH27TwXNpf/Cf
         ZCiGCMWOzyp+iJdX8sRWq1JDWhHUsknxhao+a37mN0TB0chh8oxlopmfhZBe99o0jHz4
         QdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wpiLg6icfBSGqyKOgmvrHXDessNF48pSRV4PH5qo5Xc=;
        b=BXYml6vPCS+1QRgWvDDgdNd6ufQV6HeL6hJkrM1RB9Wv84CH92hTb1W4sS3e0C/6N9
         MYnY83cc2jPk+0yP/fy2Ck1mMeBFjlORp5KfKG2eu7Vpw7IjKTTdtL4shkBGNX2xpr/p
         z5Lm21X5JbwuuPTtlroktkzUpyZphTJV0qZ5EeVyKWq0MMHx+o1erLVdp7DiOTaoinj4
         isljSlO4wfibQFD52jzq+z+6mfN13wtLrsUqCqiVLO2wU8NeULSSm0cLLdm9+mGLA09U
         vFu5/dtABJiTIs859qYKA/8zq60rIXGfB6/8r8d5gbRQo2tOl2mjEv0iv6ofAegECenP
         cSNw==
X-Gm-Message-State: APjAAAXQ4rIloa9Q2JqtF4qJOyZYcwGfTOe3dyYzTWQtrcawalFSRg00
	9QTbH4iXmnR1nUq1YR8452G/1f2YMBuC/A==
X-Received: by 2002:a1f:d604:: with SMTP id n4mr5573785vkg.1.1572147658016;
        Sat, 26 Oct 2019 20:40:58 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id b14sm2141900vke.4.2019.10.26.20.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 20:40:57 -0700 (PDT)
Date: Sun, 27 Oct 2019 03:40:56 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: ks7010: Fix unnecessary long lines
Message-ID: <20191027034056.GA20613@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch message: "WARNING:LONG_LINE: line over 80 characters"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---

This is the first patch that I send for "Outreachy December 2019 to
March 2020". My plan is to keep these first patches very simple.
Once they get approved I will move to less trivial fixes ;)

 drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
 drivers/staging/ks7010/ks_hostif.c   | 9 ++++++---
 drivers/staging/ks7010/ks_wlan_net.c | 3 ++-
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4b379542ecd5..c7ba658e234e 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
 				     DUMP_PREFIX_OFFSET,
 				     rx_buffer->data, 32);
 #endif
-		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
+		ret = ks7010_sdio_writeb(priv,
+					 READ_STATUS_REG, REG_STATUS_IDLE);
 		if (ret)
 			netdev_err(priv->net_dev, "write READ_STATUS_REG\n");
 
diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 2666f9e30c15..4206e535de5e 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -79,7 +79,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
 				&priv->psstatus.wakeup_wait,
 				msecs_to_jiffies(20));
 		if (time_left <= 0) {
-			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
+			netdev_dbg(priv->net_dev,
+				   "wake up timeout or interrupted !!!\n");
 			schedule_work(&priv->wakeup_work);
 			return;
 		}
@@ -438,7 +439,8 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 
 	/* source address check */
 	if (ether_addr_equal(&priv->eth_addr[0], eth_hdr->h_source)) {
-		netdev_err(priv->net_dev, "invalid : source is own mac address !!\n");
+		netdev_err(priv->net_dev,
+			   "invalid : source is own mac address !!\n");
 		netdev_err(priv->net_dev,
 			   "eth_hdrernet->h_dest=%02X:%02X:%02X:%02X:%02X:%02X\n",
 			   eth_hdr->h_source[0], eth_hdr->h_source[1],
@@ -1831,7 +1833,8 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
 			if (!is_11b_rate(priv->reg.rate_set.body[i]))
 				break;
 
-			if ((priv->reg.rate_set.body[i] & RATE_MASK) >= TX_RATE_5M) {
+			if ((priv->reg.rate_set.body[i] & RATE_MASK) >=
+			    TX_RATE_5M) {
 				rate_octet[i] = priv->reg.rate_set.body[i] &
 						RATE_MASK;
 			} else {
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 3cffc8be6656..0e1486ccb901 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -1212,7 +1212,8 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 		iwe.u.mode = (capabilities & WLAN_CAPABILITY_ESS) ?
 			      IW_MODE_INFRA : IW_MODE_ADHOC;
 		current_ev = iwe_stream_add_event(info, current_ev,
-						  end_buf, &iwe, IW_EV_UINT_LEN);
+						  end_buf, &iwe,
+						  IW_EV_UINT_LEN);
 	}
 
 	/* Add frequency */
-- 
2.17.1


