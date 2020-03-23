X-GM-THRID: 6807276568426053632
X-Received: by 2002:a05:6a00:41:: with SMTP id i1mr23538389pfk.275.1584942597912;
        Sun, 22 Mar 2020 22:49:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:cf0b:: with SMTP id j11ls1103723pgg.10.gmail; Sun, 22
 Mar 2020 22:49:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtLfadf2lwSwIsqQ9rIulxYXpRU3g2FC989yA+wZuq4sBp5sK/mB7EPVu8o2ZmiIkIO6iR9
X-Received: by 2002:a62:1648:: with SMTP id 69mr23423040pfw.14.1584942596427;
        Sun, 22 Mar 2020 22:49:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584942596; cv=none;
        d=google.com; s=arc-20160816;
        b=IuMDDjDmotGiKU1boCcTJPcG3N7muCojmm0BnmP46dHSxfQ4zto40uI9QTAAImrBqj
         30FssD5oYGcS7dKic23kWAqABU2SwunL4DvIkrVCXI81PKNZDSuqFu942otWKcLJ2y6o
         jPyliF+qkcjjICxc9d/Bac2aGfpiVUGxdVv7b0o9JMiZGEMvktVU1/tdvKX6X32ooJpz
         qd8Emc5T/yUuNP4Wj5K8aAikURpsNc29m5EVt5AHUx+5HyLibVApwxTFbpT+SRoe1XKc
         ZFCm5/qivQe9/L4IooSzXnbV5UrElD57xnT3ctW1OXbbXhM8csHRV3OF+SbZQXkXuXQY
         fqFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=pKcGYzRiGqtuNiNSSPbkBXjIxb636KilCxVCOA6MenyqCeLRCZgps7SBTTHhnmsogS
         P+c2P3yZjJAnzYGhH+lvhVOlm5DjdIAaWt/69BmYti0LdOb1KL7d7QUZgcx1bTqCsSsp
         B6ObtR1rzbVW/PIjjtyn22JJbmkNabSp6idbrfp2LEJ3nHuQHDqrxFESKkXIiiVp6F7h
         dFNpogycvMKaxNMtmYhV9J+waW8HeAGP6+l/AeYXO30Kookr6T78nfxeEvOmcXNlvhOT
         bCdFl0cit2P8PMbnaZElsCbBfa7eBlLcAOA+oZKsn9r2dJRkjmGGTQWG+cxvpFwwrCBO
         t8pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MHvFGSJx;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id r11si745506pjq.0.2020.03.22.22.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 22:49:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MHvFGSJx;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id h11so5451563plr.11
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 22:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=MHvFGSJxjFVVyBtb6ZUyJoqMnIuexFMioci++08tKxf2YdabqsrOkzcCnlUs3JvzDk
         3BJAsoJMjJL3wS/Ra6SY1MFhEFOaxYnGNiSWctsEVcZJzYEVeTle/l/qWu8Qj2D8XQeB
         wCeoW5Gf5OX8vYrsfnuPJij0FSf9r/7eDOuGbTCe0o2iXpqr3K11dKa4t8eW4wbXU8BO
         4t2xncNwenRFaQGq4U5XpDLC1CAN0Fmxf//Eg12/aOCXwq9HMypivSQcg5GSPeyYTVhh
         hU35xO3uVVm3nnlkHFRdya6E6eys6VqBYM/UUPiubEpmY/orGMf9nSlPoZuy+cARl8a7
         8UtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=I5Fq92fbPtoB0cIjwmlg3c9SOhDeSXP+lnnqV/QaYvN3lXYCz2E9EEzurCMdQxV7Jv
         Gx1PtFIMboIjms4e/STedfWliJ8Dw0jSXNEdG4PjGnPKE1CVmREZeZLvdiRH8+aMW3h/
         6rQfhceMbdVa+bACswsBmGMb1wm9X7JXr9pupVFNuQnwlVXJXEzdT7yeMtB4h3gU6oGl
         aaDww+PYpoPgzge5q4YYTDurb64cuqlWJVxX42q6qKsKCZY6RjyFTt3az7wS4LO5Xh46
         8zNExbUDpse98DM406R4Ttd3p+6zfssxNa8jeTiOxO+xa8W0QUDcIMkEPLO9X1qCzEMK
         akQw==
X-Gm-Message-State: ANhLgQ2sYtJk78b/5+wKH5M82WnBfz363aPgEmIvFt8xV8sgP6W8E2mp
	DC3aRUyPSyx3NqNSCMStJKd4MKmnKyGaig==
X-Received: by 2002:a17:90a:bf0b:: with SMTP id c11mr24221422pjs.28.1584942595639;
        Sun, 22 Mar 2020 22:49:55 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.172.125])
        by smtp.googlemail.com with ESMTPSA id r17sm335142pgl.80.2020.03.22.22.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 22:49:55 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 2/3] staging: hp100: Remove space after * in pointer declarations
Date: Mon, 23 Mar 2020 11:18:35 +0530
Message-Id: <20200323054836.48816-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323054836.48816-1-debsoumyajit100@gmail.com>
References: <20200323054836.48816-1-debsoumyajit100@gmail.com>

Remove space after * in pointer declaration to improve code readability
and to adhere to the standard coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 00b3db8144c3..2cf1104cd2dd 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -246,11 +246,11 @@ static void hp100_BM_shutdown(struct net_device *dev);
 static void hp100_mmuinit(struct net_device *dev);
 static void hp100_init_pdls(struct net_device *dev);
 static int hp100_init_rxpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u_int * pdlptr);
+			    register hp100_ring_t *ringptr,
+			    register u_int *pdlptr);
 static int hp100_init_txpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u_int * pdlptr);
+			    register hp100_ring_t *ringptr,
+			    register u_int *pdlptr);
 static void hp100_rxfill(struct net_device *dev);
 static void hp100_hwinit(struct net_device *dev);
 static void hp100_clean_txring(struct net_device *dev);
@@ -264,7 +264,7 @@ static void hp100_RegisterDump(struct net_device *dev);
  * because it was properly DMA allocated via pci_alloc_consistent(),
  * so we just need to "retrieve" the original mapping to bus/phys/dma
  * address - Jean II */
-static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 * ptr)
+static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)
 {
 	struct hp100_private *lp = netdev_priv(dev);
 	return ((u_long) ptr) + lp->whatever_offset;
-- 
2.17.1


