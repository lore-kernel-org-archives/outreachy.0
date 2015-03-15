X-GM-THRID: 8361998286848
X-Received: by 10.182.112.167 with SMTP id ir7mr60395352obb.29.1426390981511;
        Sat, 14 Mar 2015 20:43:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.164 with SMTP id c33ls2315832qga.42.gmail; Sat, 14 Mar
 2015 20:43:01 -0700 (PDT)
X-Received: by 10.236.230.39 with SMTP id i37mr55557345yhq.47.1426390981332;
        Sat, 14 Mar 2015 20:43:01 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id gu4si1135009pac.1.2015.03.14.20.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 20:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22b.google.com with SMTP id cz9so23887471pdb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 20:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=e/rwXOGSWpDRKIhcCZa/HOO4BYOaCDO5nttq6LhKU9s=;
        b=PMan6yYCyDdQpqxWWXnsN/Tad6hYbPgNJfQuCOoT81lgrRB0hRTielBsc6SvCTBErv
         YZpolAlFdQldq50fg81xydaAzAYPUWmviifuq0Ifv+roYa10DY0eQOH+Lvz0IumgTEgh
         qG1GUwnr3v6jgSdBSLR2SaYBoBUDIRCQIoauI0KL2YfzFV4Z31IRXlJEZdHtrB/8Mtps
         xm0CvNWM6WC/ZzHnxI9wTmr7DulsWz0IG0Gyjoqvz+5LKXRNqz5QQLMOYj8gK9h89eDP
         6eO8nY2FlALzbpSNsuzc/TQTr+U/TUMxgeZe4LPiHXapI1XsKKHiRHRAMJLSAGMA3pDa
         B5vg==
X-Received: by 10.66.63.7 with SMTP id c7mr121729224pas.13.1426390981184;
        Sat, 14 Mar 2015 20:43:01 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id lr1sm10521846pab.39.2015.03.14.20.42.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Mar 2015 20:43:00 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: remove return from end of void function
Date: Sun, 15 Mar 2015 12:42:52 +0900
Message-Id: <1426390972-31372-1-git-send-email-iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

This patch removes the return statement at the end of a void
function as it is not necessary.

found by checkpatch.pl: WARNING: void function return statements
are not generally useful

changes made using coccinelle script:

@@
@@

... when != if (...) return;
    when != if (...) { ... return;}
-return;

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8f7a321..6f89939 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -827,7 +827,6 @@ void rtl8192_rtx_disable(struct net_device *dev)
 		netdev_warn(dev, "skb_queue not empty\n");
 
 	skb_queue_purge(&priv->skb_queue);
-	return;
 }
 
 inline u16 ieeerate2rtlrate(int rate)
@@ -966,8 +965,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 	ret = rtl8192_tx(dev, skb);
 
 	spin_unlock_irqrestore(&priv->tx_lock, flags);
-
-	return;
 }
 
 /* This is a rough attempt to TX a frame
@@ -2067,7 +2064,6 @@ static void rtl8192_refresh_supportrate(struct r8192_priv *priv)
 		memcpy(ieee->Regdot11HTOperationalRateSet, ieee->RegHTSuppRateSet, 16);
 	else
 		memset(ieee->Regdot11HTOperationalRateSet, 0, 16);
-	return;
 }
 
 static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
@@ -2507,7 +2503,6 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 	//we need init DIG RATR table here again.
 
 	RT_TRACE(COMP_EPROM, "<===========%s()\n", __func__);
-	return;
 }
 
 static short rtl8192_get_channel_map(struct net_device *dev)
-- 
2.1.0


