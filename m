X-GM-THRID: 6883501515077582848
X-Received: by 2002:a9d:618c:: with SMTP id g12mr188862otk.322.1602697092567;
        Wed, 14 Oct 2020 10:38:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c38a:: with SMTP id t132ls279524oif.4.gmail; Wed, 14 Oct
 2020 10:38:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJygg7QId2mdhJbREw6wIj/SQQQs0sai2DwdGMgaCtsaM2MEHDODfOeF1PcT2cYiYvfc6hrZ
X-Received: by 2002:a54:4812:: with SMTP id j18mr313863oij.70.1602697091518;
        Wed, 14 Oct 2020 10:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602697091; cv=none;
        d=google.com; s=arc-20160816;
        b=H3XeJoe1/IiNyK/OYGRePMIxGmSyN36Ug16Uomv8m0kjsK0c0VqeTiEwCWo2vk/P3x
         P6jcvCpLmF3iEIZrRhlUNq7wOh/ESxDE6ahMAkIxT51Evf6davvvSKUb2Hke2ol8Orf8
         VhMjlrYR3OANKTuXFnV+6OiGoNeLQxm7VfbZ4BwhYsSofsOHSNraCEeUDkr7li9Ydm2L
         IELQLHuNi4nd7we6uxoXNvKNVdzxort6MAqgPgPcM7uz0bpNaG66+JCVYR8eeWIRCAwY
         c3PPr2QNygftZQQs9hVj5+JmiT9o5DtDokImrLSQYQYgHejx/0/7D1EXd9OsLv50FieK
         ENeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=/cmKtbg0XfjIL4kCGWTPR5P/fsrQtb6efZr+IBEgWHM=;
        b=YdpJPeuiA+2eQvH0SnQW2THmq7TWq1UwS2imKRN0zhdgGgJBmNZ9kumVMhWT0abpdF
         2Tjn2VbqQQLRe2hmWNG0mDnTms6Y0FH50ntbPPvLbSX9i7RLIfuzWvQ+NwRsBelDlv+0
         rzvCpJzgM3K1w+t/3z0uvtk3FuHMAlo6dJewIBo0bYKeTeNEprdeJi2jjk9uYjnOqVlL
         2Dcn1bY56m+CBOc0+StEYSpqHEItgTUhwG5fEl/5Ba56zuEK31Bp9tSpRfLAKT6kvDrB
         uNnRl219aruuuO2geTGrFxWBbmGmoZV4uFWvj4geiSEXhaRvYZdYrgyAd0orIjxfEFY3
         jsAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IssFJC7E;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w8si9715oig.2.2020.10.14.10.38.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 10:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IssFJC7E;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id e7so207932pfn.12
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2020 10:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=/cmKtbg0XfjIL4kCGWTPR5P/fsrQtb6efZr+IBEgWHM=;
        b=IssFJC7Eb6flVzLTXi08NfODW1vb7byhqJ0cooOrDM2Nh+Z80O1wvjQhHN+znYixnf
         gw851gdvTl80eksAscTSALeOcFybvba4Ef9ZZ0V03gCjR0WQHsrI7akLP5W0nVCYCX/H
         lMYzLVFNTnixgcP9NCrT6qaXXUQfSJ/5afkWKZd2V+2I4hYWgKcLzTEjNn2GI+vCaqyA
         XyuEQJ9H0m5e57lrQ2wE8NyReYBiFdfd9rzHV54s8UOsfq/3yq6+WWyR+/le7ArlLkdE
         XbUL3zvpStcXNGRw3VJreYMrkt2+kL5JcVcGYWDzCad9exqHUz4jpPAsmf0VcUofSFm3
         jO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=/cmKtbg0XfjIL4kCGWTPR5P/fsrQtb6efZr+IBEgWHM=;
        b=BYn3ZC30Yf8DzRW91NdxsTMxR8qjgGFuscHm8F7Mj1wG5c9cx/1Jz8R2F+CiYt3zbC
         MoUc6AFoPUmv9AZ5/p+Nrze02RW6CQtMZdj03VVQMRD9G0UJ3N1XPyqVxLezZU4lPcto
         eXAguM3AJejRZoSIZQR+rRqvoYfztmUHabLkWSF+/MZQuVK/dGpfO9hZSK400RAmPuMU
         IYBsbFxiQMUYeK7bDO22OEEdzhF7WypkRWgQhCQKT8PnHuNs7FF1+9WeJaiHFyDixnA7
         CTw3l0zqm3ZIDW/ATOJ/mwFO9Eim1S4poRvwZc4x0GfzTEB4oKaobHRqlpkiC0Keujv7
         sveQ==
X-Gm-Message-State: AOAM533TPIbu4D22aluEqdfYVRZbOX6k6R4PrHrFCzagpp6lKlk/DxDu
	vQmf6dZVdbsjK2sbOsFpueQ9WxqaYCvqrQ==
X-Received: by 2002:a63:6701:: with SMTP id b1mr78598pgc.59.1602697090763;
        Wed, 14 Oct 2020 10:38:10 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id y22sm220609pfr.62.2020.10.14.10.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 10:38:10 -0700 (PDT)
Date: Wed, 14 Oct 2020 23:08:05 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6655: rearrange lines exceeding 100 columns
Message-ID: <20201014173805.GA42788@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Rearrange lines that are longer than 100 columns width. Issue reported
by chckpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
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


