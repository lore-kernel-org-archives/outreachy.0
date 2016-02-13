X-GM-THRID: 6250414560297091072
X-Received: by 10.50.73.102 with SMTP id k6mr1334717igv.4.1455338060061;
        Fri, 12 Feb 2016 20:34:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.166 with SMTP id q6ls346215igr.34.canary; Fri, 12 Feb
 2016 20:34:19 -0800 (PST)
X-Received: by 10.107.133.10 with SMTP id h10mr5873866iod.8.1455338059786;
        Fri, 12 Feb 2016 20:34:19 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u66si1973037pfa.2.2016.02.12.20.34.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:34:19 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 71so4804850pfv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yrLHGcoayJPj3Lz91GQZ8kPVGpA2i8ANY5UFmCUvrVo=;
        b=hgAeaVUAlZO1GvImMdqYtsELLJ2iN6RxVWHJR+l/r4WYIVtIWrzUpAy4WFUrG5RDkG
         LATL5aHgP15hWn8+Rz/KGCepbhY2CukmbCqwGqwis0vQckOgIJv73nWtF8H0VjQPOfMf
         ZKWl5I2lYgbL+JbKbJ2rt7Wc9RgBOm/4RsrNyRN24vIpYBrfFE3bSIi1ubDQI0JKUDZ/
         HbTyHhK1wO4xRW0yQ6q8KOUDpxTwQTxA4o9+Z4Qk1lkchHSjoc9E5xlRK4osFR8Mezs7
         xt/pQ8Y8M93LYtc6J1V7SKPluj++OtDowwzWjvBeo6ySLUWHuhjWy0Giwz3XWMlCh/gu
         EWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=yrLHGcoayJPj3Lz91GQZ8kPVGpA2i8ANY5UFmCUvrVo=;
        b=i8MH0eDlCpdWX6bArkOoEW9fG3FaPBlP2YtL41/IeWVO3UhDK8hhqTZ7+sW+o4Ev94
         +4ejB3c3y/9dqaq9Q1k1HUlC7M6rYOS+n31DT1BvD5txou8SPb21BYJ5RUtEAPebj66U
         wV/53/RdOWtCTYhzjznrjvoc+btUoOXSwfoQS3P9r/9BQaq1Uw5eiQUvtefRmKyC/vdX
         /WzuxRgps5c/MKyRy72uAFkvB7Sm12TC+J2hSna2jzqBQKhPbuxc7ETyfLqLwWXw3NTm
         WNznVikV0arjOXf7ybACiRsvBd3M7LKtFkcMJph+t80OkDKsJQdTwOEu13CqkZXR8EPr
         GNUg==
X-Gm-Message-State: AG10YORDp8NgCPoQbPLrgeVceDNreGMnj14oSjW5tfN+cl8C+LKgnLi5205WmNWBVGYCSA==
X-Received: by 10.98.74.93 with SMTP id x90mr7366663pfa.80.1455338059642;
        Fri, 12 Feb 2016 20:34:19 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id 70sm22756914pfs.78.2016.02.12.20.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:34:19 -0800 (PST)
Date: Sat, 13 Feb 2016 10:04:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/6] staging: rtl8192u: r8192U_dm: Replace MSECS with
 msecs_to_jiffies
Message-ID: <20160213043416.GA6338@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/rtl8192u/r8192U_dm.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 9b58b1a..d2e86b9 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2769,12 +2769,14 @@ void dm_fsync_timer_callback(unsigned long data)
 		if (bDoubleTimeInterval) {
 			if (timer_pending(&priv->fsync_timer))
 				del_timer_sync(&priv->fsync_timer);
-			priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
+			priv->fsync_timer.expires = jiffies +
+				msecs_to_jiffies(priv->ieee80211->fsync_time_interval*priv->ieee80211->fsync_multiple_timeinterval);
 			add_timer(&priv->fsync_timer);
 		} else {
 			if (timer_pending(&priv->fsync_timer))
 				del_timer_sync(&priv->fsync_timer);
-			priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval);
+			priv->fsync_timer.expires = jiffies +
+				msecs_to_jiffies(priv->ieee80211->fsync_time_interval);
 			add_timer(&priv->fsync_timer);
 		}
 	} else {
@@ -2847,7 +2849,8 @@ static void dm_StartSWFsync(struct net_device *dev)
 	}
 	if (timer_pending(&priv->fsync_timer))
 		del_timer_sync(&priv->fsync_timer);
-	priv->fsync_timer.expires = jiffies + MSECS(priv->ieee80211->fsync_time_interval);
+	priv->fsync_timer.expires = jiffies +
+			msecs_to_jiffies(priv->ieee80211->fsync_time_interval);
 	add_timer(&priv->fsync_timer);
 
 	write_nic_dword(dev, rOFDM0_RxDetector2, 0x465c12cd);
-- 
1.9.1


