X-GM-THRID: 6510934491136
X-Received: by 10.112.214.234 with SMTP id od10mr370806lbc.3.1425452435446;
        Tue, 03 Mar 2015 23:00:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.6 with SMTP id iy6ls125150lac.38.gmail; Tue, 03 Mar
 2015 23:00:33 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr384298lax.10.1425452433958;
        Tue, 03 Mar 2015 23:00:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id r6si254235wix.0.2015.03.03.23.00.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 23:00:33 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so44331522wev.8
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 23:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MC5p26XXlvKl5CyZreGM2NtsU9vP52O7UnhlTToehmA=;
        b=SsOOgoO8O620lJVlzyL0gqWVYC7P26NeF7P9psoSfRjLGaSwWX1MpxyB5Pbhp3gmPK
         MhHVJgSguq+dlqZu+it2IHfegqb6lv4UpO442G16K2tjCCxY4UdpFrNNhMVPIiKh1BeU
         +0L4IgtvGzovyVnLv8qjcldlna2OIQbUIfCP5NtmPsNbqehyPgp4nqUe7RrD55N5Aaen
         fYGNBWIRPWxzCoMZJFmHGKHT30qDC56f/SPjDqG/6casvfeG0Soh59dKhFfvttAefOUW
         NEqpQ248JgUv5Y4fMH8Yh0sfVDoMFidk0tY0mh+z8XljIYZW2bcLBZhB9x8hGwdEe44U
         EjKg==
X-Received: by 10.181.8.225 with SMTP id dn1mr54081919wid.55.1425452433819;
        Tue, 03 Mar 2015 23:00:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id r3sm4561596wjw.7.2015.03.03.23.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 23:00:33 -0800 (PST)
Date: Wed, 4 Mar 2015 09:00:02 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: replace memset(x,0,ETH_ALEN)
Message-ID: <e25d42aa9b7e92de8243b6a961a5019e1ea65fdd.1425451828.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425451828.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425451828.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

eth_zero_addr() is a wrapper function for memset if 0 is going to
be assigned to a mac address. The aforementioned function replaces
memset. In addition, linux/etherdevice.h was included as a header
since it is the file that defines the inline function eth_zero_addr().
The changes were carried out using the following coccinelle script:

@header@
@@

#include <linux/etherdevice.h>

@eth_zero_addr@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e);

@eth_broadcast_addr@
identifier e;
@@

-memset(e,\(0xff\|0xFF\|255\),ETH_ALEN);
+eth_broadcast_addr(e);

@linux_header depends on !header && (eth_zero_addr || eth_broadcast_addr) @
@@

+ #include <linux/etherdevice.h>
+

@special_header depends on !header && !linux_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>
+

@custom_header depends on !header && !linux_header && !special_header && (eth_zero_addr || eth_broadcast_addr) @
@@

+
+ #include <linux/etherdevice.h>

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
v1: There is a line that issues an 80 character limit warning but is
better left as is since whitespaces are not welcome after (, -> and .

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 5d4470a..eacba8c 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -46,6 +46,8 @@
 #include <linux/semaphore.h>
 #include <net/iw_handler.h>
 #include <linux/if_arp.h>
+#include <linux/etherdevice.h>
+
 
 #define RTL_IOCTL_WPA_SUPPLICANT	(SIOCIWFIRSTPRIV + 0x1E)
 
@@ -112,7 +114,7 @@ void r8712_indicate_wx_disassoc_event(struct _adapter *padapter)
 	union iwreq_data wrqu;
 
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
-	memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
+	eth_zero_addr(wrqu.ap_addr.sa_data);
 	wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, NULL);
 }
 
@@ -852,8 +854,7 @@ static int r871x_wx_set_pmkid(struct net_device *dev,
 			    strIssueBssid, ETH_ALEN)) {
 				/* BSSID is matched, the same AP => Remove
 				 * this PMKID information and reset it. */
-				memset(psecuritypriv->PMKIDList[j].Bssid,
-					0x00, ETH_ALEN);
+				eth_zero_addr(psecuritypriv->PMKIDList[j].Bssid);
 				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
@@ -1118,7 +1119,7 @@ static int r8711_wx_get_wap(struct net_device *dev,
 				     WIFI_AP_STATE))
 		memcpy(wrqu->ap_addr.sa_data, pcur_bss->MacAddress, ETH_ALEN);
 	else
-		memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);
+		eth_zero_addr(wrqu->ap_addr.sa_data);
 	return 0;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

