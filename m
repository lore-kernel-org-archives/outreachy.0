X-GM-THRID: 6333608176063086592
X-Received: by 10.25.17.205 with SMTP id 74mr473352lfr.30.1474658068354;
        Fri, 23 Sep 2016 12:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.209 with SMTP id u200ls1782877lja.6.gmail; Fri, 23 Sep
 2016 12:14:27 -0700 (PDT)
X-Received: by 10.46.5.68 with SMTP id 65mr470377ljf.28.1474658067640;
        Fri, 23 Sep 2016 12:14:27 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id s6si346258wmb.1.2016.09.23.12.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 12:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id w84so4186897wmg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 12:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nL22At9tDMfiY+gD2RAtwzLSx8P4XT0OWudZwCJpwl8=;
        b=ilJs0QqSx9KEXjiHCYuIFu22ZkRigH0ky2SB27Q4+AiSH+Y0ozorh1AmyhNBwGirOa
         g2IMLbPeFpv5ZiMechN+kGH92k84uXOW/2nqSL13AOAMkq1Se/5c7lKQ2z4XAej65+3T
         UcHPEf+0zAYGS4Ma/lwAt4oFbCKet+0pMahCRiDDGf83mG8jWI2yfR5U81mNfe6TVEdG
         ybUb1Uxl4IwWkkcKC6yi3bfrlRxp1IEs1L+H2jleE59JzMkZxHAoES81zN0oCCL6RaHR
         6rJj3+Zfa51PcL2rXGkR2mvawfpHnwbp373wnr8lY2Noj8nCVy4sdMqfKAhyyD+AQ5t/
         2vKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nL22At9tDMfiY+gD2RAtwzLSx8P4XT0OWudZwCJpwl8=;
        b=YezgTOITt2d4Mz/mAekbM30fiWdWwDx12DJcuwocupU93qW0JvqC0o7+430mH7pd1h
         QvbefNMaavo4lnR7vXFSNUOQmXny/Z1q4FKfyAXI0VB9STNHRLAiUq5O1JmOnAVn1Bcb
         +PPxbIT2nhRuORP2QtEiq9/8hnnlPllM/DJeUzFZkIZGn2xBg8+figvDV5gB7RioXZNU
         UyqzT7F2bH/QfzWhwEcuyP0CLVSULiCe192AhKkeHuZvze5uNZ16YMZcu7YXrdAFsNSu
         WJO2kZgcWCWHtQI11Ftfs4HVfSJuXI+EZgtyNn/SHhbTjQCNLHqlWJC0SprQ4UupUjuj
         1yjw==
X-Gm-Message-State: AA6/9RnRs83xNM5oQYsylKe2qrvpi6/dgomNtPSJfoXcoNTLtYJRAgjP/csrM99fzzEMqA==
X-Received: by 10.195.12.4 with SMTP id em4mr8110024wjd.32.1474658067417;
        Fri, 23 Sep 2016 12:14:27 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id lj2sm8561209wjc.38.2016.09.23.12.14.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 12:14:26 -0700 (PDT)
Date: Fri, 23 Sep 2016 22:14:25 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: ks_wlan_net: Remove unnecessary variable
 used to store return value
Message-ID: <20160923191425.GA6587@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unneeded variable used to store return values.
The reason is to reduce the memory usage.
Done using returnvar.cocci script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index f1cd90e..d13a06b 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -3507,12 +3507,11 @@ int ks_wlan_net_stop(struct net_device *dev)
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 
-	int ret = 0;
 	priv->device_open_status = 0;
 	del_timer_sync(&update_phyinfo_timer);
 
 	if (netif_running(dev))
 		netif_stop_queue(dev);
 
-	return ret;
+	return 0;
 }
-- 
2.7.4


