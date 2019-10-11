X-GM-THRID: 6746422022313607168
X-Received: by 2002:a62:60c7:: with SMTP id u190mr14404820pfb.256.1570773800180;
        Thu, 10 Oct 2019 23:03:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a589:: with SMTP id az9ls1794806plb.12.gmail; Thu,
 10 Oct 2019 23:03:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfd4BgLrlFhMfwiZlF5jPb7HfFBrnKXoD9d4q71Ww3TAmGrv4f1kfYUuvzDzRFgu2x7q2h
X-Received: by 2002:a17:90a:2425:: with SMTP id h34mr15938974pje.113.1570773799313;
        Thu, 10 Oct 2019 23:03:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773799; cv=none;
        d=google.com; s=arc-20160816;
        b=dUQ30hEkM2b285ygqcguSep5zLJV67g4RYmPKMmnG6XNDgFSpIee5dHRX6MIsBfKwq
         OqFmCbhXCzOP04JfcpfO8WPTYrN7XsXBUMi+q9r1yYmUJf16b9pBGjZmPS6BL3dFMBb6
         DInYHmNyHDjEMqGxF/w7VmSd6prJEMYGVbHyABLuzgEmndI4qLPJLAJblabL4JkLDmeA
         x1+b5aOpFzEbqEZ10RTQq2AzuxT4mtZ2TMxUqiMkyhhFtHECOOwTT2T4eLSD7hW4s1Th
         IZ7K7LmYW8MExCAtH+mEDRlnoSVAPiQBIv4nGk1IYgLgtwQVkcBGGiKwOXI/oxNG6LUl
         nNLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qz3Pn3iXTIAiE5Vxrx22/mL18yJZNqUc+hQQr9LyuGk=;
        b=cu0qRFROypBHJ71KBINNr2MWNm75wwD+tPYcn2gZju1EN8oNDhwDLEuoiGiCS9cqF+
         Lcne3mxrvrIC7Q26P/wG/3ZuWc8dEizzmKGk5wJp/LDlNlY/l1fkxLT6oncCvn3U5PVq
         KSCrgsXETVkLaN0k09J9GlVzIGu/4IhFqvByLWWKJLsGsExicaWWXIPyi+B8caP7oLNK
         FXxDjX5Cto+PsLpxI1qSrU3RS/SpJSHSkFEKQRdNaAA+wjxxmI2855P/hgcQA2tXLGiQ
         jaDqZJXuhH+LwDjKUkgCyP6EPZJL2zteoQupguDy6VAGodJG11YkNwlFbR4/WA44Da4B
         mm4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qRw947YL;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id br8si995717pjb.3.2019.10.10.23.03.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qRw947YL;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id a2so5404535pfo.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qz3Pn3iXTIAiE5Vxrx22/mL18yJZNqUc+hQQr9LyuGk=;
        b=qRw947YLIcc9aPdljmXnyA/xH0POdjYEa92ZTsYn+nL5Xdk2MjpmQIMKvPT+Fk8PNT
         CNoQPCcCnEkBxcZlxSeGajPaVjv8ive0kdMZN1tZhV5xmpbZbdnrruqT70ceWXUsNjEH
         tVPp++edETPFa5n7v/TL2CRj11yWwyTWoUMQS1Mg2lfcxByj5xKSlb2xNCivzshc/F2z
         vdEk1+Pup1096N721pH2WV7vA+B4OQgGF4q8StprvbbbSUsPWl6hSLUy0L3Qn6bYiaWp
         3/nYTzz9v2MpWYcIdbnyavV6lyeX2W0QMecnG8E+wxFwXH7F2XW8FX6G352oXeYOz8QH
         WGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qz3Pn3iXTIAiE5Vxrx22/mL18yJZNqUc+hQQr9LyuGk=;
        b=kivHLz4Ao2xyZhlGpnGtx1EEZz1eP/9BbMpNS+aljxlIwkS+fD7eaRZaJQoNqPpo+S
         0E1SOyMLO/DkIbfKku3dja74RhltElU4n37KJXTwo09XSDe7Desc3DlEt2AqaetUtCEy
         ICQqwA94q2XnMxXu3QWpyBH6QZcnG/DSklWsFc8oMvzFKoH8nV9o6+q25bivKKPjIJTQ
         77wCqNE9w3Zynu+5L+ml8s6fEuPm8EUVIElczzHtRsxcQ6+x11dDEM2lDUTx/iOOh6Bb
         knIsREdxlzzNGp8bSOfKyc/YubSc2OqG60Xs96X9qLmI8ZTxE3fp1aoTZqpqbW4jBrke
         Rr3A==
