X-GM-THRID: 6261220057224839168
X-Received: by 10.112.181.33 with SMTP id dt1mr2059678lbc.22.1457803895151;
        Sat, 12 Mar 2016 09:31:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.6 with SMTP id c6ls291783wmd.4.gmail; Sat, 12 Mar 2016
 09:31:34 -0800 (PST)
X-Received: by 10.194.236.230 with SMTP id ux6mr2012700wjc.4.1457803894760;
        Sat, 12 Mar 2016 09:31:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id c140si341077wmh.1.2016.03.12.09.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 09:31:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id n186so56739838wmn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 09:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6k2SZ0z2nsFiKiaL+DS9guzDnAK/WdPwmcvA0KufgFg=;
        b=hqZrqIdZCLRe14DMEsiv0j9K94brxdXu8H7EGVSBb+9kvD0IilM+V5zVMb4hQBoQJF
         Jy9IsqbYfuJkMSbHdB8ZBlRnvUnepOL5AJe8fiVkjp8n0ZEHMAjCUUihrgg+wY69OG/v
         Fmb6lyMX5we1b91uE0S+tL1E50ATH0uTHrA/mSm1DjyFW4mKRT/F9MdEs+pMe0d4Ky6e
         F55wnUwGAVQtezSp/AL6L6YI7Sd3RsmoeLX3QeJ2kCKxokDfcvnihozCVGHsZWWfUg94
         KUnrS6r3DJH32zOA12J5+b+ESiE1br7Ot3z1LTJx2idxpqteX/eM2IJkk8DPMWGbik6w
         RUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6k2SZ0z2nsFiKiaL+DS9guzDnAK/WdPwmcvA0KufgFg=;
        b=V7j6fuq0rhMv0DRcOhmid4PAkTIIiIGnkMwlfiu43UbACSgj89cmA/GLGNPUGcstGC
         b3cD4k2OuGoCIr+4tby1f9HXq+mpe5RKXR2MXsmJVLDVVA1MsiCTO/Nn+1VpKLEcwNPb
         F13BSS0cRelkrc0Dp4hdSaJSwHpB2v6A8ixJa7mKabWzAC1A2U52nihm1um3gDBE4wEk
         YwDs5x9y6xylU56v4NIjV8Qy6toMTKz6D8512IksAL53FdmPp0M8O/0Kt++ndFKi/erU
         xTvaKWBXW8GArSyz9TNQ+AqIoweeXlpjAlO1KJ3JPzSkTz3+6jTRx5LJf9e/skLB6dGU
         FH3g==
X-Gm-Message-State: AD7BkJK41dlUE7tHdSyrsWDwHKmCwdKGUvIeOkoBxlBl8GyIQzFdFo7GXxPx4gAVpZh+zA==
X-Received: by 10.194.78.199 with SMTP id d7mr15818283wjx.106.1457803894624;
        Sat, 12 Mar 2016 09:31:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id j10sm14015054wjb.46.2016.03.12.09.31.33
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 09:31:33 -0800 (PST)
Date: Sat, 12 Mar 2016 18:31:31 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libip6t_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160312173128.GA16044@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid to print the reject with value in the translation when the value
is the default.

Before this patch:

$ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip6 filter FORWARD tcp dport 22 counter reject with icmpv6 type port-unreachable

After this patch:

$ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip6 filter FORWARD tcp dport 22 counter reject

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libip6t_REJECT.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/extensions/libip6t_REJECT.c b/extensions/libip6t_REJECT.c
index c30f292..d54c3b2 100644
--- a/extensions/libip6t_REJECT.c
+++ b/extensions/libip6t_REJECT.c
@@ -10,6 +10,8 @@
 #include <xtables.h>
 #include <linux/netfilter_ipv6/ip6t_REJECT.h>
 
+#define DEFAULT_REJECT_WITH	IP6T_ICMP6_PORT_UNREACH
+
 struct reject_names {
 	const char *name;
 	const char *alias;
@@ -81,7 +83,7 @@ static void REJECT_init(struct xt_entry_target *t)
 	struct ip6t_reject_info *reject = (struct ip6t_reject_info *)t->data;
 
 	/* default */
-	reject->with = IP6T_ICMP6_PORT_UNREACH;
+	reject->with = DEFAULT_REJECT_WITH;
 
 }
 
@@ -149,7 +151,10 @@ static int REJECT_xlate(const void *ip, const struct xt_entry_target *target,
 	for (i = 0; i < ARRAY_SIZE(reject_table_xlate); ++i)
 		if (reject_table_xlate[i].with == reject->with)
 			break;
-	if (reject->with == IP6T_TCP_RESET)
+
+	if (reject->with == DEFAULT_REJECT_WITH)
+		xt_xlate_add(xl, "reject");
+	else if (reject->with == IP6T_TCP_RESET)
 		xt_xlate_add(xl, "reject with %s", reject_table_xlate[i].name);
 	else
 		xt_xlate_add(xl, "reject with icmpv6 type %s",
-- 
2.7.0


