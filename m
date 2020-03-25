X-GM-THRID: 6808044843867045888
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr1641772qte.18.1585121473786;
        Wed, 25 Mar 2020 00:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls417982qkb.10.gmail; Wed, 25
 Mar 2020 00:31:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsV6222loDaClogS96P6CeQ9qxk6UFk3v1/iuFZYtm07+dOJbTRzcxEx82o7bfAulkD5bTn
X-Received: by 2002:a37:a68e:: with SMTP id p136mr1663142qke.7.1585121472429;
        Wed, 25 Mar 2020 00:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121472; cv=none;
        d=google.com; s=arc-20160816;
        b=lFm3XFNtDND3WWXMlWoPgkIGQuAMsB+JrtpQyh0plcAQrlX4miFmtcs7i/66yv+fxi
         Llxp+jLoXZlNCnXutQhkX/CQ2nikHO8kz/LS9HNmZLKXS+fOGUi30/McKwaE+FWGY3LJ
         hqtaRvIaKKdA8IH6O3epd/iFRHVzzbj8+aC+x5LVOkvX7kSdry3Ex26sbLxuzKwndHmT
         OLrAxPHAgIWf7aamfXG5c/2gGwyQYVRMClCd7MWmEWLvprMZY0B2NIzmDI824pJx9joR
         YxZ6Vj6U1kH9RYMtMAhnhEvRlVma+fEHfKiC0RZ/lcUkfl/Nb6JVKP0uArYhGo9CNwie
         TZMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ykDnpb2KoCAwyWGmkC9QcgZq9sftZ9MGqFsnqDtdbrM=;
        b=gy/2ouujCl3KdYhOjdEH3H0yJSRUJLDhNLZaJVaHCohivFdSrpHfMWPENvJn3acajl
         K0kEVanYaetZf81RCOwgvfPWOxvlC3zewZQMwMk+H6DqECMeMEb5uDBmA3rUE7avsRsh
         /TuY0U+OT9OE3HouT+1RSUWdmQE7kcObLarpwBi5GmxDN50g+v8PDoB2Yd8aiXgKRaYN
         pY2aCoupSuOol2cUwshuRixkWnwoEnXBoHf+r775S3HHLxLu6emr97nEqdn7nYX3Gu+4
         rMNc2BHkOdO1wlM9eXhyw9gJps4hNGFh6fHIeZGwq0UpP64TS5w3gElKg5w/UZto1LWA
         +MXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="me3/sDiV";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e89si1348235qtd.3.2020.03.25.00.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="me3/sDiV";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g2so483017plo.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ykDnpb2KoCAwyWGmkC9QcgZq9sftZ9MGqFsnqDtdbrM=;
        b=me3/sDiVv3HQSbOFj4SP8N4ZbRnMnOQciCj2agmho2anuere4ve05ReJtf5hFG3/i2
         g1vFGmLSawBPBp+2yDMCEnZsuJKG2lAg1VULEt/Zx0vqC3fLkmFLwYf26dgeiSCNMJIX
         m6/FFBAWS9fM6gs+dS7+BELnR4xgzFwZ4Yna4eYRn2iw6cWBYbDsd5vCRKaRMBh/vxL8
         Nh5qaNuBn+Wmfzc6AwdbcOzaRIDWtwMMaEfJTkYRis4gcljCOodNqG/rS+ORFuDEzdO1
         pv0HfyP/Tq5Dklem7DrizkNBkbBDCl6edAg0VRDxcxMO3idcv3PNgW47hYEnZ9ONCnfW
         Tfow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ykDnpb2KoCAwyWGmkC9QcgZq9sftZ9MGqFsnqDtdbrM=;
        b=tm0oIGYhqoD1YLGZrY5HI1oQUtg9XZB+eZUT6vS5DAL9xCvUI05+JHaXg3WRrg0fTm
         THZnhW/zz0dj774875QfJb8XcxaTVMXXIB21VhWofbJ2pBaiLz6dRYXCsrrnhmxn8jS/
         hCliVkc4X39a5/LlIAHY3A8Rl5fAfYacl/ZS47OZpRePUrWF1MwEY4pV4r5iEljpGHEM
         XhJG9t8ez22M9jQaJzUOojoJvrJcQIJTd4UrjYvBanfs3ywIN5KuTvbsaV3C2Xzpg8e/
         gu7q3KQ0C9eiYXlpExbJFEGP5gf0zqY09QJ+g3r76t56uyTeYe6nqi+eKshv/3JgqLK3
         kY4A==
