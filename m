X-GM-THRID: 6258660898055913472
X-Received: by 10.194.216.3 with SMTP id om3mr1846395wjc.7.1457208045575;
        Sat, 05 Mar 2016 12:00:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.202 with SMTP id d193ls233615lfg.2.gmail; Sat, 05 Mar
 2016 12:00:45 -0800 (PST)
X-Received: by 10.25.142.130 with SMTP id q124mr1844103lfd.9.1457208045060;
        Sat, 05 Mar 2016 12:00:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id v68si134631wmd.1.2016.03.05.12.00.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 12:00:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id n186so34235027wmn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 12:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/ih+Xc+2f6QfpFYWt7g1LB68jLBg10PAHu+TNXoNmEs=;
        b=FHzIMI8ak6IzBCpVGNK/NDORvX7v2QU1WHNjn1HuaQJywPfLYWRHo6ESf/HK8XvDLs
         51xBzQI6vCZlXckc4BMl1E4sLKiCPE5WBhXy8Upvnol+pYXy+5ps2ZPYypoNLZiuD34G
         lFPomq3EBg6pC/a8KgJCcW0E0RaoQizGBNby3lQThJQHTnZ0SQvSf8HqPWwNjG2yo/kY
         3KsUCuzbWxPvGVmHXKpkZGNIohN7CndTEOmkI3H8ZAa+sbmDRpjR7Pr9GLwOgA/8w64V
         /0i81yiuIFznBMxrK4mcN9jDx4vRNkNTlvEun+4AtiPv6SmMZPXMaX24bwUADhsPHtGq
         m2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/ih+Xc+2f6QfpFYWt7g1LB68jLBg10PAHu+TNXoNmEs=;
        b=JOangeIs5mqcFESv147w+JUVSy6yzjJYqlk8cCFQPOh6TmSx630dSwpJUoF6vXxjbl
         rzzIss1ptY+yjUCLVdqTarVvoLXKJZEhWGnQFVUlNm8Bog+9iM8pCfJixH74iOZTR0PT
         VfpX72XoNJNCt/VOtcUucS1IlBvAk3T1iH5DQhyXTQqE6aElTweg/OqzVL1H10eBAmu/
         n/h8SVEC3KLfKnfPuNlj72rOyCjzIMmMId5E+JwgRjMxntisu6Fr5oxA4I2lQSVzpbmz
         /6tQi1pJRH/Q2ULTh/U0/dlFxT4iAWdO7R4QGwtZNvsjQBY4yfqBFodfNd4Wj6wT/WKa
         WrNA==
X-Gm-Message-State: AD7BkJIb4uVa3LnCDplrKJsAtmEscmbaMNq2pT5A2HG/JWqA4/7b1rF6qZ2JN4YBfFIFIQ==
X-Received: by 10.28.211.1 with SMTP id k1mr5330265wmg.93.1457208044870;
        Sat, 05 Mar 2016 12:00:44 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id j10sm9552817wjb.46.2016.03.05.12.00.43
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 12:00:43 -0800 (PST)
Date: Sat, 5 Mar 2016 21:00:41 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160305200039.GA14269@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for icmp to nftables.

Examples:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type any -j LOG
nft add rule ip filter INPUT icmp type any counter log level warn

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3/1 -j LOG
nft add rule ip filter INPUT icmp type host-unreachable counter log level warn

$ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libipt_icmp.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..795172f 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
 }
 
 static void icmp_print(const void *ip, const struct xt_entry_match *match,
-                       int numeric)
+		       int numeric)
 {
 	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
 
@@ -249,6 +249,36 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
 	}
 }
 
+static void type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+			     unsigned int code_min, unsigned int code_max)
+{
+	unsigned int i;
+
+	for (i = 0; ARRAY_SIZE(icmp_codes); i++)
+		if (icmp_codes[i].type == icmptype &&
+		    icmp_codes[i].code_min == code_min &&
+		    icmp_codes[i].code_max == code_max)
+			break;
+
+	xt_xlate_add(xl, icmp_codes[i].name);
+}
+
+static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
+		       int numeric)
+{
+	const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
+
+	xt_xlate_add(xl, "icmp type%s ",
+		     (info->invflags & IPT_ICMP_INV) ? " !=" : "");
+
+	type_xlate_print(xl, info->type, info->code[0], info->code[1]);
+
+	xt_xlate_add(xl, " ");
+
+	return 1;
+}
+
+
 static struct xtables_match icmp_mt_reg = {
 	.name		= "icmp",
 	.version	= XTABLES_VERSION,
@@ -261,6 +291,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


