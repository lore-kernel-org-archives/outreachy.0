X-GM-THRID: 9979778039808
X-Received: by 10.42.24.201 with SMTP id x9mr1916964icb.30.1427375745555;
        Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.42 with SMTP id f10ls2350883igq.14.canary; Thu, 26 Mar
 2015 06:15:45 -0700 (PDT)
X-Received: by 10.50.178.143 with SMTP id cy15mr9468542igc.4.1427375745354;
        Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id iw3si677588pbd.1.2015.03.26.06.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id ni2so62454959pdb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=B4IXmvAXcZczRGeoL/HMXY5CwRmMRZHrCxeiW1xnEHc=;
        b=YsWkXbR5u5zFfLHGEb+Nncje9S8RPL9CqYFmyA8Gvqp+00Oqob34sUBrt45Y/BD9SQ
         fE/fErB002iu6Iu+9RdvkeAUrZ81GZ2785D84p4VWWZDErfvFodAayHD8oebrzjJd+k+
         MnfdBK4J+KTW7Vc3LTTwEIGU7Vf3CIY+Y0aMDompJ4rhLsCNLLJobZA+xVATm3EcEzYA
         i693XexCHCxFfk4pGWuKiliJSea9dSTYz7yJ9WCC1d1TStKj/7DqE/wCUg9S2m5gB/Oj
         HEbt37j8rkFh/bfCbVcBdY7RbD4yklB4xmrFL+5NRuSrpzIwMgq1pu2oaOm07L+4Mx8j
         yTjA==
X-Received: by 10.70.54.198 with SMTP id l6mr26893751pdp.74.1427375745180;
        Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fr13sm5623018pdb.55.2015.03.26.06.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 06:15:43 -0700 (PDT)
Date: Thu, 26 Mar 2015 18:43:26 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192u: Make function static
Message-ID: <20150326131326.GA9213@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This function is used in only one c file and so
its definition is removed from the header file
and it is declared as static.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8192u/r8192U.h      | 1 -
 drivers/staging/rtl8192u/r8192U_core.c | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index 6c2e438..221dbd7 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -1153,7 +1153,6 @@ typedef enum {
 
 bool init_firmware(struct net_device *dev);
 short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb);
-short rtl8192_tx(struct net_device *dev, struct sk_buff *skb);
 
 u32 read_cam(struct net_device *dev, u8 addr);
 void write_cam(struct net_device *dev, u8 addr, u32 data);
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index cbcdcf2..7e3671c 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -942,7 +942,7 @@ static void rtl8192_data_hard_resume(struct net_device *dev)
 {
 	// FIXME !!
 }
-
+static short rtl8192_tx(struct net_device *dev, struct sk_buff *skb);
 /* this function TX data frames when the ieee80211 stack requires this.
  * It checks also if we need to stop the ieee tx queue, eventually do it
  */
@@ -1487,7 +1487,7 @@ static void tx_zero_isr(struct urb *tx_urb)
  * skb->cb will contain all the following information,
  * priority, morefrag, rate, &dev.
  * */
-short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
+static short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
-- 
1.9.1


