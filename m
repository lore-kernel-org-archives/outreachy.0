X-GM-THRID: 6387816856867045376
X-Received: by 10.107.171.196 with SMTP id u187mr2981558ioe.30.1487353863890;
        Fri, 17 Feb 2017 09:51:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.131.138 with SMTP id d132ls670155ite.18.canary-gmail; Fri,
 17 Feb 2017 09:51:03 -0800 (PST)
X-Received: by 10.98.56.86 with SMTP id f83mr2320702pfa.13.1487353863085;
        Fri, 17 Feb 2017 09:51:03 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si841512pfk.5.2017.02.17.09.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 09:51:03 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e4so4523145pfg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 09:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4h8DfzHTQoP9Ow4GxVvaNhZ8xN8alVam1wf0K6rF0vI=;
        b=ZOyJmOFbuGq5wQihkYg/PxwmxeCKs3sggGy8N1jMWK7IjCXI3AHnVEa1QotPukkSOX
         fWt2bb5AomvvchLn7BkxmyOVZHHSGvKALS4YmW3uYfqw90mJN5x3MhXe1r4ciyurLsWY
         He3YRNI1tpH/CVSVbBDa/+7FvCxI0WrkHh/3Kt42BEa9akNOnrdIJWXeCaa9025afS1C
         9EUBNIcoNgerwtUsyxkji0/M4ZOoFHrUJYuBzS3IouQgp55xSktjiW28OsQEkLZWOztC
         tsGbwr/Yf9yYRuBeLpzPgmUEaCd4hISJgj2NWqqCEfkiP0LP5dGwF9BWVPAGUzDjG3lc
         Xk/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4h8DfzHTQoP9Ow4GxVvaNhZ8xN8alVam1wf0K6rF0vI=;
        b=E/++EdpUqI+0AFUHu4yRIs0pL86vLSCEB10v9rO4Mf0gateDyAH+42k+4v+T+bIa9g
         BrFqllVXhOKHKWZlVyy2ZygFplOXJzhIHwnX7SYBa76ZO31APg5pEN/eE2TbjM1cbdYU
         I94tqV/q5EB7k2c4e9QgQcFm831AE8bSW3Nu3ujAXOATJB1k2tynpYthmjI9CQoeXe87
         99cXl0mELFaFpgsUTACK+TC5ddVEMmxnju4U/A79QG0WxhaJjABZ65pTdXVaz0IqxZOR
         D5AA4wH5gV3ERh5MotcSfsMR2z4H5JI96LNRtAKRIUiGdJGw8z+7cCBG0xJmSLFzkzD/
         Iong==
X-Gm-Message-State: AMke39lNXGf+aCAkypFUm1KLh6RQKEyHDiDv81qpULITUrvpDWS7wgNGO0spEGlqIhaswQ==
X-Received: by 10.84.195.1 with SMTP id i1mr12794227pld.77.1487353862788;
        Fri, 17 Feb 2017 09:51:02 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m6sm20894070pgn.58.2017.02.17.09.51.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 09:51:01 -0800 (PST)
Date: Fri, 17 Feb 2017 23:20:59 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8192u: Prefer using the BIT macro
Message-ID: <20170217175059.GA26957@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces left shift operation (1 << d) by BIT(x) macro.