X-Gm-Message-State: ANhLgQ27ayion46K0rB+1OkKR2tCi08f5UKj/0GcxS8NjpZOy2+/iqVl
	ZS9lzsHNcH96AMOY212rOyTZiXMZtL6GJg==
X-Received: by 2002:a17:902:9f84:: with SMTP id g4mr864510plq.2.1585121471076;
        Wed, 25 Mar 2020 00:31:11 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:10 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 2/6] staging: hp100: Add blank line between end of comment and function definition
Date: Wed, 25 Mar 2020 12:59:01 +0530
Message-Id: <20200325072905.29066-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Add blank line after end of multiline comment "*/" and start of function
definition for better readability of the code.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index d421b2978ae6..0614366ef914 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -348,6 +348,7 @@ static __init int hp100_isa_probe1(struct net_device *dev, int ioaddr)
  err:
 	return -ENODEV;
 }
+
 /*
  * Probe for ISA board.
  * EISA and PCI are handled by device infrastructure.
@@ -1095,6 +1096,7 @@ static int hp100_open(struct net_device *dev)
 }
 
 /* The close function is called when the interface is to be brought down */
+
 static int hp100_close(struct net_device *dev)
 {
 	int ioaddr = dev->base_addr;
@@ -1128,6 +1130,7 @@ static int hp100_close(struct net_device *dev)
 /*
  * Configure the PDL Rx rings and LAN
  */
+
 static void hp100_init_pdls(struct net_device *dev)
 {
 	struct hp100_private *lp = netdev_priv(dev);
@@ -1177,6 +1180,7 @@ static void hp100_init_pdls(struct net_device *dev)
 
 /* These functions "format" the entries in the pdl structure   */
 /* They return how much memory the fragments need.            */
+
 static int hp100_init_rxpdl(struct net_device *dev,
 			    register hp100_ring_t * ringptr,
 			    register u32 * pdlptr)
@@ -1226,6 +1230,7 @@ static int hp100_init_txpdl(struct net_device *dev,
  * Returns: 0 if unable to allocate skb_buff
  *          1 if successful
  */
+
 static int hp100_build_rx_pdl(hp100_ring_t * ringptr,
 			      struct net_device *dev)
 {
@@ -1308,6 +1313,7 @@ static int hp100_build_rx_pdl(hp100_ring_t * ringptr,
  *      b.  Put the physical address of the buffer into the PDL.
  *      c.  Output physical address of PDL to adapter.
  */
+
 static void hp100_rxfill(struct net_device *dev)
 {
 	int ioaddr = dev->base_addr;
@@ -1455,6 +1461,7 @@ static int hp100_check_lan(struct net_device *dev)
  */
 
 /* tx function for busmaster mode */
+
 static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
 				       struct net_device *dev)
 {
@@ -1570,6 +1577,7 @@ static netdev_tx_t hp100_start_xmit_bm(struct sk_buff *skb,
  *
  * Needs the PERFORMANCE page selected.
  */
+
 static void hp100_clean_txring(struct net_device *dev)
 {
 	struct hp100_private *lp = netdev_priv(dev);
@@ -1605,6 +1613,7 @@ static void hp100_clean_txring(struct net_device *dev)
 }
 
 /* tx function for slave modes */
+
 static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 				    struct net_device *dev)
 {
@@ -1838,6 +1847,7 @@ static void hp100_rx(struct net_device *dev)
 /*
  * Receive Function for Busmaster Mode
  */
+
 static void hp100_rx_bm(struct net_device *dev)
 {
 	int ioaddr = dev->base_addr;
@@ -2408,6 +2418,7 @@ static void hp100_load_eeprom(struct net_device *dev, u_short probe_ioaddr)
  *                 LAN_100 - Connected to 100Mbit/s network
  *                 LAN_ERR - not connected or 100Mbit/s Hub down
  */
+
 static int hp100_sense_lan(struct net_device *dev)
 {
 	int ioaddr = dev->base_addr;
-- 
2.17.1


