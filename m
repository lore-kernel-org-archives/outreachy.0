X-GM-THRID: 2431942393856
X-Received: by 10.180.72.44 with SMTP id a12mr729713wiv.0.1424620395601;
        Sun, 22 Feb 2015 07:53:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls3747lac.47.gmail; Sun, 22 Feb
 2015 07:53:15 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr766797lab.0.1424620395124;
        Sun, 22 Feb 2015 07:53:15 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si693630wia.0.2015.02.22.07.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:53:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so13767660wev.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JFVtnlVrI1m8xNHl4+oEcSplPQDQZ9YZr16elmNni4A=;
        b=PRXjgCjROuRJDZUjBsuw10axODjUrt2GdjJZvoyrXXcFROkZgzb9bMFRUzoIAUHJ6z
         nuxQm86dPdFby79H/Ilj57plFxtg3E430QptJT6Qxyynjt1AgeEJJlX3vT95gAp3C2Ux
         Sq4qFODfNCmuFre0hjwZNlF5AQd5DqNnm3lGw8W0KQLcGs3TedqVjp0p5p1iQjPVVK4S
         /8PCLOHkJqPNnglG6BJPSwuI4ietXfTbcYeuGZ7LpwFV000KRyiQ0PPtjJA1AszqtLEl
         oQcm31zTVAiZfwhrkPE00lnkL1GmDDizHbictoWsRv7JekWloiHBW+MCna+zg0zvISGU
         JtFg==
X-Received: by 10.180.108.199 with SMTP id hm7mr12623572wib.5.1424620394998;
        Sun, 22 Feb 2015 07:53:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id er13sm51626992wjc.11.2015.02.22.07.53.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 07:53:14 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3 1/2] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Sun, 22 Feb 2015 16:52:58 +0100
Message-Id: <b62ce2160ca51b14093fb75772bef5b27cb14993.1424619767.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424619767.git.ksenija.stanojevic@gmail.com>
References: <cover.1424619767.git.ksenija.stanojevic@gmail.com>

Remove linux/config.h because it is not used in modern linux versions
and replace C99 comments with C89.
Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

---
v2: remove linux/config.h and format comment.
v3: change commit message.
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index afbd09d..4d6bd2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -31,7 +31,6 @@
 *******************************************************************************/
 
 #include <linux/compiler.h>
-//#include <linux/config.h>
 #include <linux/errno.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
@@ -141,7 +140,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	spin_lock_init(&ieee->wpax_suitlist_lock);
 	spin_lock_init(&ieee->bw_spinlock);
 	spin_lock_init(&ieee->reorder_spinlock);
-	//added by WB
+	/* added by WB */
 	atomic_set(&(ieee->atm_chnlop), 0);
 	atomic_set(&(ieee->atm_swbw), 0);
 
@@ -152,8 +151,8 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee->privacy_invoked = 0;
 	ieee->ieee802_1x = 1;
 	ieee->raw_tx = 0;
-	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
-	ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
+	/* ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead. */
+	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
 
 	ieee80211_softmac_init(ieee);
 
@@ -164,7 +163,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 		goto failed;
 	}
 	HTUpdateDefaultSetting(ieee);
-	HTInitializeHTInfo(ieee); //may move to other place.
+	HTInitializeHTInfo(ieee); /* may move to other place. */
 	TSInitialize(ieee);
 
 	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
@@ -176,7 +175,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	  ieee->last_packet_time[i] = 0;
 	}
 
-//These function were added to load crypte module autoly
+/* These function were added to load crypte module autoly */
 	ieee80211_tkip_null();
 	ieee80211_wep_null();
 	ieee80211_ccmp_null();
@@ -195,8 +194,8 @@ void free_ieee80211(struct net_device *dev)
 {
 	struct ieee80211_device *ieee = netdev_priv(dev);
 	int i;
-	//struct list_head *p, *q;
-//	del_timer_sync(&ieee->SwBwTimer);
+	/* struct list_head *p, *q; */
+     /* del_timer_sync(&ieee->SwBwTimer); */
 	kfree(ieee->pHTInfo);
 	ieee->pHTInfo = NULL;
 	RemoveAllTS(ieee);
@@ -222,24 +221,25 @@ void free_ieee80211(struct net_device *dev)
 
 u32 ieee80211_debug_level;
 static int debug = \
-	//		    IEEE80211_DL_INFO	|
-	//		    IEEE80211_DL_WX	|
-	//		    IEEE80211_DL_SCAN	|
-	//		    IEEE80211_DL_STATE	|
-	//		    IEEE80211_DL_MGMT	|
-	//		    IEEE80211_DL_FRAG	|
-	//		    IEEE80211_DL_EAP	|
-	//		    IEEE80211_DL_DROP	|
-	//		    IEEE80211_DL_TX	|
-	//		    IEEE80211_DL_RX	|
-			    //IEEE80211_DL_QOS    |
-	//		    IEEE80211_DL_HT	|
-	//		    IEEE80211_DL_TS	|
-//			    IEEE80211_DL_BA	|
-	//		    IEEE80211_DL_REORDER|
-//			    IEEE80211_DL_TRACE  |
-			    //IEEE80211_DL_DATA	|
-			    IEEE80211_DL_ERR	  //awayls open this flags to show error out
+			 /* IEEE80211_DL_INFO	| */
+			 /* IEEE80211_DL_WX	| */
+			 /* IEEE80211_DL_SCAN	| */
+			 /* IEEE80211_DL_STATE	| */
+			 /* IEEE80211_DL_MGMT	| */
+			 /* IEEE80211_DL_FRAG	| */
+			 /* IEEE80211_DL_EAP	| */
+			 /* IEEE80211_DL_DROP	| */
+			 /* IEEE80211_DL_TX	| */
+			 /* IEEE80211_DL_RX	| */
+			 /* IEEE80211_DL_QOS    | */
+			 /* IEEE80211_DL_HT	| */
+			 /* IEEE80211_DL_TS	| */
+			 /* IEEE80211_DL_BA	| */
+			 /* IEEE80211_DL_REORDER| */
+			 /* IEEE80211_DL_TRACE  | */
+			 /* IEEE80211_DL_DATA	| */
+			    IEEE80211_DL_ERR	  /* awayls open this flags
+						   * to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
 
-- 
1.9.1


