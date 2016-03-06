X-GM-THRID: 6258648860254535680
X-Received: by 10.194.62.69 with SMTP id w5mr2282136wjr.5.1457302995175;
        Sun, 06 Mar 2016 14:23:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.75 with SMTP id f72ls330486lfi.12.gmail; Sun, 06 Mar
 2016 14:23:14 -0800 (PST)
X-Received: by 10.112.13.40 with SMTP id e8mr1104213lbc.24.1457302994345;
        Sun, 06 Mar 2016 14:23:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id 71si447652wmp.0.2016.03.06.14.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 14:23:14 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id l68so61715511wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 14:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Cm0Xi7ETpQYDCHum+HqPXwmCazan0SDY3XtN5gEyLzE=;
        b=v8dpV8bhDZiGkdwxVs9e744tWz4Ih9WdL/p8H1lZS4JD/aWzjmo981cCf5wQ2Pgjtx
         5hm65Mf4IwWPbSZdLGmEU4P/aq/Ll7XSe9XOAZ8/v7wYGCatghvJhzgniehE56M9QdA6
         VA2a26N2kLn07kSi2G9i/uPrG3oBhxT+yJWXezlGwNNc/Y0aF9FlW2jO9p+us0XQAyH6
         zcfFQ2/GCNNDb1nfuB+Ft9Z2oRGndIJXdb7Tt2DvKNSifIWUdwazT5ZHqGtm0syeF3pc
         TBIkxqoPImxZB28PtC6he1G8Mm1TB+/wsas8a1/CSgPT/iMWZ53LdLTJBg0Ov7fI5FK6
         HoQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Cm0Xi7ETpQYDCHum+HqPXwmCazan0SDY3XtN5gEyLzE=;
        b=k0fvCdd8pcpR600kg/XuAkj7OkFfCWo+5SSBJJ/jPAVPQZTQ1U2ZDCUNHSL1WIwlH3
         acQV+nuKxrxAr/wb2cw5Aayo1u7g8zR56u6QBuk72Gwj7Jo1PcbQ5c8ZnRWFtEdE4yYO
         jLQySEsxLM6C6k3B331JKENNNB5DLiv9VSoYPqhfGyo2I0NXtl0liGXbvmRk5QcovCGv
         RNJ4u55KEBzAfiGttEnauD8N4e2WNEqOuy6mI6NH110/urowGNuZ1OrvPd0KXH/d2yrf
         oTEFeIhVIPNUR+GS84wFOZ5/gSwPMq7itQ5/mbNDMFhIfUABSm+dzaROOKH27EXO9PB1
         JmSA==
X-Gm-Message-State: AD7BkJIauNuzxZrCvMQ7fuGqPAoIfrPSLG7ktpgMIIpTGfh2WjWdPmB1LhE13HMS6R6/Eg==
X-Received: by 10.194.75.232 with SMTP id f8mr20857980wjw.83.1457302994157;
        Sun, 06 Mar 2016 14:23:14 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id gt7sm14874302wjc.1.2016.03.06.14.23.12
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 14:23:12 -0800 (PST)
Date: Sun, 6 Mar 2016 23:23:10 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv2] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160306222308.GA20846@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for icmpv6 to nftables. Not supported types in nftables
are: no-route, communication-prohibited, beyond-scope,
address-unreachable, port-unreachable, failed-policy, reject-route,
ttl-zero-during-transit, ttl-zero-during-reassembly, bad-header,
unknown-header-type and unknown-option.

Examples:

$ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type 1 -j LOG
nft add rule ip6 filter INPUT icmpv6 type destination-unreachable counter log level warn

$ ip6tables-translate -t filter -A INPUT -m icmp6 --icmpv6-type neighbour-advertisement -j LOG
nft add rule ip6 filter INPUT icmpv6 type nd-neighbor-advert counter log level warn

$ ip6tables-translate -t filter -A INPUT -m icmp6 ! --icmpv6-type packet-too-big -j LOG
nft add rule ip6 filter INPUT icmpv6 type != packet-too-big counter log level warn

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Detection of not supported types in nftables, as Shivani suggested.

 extensions/libip6t_icmp6.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
index e183ce6..70f9c21 100644
--- a/extensions/libip6t_icmp6.c
+++ b/extensions/libip6t_icmp6.c
@@ -222,6 +222,58 @@ static void icmp6_save(const void *ip, const struct xt_entry_match *match)
 		printf("/%u", icmpv6->code[0]);
 }
 
+static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+			     unsigned int code_min, unsigned int code_max)
+{
+	unsigned int i;
+
+	if (code_min == code_max)
+		return 0;
+
+	switch (icmptype) {
+	case 133:
+		xt_xlate_add(xl, "nd-router-solicit");
+		break;
+	case 134:
+		xt_xlate_add(xl, "nd-router-advert");
+		break;
+	case 135:
+		xt_xlate_add(xl, "nd-neighbor-solicit");
+		break;
+	case 136:
+		xt_xlate_add(xl, "nd-neighbor-advert");
+		break;
+	case 137:
+		xt_xlate_add(xl, "nd-redirect");
+		break;
+	default:
+		for (i = 0; ARRAY_SIZE(icmpv6_codes); ++i)
+			if (icmpv6_codes[i].type == icmptype &&
+			    icmpv6_codes[i].code_min == code_min &&
+			    icmpv6_codes[i].code_max == code_max)
+				break;
+			xt_xlate_add(xl, icmpv6_codes[i].name);
+	}
+
+	return 1;
+}
+
+static int icmp6_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
+		       int numeric)
+{
+	const struct ip6t_icmp *info = (struct ip6t_icmp *)match->data;
+
+	xt_xlate_add(xl, "icmpv6 type%s ",
+		     (info->invflags & IP6T_ICMP_INV) ? " !=" : "");
+
+	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
+		return 0;
+
+	xt_xlate_add(xl, " ");
+
+	return 1;
+}
+
 static struct xtables_match icmp6_mt6_reg = {
 	.name 		= "icmp6",
 	.version 	= XTABLES_VERSION,
@@ -234,6 +286,7 @@ static struct xtables_match icmp6_mt6_reg = {
 	.save		= icmp6_save,
 	.x6_parse	= icmp6_parse,
 	.x6_options	= icmp6_opts,
+	.xlate		= icmp6_xlate,
 };
 
 void _init(void)
-- 
2.7.0


