X-GM-THRID: 6883501515077582848
X-Received: by 2002:a4a:ea4b:: with SMTP id j11mr4015744ooe.56.1602690088967;
        Wed, 14 Oct 2020 08:41:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls439129oic.7.gmail; Wed, 14
 Oct 2020 08:41:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyICnjWtH1CUkkQzYieW9hLIia9nU0rvS5nQ019DzVP5lQaSLsM0pyAwW8pyNvScaKooj2Y
X-Received: by 2002:a05:6808:18a:: with SMTP id w10mr19643oic.85.1602690087760;
        Wed, 14 Oct 2020 08:41:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602690087; cv=none;
        d=google.com; s=arc-20160816;
        b=WnW00c+3ZBEbsU771D9RxY51hVPF/ymU+xZg/DV7ssK24kTA3apZA6dp7m7THUSLV9
         0+BqjIqPVlqVZzd161V2xHECx3js5i62+zmRRFfQ6CYaQ0/ytBBhBEFazJIRCbUriTb6
         qSNd5RflZ8qhOXGs1ku5stmqxlKW+eTzpbLwNFfmYyTTcfHYki179eZef5lkPN3nQoS1
         PEAFS3vITUsBayloVc6+6ftqhdr2DtEFwTeePbMxVPBOblk9fO25C+KbHDr5S6bG4pxp
         WOkuFb0KXAKQXyEOL/GZ91qMQ2QXQgP7/3nTMlUgoaWta3+xdfI5dfUG4Zv//pImZgcN
         1nXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+UCaeIPmCUkKYQuXi3BuYOVZb6kFmi84XYhehXD+jiY=;
        b=SNM+tgnRtsK1q3JskrlV5X5SArvYvKv+IxeE4pbK4qII4C4rkpXanNMcVSmKVUN2l+
         +SKPA3mbrsLIfCYjOnDWHHDcXs9/bUqQcTQ7SF510icBKPuAmF1ieVNe/H0zsUglzZOC
         toPpzX8aAk+9KPl3EOgSEI6BiCecqAPCmFeOzwph6JLPNM4lQXCm9KgkMzj7lU/trfM6
         G04Ea8d4e3J0+N1LcbBqKB0Yo4zbCXZuY+WayUFAjG3p1VLwoSHPr676R9erUt6ULQuy
         +2mDRkOPBYbDki9nIbY/BwQInPwLJ0CN6dkvVBmli5DeZkdO/tkq+zGeyaaw8oAIfxyH
         HTuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/u9jLh8";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n7si248467oij.0.2020.10.14.08.41.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 08:41:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/u9jLh8";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r10so2217999pgb.10
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 08:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=+UCaeIPmCUkKYQuXi3BuYOVZb6kFmi84XYhehXD+jiY=;
        b=I/u9jLh8HMa+E0e4NuHRf0YzbO3v4LCEEvNQ1yiRz4TBtNsoNZKC6qhzRad5Wu+hMw
         tB3vMqTTSus8ETfzqNGeNPqEbkFBiV11iwvWCpZXOIUYfqH5nUnF92hN84oO4G6AUfGi
         Qed1PsWLEQh9bFscDssQOHaDxZSodAJnFQgPltxNHCBvePd+fUbYIc0eqkWaVKM0ZzBj
         6+NDBOsgmE1TYet/Y2FZgcSVCkSKI1wI3tqVP2pKj50eA+/OK4bjtykKM7tbeSovoG83
         WnG5Ac3cNh+Lo17jHqlMRRS6vXcKQCsKeRE+LzN/5VApx5Ju4MZpGjYVF6PaVqbcL7GY
         DUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=+UCaeIPmCUkKYQuXi3BuYOVZb6kFmi84XYhehXD+jiY=;
        b=hsBGKk18On7OBBs+9mBQIJZeYS2yuFbSiSn14LkbdoQcsV5JgdtHUBCCm+lQXE0z7K
         10+oznXpm8BCkOkHnaPey+WjY3la09nBMb5pUjzPvWJoqn8QO1cRTMOozSdFlI4kDfx7
         UVy7eZ+oVvWKpH74gcGCo81NcNE8FFRz3sZSXPEGyVdr1K+THdksyfB3h7lE+vttoN7w
         08o5Zy/icnD3AJNXR/wNSmYqXw1mnC1NN1sCCMlf47SuMQwjh9Bc2oHfueBBgWI+DyLZ
         oN2msp8/kYt9T7XdIRPSXOoeg5GRDZ50fUTMLw6eb9cjiDjTi238K+ZRWbfv5MHe8keg
         RvXA==
X-Gm-Message-State: AOAM530MK9iYQIHs+9DBthCIg3oJ97KfDWy9qQk8r0Q+vCR90q592BiX
	baLzTfp63MOXBiLxWLmqby+9X/RUlz648A==
X-Received: by 2002:a62:1414:0:b029:152:44af:42e with SMTP id 20-20020a6214140000b029015244af042emr4664353pfu.66.1602690086964;
        Wed, 14 Oct 2020 08:41:26 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id f12sm25631pju.18.2020.10.14.08.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 08:41:26 -0700 (PDT)
Date: Wed, 14 Oct 2020 21:11:21 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH] staging: vt6655: rearrange lines exceeding 100 columns
Message-ID: <20201014154121.GA23584@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Rearrange lines that are longer than 100 columns width. Issue reported
by chckpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---

 drivers/staging/vt6655/device_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 09ab6d6f2429..4fc90b111f9d 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -461,7 +461,10 @@ static bool device_init_rings(struct vnt_private *priv)
 		priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc);
 
 	priv->tx0_bufs = dma_alloc_coherent(&priv->pcid->dev,
-					    priv->opts.tx_descs[0] * PKT_BUF_SZ + priv->opts.tx_descs[1] * PKT_BUF_SZ + CB_BEACON_BUF_SIZE + CB_MAX_BUF_SIZE,
+					    priv->opts.tx_descs[0] * PKT_BUF_SZ +
+					    priv->opts.tx_descs[1] * PKT_BUF_SZ +
+					    CB_BEACON_BUF_SIZE +
+					    CB_MAX_BUF_SIZE,
 					    &priv->tx_bufs_dma0, GFP_ATOMIC);
 	if (!priv->tx0_bufs) {
 		dev_err(&priv->pcid->dev, "allocate buf dma memory failed\n");
@@ -1077,7 +1080,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
 			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
 			    priv->vif->bss_conf.enable_beacon) {
 				MACvOneShotTimer1MicroSec(priv,
-							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
+							  (priv->vif->bss_conf.beacon_int -
+							   MAKE_BEACON_RESERVED) << 10);
 			}
 
 			/* TODO: adhoc PS mode */
-- 
2.25.1


