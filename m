X-GM-THRID: 6250079795032358912
X-Received: by 10.140.155.14 with SMTP id b14mr3342337qhb.5.1455210101462;
        Thu, 11 Feb 2016 09:01:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls613051ioo.92.gmail; Thu, 11 Feb
 2016 09:01:41 -0800 (PST)
X-Received: by 10.66.144.138 with SMTP id sm10mr44658390pab.4.1455210100970;
        Thu, 11 Feb 2016 09:01:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22c.google.com (mail-qk0-x22c.google.com. [2607:f8b0:400d:c09::22c])
        by gmr-mx.google.com with ESMTPS id g136si687524ywb.5.2016.02.11.09.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:01:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) client-ip=2607:f8b0:400d:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22c.google.com with SMTP id s68so21219030qkh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=o1Q3ITose0ptBTYgD0FlYFGfkx8ipTAxWdQtrjq/0io=;
        b=JPL96ZEqeaDw/uhsSxwtYOH35HKQ5N8Fu7osBzIDfkZq4CZ0d54PKs2FdHaFvfsGTJ
         UbGd0iVjspZ3ShHzFTTgPnmYmm1hnFmoJRnA8YnDd8+ZYzQcmVXLaO8vvFRPHGqvyqxQ
         MQyiUtxStwoaJG/sNs1Kiy6NQKNRcjiYj9IAJKgs0nJgNbZvkDQOUVMAk60+tGNMOGnD
         xteUaRDyxDdBWfQpbtSUGGLGtq3o6REXD4RS0IPK1HRlmgvqHNRV2+BFBBrY+GFieadr
         nGJEJNXDkAGBasdIkSCV7PIVn265MR/2TkHFo/v8qZmr2octhzXZFdYEN2rQ6CABrjXs
         ybcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=o1Q3ITose0ptBTYgD0FlYFGfkx8ipTAxWdQtrjq/0io=;
        b=T0wAcC58YxK0hKjZWCSXT14N1BQ8Px5KZcRKF+hsBeWCOtILp4fGre5nxqNTjIuadc
         p+i7M2tiQmFj9z7wzucOJngV7hcedFsMU0dEOd53Ihqi5MrRj5vpnIWxYT3w7JTK0C+P
         zlSe1i6vp0AjX0ITLu6T6Jmc2JlqWR8IORgsMgOd3UwL2mjDEXQq5iEHPqYYCzecB6Nv
         XzQOR/P0xP88lhdbQFix3WKFpOY4SZFfPaaeplsyqvddIStzqRbX/NR2wWUDQMtaBWKd
         VvFKSZd0ys5v/lDNelsCqc88Yp7/rMUt8vFybheSJ5MaR7z/b+NQ0bHWjtZH5Q+BHBJ5
         uvMQ==
X-Gm-Message-State: AG10YORONyvwnH4vPR06TfzDjprNMRYdhyZIGEwGdtqkhAh9ivnPH9R291m6diIQGGDMgw==
X-Received: by 10.55.197.6 with SMTP id p6mr50960131qki.75.1455210100785;
        Thu, 11 Feb 2016 09:01:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j67sm3668119qgj.35.2016.02.11.09.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:01:40 -0800 (PST)
Date: Thu, 11 Feb 2016 17:01:01 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm724x: Remove unneeded parentheses
Message-ID: <20160211220101.GA4505@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignment statements
as they are not needed.
Semantic patch:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)
Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 17d148f..98570c6 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -382,7 +382,7 @@ static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
 		/* Check DHCPv4 */
 		if (ip->protocol == IPPROTO_UDP) {
 			struct udphdr *udp =
-					(network_data + sizeof(struct iphdr));
+					network_data + sizeof(struct iphdr);
 			if (ntohs(udp->dest) == 67 || ntohs(udp->dest) == 68)
 				nic_type |= NIC_TYPE_F_DHCP;
 		}
@@ -393,12 +393,12 @@ static s32 gdm_lte_tx_nic_type(struct net_device *dev, struct sk_buff *skb)
 
 		if (ipv6->nexthdr == IPPROTO_ICMPV6) /* Check NDP request */ {
 			struct icmp6hdr *icmp6 =
-					(network_data + sizeof(struct ipv6hdr));
+					network_data + sizeof(struct ipv6hdr);
 			if (icmp6->icmp6_type == NDISC_NEIGHBOUR_SOLICITATION)
 				nic_type |= NIC_TYPE_ICMPV6;
 		} else if (ipv6->nexthdr == IPPROTO_UDP) /* Check DHCPv6 */ {
 			struct udphdr *udp =
-					(network_data + sizeof(struct ipv6hdr));
+					network_data + sizeof(struct ipv6hdr);
 			if (ntohs(udp->dest) == 546 || ntohs(udp->dest) == 547)
 				nic_type |= NIC_TYPE_F_DHCP;
 		}
-- 
2.5.0


