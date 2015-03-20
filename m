X-GM-THRID: 9311491194880
X-Received: by 10.180.75.232 with SMTP id f8mr3019574wiw.0.1426873565551;
        Fri, 20 Mar 2015 10:46:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls490270lab.39.gmail; Fri, 20 Mar
 2015 10:46:05 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr10383076lbc.1.1426873565006;
        Fri, 20 Mar 2015 10:46:05 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id el6si160591wib.0.2015.03.20.10.46.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 10:46:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id g7so150579676wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 10:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=A0qDK62J6G81me2H509wqOR63FHFL/l/oOGhUHgdNKk=;
        b=NOoE7U4qdFRbpxeSwYTsdJjbJynMmAa79EmPDHhxA71+tIZanG1hsKtEOjqJhcCyBl
         tJOEhm+1GOqBrLlpA5ON3B+Z24RpraID7oYUCw2UM5rlws/Ij0jwlzGfH8dqvfbd446c
         nktK/CEfIYR8ds7C85TBErqX80L8UKTFBhbiqKlGUy53DqLA7dTrLME0deWUykeqTyY5
         IVa0oeNhBjw5ataN+RjjTu2KvNshBV+U3HJX3AnzdogCdrd8Mn0Df7tDvQBtKL9WaCka
         YRAbvcRq2BbGQyeq0X8OuVAKGzhoptOdTHjfniHD32Tta8azY0XrQ6tfBXWTSvkeymo2
         NGag==
X-Received: by 10.194.47.201 with SMTP id f9mr159917901wjn.17.1426873564789;
        Fri, 20 Mar 2015 10:46:04 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id m4sm7277647wjb.25.2015.03.20.10.46.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2015 10:46:04 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Change C99 // comments
Date: Fri, 20 Mar 2015 19:45:56 +0200
Message-Id: <1426873556-30115-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the all '//' and instead of '/* */' put.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 40 +++++++++++-----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a35ba01..6763ac5 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -152,7 +152,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
 	ieee->privacy_invoked = 0;
 	ieee->ieee802_1x = 1;
 	ieee->raw_tx = 0;
-	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
+	/* ieee->hwsec_support = 1;  defalt support hw security. //use module_param instead. */
 	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
 
 	ieee80211_softmac_init(ieee);
@@ -195,8 +195,8 @@ void free_ieee80211(struct net_device *dev)
 {
 	struct ieee80211_device *ieee = netdev_priv(dev);
 	int i;
-	/* struct list_head *p, *q; */
-//	del_timer_sync(&ieee->SwBwTimer);
+	/* struct list_head *p, *q; 
+	del_timer_sync(&ieee->SwBwTimer); */
 	kfree(ieee->pHTInfo);
 	ieee->pHTInfo = NULL;
 	RemoveAllTS(ieee);
@@ -222,23 +222,23 @@ void free_ieee80211(struct net_device *dev)
 
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
+	/*		    IEEE80211_DL_INFO	|
+			    IEEE80211_DL_WX	|
+			    IEEE80211_DL_SCAN	|
+			    IEEE80211_DL_STATE	|
+			    IEEE80211_DL_MGMT	|
+			    IEEE80211_DL_FRAG	|
+			    IEEE80211_DL_EAP	|
+			    IEEE80211_DL_DROP	|
+			    IEEE80211_DL_TX	|
+			    IEEE80211_DL_RX	|
+			    IEEE80211_DL_QOS    |
+			    IEEE80211_DL_HT	|
+			    IEEE80211_DL_TS	|
+			    IEEE80211_DL_BA	|
+			    IEEE80211_DL_REORDER|
+			    IEEE80211_DL_TRACE  |
+			    IEEE80211_DL_DATA	| */
 			    IEEE80211_DL_ERR	  /* awayls open this flags to show error out */
 			    ;
 static struct proc_dir_entry *ieee80211_proc;
-- 
1.9.1


