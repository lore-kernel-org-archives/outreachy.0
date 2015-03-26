X-GM-THRID: 10068144685056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d6641f829ef09360
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.110.200 with SMTP id ic8mr18308914obb.34.1427398305218;
        Thu, 26 Mar 2015 12:31:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.197 with SMTP id y5ls23342igl.26.canary; Thu, 26 Mar
 2015 12:31:45 -0700 (PDT)
X-Received: by 10.50.57.47 with SMTP id f15mr31750596igq.1.1427398305051;
        Thu, 26 Mar 2015 12:31:45 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id pj7si791347pbb.2.2015.03.26.12.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id op1so71994379pdb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=B4IXmvAXcZczRGeoL/HMXY5CwRmMRZHrCxeiW1xnEHc=;
        b=eQvkHon8hV507vEFdSbJk5nBcg40GMz4uWactHw0NUG9/N76/pvyIrJA1/lzhrguo6
         QbtqKCMH7wIYo+5BCPVGBMv8JBaEMUTIqozjYuDvcNGE2d+WxNiFqSVpJgaQ7A0e33Wr
         +LFKOy2i/oOF5m3hXszCegWT77HSo6LEVVRmMpfa5bbJxh4G+ScoSPboqfQmZe4NTG+7
         PX8Cdo8ndCM/OqJxaeOIQTpIDGFx0nZ1lk/3BqvqHcE1Z0t40aZ5+98SMsypuHE5uHDN
         uyBv0I+TJDVmlEJFB+ptab0WQlKoJolRimwqPq1O3AN1uvhyrIx2FDge9k404Msl05D4
         syUQ==
X-Received: by 10.66.137.98 with SMTP id qh2mr29081064pab.76.1427398304956;
        Thu, 26 Mar 2015 12:31:44 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ov5sm6388174pdb.91.2015.03.26.12.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 12:31:43 -0700 (PDT)
Date: Fri, 27 Mar 2015 00:59:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8192u: Make function static
Message-ID: <c4cc5e33cfd1b952cb5da692b4dbae6f4611a16c.1427397436.git.vatikaharlalka@gmail.com>
References: <cover.1427397436.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427397436.git.vatikaharlalka@gmail.com>
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


