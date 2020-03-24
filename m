X-GM-THRID: 6807590102219358208
X-Received: by 2002:a63:fc52:: with SMTP id r18mr23786986pgk.96.1585015585493;
        Mon, 23 Mar 2020 19:06:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls2983205plj.0.gmail; Mon, 23
 Mar 2020 19:06:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vslU7qGohaY83s2RnZoIglOkzMMwUapf5/ErOdDjYNEXSosqH4WgfvfBjGpscIKt6J2IV5K
X-Received: by 2002:a17:90a:ad45:: with SMTP id w5mr2463658pjv.179.1585015583730;
        Mon, 23 Mar 2020 19:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585015583; cv=none;
        d=google.com; s=arc-20160816;
        b=0yHP24EKFLxVNJNwnt8eEBqHxP2FJqoP/kV7zUGT8jJXMi54vI6KXdFmZwgGeidJzs
         0eYSptiD5R7DzlVvg56M5TqxNFSvy7vtsjXBFMEnNgcXZgi3cIDL7Y2FGzRwHBb+nmGo
         6LRNWgPIit7o5WXYO/20RFaFQeJjAhfQ8zsrQsJY2bB4V/bNRxSACxuaCW+/n/2bjR/5
         w4xWarY8xeAMEARpCClz9oMU8/csnE5JkL3fybK9dM3K9LdfGH4eghtQ9jtbzHWNsETm
         dNgAC5p9ou052MuUC325D2Eh+BBcqYPYaCvcoMiuFZGcQ55pl37ueotFPlM7WHJKnZV9
         Tg5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7/UkINl6/x/Py8RXNOzg53SeihqoeHjXkSRM9yJezXM=;
        b=MiaMOTK2zEhWQLj8v0yjC2ND0J8t96cpSz7UNqUBd3frgnhvwRlpjCHsFUGKAW8gkg
         h5z4IEgE5Kij2FbLLJK9+7d1p5M55ycWdrlABqQq94O7TrdoMOug8c8bBMktKG8xqxfS
         mGKqJCjHEG1phM0OwVnH6e8t3raTVu0ae8JmL//mID9cwpLNqVrwPOuuvok/yZq32l5p
         rUlWg4Hzz02oXqY59SkbWn/PvceaKiERIcz8dH/IdGLwyk+jB9Z60bzvIUBEU8nV4w3l
         H8guzszH+2XSVv/Vh9Sv8ejSPSy+7WNRF5A3uE52Q8WULErjmBN6LGdCSug+bONqZjpt
         V9ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNSA8SPC;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y1si31835pjv.2.2020.03.23.19.06.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 19:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNSA8SPC;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id m15so712429pje.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 19:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7/UkINl6/x/Py8RXNOzg53SeihqoeHjXkSRM9yJezXM=;
        b=lNSA8SPCnJFNog4S99rNtBTvSGnluTnoL+7TAHT2VdoRnBYEPQw1qbE5q3LQcRdhFb
         pczGXRDENNJQKH5j92DDXc4Bwn5aWB7WqIEnJ4HTUS+e5fcVDL8oo+B4nsrSxtki9nP3
         rjk8pRW26Ko5zj9iRzDtFE0w8MYzEZyOWTuCZ11RYm1TDE8rr/cgZqQHMQxIJ+e0jm9O
         jUjeWpvTn0A3DoMxY7zfcL+4tM9o7HSoLyjRvAoFJmuGneh7rILeuQdmG/EI8QY6IMc1
         KP39x3SJrFguOrajrt8keIQZQTKCuR62f+7jLoxSabWeFwy7ehJv4J/NUb95Wgt3Gzut
         c4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7/UkINl6/x/Py8RXNOzg53SeihqoeHjXkSRM9yJezXM=;
        b=Sv+KEWoDzKJ7LbsHhIAE3UXRIbTbiGhKKrPWOsXrZmbSgmJkwgNCwkbub8XyyS8sDW
         mz+mES/yhw8/2icffYjWo2e7zjnJv5C2xkXcJrpwU0Jy7kt/7dzslMsZK9KMImb/oodZ
         P3sUYw4b9yCTGjr4gm04fiRILwLSRgJWoAZIHbOjaYvJVdZG1QotX+kIlO17nCC0nLgN
         YtK/6VVoON1P/k1qj/HsvpKqBwFi/MWbEkAnKNt7AmE2KPNiW6PSNQKO/HQp1Ye0FNsa
         nsUfcCkmken0anmNs3RnOHkvPXKpk3Vhp7x4lSuMtXmIHMcpMmfr2e3iZ5kGIuu8bjFt
         4RAw==
X-Gm-Message-State: ANhLgQ1fidAVaV1LgVhyALAgjy2LW5xBHPf7nr2c1EaxkxBnk7VBTJv3
	ph9Imk4cAB3haiyc/zOutIfWayzNZpatEw==
X-Received: by 2002:a17:90a:fb41:: with SMTP id iq1mr2422564pjb.89.1585015583351;
        Mon, 23 Mar 2020 19:06:23 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id i20sm6667024pfd.89.2020.03.23.19.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 19:06:22 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH] staging: vt6655: Break up function call with long line.
Date: Mon, 23 Mar 2020 19:06:19 -0700
Message-Id: <20200324020619.73702-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update matches style found elsewhere in file.
Issue found by checkpatch: line over 80 characters.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 0442f71494b2..b28f3b28849b 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -443,7 +443,10 @@ static bool device_init_rings(struct vnt_private *priv)
 
 	/*allocate all RD/TD rings a single pool*/
 	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
-				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
+				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc)
+				      + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc)
+				      + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc)
+				      + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
 				      &priv->pool_dma, GFP_ATOMIC);
 	if (!vir_pool) {
 		dev_err(&priv->pcid->dev, "allocate desc dma memory failed\n");
-- 
2.24.1


