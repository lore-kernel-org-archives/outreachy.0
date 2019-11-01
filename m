X-GM-THRID: 6754482318874771456
X-Received: by 2002:a5b:88e:: with SMTP id e14mr11417398ybq.208.1572650518803;
        Fri, 01 Nov 2019 16:21:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:6c89:: with SMTP id h131ls1325675ybc.16.gmail; Fri, 01
 Nov 2019 16:21:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwaXheP++DF+FyN9uGBPLzNnpsae6EIjzMX1UeQrDQZy+AXlsv653oIVIH7HAnVJ4iAt498
X-Received: by 2002:a25:2c0f:: with SMTP id s15mr12199419ybs.337.1572650517537;
        Fri, 01 Nov 2019 16:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650517; cv=none;
        d=google.com; s=arc-20160816;
        b=dFH2QBr5mfd4LYndtQmfRfe98+YGaU+Z2I/wHGSaf/pjFmqqJlZnHeeOPTcERvU91l
         0cNYlFMpUj/jDIefCG8AhtwZwKJMklqN1GJWcP0a/mP1CK+xrIC7NNV0v9pxRbAEWOMV
         OXeQh3TCNT9ZwpdQb4BnMmrhkOJnShQQkBdU8PvRtg7GJOwMdKUWyQ9Syv8llVI352Qu
         j7E76GE4NCMUVYrVu5bHbFIMP5wX2yCwfKmvdUllbe9QRYEDNGf0lpG+ZuSyNhoacv0j
         ErbS0Jer++NFbtBZtSMMND7gQPhsdUP22S5AmyY1Cz/rhv1ByXvhPBlK4dgRokKHSzO8
         MELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9vN2svrpAAxbHbfoFz31CGRp+IO7OUkVAGbmMj5Ltdc=;
        b=NG5bvndmOy4RGn2S2uExnmnIKO/3LZnrYU0goO+oijKIdDWnIxFgtdllItlbMMR3P4
         KxaIOjgWxog2F2TcZwb0+iW738TBrPsi98cCOORC2MrxBxdPBYRZDGZCUrBx7AfXXw0y
         CVeLUg5VLBj1NOew3m0tOmN0dklarZki9czYI2K7B7KVZ27QZythYCzyK5W46E0Bwta3
         Dg30ZlVgUSwj8+P0y3SDg/c9zAkZ3DL05A4kGOR6op8S40CU8kAcpYyogHdzL+1D695y
         JbcGyHfG3SM+sxQjFH1Ckqe3VpL3GFY9IUbaJVMgIhhpyHyZ7b1a7wXh9ZDIwtJgodyD
         jxPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=JcdjsjoD;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id m2si614139ybm.5.2019.11.01.16.21.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=JcdjsjoD;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa43.google.com with SMTP id c20so1675236vko.12
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9vN2svrpAAxbHbfoFz31CGRp+IO7OUkVAGbmMj5Ltdc=;
        b=JcdjsjoDQtVTABnLiuYgG3T3/SVhevsLGt1mYXYDJbhE3KxBIzxACE8VHpa7iLzxH6
         ZVvLrwGAymV0LXD9jZQjM7Ybh62OQ1b1B5DkyQ+82X4e72S+my0HU8Y6/vNC9AZE+kD2
         cwGfg6WjBflnylLuenxaGwnAlIIV1siAdb38ltyAyK+p6o8OU5oY/V2lOp9Ay/abgt4A
         NWyYFyGjowPUurSdyvqOMp+SySynh9Bl3USUJL0WCLPF5L2Sgs0fo0aL8RRif6I76ps2
         7LrHAh7lXuhcQv+vf7l+YZeJENvyIShA7U9OxtLy5mQLU6FkSRazj1Vlc4pXdmF/6c+J
         VV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9vN2svrpAAxbHbfoFz31CGRp+IO7OUkVAGbmMj5Ltdc=;
        b=R3lH31LBmP2GCsk+4LQjk7qOzK1vrZ0femZvGGcL1izn9uL/P3UKuSGMno034HxJpj
         RAbA3g4x9TfV1Y4BKcKW22cY2k9bTjBN000z0yNFLlm7yXzKKXz88BgesB/mUUrPxmWy
         plgZpqLC1kaMHGbKMQ795nGpXOd5JF0kvqetgkYUJBlm3nWD/DMsTEy4nfFCDBlzyPYy
         Obd5r+Be3gCz7KhIrm7fMb3PRBYKWYOH486AZCdHG4+vTY0lLBjgWoPESUl8fwVrS51O
         j4T1BrriVfaN1Ro6PCXaF6Aj3VQ0VcXJ9QuQL9yRu9YNgbkNn3CCj81F5iG/89s2T7/l
         USZw==
X-Gm-Message-State: APjAAAWB9K0JTFG82hMZsTF9XiUYtX/11XyD9CSRIg16jKcXJkRvcnPh
	faNWFrpytm9G+rUD+ohl2Qqang==
X-Received: by 2002:a1f:250b:: with SMTP id l11mr6835591vkl.10.1572650516817;
        Fri, 01 Nov 2019 16:21:56 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id b8sm2128030uae.17.2019.11.01.16.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:21:56 -0700 (PDT)
Date: Fri, 1 Nov 2019 23:21:54 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH v2 1/4] staging: vt6655: Fix parameter alignment issues
Message-ID: <df2a5f511870bd96abb9b111de83f3a1f1d82d70.1572649242.git.frank@generalsoftwareinc.com>
References: <cover.1572649242.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572649242.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

Fix alignment to match open parenthesis and comply in that way with the
preferred coding style for the linux kernel. Issue found by checkpatch.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/card.h        | 2 +-
 drivers/staging/vt6655/device_main.c | 2 +-
 drivers/staging/vt6655/rxtx.c        | 5 +++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 887c1692e05b..25867cb9d13d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -45,7 +45,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
 void CARDvSetLoopbackMode(struct vnt_private *priv,
-			   unsigned short wLoopbackMode);
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 082302944c37..2b93bea1f574 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -373,7 +373,7 @@ static void device_init_registers(struct vnt_private *priv)
 	priv->bRadioOff = false;
 
 	priv->byRadioCtl = SROMbyReadEmbedded(priv->PortOffset,
-						 EEP_OFS_RADIOCTL);
+					      EEP_OFS_RADIOCTL);
 	priv->bHWRadioOff = false;
 
 	if (priv->byRadioCtl & EEP_RADIOCTL_ENABLE) {
diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index a14908895b9e..37fcc42ed000 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1289,7 +1289,7 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
 
 	current_rate = rate->hw_value;
 	if (priv->wCurrentRate != current_rate &&
-			!(priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
+	    !(priv->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL)) {
 		priv->wCurrentRate = current_rate;
 
 		RFbSetPower(priv, priv->wCurrentRate,
@@ -1396,7 +1396,8 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
 			vnt_fill_txkey(hdr, tx_buffer_head->tx_key,
-				tx_key, skb, tx_body_size, td_info->mic_hdr);
+				       tx_key, skb, tx_body_size,
+				       td_info->mic_hdr);
 	}
 
 	return 0;
-- 
2.17.1


