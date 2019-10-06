X-GM-THRID: 6744791185682857984
X-Received: by 2002:a25:ba47:: with SMTP id z7mr1962999ybj.204.1570394073698;
        Sun, 06 Oct 2019 13:34:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3dcc:: with SMTP id k195ls1379764ywa.6.gmail; Sun, 06
 Oct 2019 13:34:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwMkGWpDVh2n5W1KfS6jyqVZdfEeniU8e/foCGTgEd1CIxEzqPNWcLWfMnFblQZar6FYXLZ
X-Received: by 2002:a81:2282:: with SMTP id i124mr18984468ywi.433.1570394072557;
        Sun, 06 Oct 2019 13:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570394072; cv=none;
        d=google.com; s=arc-20160816;
        b=vsimyvk/8MBIAtjON7kFCOhlrcZx5utZf0Cp4ovCaS6A9TKwmpvWH+waRSXQ2mPZs6
         6hf3j5fd5dYhGMZnXA59jVUObaSS+IgBlBOi9oe21NABhwB7w7MyCKCcXT1msMA60vrY
         KGSVWQT3eao0LX65d8zQ/HjvafOec5vk9Aosfl/d14CbYuOaK/0fPM+9pTJdFVYDLpUh
         6k1FgWfnH+dYX8fRxLzVw/EW41KtUa47pueAzgTz+PPIYTKGWe4oFeOL/w+PRl/sSN1C
         tNb0xm1jkdS6QhIOmz/Xi2vcOufRnuAEkU99h51a1qTGmznr2BNjG8MwaDiRnkktlJF/
         vs8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2c8ZK7szNdI0lwDgcSx/BNDVw8gIfjfayd7qp8p7o20=;
        b=Dwp3ydKB05sRr4JcJdiJjJidnKNoEguK7PTadl0iRa9dokzXQsLcRkJK1wTuk6G0uv
         0bp1XgFoUSyadqzwWLowDJtqnGeC60xeNwOFgtoiocdjapt8Q8cHiZ5Y3TqBI6U4HriN
         KFKv1WeZ5QjFeXULeylO1qlaJ+Pgh/96lTX75PVca1L6vK6mvtPTOHgVHN8pVVvoWiBK
         GRAVdvgp+ew+ygS3pbs9NnRu6uXTjQPxm+GEEsqf/FB8CwggTpyNqR/yWZufcffwUMzF
         WCNnvaT9MkVxrOKOsU0tczUAgxA5A3FtGPv6hFoVHSMWQpSrHEp8TNXNgH80tH8cVN1Q
         0/6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s4tUadj3;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id l10si488898ybq.0.2019.10.06.13.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 13:34:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s4tUadj3;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id n7so16353707qtb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 13:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2c8ZK7szNdI0lwDgcSx/BNDVw8gIfjfayd7qp8p7o20=;
        b=s4tUadj3B648+EYQH1tuz/RvaBZDjoG0+kAO5HR4hlh8tSGsE+hWmx1nPDgr2D8bE6
         D1gQFKTsgg+l+nCYrMeZyw4ZmyY5eTGKX6aexG8nPEhg0fiFvb8UQHoMNOij6CnjnFwh
         4qTlMkRpSyeELHYaPoLC3k7+BeDLByBzeSm57DaO8sCsgKLv5get/gV6WqCfP1GxJ97K
         gu7M/7ttrXBPPwRkyQsHPMH1vloPrZ8nfu/R76Vq4asyz3bt+oH5cao6y4B8S0hm7GwC
         Orb8FKF2ykjp0ssRYSjh0p/rMk8r24ori7KfoDIL0PXeG8oNRMLUfZkKhllPtFAF6HWN
         1MUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2c8ZK7szNdI0lwDgcSx/BNDVw8gIfjfayd7qp8p7o20=;
        b=N7PhGOxSikcG5/TaLtYA+NrWPElRhtcMKyXpyvAOTEaqjBTVjGjCcup0ZcfB+V12+Z
         Ym5esYZ7sF92tcesnUuWV4MxJMvVY/Tsf5jJo8OE/k6y4Fabaji4IMZ+z9Me00/c0pJH
         enyKhVVTc+XvjIN20qDbt7lJFlLAAt9e+irfp6UdbQXZfAgA4U3UERAdT6USfIZD4GQT
         f40n9cfy/1Rt0Cgp52tKyWRgetWDXjEGLjuLxL3hknpSIxiHcN+eLt+9a1LHfBe6KeOV
         AxUX/XcswoIoEY5PEpC9E77OFoD/aEo0l5urgqMxHKxv2AR4VMFp1HFNbLKGn03ZrCT5
         joOg==
X-Gm-Message-State: APjAAAUjLFguDsDl7c89t2tckWTLWzvopldxa+zfaXJVvmu9Rty9/OfJ
	lSBiNyHn7rRZUHZ7OkMnB9vA7ogrX1gTLQ==
X-Received: by 2002:ac8:1289:: with SMTP id y9mr26464313qti.201.1570394071917;
        Sun, 06 Oct 2019 13:34:31 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id n125sm6690999qkn.129.2019.10.06.13.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 13:34:31 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: rtl8712: align block comments
Date: Sun,  6 Oct 2019 17:34:20 -0300
Message-Id: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up warnings of "Block comments should align the * on each line"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 84c4c8580f9a..70a4dcd4a1e5 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -115,8 +115,8 @@ void r8712_recv_indicatepkt(struct _adapter *adapter,
 	skb->protocol = eth_type_trans(skb, adapter->pnetdev);
 	netif_rx(skb);
 	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
-					* r8712_free_recvframe()
-					*/
+				      * r8712_free_recvframe()
+				      */
 	r8712_free_recvframe(recvframe, free_recv_queue);
 	return;
 _recv_indicatepkt_drop:
-- 
2.20.1