X-Gm-Message-State: APjAAAVV/wTHNvn9qifNpoBBNLHDLIZe6Bm/pEfyy0G7KZ0H1wr0F1E0
	L05LaFzh0VUmpgcMbNBDQjXMAz8WNOtsIQ==
X-Received: by 2002:a17:90a:de14:: with SMTP id m20mr15695383pjv.10.1570773798627;
        Thu, 10 Oct 2019 23:03:18 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:03:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 2/5] staging: octeon: remove typedef declaration for cvmx_helper_link_info_t
Date: Fri, 11 Oct 2019 09:02:39 +0300
Message-Id: <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove declaration of union cvmx_helper_link_info_t as typedef in
drivers/staging/octeon/octeon-stubs.h.
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
index ffac0c4b3f5c..847081549373 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -65,7 +65,7 @@ int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 }
 
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li)
+			  union cvmx_helper_link_info_t li)
 {
 	if (li.s.link_up) {
 		pr_notice_ratelimited("%s: %u Mbps %s duplex, port %d, queue %d\n",
@@ -81,7 +81,7 @@ void cvm_oct_note_carrier(struct octeon_ethernet *priv,
 void cvm_oct_adjust_link(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 
 	link_info.u64		= 0;
 	link_info.s.link_up	= dev->phydev->link ? 1 : 0;
@@ -106,7 +106,7 @@ int cvm_oct_common_stop(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int index = INDEX(priv->port);
 
diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
index d91fd5ce9e68..f815be830ce0 100644
--- a/drivers/staging/octeon/ethernet-rgmii.c
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -53,7 +53,7 @@ static void cvm_oct_set_hw_preamble(struct octeon_ethernet *priv, bool enable)
 static void cvm_oct_check_preamble_errors(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	unsigned long flags;
 
 	link_info.u64 = priv->link_info;
@@ -103,7 +103,7 @@ static void cvm_oct_check_preamble_errors(struct net_device *dev)
 static void cvm_oct_rgmii_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	bool status_change;
 
 	link_info = cvmx_helper_link_get(priv->port);
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 3de209b7d0ec..1f7a7ebe1a60 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -460,7 +460,7 @@ int cvm_oct_common_open(struct net_device *dev,
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
 	int index = INDEX(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	int rv;
 
 	rv = cvm_oct_phy_setup_device(dev);
@@ -496,7 +496,7 @@ int cvm_oct_common_open(struct net_device *dev,
 void cvm_oct_link_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 
 	link_info = cvmx_helper_link_get(priv->port);
 	if (link_info.u64 == priv->link_info)
diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index 042220d86d33..5a0d754b0c70 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -91,7 +91,7 @@ int cvm_oct_common_stop(struct net_device *dev);
 int cvm_oct_common_open(struct net_device *dev,
 			void (*link_poll)(struct net_device *));
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li);
+			  union cvmx_helper_link_info_t li);
 void cvm_oct_link_poll(struct net_device *dev);
 
 extern int always_use_pow;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index fd7522f70f7e..78f42597cee5 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -191,7 +191,7 @@ struct cvmx_wqe_t {
 	uint8_t packet_data[96];
 };
 
-typedef union {
+union cvmx_helper_link_info_t {
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
+static inline union cvmx_helper_link_info_t cvmx_helper_link_get(int ipd_port)
 {
-	cvmx_helper_link_info_t ret = { .u64 = 0 };
+	union cvmx_helper_link_info_t ret = { .u64 = 0 };
 
 	return ret;
 }
 
 static inline int cvmx_helper_link_set(int ipd_port,
-				cvmx_helper_link_info_t link_info)
+				       union cvmx_helper_link_info_t link_info)
 {
 	return 0;
 }
-- 
2.23.0


