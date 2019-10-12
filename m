X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:90a:cd03:: with SMTP id d3mr25114267pju.137.1570903555973;
        Sat, 12 Oct 2019 11:05:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:3726:: with SMTP id u35ls3174225pjb.2.canary-gmail;
 Sat, 12 Oct 2019 11:05:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAePbD4clYvcJeZ6LdAUZEs/fc66/v7sJxqXrhmq5tq6Z0LEzurCMm2RGgSvuFHXwZ+apQ
X-Received: by 2002:a17:902:8608:: with SMTP id f8mr20637693plo.185.1570903555229;
        Sat, 12 Oct 2019 11:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570903555; cv=none;
        d=google.com; s=arc-20160816;
        b=Kuc15WEQhVk8sKs0pi5sgjw3rjB4BwnG79SVKdXhXA7U6u6TO5dygZHD+7XzQuEzb5
         3wDg1Kk6aI6B/NqhruX4RABZEYAvs0ie0BkrjSw8y0FT2j5TqwmJlUOHpHb1EvPu50xa
         xWyGGo9Hw8d9wNrA0rz88WUxqURwtnhyS731RAxGaTYZ2gk/WyQTn69ETzgxWSFUYl97
         2nmdRZuorbvxganGY1HBgbd4dB0kPfywxGB/AJ8hJhBv3zK/RR/wkixrZ9tAGfGbHr1a
         GS91iK35ZeZqOuJdJ+bmDx6c4fVu5htI5FImGNX69Rvi71q7r8w6EmOC/CbR1rjOPHtD
         L/tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W8TBrANdRshN+5yx0SA5yPFRIQNY5exzm8qSnlTsABE=;
        b=l6lfQwTB+S9bq8v16YU3HHP9J3+LD70Bjd0Dkk1T0HzY/PHjdm5JhEwZEdMn+WItyG
         3w6eXSBvpONA165izoKJVJ5AtWeNRVHGUqvm8/OSWShcF6tfdcozGbL8zy5csQWJCa79
         WTXOGyRETSgsq0gzoLWb7PlflFtTGCGHHxucERW2/A42Bc+oBzZX/4t57d4ZhSA5r0Yf
         Zd62TSmgX3Pg3R3LKv13bvSbjgSLrjTY33Wkj2yK93DmyGSeRjTZNHQvUXxG9Dj4Omeb
         IG+4UVTGabPWihh4MWmLNVsz1wMuyaXpncX6hTbJLrsucs3eaRfWeDPVdtNWew53k51d
         D4nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oO/2/jj1";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s188si610462pgs.3.2019.10.12.11.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oO/2/jj1";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id d22so6021989pls.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 11:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W8TBrANdRshN+5yx0SA5yPFRIQNY5exzm8qSnlTsABE=;
        b=oO/2/jj1HnbagEmggvNbKwOI2Z7uZQfhq6544cr5FI6RBprZ8iC/KwgjfYp9CUiTy2
         hn8U/r2YfnPy0X/mDUMJgp1WBel7rjhZYXXs7zpef2gSpFVAymvYI2RvG6/f74K15gi7
         7fea6bpIymn98RIHPCtBVfI9XqGxuWSJ89/7Mc9MnmQh/N7sYyJj6IB9hnUpGvq8J2ge
         tY3EKuD22iSJSnPXtICE40p7afrlpanZOlhQxRPsP85clz/TCMColI/3g4k6B05ieYhF
         dEIU0i0Qj1YfVmtWUgw2A60zlK0E5trk6ryyeNWIdKeo8xoE2BJ3Q13xCQ9QplZaVt3x
         Yjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W8TBrANdRshN+5yx0SA5yPFRIQNY5exzm8qSnlTsABE=;
        b=dURoJ8MNQU+/Zt02G40IjJAQ38npQPy0FdfOsyD1k+UcfNUJ0MZjn4KxFByVa05Qv3
         Fy/Ldx2MA1SfkPkyFfvA7ceZO+llYM+1BdbOX6rt4ZyMTKmfX/TxEs1BToNSrC0fiull
         tXkAsI8UzYTYQD30cIRFBnYzTeGAZUlosfU/SRNCwCt/BZ+HGxg6j8iK6KGMrGtx807P
         I0SY6vE8KfDF2gNxgCafjq/Jo9T1KOQRU4P6xBEDxyyb+TfzLzDXTnX12XI2BVPIFFQL
         nGsf0qGpJYSHACK3oU78RUL/1IaE9OrMVNXim5TxRsQhZl2aMcKw5cckUcy1fJQOeUe8
         bzJw==
