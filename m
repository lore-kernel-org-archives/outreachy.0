X-GM-THRID: 6804214248261025792
X-Received: by 2002:a19:8292:: with SMTP id e140mr10136368lfd.137.1584229585193;
        Sat, 14 Mar 2020 16:46:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls1253633ljg.5.gmail; Sat, 14 Mar
 2020 16:46:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtY193vxuJs14PYDL6wAPGJ98leNFAc2BizSXF5pqMjJp1ZupisMpK28SAO1+4g8wN12uDM
X-Received: by 2002:a2e:1653:: with SMTP id 19mr12889453ljw.112.1584229583667;
        Sat, 14 Mar 2020 16:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584229583; cv=none;
        d=google.com; s=arc-20160816;
        b=o9AusV/w1CgaIVPBkAEYIWSpTqpydCHLWnV9QF0Tr6WCVu/NgTTUz4CQVHAVJARukF
         Brr04stMx6J0qdLEloCwEk5Vw+0i7yD97XV2zjXZbCcFRbWPGzkhI1eVaObEOjqV5fWk
         iO656I/dtRab5koSVjcLIu6QTJhRL/gcRNKNBxSJYtgXWyMKIr71mMGtMj6c2IXTDJIZ
         Hm7IGL0hHdf4mwRsiS2VOIsD1PEc2y1UfAR6/uuksGFgNkZq7mwdzUaXNkrqnQnauoH6
         g79GHwr7negN/9umnM7lSsVYBNgX0lY/ZOWbf2MVmRkEgQhRlJ0u5sf2PXZjzPfORzn2
         wCJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:to:from:dkim-signature;
        bh=NuTFv3V7VrWCXwYD9iLsS0snKKnRbT3gICjVZRtzT1s=;
        b=sb9ztPTR4JGTCqYdjwgICkPoxcWy/UNYyBrccX4etBvHG8bfEMzyoMG9giYV9PbHWw
         /wK97fFtRpWhoEtsIzCU4XHSFWi6g2PXvwmhb0Bmrf3sBjiPLuH+uP3rwqQo3BcYrW+M
         jsz01wIuXGr/Xx2WmGg037cqLlV7FZJiQHal5a8rDfxp/qTVnEfxemPbfssm03m9aIjx
         5uAkmMHRCRbVeJpAgVmJ2WuzkoUoluLyVDquWYFEUt6uluaU+oDHCebpRmF36YTaiZ2K
         NTKjEzRFFBQHXFEzVXKc/bRRrlqhAvtxbri96vzV6M/RMPW8ssvG9yz/HWCPo99yi3KA
         VFUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=H1394YXN;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t3si656263lfq.5.2020.03.14.16.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 16:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=H1394YXN;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id 11so13758698wmo.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 16:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=NuTFv3V7VrWCXwYD9iLsS0snKKnRbT3gICjVZRtzT1s=;
        b=H1394YXNBJ/ZBL5kHMiJsBB240SG82tjBt7P2TJ6U8zPOpI52C+AiWqfji6lsA0YpT
         eD7g9AzDVzmyk1AWovJPtimZLIeTd+XvhsrCpr69ANgKreiQ3BPq2GpmnHOo96ccZQB5
         qsxhrlNRlEBQCQLHC35dD/lNkUitZ3Mv3rvXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=NuTFv3V7VrWCXwYD9iLsS0snKKnRbT3gICjVZRtzT1s=;
        b=eOfEmlR4+wnjGgMDgqn3KIPymhuUHMDm3W03LMjb9bGfNJYq7IF6DZ6YH14jvhHnlV
         q5PoN5KueXmYBg/9qcxotuWpj+ipo1KXu1P5/sfMwebR7mnOTEjZILBOoUZB6T8XuCqa
         NgaD4qHqV/CUitNMrSkDnkZ4NU37xT4fHH4tS5ofyNq2tigIvBZSaY/5PdxI2sQ2ADSa
         TT6avJoKm5HTKchDFf7ebTpGlOYjzD2nQ8c7wxsisfFNTRN7KsIt2O+9yoPRYr6190Nn
         xUP7WFK1DBzosAxTy9AX8p2szQkFK1i3csF4EFl9i8+EVBiM5o0FssgJpSWy59CNfLTQ
         nUIQ==
X-Gm-Message-State: ANhLgQ230Kpj1ufxX7hyI+6EcgfUbaFZpMwtOyUN94zgY2hr20uDhoxq
	iWRaME/oh8ZgYEX/h8MjtMDW6LzHA/db7w==
X-Received: by 2002:a05:600c:414e:: with SMTP id h14mr18191075wmm.179.1584229582765;
        Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id g3sm3775974wro.93.2020.03.14.16.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2020 16:46:22 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	manishc@marvell.com
Subject: [PATCH 2/2] staging: qlge: qlge_main: remove unused code
Date: Sun, 15 Mar 2020 00:46:08 +0100
Message-Id: <5511d6c142a8f045360af147528db8662f82787f.1584228792.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>
In-Reply-To: <cover.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>

Remove commented out lines. They are not used since 2009.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/qlge/qlge_main.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c712e1af90de..f997993f3c26 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -53,14 +53,10 @@ MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
 	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
-/* NETIF_MSG_TIMER |	*/
 	NETIF_MSG_IFDOWN |
 	NETIF_MSG_IFUP |
 	NETIF_MSG_RX_ERR |
 	NETIF_MSG_TX_ERR |
-/*  NETIF_MSG_TX_QUEUED | */
-/*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
-/* NETIF_MSG_PKTDATA | */
 	NETIF_MSG_HW | NETIF_MSG_WOL | 0;
 
 static int debug = -1;	/* defaults above */
-- 
2.17.1


