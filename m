X-GM-THRID: 6331202607933030400
X-Received: by 10.237.53.90 with SMTP id b26mr7594106qte.8.1474097978737;
        Sat, 17 Sep 2016 00:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls5243767oth.38.gmail; Sat, 17 Sep
 2016 00:39:38 -0700 (PDT)
X-Received: by 10.200.54.136 with SMTP id a8mr11433991qtc.5.1474097978346;
        Sat, 17 Sep 2016 00:39:38 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si4954540pfe.0.2016.09.17.00.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so4370900pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Yuvxt9Fb9aLi18iCzbVLSrtOZpTbjmbAzlmCuN5ij5I=;
        b=CHpLukqnU5YEh48imlkYcJwHNXLXf8ij7PbJotcKKBWz7yVUDObydXq884J+Ct9g0q
         D/VKyw6eZeVx0slebfetGGtWzkCzKNpx1iVHhzknXiFNWnUBCgLVpHO7BMcmyu/Tscqx
         0hKgUMgIliJMW106FknDHOiUn0c7szwHAMfOM2pfrf7nZb7lvfBnE0MAvvs4NhcEhPKo
         SiyGZ6GbqrAhFU7Tl/MFFL3J0j7CShIEGYLiTsAlInkfCxEceX7J86WkSXFolWLNv66b
         vN9qzqVV5pA7iwtxjVAx3RJLnEUEGezXfurwlf12RtPPVRb+nl/Ro/WxOj9DS0G3+OeX
         dHtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Yuvxt9Fb9aLi18iCzbVLSrtOZpTbjmbAzlmCuN5ij5I=;
        b=cVpqXJ3HCreGM5IjNsvEEUW3GZZMhRqOm6bDslyCkJIAdhWL38KEEbRjmRTu+uiRw6
         0wsJOoRHMy7sWQntSVHnTxiZJg/aOjffociwydjbemRajDsIDb8YiGgbQ6kyrmj5Jv7v
         T7rTdg/Y0nHmCgKgDJDZadeEsDCxfvo6SCmiAW4laFRVgWjYxw9aO0qWHCRtDV5gJeKo
         IL9xVilOnvsR29/7O31qu3HDYKdDpE3NvqfIep965Kez3Irr+kuOzignukabWnmjOoTK
         S40/DHM9fcxzgDf1cWlti2LtOlOUVJoOtLtQUiQolwWk3RvmR5Y7hD4HbTyn1c+bSs5H
         autA==
X-Gm-Message-State: AE9vXwOfamaJRnv3VK6Hgvwv3ks24qvb5Tt6JfMjlCogcO2THjejtXSOBIyO7rcYikI0Cw==
X-Received: by 10.66.10.7 with SMTP id e7mr15519564pab.172.1474097978117;
        Sat, 17 Sep 2016 00:39:38 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.142.8])
        by smtp.gmail.com with ESMTPSA id an11sm16792766pac.26.2016.09.17.00.39.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 00:39:36 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 17 Sep 2016 13:09:14 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: ks7010: Remove extern keyword from function declaration
Date: Sat, 17 Sep 2016 13:09:13 +0530
Message-Id: <1474097953-4884-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove extern specifier from function declaration as they have
it by default. Also move extern declaration from .c files to 
their respective header file 'ks_hostif.h'. Coccinelle was used 
to remove extern and other changes were done by hand.
Script:
@@
identifier func;
type T;
@@
- extern
T func(...);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c     |  9 ---------
 drivers/staging/ks7010/ks_hostif.h     | 22 +++++++++++++++-------
 drivers/staging/ks7010/ks_wlan.h       |  4 ++--
 drivers/staging/ks7010/ks_wlan_ioctl.h |  6 +++---
 drivers/staging/ks7010/ks_wlan_net.c   |  4 ----
 drivers/staging/ks7010/michael_mic.h   |  1 -
 6 files changed, 20 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index deb82ab..eb0192d 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -21,15 +21,6 @@
 /* Include Wireless Extension definition and check version */
 #include <net/iw_handler.h>	/* New driver API */
 
-extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
-			 unsigned long size,
-			 void (*complete_handler) (void *arg1, void *arg2),
-			 void *arg1, void *arg2);
-extern void send_packet_complete(void *, void *);
-
-extern void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
-extern int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
-
 /* macro */
 #define inc_smeqhead(priv) \
         ( priv->sme_i.qhead = (priv->sme_i.qhead + 1) % SME_EVENT_BUFF_SIZE )
diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index dc806b5b..ffd0174 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -616,13 +616,21 @@ enum {
 #include "ks_wlan.h"
 
 /* function prototype */
-extern int hostif_data_request(struct ks_wlan_private *priv,
-			       struct sk_buff *packet);
-extern void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
-			   unsigned int size);
-extern void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
-extern int hostif_init(struct ks_wlan_private *priv);
-extern void hostif_exit(struct ks_wlan_private *priv);
+int hostif_data_request(struct ks_wlan_private *priv,
+			 struct sk_buff *packet);
+void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
+	             unsigned int size);
+void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
+int hostif_init(struct ks_wlan_private *priv);
+void hostif_exit(struct ks_wlan_private *priv);
+int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
+		   unsigned long size,
+		   void (*complete_handler) (void *arg1, void *arg2),
+		   void *arg1, void *arg2);
+void send_packet_complete(void *, void *);
+
+void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
+int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
 
 static
 inline int hif_align_size(int size)
diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
index f05dc01..693e7d8 100644
--- a/drivers/staging/ks7010/ks_wlan.h
+++ b/drivers/staging/ks7010/ks_wlan.h
@@ -499,7 +499,7 @@ struct ks_wlan_private {
 	uint wakeup_count;	/* for detect wakeup loop */
 };
 
-extern int ks_wlan_net_start(struct net_device *dev);
-extern int ks_wlan_net_stop(struct net_device *dev);
+int ks_wlan_net_start(struct net_device *dev);
+int ks_wlan_net_stop(struct net_device *dev);
 
 #endif /* _KS_WLAN_H */
diff --git a/drivers/staging/ks7010/ks_wlan_ioctl.h b/drivers/staging/ks7010/ks_wlan_ioctl.h
index 49369e4..84554b6 100644
--- a/drivers/staging/ks7010/ks_wlan_ioctl.h
+++ b/drivers/staging/ks7010/ks_wlan_ioctl.h
@@ -58,9 +58,9 @@
 #include "ks_wlan.h"
 #include <linux/netdevice.h>
 
-extern int ks_wlan_read_config_file(struct ks_wlan_private *priv);
-extern int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
-				   unsigned int commit_flag);
+int ks_wlan_read_config_file(struct ks_wlan_private *priv);
+int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
+		             unsigned int commit_flag);
 
 #endif /* __KERNEL__ */
 
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 70cc9be..ee9c8f3 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -69,10 +69,6 @@ static const struct iw_handler_def ks_wlan_handler_def;
 /*
  *	function prototypes
  */
-extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
-			 unsigned long size,
-			 void (*complete_handler) (void *arg1, void *arg2),
-			 void *arg1, void *arg2);
 static int ks_wlan_open(struct net_device *dev);
 static void ks_wlan_tx_timeout(struct net_device *dev);
 static int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
diff --git a/drivers/staging/ks7010/michael_mic.h b/drivers/staging/ks7010/michael_mic.h
index c7e4eb2..89f17d5 100644
--- a/drivers/staging/ks7010/michael_mic.h
+++ b/drivers/staging/ks7010/michael_mic.h
@@ -20,7 +20,6 @@ struct michel_mic_t {
 	uint8_t Result[8];
 };
 
-extern
 void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
 			uint8_t * Data, int Len, uint8_t priority,
 			uint8_t * Result);
-- 
1.9.1