Fix the checkpatch.pl issue:
CHECK: Prefer using the BIT macro replacing

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 V2:
   -modified patch message.

 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 140 ++++++++++++-------------
 1 file changed, 70 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index a020e04..648806b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -502,28 +502,28 @@ do { if (ieee80211_debug_level & (level)) \
  *
  */
 
-#define IEEE80211_DL_INFO          (1<<0)
-#define IEEE80211_DL_WX            (1<<1)
-#define IEEE80211_DL_SCAN          (1<<2)
-#define IEEE80211_DL_STATE         (1<<3)
-#define IEEE80211_DL_MGMT          (1<<4)
-#define IEEE80211_DL_FRAG          (1<<5)
-#define IEEE80211_DL_EAP           (1<<6)
-#define IEEE80211_DL_DROP          (1<<7)
-
-#define IEEE80211_DL_TX            (1<<8)
-#define IEEE80211_DL_RX            (1<<9)
-
-#define IEEE80211_DL_HT		   (1<<10)  //HT
-#define IEEE80211_DL_BA		   (1<<11)  //ba
-#define IEEE80211_DL_TS		   (1<<12)  //TS
-#define IEEE80211_DL_QOS           (1<<13)
-#define IEEE80211_DL_REORDER	   (1<<14)
-#define IEEE80211_DL_IOT	   (1<<15)
-#define IEEE80211_DL_IPS	   (1<<16)
-#define IEEE80211_DL_TRACE	   (1<<29)  //trace function, need to user net_ratelimit() together in order not to print too much to the screen
-#define IEEE80211_DL_DATA	   (1<<30)   //use this flag to control whether print data buf out.
-#define IEEE80211_DL_ERR	   (1<<31)   //always open
+#define IEEE80211_DL_INFO          BIT(0)
+#define IEEE80211_DL_WX            BIT(1)
+#define IEEE80211_DL_SCAN          BIT(2)
+#define IEEE80211_DL_STATE         BIT(3)
+#define IEEE80211_DL_MGMT          BIT(4)
+#define IEEE80211_DL_FRAG          BIT(5)
+#define IEEE80211_DL_EAP           BIT(6)
+#define IEEE80211_DL_DROP          BIT(7)
+
+#define IEEE80211_DL_TX            BIT(8)
+#define IEEE80211_DL_RX            BIT(9)
+
+#define IEEE80211_DL_HT		   BIT(10)  //HT
+#define IEEE80211_DL_BA		   BIT(11)  //ba
+#define IEEE80211_DL_TS		   BIT(12)  //TS
+#define IEEE80211_DL_QOS           BIT(13)
+#define IEEE80211_DL_REORDER	   BIT(14)
+#define IEEE80211_DL_IOT	   BIT(15)
+#define IEEE80211_DL_IPS	   BIT(16)
+#define IEEE80211_DL_TRACE	   BIT(29)  //trace function, need to user net_ratelimit() together in order not to print too much to the screen
+#define IEEE80211_DL_DATA	   BIT(30)   //use this flag to control whether print data buf out.
+#define IEEE80211_DL_ERR	   BIT(31)   //always open
 #define IEEE80211_ERROR(f, a...) printk(KERN_ERR "ieee80211: " f, ## a)
 #define IEEE80211_WARNING(f, a...) printk(KERN_WARNING "ieee80211: " f, ## a)
 #define IEEE80211_DEBUG_INFO(f, a...)   IEEE80211_DEBUG(IEEE80211_DL_INFO, f, ## a)
@@ -625,18 +625,18 @@ struct ieee80211_snap_hdr {
 #define IEEE80211_OFDM_RATE_54MB		0x6C
 #define IEEE80211_BASIC_RATE_MASK		0x80
 
-#define IEEE80211_CCK_RATE_1MB_MASK		(1<<0)
-#define IEEE80211_CCK_RATE_2MB_MASK		(1<<1)
-#define IEEE80211_CCK_RATE_5MB_MASK		(1<<2)
-#define IEEE80211_CCK_RATE_11MB_MASK		(1<<3)
-#define IEEE80211_OFDM_RATE_6MB_MASK		(1<<4)
-#define IEEE80211_OFDM_RATE_9MB_MASK		(1<<5)
-#define IEEE80211_OFDM_RATE_12MB_MASK		(1<<6)
-#define IEEE80211_OFDM_RATE_18MB_MASK		(1<<7)
-#define IEEE80211_OFDM_RATE_24MB_MASK		(1<<8)
-#define IEEE80211_OFDM_RATE_36MB_MASK		(1<<9)
-#define IEEE80211_OFDM_RATE_48MB_MASK		(1<<10)
-#define IEEE80211_OFDM_RATE_54MB_MASK		(1<<11)
+#define IEEE80211_CCK_RATE_1MB_MASK		BIT(0)
+#define IEEE80211_CCK_RATE_2MB_MASK		BIT(1)
+#define IEEE80211_CCK_RATE_5MB_MASK		BIT(2)
+#define IEEE80211_CCK_RATE_11MB_MASK		BIT(3)
+#define IEEE80211_OFDM_RATE_6MB_MASK		BIT(4)
+#define IEEE80211_OFDM_RATE_9MB_MASK		BIT(5)
+#define IEEE80211_OFDM_RATE_12MB_MASK		BIT(6)
+#define IEEE80211_OFDM_RATE_18MB_MASK		BIT(7)
+#define IEEE80211_OFDM_RATE_24MB_MASK		BIT(8)
+#define IEEE80211_OFDM_RATE_36MB_MASK		BIT(9)
+#define IEEE80211_OFDM_RATE_48MB_MASK		BIT(10)
+#define IEEE80211_OFDM_RATE_54MB_MASK		BIT(11)
 
 #define IEEE80211_CCK_RATES_MASK		0x0000000F
 #define IEEE80211_CCK_BASIC_RATES_MASK	(IEEE80211_CCK_RATE_1MB_MASK | \
@@ -794,16 +794,16 @@ struct ieee80211_device;
 
 #include "ieee80211_crypt.h"
 
-#define SEC_KEY_1         (1<<0)
-#define SEC_KEY_2         (1<<1)
-#define SEC_KEY_3         (1<<2)
-#define SEC_KEY_4         (1<<3)
-#define SEC_ACTIVE_KEY    (1<<4)
-#define SEC_AUTH_MODE     (1<<5)
-#define SEC_UNICAST_GROUP (1<<6)
-#define SEC_LEVEL         (1<<7)
-#define SEC_ENABLED       (1<<8)
-#define SEC_ENCRYPT       (1<<9)
+#define SEC_KEY_1         BIT(0)
+#define SEC_KEY_2         BIT(1)
+#define SEC_KEY_3         BIT(2)
+#define SEC_KEY_4         BIT(3)
+#define SEC_ACTIVE_KEY    BIT(4)
+#define SEC_AUTH_MODE     BIT(5)
+#define SEC_UNICAST_GROUP BIT(6)
+#define SEC_LEVEL         BIT(7)
+#define SEC_ENABLED       BIT(8)
+#define SEC_ENCRYPT       BIT(9)
 
 #define SEC_LEVEL_0      0 /* None */
 #define SEC_LEVEL_1      1 /* WEP 40 and 104 bit */
@@ -1069,23 +1069,23 @@ typedef union _frameqos {
 
 #define MAX_WPA_IE_LEN 64
 
-#define NETWORK_EMPTY_ESSID (1<<0)
-#define NETWORK_HAS_OFDM    (1<<1)
-#define NETWORK_HAS_CCK     (1<<2)
+#define NETWORK_EMPTY_ESSID BIT(0)
+#define NETWORK_HAS_OFDM    BIT(1)
+#define NETWORK_HAS_CCK     BIT(2)
 
 /* QoS structure */
-#define NETWORK_HAS_QOS_PARAMETERS      (1<<3)
-#define NETWORK_HAS_QOS_INFORMATION     (1<<4)
+#define NETWORK_HAS_QOS_PARAMETERS      BIT(3)
+#define NETWORK_HAS_QOS_INFORMATION     BIT(4)
 #define NETWORK_HAS_QOS_MASK            (NETWORK_HAS_QOS_PARAMETERS | \
 					 NETWORK_HAS_QOS_INFORMATION)
 /* 802.11h */
-#define NETWORK_HAS_POWER_CONSTRAINT    (1<<5)
-#define NETWORK_HAS_CSA                 (1<<6)
-#define NETWORK_HAS_QUIET               (1<<7)
-#define NETWORK_HAS_IBSS_DFS            (1<<8)
-#define NETWORK_HAS_TPC_REPORT          (1<<9)
+#define NETWORK_HAS_POWER_CONSTRAINT    BIT(5)
+#define NETWORK_HAS_CSA                 BIT(6)
+#define NETWORK_HAS_QUIET               BIT(7)
+#define NETWORK_HAS_IBSS_DFS            BIT(8)
+#define NETWORK_HAS_TPC_REPORT          BIT(9)
 
-#define NETWORK_HAS_ERP_VALUE           (1<<10)
+#define NETWORK_HAS_ERP_VALUE           BIT(10)
 
 #define QOS_QUEUE_NUM                   4
 #define QOS_OUI_LEN                     3
@@ -1434,9 +1434,9 @@ enum ieee80211_state {
 #define DEFAULT_MAX_SCAN_AGE (15 * HZ)
 #define DEFAULT_FTS 2346
 
-#define CFG_IEEE80211_RESERVE_FCS (1<<0)
-#define CFG_IEEE80211_COMPUTE_FCS (1<<1)
-#define CFG_IEEE80211_RTS (1<<2)
+#define CFG_IEEE80211_RESERVE_FCS BIT(0)
+#define CFG_IEEE80211_COMPUTE_FCS BIT(1)
+#define CFG_IEEE80211_RTS BIT(2)
 
 #define IEEE80211_24GHZ_MIN_CHANNEL 1
 #define IEEE80211_24GHZ_MAX_CHANNEL 14
@@ -2007,11 +2007,11 @@ struct ieee80211_device {
 	u8 priv[0];
 };
 
-#define IEEE_A            (1<<0)
-#define IEEE_B            (1<<1)
-#define IEEE_G            (1<<2)
-#define IEEE_N_24G		  (1<<4)
-#define	IEEE_N_5G		  (1<<5)
+#define IEEE_A            BIT(0)
+#define IEEE_B            BIT(1)
+#define IEEE_G            BIT(2)
+#define IEEE_N_24G		  BIT(4)
+#define	IEEE_N_5G		  BIT(5)
 #define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
 
 /* Generate a 802.11 header */
@@ -2019,31 +2019,31 @@ struct ieee80211_device {
 /* Uses the channel change callback directly
  * instead of [start/stop] scan callbacks
  */
-#define IEEE_SOFTMAC_SCAN (1<<2)
+#define IEEE_SOFTMAC_SCAN BIT(2)
 
 /* Perform authentication and association handshake */
-#define IEEE_SOFTMAC_ASSOCIATE (1<<3)
+#define IEEE_SOFTMAC_ASSOCIATE BIT(3)
 
 /* Generate probe requests */
-#define IEEE_SOFTMAC_PROBERQ (1<<4)
+#define IEEE_SOFTMAC_PROBERQ BIT(4)
 
 /* Generate respones to probe requests */
-#define IEEE_SOFTMAC_PROBERS (1<<5)
+#define IEEE_SOFTMAC_PROBERS BIT(5)
 
 /* The ieee802.11 stack will manages the netif queue
  * wake/stop for the driver, taking care of 802.11
  * fragmentation. See softmac.c for details. */
-#define IEEE_SOFTMAC_TX_QUEUE (1<<7)
+#define IEEE_SOFTMAC_TX_QUEUE BIT(7)
 
 /* Uses only the softmac_data_hard_start_xmit
  * even for TX management frames.
  */
-#define IEEE_SOFTMAC_SINGLE_QUEUE (1<<8)
+#define IEEE_SOFTMAC_SINGLE_QUEUE BIT(8)
 
 /* Generate beacons.  The stack will enqueue beacons
  * to the card
  */
-#define IEEE_SOFTMAC_BEACONS (1<<6)
+#define IEEE_SOFTMAC_BEACONS BIT(6)
 
 static inline void *ieee80211_priv(struct net_device *dev)
 {
-- 
2.7.4


