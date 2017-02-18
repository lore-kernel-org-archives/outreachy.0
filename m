X-GM-THRID: 6388328536690655232
X-Received: by 10.200.36.27 with SMTP id c27mr3491485qtc.0.1487400901405;
        Fri, 17 Feb 2017 22:55:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls6322182otb.26.gmail; Fri, 17 Feb
 2017 22:55:01 -0800 (PST)
X-Received: by 10.129.120.145 with SMTP id t139mr3619914ywc.65.1487400900997;
        Fri, 17 Feb 2017 22:55:00 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si1161152pfk.5.2017.02.17.22.55.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:55:00 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e4so5625924pfg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 22:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wSvNj4HbXFrMMJvLly53AgO3b1cyqX6QXXeEbsm+nJY=;
        b=PT0KDTzOYI5PSY7sP5OOKo2j7QByyZyH0G1aerHlhbq7svECYrZtIis7LlGI3JVFHF
         PDugFfKcveWLwSr6jlfd/FCDNr5EtZaPEP7MhX3Ewdpj9MBAPapyPErtW3pNOEQpSW5N
         PjJe1d80sKkkRlPuS8fMUA6XBKZkn7YKCVh0WlIb//u8bKp6tKwdlWySp4btCn4A5aot
         E+yD1ZVEED4edoJ2YM9AtK7tvcGWVNlfKHAopaIV0N/vcfA1CjepNI+jracX0SIQydLE
         lhONl921I0w7NNBKPb0JHkSX5KQR+h61B1WoOzAtQTSNtYGlRTLWgBFBx2Qyia+qZj5W
         m8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wSvNj4HbXFrMMJvLly53AgO3b1cyqX6QXXeEbsm+nJY=;
        b=fW1Kr+BY0Yztx9A5wyuwuIv6rkhJ/jIklG3S9Sh07xnn95TwEdgLS8slNjyfUm6iXi
         WjMUNp6G/pTMkRgVdpDK4d2jIqOn9nDYXM+OP7/f3J4QD6T78n2fxskmH78fYSzxZvA3
         ddIgkAa5kz4vxWTUdoETQ65lT4t2alEXMjwNQYZgKw/ZpK+b8W4+uzfWw30bekVW6gIZ
         Li09GcahJcowmBGWL87DtlbW7vlGw9f69q4RJaqkSCJ7JNq2tXd5Mo712r7nGGg56lfT
         SckfBnVOZP5ls9ppWlKM3w3o5Evknxj2UMm3ldISId5YRJNS559d0dUNgNFtJXOCAgb7
         4kjg==
X-Gm-Message-State: AMke39ncGt9GDHzcb3fJe+BVveBwQTv+u5d0650v2rgdj9uwi7q+g7bvMERfIvb36e6wQg==
X-Received: by 10.84.130.34 with SMTP id 31mr16641321plc.111.1487400900548;
        Fri, 17 Feb 2017 22:55:00 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id s71sm22976742pfi.125.2017.02.17.22.54.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 22:54:59 -0800 (PST)
Date: Sat, 18 Feb 2017 12:24:44 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8192u: ieee80211: Remove typedef to structure
 _bandwidth_autoswitch
Message-ID: <20170218065444.GA26078@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
it. Also rename the structure to bandwidth_autoswitch since an underscore
is normally prepended to indicate a hidden name, which is not the case
here.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Renamed the structure from _bandwidth_autoswitch to bandwidth_autoswitch

 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 176083e..c1fa229 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1461,13 +1461,12 @@ struct tx_pending {
 	struct ieee80211_txb *txb;
 };
 
-typedef struct _bandwidth_autoswitch {
+struct bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
-	long	threshold_40Mhzto20Mhz;
+	long threshold_40Mhzto20Mhz;
 	bool bforced_tx20Mhz;
 	bool bautoswitch_enable;
-} bandwidth_autoswitch, *pbandwidth_autoswitch;
-
+};
 
 //added by amy for order
 
@@ -1873,7 +1872,7 @@ struct ieee80211_device {
 	Fsync_State			fsync_state;
 	bool		bis_any_nonbepkts;
 	//20Mhz 40Mhz AutoSwitch Threshold
-	bandwidth_autoswitch bandwidth_auto_switch;
+	struct bandwidth_autoswitch bandwidth_auto_switch;
 	//for txpower tracking
 	bool FwRWRF;
 
-- 
2.7.4


