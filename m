X-GM-THRID: 6402858493279207424
X-Received: by 10.99.5.150 with SMTP id 144mr10212518pgf.123.1490781664556;
        Wed, 29 Mar 2017 03:01:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls8569457otd.42.gmail; Wed, 29 Mar
 2017 03:01:04 -0700 (PDT)
X-Received: by 10.200.1.5 with SMTP id e5mr10280838qtg.11.1490781664149;
        Wed, 29 Mar 2017 03:01:04 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si1041139pfb.7.2017.03.29.03.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 03:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so2034105pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 03:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=O2PumiyUuaU3FKrqkgeQ8JApCLVxdYfvr0ujWJ3vIuQ=;
        b=pn6GgNpmeEMZcfj8bTHCuMUI/TU+D4QuQeoJBEoukNkvsOwra7lzmc0gB+ppKh8GaG
         YF2X9QUtQzfG5h/8c51hqK3o2oOAQ6aHADMtObpJBRQxHkWDp6hbG0xOrj3ALJgLwW1p
         bd+QzwbIkIpAZb+a2/5HrY0O4ctaRAusrzTesBHPjOJ6vQcyS7U3hXRz0723WVHnEr9d
         cpPvENSsD+h1E1mzXV/WF8NERD+cEeOhuHctUhZHJ+18XF+KktwXUUrRIJAhnNfy1qhM
         +Cp+LLrw7h6TGyzbLXdzCc8smOzEZh934KcAsmG6iqFPHTnKnZ4yFJfQRp3eTeTW4euy
         qgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=O2PumiyUuaU3FKrqkgeQ8JApCLVxdYfvr0ujWJ3vIuQ=;
        b=WpV61yGB8mnhNbpTAzVUyrsTdmKKucbPNV2fAattIqtexhso9XrOnmYH0TnGtWfKlO
         UINuwcBIJDJADYh9URxxzAstsKOVwXp8rJq1t5VZ3YcQRm/qRpKU5SeHweZhq0FYr2/+
         R/rCtTfyk+KSRI9MUCwx/To7WoCHV5p3DsMDvSaKg2k9igHYhH/Nja9BFOovPpVDMr+R
         qE54l3A9vY8pPdBR59fnqvDf2uACXvTvAdBLnqKRJgjsmIniCF6Et5iODF0cW4Pxiz/x
         qI0ULX9NxHe1TeM2lK1LixSJHkIuCkuvcG99yE8P8XJQUMJ0Yd4tnwelf82Gkvf9EM3j
         tJIw==
X-Gm-Message-State: AFeK/H2b1SEmy79YqURH6wsxgCAw2EuHaNXH0O3kzy9tfvUoNFY11ekk3N9vsitTYJvYtA==
X-Received: by 10.84.204.8 with SMTP id a8mr41692927ple.4.1490781663901;
        Wed, 29 Mar 2017 03:01:03 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e5sm12568514pga.13.2017.03.29.03.01.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 03:01:02 -0700 (PDT)
Date: Wed, 29 Mar 2017 15:30:59 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilterL: Fix line over 80 characters.
Message-ID: <20170329100059.GA24750@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

fix the line over 80 characters as reported by checkpatch.pl

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/ipv6/netfilter/ip6_tables.c    | 6 ++++--
 net/ipv6/netfilter/ip6t_SYNPROXY.c | 3 ++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/ipv6/netfilter/ip6_tables.c b/net/ipv6/netfilter/ip6_tables.c
index ac69ce3bfa1e..b3b94cc80544 100644
--- a/net/ipv6/netfilter/ip6_tables.c
+++ b/net/ipv6/netfilter/ip6_tables.c
@@ -81,12 +81,14 @@ ip6_packet_match(const struct sk_buff *skb,
 					 &ip6info->dst)))
 		return false;
 
-	ret = ifname_compare_aligned(indev, ip6info->iniface, ip6info->iniface_mask);
+	ret = ifname_compare_aligned(indev, ip6info->iniface,
+				     ip6info->iniface_mask);
 
 	if (NF_INVF(ip6info, IP6T_INV_VIA_IN, ret != 0))
 		return false;
 
-	ret = ifname_compare_aligned(outdev, ip6info->outiface, ip6info->outiface_mask);
+	ret = ifname_compare_aligned(outdev, ip6info->outiface,
+				     ip6info->outiface_mask);
 
 	if (NF_INVF(ip6info, IP6T_INV_VIA_OUT, ret != 0))
 		return false;
diff --git a/net/ipv6/netfilter/ip6t_SYNPROXY.c b/net/ipv6/netfilter/ip6t_SYNPROXY.c
index e0fa78085ad7..6b4d1837891b 100644
--- a/net/ipv6/netfilter/ip6t_SYNPROXY.c
+++ b/net/ipv6/netfilter/ip6t_SYNPROXY.c
@@ -58,7 +58,8 @@ synproxy_send_tcp(struct net *net,
 	fl6.daddr = niph->daddr;
 	fl6.fl6_sport = nth->source;
 	fl6.fl6_dport = nth->dest;
-	security_skb_classify_flow((struct sk_buff *)skb, flowi6_to_flowi(&fl6));
+	security_skb_classify_flow((struct sk_buff *)skb,
+				   flowi6_to_flowi(&fl6));
 	dst = ip6_route_output(net, NULL, &fl6);
 	if (dst->error) {
 		dst_release(dst);
-- 
2.11.0


