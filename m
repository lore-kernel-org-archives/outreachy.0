X-GM-THRID: 6883268100096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64edc44857e597cb,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.147.39 with SMTP id th7mr3017295pab.40.1425648156042;
        Fri, 06 Mar 2015 05:22:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.193 with SMTP id g184ls246556ioe.107.gmail; Fri, 06
 Mar 2015 05:22:35 -0800 (PST)
X-Received: by 10.42.80.133 with SMTP id v5mr6693037ick.8.1425648155820;
        Fri, 06 Mar 2015 05:22:35 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id xj4si1314413pbc.2.2015.03.06.05.22.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 05:22:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so17941423pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 05:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OzKct0V7ICRKT87xprhZLuLgIEDZBvuVinelht9U0rs=;
        b=E7hnLK3yLO09mmDxj0CbhVTZuFNt6vCN5tkWZXUctcFPHGfw09N/7cyE3lt5XhrBao
         2pDmoOM5uzdIyr3B/tREGhcokST9i3mPuSKQv+Fukk4YVZBTlZpT5+SLhvOOXFz3O5A2
         lByLKcD9sHJ34VWeLhlyCEja8UTzGDQPHvatkBf/tvhVaca1lKySt5XShVXckOf+TDSw
         09+heIBeGJb241Kql45RgaDN6VfTHH+6KaI3LH1Nopb/8i6ymkdN4ycs7SAKCkEIOkwl
         CyWu0NnWhM6SCYwHFJeqwBecKP08W3ts7DE+M5uZ5pB1/hWm39lC3SkhAiJZeDLr5zmf
         CpMA==
X-Received: by 10.68.132.229 with SMTP id ox5mr25709885pbb.94.1425648155690;
        Fri, 06 Mar 2015 05:22:35 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.149])
        by mx.google.com with ESMTPSA id fi8sm450422pdb.43.2015.03.06.05.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 05:22:34 -0800 (PST)
Date: Fri, 6 Mar 2015 18:52:28 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Convert use of __constant_<foo> to <foo>
Message-ID: <20150306132228.GA6025@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Using functions of the form __constant_<foo> isn't preferred
outside of include/uapi/ as using the function without
__constant_ is identical when the argument is a constant.
So, this patch replaces __constant_htons with htons.

This is done using Coccinelle and semantic patch used for
this is as follows:

@@identifier x;@@

(
- __constant_htons(x)
+ htons(x)
|
- __constant_htonl(x)
+ htonl(x)
|
- __constant_ntohs(x)
+ htons(x)
|
- __constant_ntohl(x)
+ htonl(x)
)

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 286b71d..ef4ceac 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -55,7 +55,7 @@ static inline void ieee80211_monitor_rx(struct ieee80211_device *ieee,
 
 	skb_pull(skb, ieee80211_get_hdrlen(fc));
 	skb->pkt_type = PACKET_OTHERHOST;
-	skb->protocol = __constant_htons(ETH_P_80211_RAW);
+	skb->protocol = htons(ETH_P_80211_RAW);
 	memset(skb->cb, 0, sizeof(skb->cb));
 	netif_rx(skb);
 }
-- 
1.9.1


