X-GM-THRID: 6256120108487278592
X-Received: by 10.112.235.137 with SMTP id um9mr854208lbc.8.1456616502751;
        Sat, 27 Feb 2016 15:41:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.213 with SMTP id p204ls311989lfp.58.gmail; Sat, 27 Feb
 2016 15:41:42 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr897974lbp.14.1456616502158;
        Sat, 27 Feb 2016 15:41:42 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id s141si447389wmd.1.2016.02.27.15.41.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:41:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n186so4346510wmn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TnD8JhivKWmIF7T/M+oNR2YlFFUS01jHudWUNvh5NJk=;
        b=ZmYqxtvod8tM5j9LHTR/jj5HWVjWzIpsnI56DdmSfcvnghQsmm9N7rGTAKCwNVjesJ
         oyzQ308+fRBYW5njQdTqGq63TdgOx9VwGMSZUP3L5hqN3K6J8zGCDUvpisaNunceyjLc
         FbLWriql/LMfjYtETGohFQA7jMJdkw0WBkfhqXW1zcxA8GlwB+cAljX26yBXV60FjfLF
         Nu9LuPYXDFhvNaPiyI4lecUkC25cTKQuoswE/vE12+OiCoA8TBLkfP3NQFJWPbIyvM/O
         ojwEbXU7gZ/RUT0lyW3T4H6R1XJEriXrJA8egcdaXvZENzn1hHelmX+wSBsUpD53JeAw
         tX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TnD8JhivKWmIF7T/M+oNR2YlFFUS01jHudWUNvh5NJk=;
        b=dffrQfArlpw6XOqEry5u0eNVYqlYX6uNfC/9evD2toUaBznKQXpHOk9wPovVgEcPZh
         1K9y9so9eBABxqKutZ3d3dLgOeYJ8JuptB7WN5c/CXDPBwxzEgJ2gBQdSTBTRRr4KxNl
         taVy7dE9gX45OxI5oQ/IBGbOGSHQACKDgcNHY9Ksx4FsbXVnLGA9VK8YJFq6yD9sYrkz
         trOtiyV1X+VwhqwyHqvElCo+HeiwzxxuFF0HmBi8aVeTvkRRXmmKLIZvUmS6ydf6GRyr
         GrlwjWLLb0w5+E8VhGXBSX+xrMMqD8vXy1Z1TUunMyxAX8yPixonVLHha96VMmq8m1Wl
         kgSQ==
X-Gm-Message-State: AD7BkJKi/cDsTPqISycFbm1OL2j2Ag4fCJ9Rd89EvdeoJyyp3np+2Y+wSmwtrbmiVns44w==
X-Received: by 10.194.216.99 with SMTP id op3mr8111295wjc.26.1456616501981;
        Sat, 27 Feb 2016 15:41:41 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id i2sm18725264wje.22.2016.02.27.15.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:41:41 -0800 (PST)
Date: Sun, 28 Feb 2016 00:41:39 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/10] staging: octeon: Move logical operators on the correct
 line
Message-ID: <1b47f0470b88c86f5b1764db00d73339b69a7848.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Logical continuations should be on the previous line. Checkpatch detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c |  8 ++++----
 drivers/staging/octeon/ethernet.c    | 24 ++++++++++++------------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index e229ebf..94b0e67 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -618,8 +618,8 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 		work->word2.s.dec_ipcomp = 0;	/* FIXME */
 #endif
 		work->word2.s.tcp_or_udp =
-		    (ip_hdr(skb)->protocol == IPPROTO_TCP)
-		    || (ip_hdr(skb)->protocol == IPPROTO_UDP);
+		    (ip_hdr(skb)->protocol == IPPROTO_TCP) ||
+		    (ip_hdr(skb)->protocol == IPPROTO_UDP);
 #if 0
 		/* FIXME */
 		work->word2.s.dec_ipsec = 0;
@@ -630,8 +630,8 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
 		/* No error, packet is internal */
 		work->word2.s.L4_error = 0;
 #endif
-		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0)
-					  || (ip_hdr(skb)->frag_off ==
+		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
+					  (ip_hdr(skb)->frag_off ==
 					      1 << 14));
 #if 0
 		/* Assume Linux is sending a good packet */
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 00adc52..91f2dd6 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -254,22 +254,22 @@ static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
 	 * Limit the MTU to make sure the ethernet packets are between
 	 * 64 bytes and 65535 bytes.
 	 */
-	if ((new_mtu + 14 + 4 + vlan_bytes < 64)
-	    || (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
+	if ((new_mtu + 14 + 4 + vlan_bytes < 64) ||
+	    (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
 		pr_err("MTU must be between %d and %d.\n",
 		       64 - 14 - 4 - vlan_bytes, 65392 - 14 - 4 - vlan_bytes);
 		return -EINVAL;
 	}
 	dev->mtu = new_mtu;
 
-	if ((interface < 2)
-	    && (cvmx_helper_interface_get_mode(interface) !=
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		/* Add ethernet header and FCS, and VLAN if configured. */
 		int max_packet = new_mtu + 14 + 4 + vlan_bytes;
 
-		if (OCTEON_IS_MODEL(OCTEON_CN3XXX)
-		    || OCTEON_IS_MODEL(OCTEON_CN58XX)) {
+		if (OCTEON_IS_MODEL(OCTEON_CN3XXX) ||
+		    OCTEON_IS_MODEL(OCTEON_CN58XX)) {
 			/* Signal errors on packets larger than the MTU */
 			cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface),
 				       max_packet);
@@ -308,8 +308,8 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	int interface = INTERFACE(priv->port);
 	int index = INDEX(priv->port);
 
-	if ((interface < 2)
-	    && (cvmx_helper_interface_get_mode(interface) !=
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		union cvmx_gmxx_rxx_adr_ctl control;
 
@@ -360,8 +360,8 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	int interface = INTERFACE(priv->port);
 	int index = INDEX(priv->port);
 
-	if ((interface < 2)
-	    && (cvmx_helper_interface_get_mode(interface) !=
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
 		CVMX_HELPER_INTERFACE_MODE_SPI)) {
 		int i;
 		u8 *ptr = dev->dev_addr;
@@ -434,8 +434,8 @@ int cvm_oct_common_init(struct net_device *dev)
 	 * Force the interface to use the POW send if always_use_pow
 	 * was specified or it is in the pow send list.
 	 */
-	if ((pow_send_group != -1)
-	    && (always_use_pow || strstr(pow_send_list, dev->name)))
+	if ((pow_send_group != -1) &&
+	    (always_use_pow || strstr(pow_send_list, dev->name)))
 		priv->queue = -1;
 
 	if (priv->queue != -1)
-- 
2.7.0


