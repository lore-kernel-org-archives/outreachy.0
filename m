X-GM-THRID: 7642276691968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,707ef40c40c4af83,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.236.74 with SMTP id us10mr13620364pac.28.1426055182995;
        Tue, 10 Mar 2015 23:26:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.197 with SMTP id y5ls339353igl.32.gmail; Tue, 10 Mar
 2015 23:26:22 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr24670434pab.11.1426055182673;
        Tue, 10 Mar 2015 23:26:22 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id ri9si543272pdb.1.2015.03.10.23.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 23:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfl12 with SMTP id fl12so8577759pdb.9
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 23:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EA+zrzQrXq/DJWtaWWzkt9/d3F0WUXK7p9kYmCupfK0=;
        b=f0ZSUdFnNutM/evb8LNLtyNHDvtM51XQJjtol3UefI+lXfNqSEFoBLmdaq84aYBQZE
         jEjK4b97f9ckw85B/dCqEuv7zvgbW6jRnwyduuCJkAdIWZApAHjcWX+eWCNhhQj1wgP5
         cIQcKCOsML2W+q3WesL8h9h499oAmQWQR/52xhdwxEywf4Df9NBXewpMT9HyMzFFSmSI
         S+Qb810NxEEiYs/4jidpyzewDG4SlRSHXht7rO1jxePvZZG0EBSZCGIu7huJvpw0N2Vz
         i3uZud1JnSgExw+c0Zt+dEQnxrITycEo+48TTNrUMPSuBCvzC0OdP7FKv6/D31T0mVCx
         Cs2g==
X-Received: by 10.66.182.166 with SMTP id ef6mr73821009pac.77.1426055182565;
        Tue, 10 Mar 2015 23:26:22 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([106.66.86.3])
        by mx.google.com with ESMTPSA id ht2sm4151221pdb.23.2015.03.10.23.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 23:26:21 -0700 (PDT)
Date: Wed, 11 Mar 2015 11:56:10 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] Staging: rtl8192u: Convert use of __constant_<foo> to
 <foo>
Message-ID: <20150311062609.GA32599@vaishali-Ideapad-Z570>
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
index d2c2fb8..bd74510 100644
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


