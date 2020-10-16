X-GM-THRID: 6883501515077582848
X-Received: by 2002:aca:d6d4:: with SMTP id n203mr2930556oig.65.1602863071204;
        Fri, 16 Oct 2020 08:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls725788oia.6.gmail; Fri, 16 Oct
 2020 08:44:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx3Mbx88uSFhfYLJP7KcGgtuIo43x/HcZyul7dqCwv3p+iyn9Gh2f2wgPZvPUyiLT6ET4C+
X-Received: by 2002:aca:31c6:: with SMTP id x189mr2986899oix.36.1602863070097;
        Fri, 16 Oct 2020 08:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602863070; cv=none;
        d=google.com; s=arc-20160816;
        b=kUJr5iEAsoVpsiMRex6wAlapXT+oK7QQq0Wzd8AM4KSfgaYV/ic3UzhKZo5fjPKAa8
         hIp+A2SmpHLRBkMMEx9/Shns0nCBhBeQ2Z5/1FAYM9PItxCN6oCSTIN9i47lmHBur63n
         CNlAspvdCpEd1kcZH3dqQf5gkdggSrbXlpkPMfLOlzZ+e+cGFWriiF4NCfbomKZJuR34
         P71kZvqWA4h3d/YGyMbdNeid3GELAGSDBSLa0wJL/Mil11RO+hmdpLKShbhmqLIs1bLm
         /uwF/hSXJmWbPPcnVlQMoo1BjpkPeqW3oeiqkmmW4JsJiYrbqFMn/qeEihWokeHu7ptj
         XocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=l4tJziBHcHKC+27Q0j7pt6EYpQHs9uxo/FG4Axree4E=;
        b=vocCO4ehslq+FtE1kI4xCAgjmMxNZviIiNEu/7n6IwiNQn1dwdc9oauGarsatEj8eT
         g8Krx2EjKNSNzyoCo7ywsj70mLqDjVFFWt26e0g6f9PdzMpLxNpt28HBg/MsUB9MqV04
         +sTwgY3UdybYwJHWNZg9DdSrnFAA1gHdHBkV90U7sCKWEvRRCsO2qMqVKQ0fgt0jJyZW
         3Rgy1k7ZsZwFkcVJHLzJQFcvp9a813fY9o4hbsNbdyFjFRuKdNEUiLjYfENiUIXqK47K
         xhP5iF910oqJymxcUyG+QDeCJ38eji5cAggrlqLqVTS1yOOrH1/W4vS5V15hM0vnwhaw
         wi7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjuIKw6k;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q10si220030oov.2.2020.10.16.08.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 08:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gjuIKw6k;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id az3so1593326pjb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 08:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=l4tJziBHcHKC+27Q0j7pt6EYpQHs9uxo/FG4Axree4E=;
        b=gjuIKw6kYbIzqhgRdr/ww4cLbvP8azh52t7ermEtyI1Y2TgHjfB3JG4hbL2TRGpT1/
         VVgYXaw3zMWlamG1sBTAsWALsASysx9MnPUY09z3nnV99wP7Zf06rTij6D+K36j9pdxr
         N7yLkh1KXnLS4LJPkg5FqxCVu7Jne0o5Gvv5HlS3eLuy5T/QyBF3bKaLE/5eojR82oF0
         iWSU9vicWso234YFrv+BLTQbcFAuEBgorvhLVkFC4u820woY7S0N7JEmp73PbNvxkoUb
         1DFgBLvK6U/0PoyOJxyfil8yFclTKROUEz4zM3Nk8LqpyI2NDVs6JwCeIbsTd4yK9N8U
         zHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=l4tJziBHcHKC+27Q0j7pt6EYpQHs9uxo/FG4Axree4E=;
        b=SoPeKBMGFPH4E2G4XpoBY7qCYxoK/sYjBgGfEqY2tKuPW3H645zw1VYVv2xBjHTpd5
         FLG6WL6xrzqvSZEdBoVNda36Nsxu+FqumLMG55xRwhT1qhzissK1idghDYyp48iLSpQk
         RZs9kZOfhC7L15Oq1IN3VkgCzljathUMFpGCjFj6bqYInaQv+ZugnBoqvDyJ+5PXUlQQ
         ky0KlEo4Y75pYkncrqyhoCHtJq9CyCc5Z1vMYeLrpFWQqp/nyBVN8h/6ELFcAJL7Y10t
         Fk9s7as3Rig9u/Wtok5BZHd2K/rFoVmfBxcjCm0wqI6vneTlOY0HKXJcxObdIerMEQxP
         GymA==
X-Gm-Message-State: AOAM532kMPjW93s/zaJB6acKLBeFqMxaY9oZBpCuTK0Qq0LMdp8LR2uC
	/cbrymXIEiw8QuOuH15UbQOsSiN+Q5hcDQ==
X-Received: by 2002:a17:90a:5885:: with SMTP id j5mr4880778pji.117.1602863069291;
        Fri, 16 Oct 2020 08:44:29 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id w205sm3177442pfc.78.2020.10.16.08.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 08:44:28 -0700 (PDT)
Date: Fri, 16 Oct 2020 21:14:23 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH v3] staging: vt6655: rearrange lines exceeding 100 columns
Message-ID: <20201016154423.GA17210@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Rearrange lines that are longer than 100 columns in width. Issue reported
by chckpatch script. Also remove unnecessary pair of braces for single
line instruction post if condition.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - Update patch description to also include information about change done
     as part of patch v1 change.
Changes since v1:
   - Removed unnecessary {} for the single line statement post if
     condition.
   - Suggested by Julia.

 drivers/staging/vt6655/device_main.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 09ab6d6f2429..9c7d70ebb405 100644
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
@@ -1075,10 +1078,10 @@ static void vnt_interrupt_process(struct vnt_private *priv)
 
 			if ((priv->op_mode == NL80211_IFTYPE_AP ||
 			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
-			    priv->vif->bss_conf.enable_beacon) {
+			    priv->vif->bss_conf.enable_beacon)
 				MACvOneShotTimer1MicroSec(priv,
-							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
-			}
+							  (priv->vif->bss_conf.beacon_int -
+							   MAKE_BEACON_RESERVED) << 10);
 
 			/* TODO: adhoc PS mode */
 		}
-- 
2.25.1