X-Gm-Message-State: APjAAAUJj+2wpcNakungzsduDWccyxaPk6WtbYBxRGSe6f90ia58IBEs
	xobH5HjmkCqcaZksDHPn7eTkeIdFqm1oOQ==
X-Received: by 2002:a17:902:b08f:: with SMTP id p15mr20503594plr.229.1570903554758;
        Sat, 12 Oct 2019 11:05:54 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 11:05:54 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 2/5] staging: octeon: remove typedef declaration for cvmx_helper_link_info
Date: Sat, 12 Oct 2019 21:04:32 +0300
Message-Id: <fb373aed8fd2b04d01198f5a5769fd2476714e88.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove declaration of union cvmx_helper_link_info as typedef.
Also replace its previous uses with new union declaration.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.c   |  6 +++---
 drivers/staging/octeon/ethernet-rgmii.c  |  4 ++--
 drivers/staging/octeon/ethernet.c        |  4 ++--
 drivers/staging/octeon/octeon-ethernet.h |  2 +-
 drivers/staging/octeon/octeon-stubs.h    | 10 +++++-----
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index ffac0c4b3f5c..c798672d61b2 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -65,7 +65,7 @@ int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 }
 
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li)
+			  union cvmx_helper_link_info li)
 {
 	if (li.s.link_up) {
 		pr_notice_ratelimited("%s: %u Mbps %s duplex, port %d, queue %d\n",
@@ -81,7 +81,7 @@ void cvm_oct_note_carrier(struct octeon_ethernet *priv,
 void cvm_oct_adjust_link(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 
 	link_info.u64		= 0;
 	link_info.s.link_up	= dev->phydev->link ? 1 : 0;
@@ -106,7 +106,7 @@ int cvm_oct_common_stop(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int index = INDEX(priv->port);
 
diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
index d91fd5ce9e68..0c4fac31540a 100644
--- a/drivers/staging/octeon/ethernet-rgmii.c
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -53,7 +53,7 @@ static void cvm_oct_set_hw_preamble(struct octeon_ethernet *priv, bool enable)
 static void cvm_oct_check_preamble_errors(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 	unsigned long flags;
 
 	link_info.u64 = priv->link_info;
@@ -103,7 +103,7 @@ static void cvm_oct_check_preamble_errors(struct net_device *dev)
 static void cvm_oct_rgmii_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 	bool status_change;
 
 	link_info = cvmx_helper_link_get(priv->port);
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index f892f1ad4638..f42c3816ce49 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -460,7 +460,7 @@ int cvm_oct_common_open(struct net_device *dev,
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
 	int index = INDEX(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 	int rv;
 
 	rv = cvm_oct_phy_setup_device(dev);
@@ -496,7 +496,7 @@ int cvm_oct_common_open(struct net_device *dev,
 void cvm_oct_link_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info link_info;
 
 	link_info = cvmx_helper_link_get(priv->port);
 	if (link_info.u64 == priv->link_info)
diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index 042220d86d33..a6140705706f 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -91,7 +91,7 @@ int cvm_oct_common_stop(struct net_device *dev);
 int cvm_oct_common_open(struct net_device *dev,
 			void (*link_poll)(struct net_device *));
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li);
+			  union cvmx_helper_link_info li);
 void cvm_oct_link_poll(struct net_device *dev);
 
 extern int always_use_pow;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 7c29cfbd55d1..0991be329139 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -191,7 +191,7 @@ struct cvmx_wqe {
 	uint8_t packet_data[96];
 };
 
-typedef union {
+union cvmx_helper_link_info {
 	uint64_t u64;
 	struct {
 		uint64_t reserved_20_63:44;
@@ -199,7 +199,7 @@ typedef union {
 		uint64_t full_duplex:1;	    /**< 1 if the link is full duplex */
 		uint64_t speed:18;	    /**< Speed of the link in Mbps */
 	} s;
-} cvmx_helper_link_info_t;
+};
 
 typedef enum {
 	CVMX_FAU_REG_32_START	= 0,
@@ -1267,15 +1267,15 @@ static inline cvmx_helper_interface_mode_t cvmx_helper_interface_get_mode(int
 	return 0;
 }
 
-static inline cvmx_helper_link_info_t cvmx_helper_link_get(int ipd_port)
+static inline union cvmx_helper_link_info cvmx_helper_link_get(int ipd_port)
 {
-	cvmx_helper_link_info_t ret = { .u64 = 0 };
+	union cvmx_helper_link_info ret = { .u64 = 0 };
 
 	return ret;
 }
 
 static inline int cvmx_helper_link_set(int ipd_port,
-				cvmx_helper_link_info_t link_info)
+				       union cvmx_helper_link_info link_info)
 {
 	return 0;
 }
-- 
2.23.0


