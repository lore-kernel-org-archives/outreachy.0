X-GM-THRID: 2436714463232
X-Received: by 10.180.94.134 with SMTP id dc6mr704468wib.2.1424616099921;
        Sun, 22 Feb 2015 06:41:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.68 with SMTP id mw4ls399893wib.12.canary; Sun, 22 Feb
 2015 06:41:38 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr738147wjc.2.1424616098586;
        Sun, 22 Feb 2015 06:41:38 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ew5si497633wid.1.2015.02.22.06.41.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 06:41:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f169.google.com with SMTP id em10so14705484wid.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 06:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FxExm7Wz8kSITjK+v5UZbY5ssD5WneiNuTUHctmualM=;
        b=SM6qyZP/i2hOtdcFuVf3PSJuOP/kBXge2c0FKuLsL7zBwxSsdm2EjHejDkHtaNeVX0
         C1+t95UG1817hOqUpOQLyqTtZfCNfpqVcFrAkfIR9f/p83KafZvBSbRNthURn4I5MXCw
         aQm1uHBKfkwFSq3npVGRSwdnYfwOx45PbYpW5RbUKNCx5LcLVIaV81YuHysjUGYtnY+i
         PhAPrsLzm8zXUKRpHNt34gU/3bmX+jWR3kd1y2HKUJCVWHWNSqmA0svEhLw4260yjJ6I
         z5T7bgPQSGG+dav3tkgU5uGcGuumip7kE01dhRJW6ULxD5bOF3RNK2XkAcBCCHH+E2Yg
         K92A==
X-Received: by 10.195.12.167 with SMTP id er7mr13854723wjd.54.1424616098516;
        Sun, 22 Feb 2015 06:41:38 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dm6sm11684323wib.22.2015.02.22.06.41.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 06:41:37 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8192u: Convert comments from C99 to C89 style.
Date: Sun, 22 Feb 2015 15:41:31 +0100
Message-Id: <f035e5f9fc45c858813c09f5c2806a7c6be5a190.1424616034.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424616034.git.ksenija.stanojevic@gmail.com>
References: <cover.1424616034.git.ksenija.stanojevic@gmail.com>

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 53 +++++++++++-----------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index afbd09d..f25ff0e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -31,7 +31,7 @@
 *******************************************************************************/
 
 #include <linux/compiler.h>
-//#include <linux/config.h>
+/* #include <linux/config.h> */
 #include <linux/errno.h>
 #include <linux/if_arp.h>
 #include <linux/in6.h>
@@ -141,7 +141,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	spin_lock_init(&ieee->wpax_suitlist_lock);
 	spin_lock_init(&ieee->bw_spinlock);
 	spin_lock_init(&ieee->reorder_spinlock);
-	//added by WB
+	/* added by WB */
 	atomic_set(&(ieee->atm_chnlop), 0);
 	atomic_set(&(ieee->atm_swbw), 0);
 
@@ -152,8 +152,8 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee->privacy_invoked = 0;
 	ieee->ieee802_1x = 1;
 	ieee->raw_tx = 0;
-	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
-	ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
+	/* ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead. */
+	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
 
 	ieee80211_softmac_init(ieee);
 
@@ -164,7 +164,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 		goto failed;
 	}
 	HTUpdateDefaultSetting(ieee);
-	HTInitializeHTInfo(ieee); //may move to other place.
+	HTInitializeHTInfo(ieee); /* may move to other place. */
 	TSInitialize(ieee);
 
 	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
@@ -176,7 +176,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	  ieee->last_packet_time[i] = 0;
 	}
 
-//These function were added to load crypte module autoly
+/* These function were added to load crypte module autoly */
 	ieee80211_tkip_null();
 	ieee80211_wep_null();
 	ieee80211_ccmp_null();
@@ -195,8 +195,8 @@ void free_ieee80211(struct net_device *dev)
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
@@ -222,24 +222,25 @@ void free_ieee80211(struct net_device *dev)
 
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
+			    IEEE80211_DL_ERR /* awayls open this
+					       * flags to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
 
-- 
1.9.1


