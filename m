X-GM-THRID: 6205557909558919168
X-Received: by 10.129.148.129 with SMTP id l123mr3593853ywg.35.1444844042426;
        Wed, 14 Oct 2015 10:34:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.115 with SMTP id w106ls338480qgd.20.gmail; Wed, 14 Oct
 2015 10:34:01 -0700 (PDT)
X-Received: by 10.129.109.211 with SMTP id i202mr3600941ywc.16.1444844041774;
        Wed, 14 Oct 2015 10:34:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si955078pbc.1.2015.10.14.10.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 10:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id p3so12117042pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 10:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AjKB3e3U4k7phDvdVUl3pOTXI9dWoPt0Bg8HnFlvc24=;
        b=RBka672po+og8U88pNgyVsVM0eqt70i0FK+qtVrj7meccngwa1ipgBXMdSpF/dMOu/
         XFxzbD4nz7W9oRavKorMIbA5HCocMlkSsCRnQ//92aTWtrRtGJVE7p0umK7Zoae6u8Q6
         w5nbcpynLn7t/SojIU5ulkN97sfQz0jcHaZ+rTxd5w0Ltskl8bAEUartF0SsNm0MzAN4
         lSVg2NZUUoSTmIAfXTxba0ptqkRzTNOR3CIMAD6n2AZ5fHbZ0SMgfjWqKlgWb0m2jF7D
         nRNUbEV89Wwaud+aoN7gJmVv/PI5cDiwIQFl+854Jf7JHCaYHO1uSXMOVHnUsmdQ8/BM
         ck7w==
X-Received: by 10.66.165.106 with SMTP id yx10mr4870508pab.102.1444844041633;
        Wed, 14 Oct 2015 10:34:01 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id b7sm10828340pas.31.2015.10.14.10.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 10:34:00 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:03:50 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: ieee80211_softmac: Remove extra NULL check
Message-ID: <20151014173350.GA19821@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL check on a variable as it is already preceded by one.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index c443e2e..fcbd59f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1463,10 +1463,8 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
 				}
 				memcpy(&ieee->current_network, net, sizeof(struct ieee80211_network));
 
-				if (!ssidbroad) {
-					strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
-					ieee->current_network.ssid_len = tmp_ssid_len;
-				}
+				strncpy(ieee->current_network.ssid, tmp_ssid, IW_ESSID_MAX_SIZE);
+				ieee->current_network.ssid_len = tmp_ssid_len;
 				printk(KERN_INFO"Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",ieee->current_network.ssid,ieee->current_network.channel, ieee->current_network.qos_data.supported, ieee->pHTInfo->bEnableHT, ieee->current_network.bssht.bdSupportHT);
 
 				//ieee->pHTInfo->IOTAction = 0;
-- 
2.1.0


