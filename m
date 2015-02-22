X-GM-THRID: 2063631122432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfa74777ed570cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.189.227 with SMTP id gl3mr772425lbc.2.1424619196207;
        Sun, 22 Feb 2015 07:33:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.12 with SMTP id ku12ls372767lac.105.gmail; Sun, 22 Feb
 2015 07:33:14 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr745126lbb.19.1424619194662;
        Sun, 22 Feb 2015 07:33:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id l8si689873wia.0.2015.02.22.07.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so13769603wev.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jJX8bZg7T/DJK1UwfUfdi7j+GEmIIsmy2xSGUDHddwk=;
        b=MXWMRPKMBgBv0aww+Go1hNmuriFXO8VC9AGBY+Yx0GNMbBCpECdzjDyBxLOk20sMVd
         bKjrkGCRpVfj8f1pvq81GmKoqSjMmFfNnXYriCBg20tZ+/s+F6egwx7Dskh+dnah3kbM
         TyLF6tEmXqktGFtYaCH3oKR7VF1urXjZqhSpzgbNhMAyVryVg2VMtFqwvm4Y9LHnMoiZ
         PaxZQ6dYfUrLMvz+uY2Vs2MLgxlN4AmZraN7KUWpSVWYynvVN8I2qWic6wwslDISp1bD
         HTbCDYg+L+Rwvuk3JVCIjPPEidNdGG0Ez/U1ALM/vwdumSpgtKXF/8mToxI/YacB4fBR
         0HhA==
X-Received: by 10.194.57.199 with SMTP id k7mr14083511wjq.1.1424619194577;
        Sun, 22 Feb 2015 07:33:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dt7sm11843998wib.19.2015.02.22.07.33.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 07:33:13 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 1/2] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Sun, 22 Feb 2015 16:33:06 +0100
Message-Id: <b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424618906.git.ksenija.stanojevic@gmail.com>
References: <cover.1424618906.git.ksenija.stanojevic@gmail.com>

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: Remove linux/config.h because it is not used in modern linux versions.
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


