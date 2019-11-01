X-GM-THRID: 6754188364413403136
X-Received: by 2002:a0d:f8c6:: with SMTP id i189mr6471172ywf.411.1572582063084;
        Thu, 31 Oct 2019 21:21:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls765523ywc.14.gmail; Thu, 31 Oct
 2019 21:21:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzcdFOdPi7wIrzVwLE5U4e5HfjieIrT965UtgBZJtzzrW0ev0FQzk8uzL8JlxbPyAqBaMTO
X-Received: by 2002:a81:78d1:: with SMTP id t200mr7240560ywc.324.1572582061593;
        Thu, 31 Oct 2019 21:21:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572582061; cv=none;
        d=google.com; s=arc-20160816;
        b=IUEdkZQeAnAUJH2YUGHniHTcnKnpXn0PS9iFdutDhdTwsLXBLfwvRQQsrhuYKHcA4s
         wGMoJuaaLazzQe+q1UjheVJWmlTYfYnt7rGmXye70J0RrVM+waMZa/VcUaMBSL/rN2yn
         5wDVgKoFGsdZEWdyrOcXM3UCUuXper3MF5sHQGGqQLy85/cZyKZUVz6KB3bIPQODQPTD
         YZSGpOisQm9S0hWAjC4/+x21a1mPgp9cLS+4J8mNrki1j7L/syFosF999kAdlojLijWG
         8sWWmd7ewjH0KhxzzDG/GoM2hKMGCnJG31cvK+CI/0lenaUa79HbKW97ZqweRGwbwLxl
         sfUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JDknLcWr1Z9gtyhX6xXRP4ezyXlVT6EjC617X+B6eXI=;
        b=EXvQuBU7OHsOAIVIQ4awywUQjo5EDiO/jo1BgARu7Cy/3CzMne9JzmgSEr9b346UUB
         HAfFeXIth55nzkv9i18NJae1G22XYvRVW69GoPQvdjPN1LeKEWj5RTPjkFlfKpQ9CA78
         M57IFcCSgGx8L5mpbegJ3mqY4zVTV6yvlj5TEuEpd9bEux3T/DPb2z121FOYcPZIvZdO
         QQxF7WLRbTXGOw9PohdrNV+MDfT1PpSISrNeOxlX96wmgpJHtbRBbk6AnNTghGwHPz+9
         QoD3JJ7dH2N5db2bU+i0h7CalkX/D9uCa7+2ocwdBPRQK17ukbhOvC6mbrlk/4zDMQ+D
         zIKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=VwBJGEsn;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id m2si417353ybm.5.2019.10.31.21.21.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=VwBJGEsn;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa43.google.com with SMTP id 70so1920712vkz.8
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 21:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JDknLcWr1Z9gtyhX6xXRP4ezyXlVT6EjC617X+B6eXI=;
        b=VwBJGEsnSNGrtHSrb7FWzqqs4sDEHflRpELOzVj4VqNuVvjB5ICIjMRGm2BFPW2l4X
         Zyrj1pPt9qu0Zx8ae9YztPfxpVaj62gIUhaP6hX6MuwFLYJkQ2qu1S/LiT4x0hI9rE+r
         otnZ50Y5xT+c7EZmCHyRXtvr12VvdJZJBoHMRIHk+f31/bWL4EuBboH8pq39j0dkPyvQ
         XQrmkIrJKnN++m4dU6F3uSNquxQ8jz+LaaBOE2Ns9oC1Pjt2MndT+J3Yw7tdy+hjJ41X
         5jBmkYjIDgoXHAGwN1K5SERqmu1omkoXQPKK1IgchRb3gFh5jFghi9+bpy6R/tszmQEb
         hKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JDknLcWr1Z9gtyhX6xXRP4ezyXlVT6EjC617X+B6eXI=;
        b=oA2LWf0+4DxtS/iAAFxnMTcVMf3dX4/zc+fdMXWDd/f/PSDgzXu8ovrL7QsMbEw8Uk
         mVSoDtPLwoySlRu0PLUk5smxrCutV72C7C13CIGwy/i+dhxO2e2WyE8h20/KMgGTdhtg
         7XV1hHcDACuXwG35vD2cupLA0cGpf4HOSornpBjaZSa+ZYNviQMlj7kRFHak2ER3Pxfy
         pXfr6y7IF5leWcZEiyF2hikpLHd1W8E4ZNM5WiAEpsvaQUpB3YRJ7rLkgzcm+KQRrHnu
         Uai+lJ3RaKk1wjAxXRHuM4G1CcrOWx2xTd3tPm4i1e2RPkn1K1T122OXpQo2uuAwlBqH
         8Q3g==
X-Gm-Message-State: APjAAAWmfabF71EhuA6lD+XBykFG+Ncee4FuHkD169qMFjUeNF/Q7xz7
	Ev/cWt5A8n6E9JWibYVJG8Izvg==
X-Received: by 2002:a1f:a357:: with SMTP id m84mr4377370vke.55.1572582060959;
        Thu, 31 Oct 2019 21:21:00 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id f20sm1893813vkf.0.2019.10.31.21.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:21:00 -0700 (PDT)
Date: Fri, 1 Nov 2019 04:20:57 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH 1/3] staging: vt6655: Fix parameters alignment issues
Message-ID: <5a5fc17ab55b41928df8c6097ca57ad4ae4fbfed.1572581578.git.frank@generalsoftwareinc.com>
References: <cover.1572581578.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572581578.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/vt6655/card.h        | 2 +-
 drivers/staging/vt6655/device_main.c | 8 +++++---
 drivers/staging/vt6655/rxtx.c        | 5 +++--
 3 files changed, 9 insertions(+), 6 deletions(-)

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
index 082302944c37..ab7b690c622d 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -133,7 +133,8 @@ static int device_init_td1_ring(struct vnt_private *priv);
 static int  device_rx_srv(struct vnt_private *priv, unsigned int idx);
 static int  device_tx_srv(struct vnt_private *priv, unsigned int idx);
 static bool device_alloc_rx_buf(struct vnt_private *, struct vnt_rx_desc *);
-static void device_free_rx_buf(struct vnt_private *priv, struct vnt_rx_desc *rd);
+static void device_free_rx_buf(struct vnt_private *priv,
+			       struct vnt_rx_desc *rd);
 static void device_init_registers(struct vnt_private *priv);
 static void device_free_tx_buf(struct vnt_private *, struct vnt_tx_desc *);
 static void device_free_td0_ring(struct vnt_private *priv);
@@ -295,7 +296,8 @@ static void device_init_registers(struct vnt_private *priv)
 	/* Get Desire Power Value */
 	priv->byCurPwr = 0xFF;
 	priv->byCCKPwr = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_CCK);
-	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset, EEP_OFS_PWR_OFDMG);
+	priv->byOFDMPwrG = SROMbyReadEmbedded(priv->PortOffset,
+					      EEP_OFS_PWR_OFDMG);
 
 	/* Load power Table */
 	for (ii = 0; ii < CB_MAX_CHANNEL_24G; ii++) {
@@ -373,7 +375,7 @@ static void device_init_registers(struct vnt_private *priv)
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


