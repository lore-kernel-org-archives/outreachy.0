X-GM-THRID: 6258648860254535680
X-Received: by 10.28.85.137 with SMTP id j131mr522678wmb.1.1457205242324;
        Sat, 05 Mar 2016 11:14:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.41 with SMTP id l41ls207124lfi.100.gmail; Sat, 05 Mar
 2016 11:14:01 -0800 (PST)
X-Received: by 10.25.170.7 with SMTP id t7mr1833234lfe.2.1457205241661;
        Sat, 05 Mar 2016 11:14:01 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id z75si172215wmz.2.2016.03.05.11.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 11:14:01 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id p65so27737309wmp.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 11:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n4kgRDWmwXhfbDAwtTjTj3/KVVS6Vv7lqna37DwrL/U=;
        b=M/FbOG5nz6I3Gtp/BXN6shTQh0HEx7lM3iq/o3T4n3ZSjAXEdET8GhR4fAMlDKJ9FK
         0Q7ncEfetnmfY0lnL9hW7h8bRZdFRNKuSsa0zZrCz4IgH86+16zBZFazZIv5zVWPaKDl
         KFo9/haHpgyohFP+qaCgDRzfyqzl6fnmcOlkH/d3OfzBw97FFvskzYmcFDEX4ZNBDGdg
         bunI9mq6qVH2JsEowGqvu4zX/UCu+tBqpCMquxJpLMSWVUm0qE/z2rCr8MzpqMfffGAV
         +hVpeiHbWQHhsIdxNAaerxDlkXxJQnHTR8tMQR8x6XapPnwbwOr1YWwAWIgEcCtud6Km
         Bsow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n4kgRDWmwXhfbDAwtTjTj3/KVVS6Vv7lqna37DwrL/U=;
        b=j+3s7QlohadsRaCdjUhEYWdspaePiLql2sMe4YSrbOY4sBHuQKIAYGSntvZFq2tXKy
         E7123Fpe6yD5AIyYADVyqiVb8Ulz2yvo/NpAc1BSxZGQSD801N584YuZT6pA2o8FSb0x
         9koFXic7DLaqG0a/SQK+Z5EsdXvtmElN+jp9kq5TFB6Xsh+H8AX4Z5aitjfiFLM0xHrL
         Tpvw5kud2lhnnU2zc7Lp7UIaeRZQzS5bIqeSmHDM+8y0HRBoTbgfb/p3e+J74GY0Hrbr
         Szw3k5HgFK5SXzS1h2wJitpoJkTUoA/Ms+OgLf+PkEjh2Ymvzcp5RRfy4mT/sZwUXj42
         KARw==
X-Gm-Message-State: AD7BkJKYoxFhSHlwfh8D6ZkksZOPsObJDorPeU+v1GCSdzYklAUxVQ5zStTuEfY0QQf/Fg==
X-Received: by 10.194.236.170 with SMTP id uv10mr1320460wjc.32.1457205241497;
        Sat, 05 Mar 2016 11:14:01 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id u3sm5106826wmg.15.2016.03.05.11.14.00
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 11:14:00 -0800 (PST)
Date: Sat, 5 Mar 2016 20:13:58 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160305191355.GA11228@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for icmpv6 to nftables.

Examples:

$ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type 1 -j LOG
nft add rule ip6 filter INPUT icmpv6 type destination-unreachable counter log level warn

$ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type 1/3 -j LOG
nft add rule ip6 filter INPUT icmpv6 type address-unreachable counter log level warn

$ ip6tables-translate -t filter -A INPUT -m icmp6 ! --icmpv6-type 2 -j LOG
nft add rule ip6 filter INPUT icmpv6 type != packet-too-big counter log level warn

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libip6t_icmp6.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
index e183ce6..a6a76c3 100644
--- a/extensions/libip6t_icmp6.c
+++ b/extensions/libip6t_icmp6.c
@@ -222,6 +222,35 @@ static void icmp6_save(const void *ip, const struct xt_entry_match *match)
 		printf("/%u", icmpv6->code[0]);
 }
 
+static void type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+			     unsigned int code_min, unsigned int code_max)
+{
+	unsigned int i;
+
+	for (i = 0; ARRAY_SIZE(icmpv6_codes); i++)
+		if (icmpv6_codes[i].type == icmptype &&
+		    icmpv6_codes[i].code_min == code_min &&
+		    icmpv6_codes[i].code_max == code_max)
+			break;
+
+	xt_xlate_add(xl, icmpv6_codes[i].name);
+}
+
+static int icmp6_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
+		       int numeric)
+{
+	const struct ip6t_icmp *info = (struct ip6t_icmp *)match->data;
+
+	xt_xlate_add(xl, "icmpv6 type%s ",
+		     (info->invflags & IP6T_ICMP_INV)? " !=" : "");
+
+	type_xlate_print(xl, info->type, info->code[0], info->code[1]);
+
+	xt_xlate_add(xl, " ");
+
+	return 1;
+}
+
 static struct xtables_match icmp6_mt6_reg = {
 	.name 		= "icmp6",
 	.version 	= XTABLES_VERSION,
@@ -234,6 +263,7 @@ static struct xtables_match icmp6_mt6_reg = {
 	.save		= icmp6_save,
 	.x6_parse	= icmp6_parse,
 	.x6_options	= icmp6_opts,
+	.xlate		= icmp6_xlate,
 };
 
 void _init(void)
-- 
2.7.0


