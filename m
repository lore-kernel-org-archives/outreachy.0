X-GM-THRID: 1779965100032
X-Received: by 10.180.8.67 with SMTP id p3mr661769wia.7.1424609417625;
        Sun, 22 Feb 2015 04:50:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.101 with SMTP id a5ls386924wix.6.canary; Sun, 22 Feb
 2015 04:50:17 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr706987wjz.0.1424609417339;
        Sun, 22 Feb 2015 04:50:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id el6si478636wib.2.2015.02.22.04.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 04:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f178.google.com with SMTP id em10so11371089wid.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 04:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RA5t42i7+C/SSmubxI1Xx0dUD95WTqPX3mV5F/5X3AI=;
        b=TrKaisied6iE2Udks/sVJATm9p7fPdZyrovifmHRns/Ig4HeK+A4hgOi3yxYWzhXfg
         IMkUZkuS+/CF4WkbjdiVbWH0Yud3Kg7URA6l6YpGsWfsfUhB3ar1MlTXJULINlGsj4rz
         0XfU5kos4ZsUB88pa5xdAgFMhli4qVNQzM5263Fe7SjcnjLLJT/810TcFJt2OJqY5qiV
         FmqbYiRrestAjGAWYfZPlrCi+nX8gVXu9bhZ/pInKN+DUFBjP56m1UZuDT7zyh2ICVa0
         9WfpIRfWi+cos2MaNEJy3BTYQgX0+9WDFOdcLq3Ciy60tQOceXuY2JhtgVLA/Gp6eXFm
         SPwg==
X-Received: by 10.180.8.65 with SMTP id p1mr11744035wia.42.1424609417246;
        Sun, 22 Feb 2015 04:50:17 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id x6sm51017667wjf.24.2015.02.22.04.50.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 04:50:16 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fix do not use // c99 comments.
Date: Sun, 22 Feb 2015 14:50:06 +0200
Message-Id: <1424609406-6259-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "do not use // C99 comments" errors in ieee80211_module.c 

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index afbd09d..d8900dd 100644
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
 
@@ -153,7 +153,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee->ieee802_1x = 1;
 	ieee->raw_tx = 0;
 	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
-	ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
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
@@ -195,7 +195,7 @@ void free_ieee80211(struct net_device *dev)
 {
 	struct ieee80211_device *ieee = netdev_priv(dev);
 	int i;
-	//struct list_head *p, *q;
+	/* struct list_head *p, *q; */
 //	del_timer_sync(&ieee->SwBwTimer);
 	kfree(ieee->pHTInfo);
 	ieee->pHTInfo = NULL;
@@ -239,7 +239,7 @@ static int debug = \
 	//		    IEEE80211_DL_REORDER|
 //			    IEEE80211_DL_TRACE  |
 			    //IEEE80211_DL_DATA	|
-			    IEEE80211_DL_ERR	  //awayls open this flags to show error out
+			    IEEE80211_DL_ERR	  /* awayls open this flags to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
 
-- 
1.9.1


