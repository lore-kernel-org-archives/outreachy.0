X-GM-THRID: 6808044843867045888
X-Received: by 2002:a05:6122:330:: with SMTP id d16mr1201860vko.28.1585121468807;
        Wed, 25 Mar 2020 00:31:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls65327vkg.7.gmail; Wed, 25 Mar
 2020 00:31:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt8jJhC5/Ufil90UFQatk1YOpoguynfMR4K7DZU/E2CYSyRPx50GUem0EJFX8Gpq36UJeEV
X-Received: by 2002:a1f:4342:: with SMTP id q63mr1161999vka.42.1585121467670;
        Wed, 25 Mar 2020 00:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121467; cv=none;
        d=google.com; s=arc-20160816;
        b=Lhwh6k5AprJ2nDAW47UZHNVNSs+hzN9/ZfEgca1vGZmFSeHBsbsdR6xtvLGCc24hQH
         UX/8rUDjNlS4kMQSk5zoej4UliSB3DHHm64JPnyLd8faP5gXIu66hWrfyNHQF5aZsGFR
         1+UbCZnc4gi47cZrYXq7dNifGx7nuv+QEL4hMs9rD6T6+t32+I14m1ndyXWvlcFIjGr3
         D/32SUPOJj0oqlIOcUAd8PLik4XytlZYqcObLQe5yBv26JPIAQtW/5/TXi9T1tuUQCw7
         OE43w7GMMSurgHJTaXXWWlnlDWXacqyQjKT5GxaYhWKkOTQ/BadI/ZHCpbqY/AQli5Mi
         Y5pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FkITGYiMp/Ud5vejI3iudlYXDVbo/UA8QsPdPskFTB4=;
        b=OqV8n/QvBsBpjFsOpeRUrMnGFhHZvB14OoBbWXP92520WMHUoi8BWWbgdzgPdHdnXa
         j4KXCoZcC0WTeVnz+c2m78Jl/vbG/idgCHwWG0pzCu6CO32zttNkjvKhrIi7wddV0j+Z
         itRVGo9rv//+Fhb+Ia3KipjNEboisFND2ZMHnxkwyZJh9M0+h4bZcCFgUPPgMVi+k2+L
         unJkvlEn/XQ6WRDnm0Qf/4o7JQKC8GgQ44n1+ZM3e3itDiaFFzBRcY4OG9287Aj2Hj75
         WsL7GISwjB91A9xObW1oSeqVVXczE8Lr2fafy09axbY/KdMpxScSS38AQ69FimyhRNuH
         8g8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RpQ5L+ky;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k6si589068vso.1.2020.03.25.00.31.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RpQ5L+ky;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id a23so487886plm.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FkITGYiMp/Ud5vejI3iudlYXDVbo/UA8QsPdPskFTB4=;
        b=RpQ5L+ky5S10YoF53vBEjHlgJPGldBi1bUL9/Ty6fvZVT6CBBeTrGf1D5XoH6x5QwW
         iiM+SjJCui4BookZw9FImMnHa2vtlffocxb5xgBBaA7rTEjfEBCzmKrArHM1kMumHEQ/
         olveLqIacPxg/kUsyi6QDU/cbmUOj/5ENN3kfdhMlZ1oksnnXt3hq1wefIMgLL/bP8zs
         ycqV0sVlkpckd998AkRt8oaWRk5ykKnMSYIqiubV+wOdD1ZWnod6X9zhKlHP1AYwODCA
         qTvra4SsmXxcvSJOvKhrx0bKjazrYpRG+p7U9+G/gv5yz5XbQJpanZmXh2UZSuEaFHBL
         H/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FkITGYiMp/Ud5vejI3iudlYXDVbo/UA8QsPdPskFTB4=;
        b=awzns8foVoHCV/+wiBA+pLfJqGrI6RuKZpD6ukewjmyDPvSu8XAny7SYX0LJRCMViU
         Frrf0nJqZSMGdjdNhBXST5TEYId49PkolsV8kQrYsfqZjS2w/yR4linR3sT4uw+VEFiM
         rs2sQdTraN5xcPImUc5HFIshslTX88/VbT9cIuu0GG+nzBUtxUq2qjQVjfMv3JI3EARd
         wK1EO6yPdpnMNTh4+P+cBacD+zhhc//F6E1kgo8HgS/CEqlCA9Z2nok1S8ueYjjtCHDz
         rgxUgG1fPApFRnQtFvH9/lYQwcuEfKAi0NDo2Z5ex8TFoSMKDzW94hI0SissNZpwI2/P
         MTeQ==
X-Gm-Message-State: ANhLgQ0K1PM43TqR1ML0xxWP211aMGMYCIzPZUAGMz93vptnyS6A+tgo
	OCYguQ4jMmgha5xuzilFfj55TEkTO9h11w==
X-Received: by 2002:a17:90a:b391:: with SMTP id e17mr2257068pjr.55.1585121466318;
        Wed, 25 Mar 2020 00:31:06 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:05 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 1/6] staging: hp100: Properly indent the multiline comment
Date: Wed, 25 Mar 2020 12:59:00 +0530
Message-Id: <20200325072905.29066-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Shifted the end of multiline comment "*/" to next line.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 67320292d254..d421b2978ae6 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -262,7 +262,9 @@ static void hp100_RegisterDump(struct net_device *dev);
  * This work *only* for memory fragments part of lp->page_vaddr,
  * because it was properly DMA allocated via pci_alloc_consistent(),
  * so we just need to "retrieve" the original mapping to bus/phys/dma
- * address - Jean II */
+ * address - Jean II
+ */
+
 static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)
 {
 	struct hp100_private *lp = netdev_priv(dev);
-- 
2.17.1


