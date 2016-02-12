X-GM-THRID: 6250414560297091072
X-Received: by 10.50.7.6 with SMTP id f6mr2704493iga.2.1455288045654;
        Fri, 12 Feb 2016 06:40:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.68 with SMTP id l65ls899584iod.64.gmail; Fri, 12 Feb
 2016 06:40:45 -0800 (PST)
X-Received: by 10.66.193.225 with SMTP id hr1mr1639683pac.34.1455288045304;
        Fri, 12 Feb 2016 06:40:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id tn7si1542778pac.1.2016.02.12.06.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:40:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so4063713pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=O2geSxHVHvTBwRdu3vElqoRLGkrAhCtkkRCDLqEpW74=;
        b=qOo1WzcM1krnEcgODPLbeF52Bik7Gt7ptZAiPa3XKXENGXPKuBK7lz97SD1NDVGxUQ
         1ky5bK7blwoV5fD1NoO5jDPvlHAL8WbN8+VDXxsv1kaQtCdbYcJ2fv4UlOKQ+ZgqyBH9
         JL+xzHcfc8bqo7zSJNlB5jMArlnv1jG/slH5HzA/cs6iaYAiNT3vdxqMo4g+YtsIdQoH
         xkoIYixNdQ/A6SwO0VyY9yiv2tAmCs2qNvkbiCubaQsJyS1METLlNlCizH2aT2jZGQwM
         AQMVmC6vKFRjyqL7lylnDtQEwdb2nRefQzsa5sNS5z0PBwMHq/NueT3e3zkprUan/XOJ
         cElw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=O2geSxHVHvTBwRdu3vElqoRLGkrAhCtkkRCDLqEpW74=;
        b=jNngxX4hfDwS2/b2ZpDYB2AJ+TzRXM7yAJ4gUbSsqtdCWTAta8sjKSxggVverVgzUZ
         CG5uY/bKNqVd6fqt35s8Y7d9+eORIYobi1REwVxjF5Mo4CMqPJXflRtRnYmqS+fjElAb
         ZNGDACoyvK93qmXjo26HT6dSyhL8Y6xZaMjqD4FEyAvZvH+4pn9M1fw3pim1kPdcF4n0
         ZHFX8bdd9HaJql9xiteElhQ0gBDbhgfamtYFN6P+B+JTwugGPQo/AnOh0PtSv3TmVV4G
         +GMXM3rJs8ZBVXc0rASXFnuUB+0s5+rGW5jvmCUYyv8OU2FX99N6X1PVEkdSTcn8JCWn
         G+MQ==
X-Gm-Message-State: AG10YORalRH5fFTJvshJXqtFr0pjp5iMf/r0n/lIWXasRWFJo5vlIgrGTcLMUbdJiuiLyQ==
X-Received: by 10.98.76.19 with SMTP id z19mr2626048pfa.78.1455288045156;
        Fri, 12 Feb 2016 06:40:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id c24sm20022337pfj.41.2016.02.12.06.40.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:40:44 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8192u: r8192U_dm: Replace MSECS with
 msecs_to_jiffies
Message-ID: <20160212144041.GA1328@amitoj-Inspiron-3542>
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


