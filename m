X-GM-THRID: 2104888393728
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b6f9ba0027ec0340,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr439642lbb.11.1424549897323;
        Sat, 21 Feb 2015 12:18:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls408198lac.92.gmail; Sat, 21 Feb
 2015 12:18:15 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr422458lbb.17.1424549895680;
        Sat, 21 Feb 2015 12:18:15 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id ta1si367624wic.1.2015.02.21.12.18.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:18:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id m14so11253732wev.13
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qkTLD+NBq5G3T/1LSB/hCGGZfWgz7B/XUB5xpCs6cfc=;
        b=Luwju3mSmi8bDe+5oFcTikQMlkGCUubKe1/7Ncb19VUOzJrniIhWFrBsU1Q9zlNWbF
         kUuVZwwSGLLUqd2Y2fky6Dt/ZD2zwCGI0foTaHSU/HDrXR/mB4k6Sv5YTZF5GIyGshn3
         OgeyBnFAKCn6xoj4pu4Um57UFQ0nUMZMNx27D9+XOn+8733YUAzqYT2IMS4+7OJGnve9
         oB49H3tVb9mcv65aDrG0VBm1VwjMa4awDnNuCOr6j+BaOiWyQWogSn2xTgiII3RGAhuI
         rXz+yufGaSLxW8KyVTxO7IWmYBJ8dL/EnNvQmlh6FJy2xnvnyL3onNY3GJKTCOAgkpIf
         a/4Q==
X-Received: by 10.194.193.99 with SMTP id hn3mr7557344wjc.148.1424549895585;
        Sat, 21 Feb 2015 12:18:15 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id fd10sm8342979wib.4.2015.02.21.12.18.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:18:15 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Convert comments from C99 to C89
Date: Sat, 21 Feb 2015 21:18:03 +0100
Message-Id: <1424549883-29082-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index afbd09d..6b6f7a7 100644
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
+/* del_timer_sync(&ieee->SwBwTimer); */
 	kfree(ieee->pHTInfo);
 	ieee->pHTInfo = NULL;
 	RemoveAllTS(ieee);
@@ -222,24 +222,24 @@ void free_ieee80211(struct net_device *dev)
 
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
+	/* IEEE80211_DL_INFO	| */
+	/* IEEE80211_DL_WX	| */
+	/* IEEE80211_DL_SCAN	| */
+	/* IEEE80211_DL_STATE	| */
+	/* IEEE80211_DL_MGMT	| */
+	/* IEEE80211_DL_FRAG	| */
+	/* IEEE80211_DL_EAP	| */
+	/* IEEE80211_DL_DROP	| */
+	/* IEEE80211_DL_TX	| */
+	/* IEEE80211_DL_RX	| */
+			    /* IEEE80211_DL_QOS    | */
+	/* IEEE80211_DL_HT	| */
+	/* IEEE80211_DL_TS	| */
+/* IEEE80211_DL_BA	| */
+	/* IEEE80211_DL_REORDER| */
+/* IEEE80211_DL_TRACE  | */
+			    /* IEEE80211_DL_DATA	| */
+			    IEEE80211_DL_ERR	  /* awayls open this flags to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
 
-- 
1.9.1


