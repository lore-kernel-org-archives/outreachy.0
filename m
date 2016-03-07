X-GM-THRID: 6258648860254535680
X-Received: by 10.28.63.201 with SMTP id m192mr1196946wma.5.1457385779045;
        Mon, 07 Mar 2016 13:22:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.90.195 with SMTP id o186ls364881lfb.86.gmail; Mon, 07 Mar
 2016 13:22:57 -0800 (PST)
X-Received: by 10.112.126.67 with SMTP id mw3mr1863804lbb.17.1457385777840;
        Mon, 07 Mar 2016 13:22:57 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id z75si616339wmz.2.2016.03.07.13.22.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 13:22:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id l68so125539804wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 13:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gnnnwGSJsb03QcQHWrWgoKsHGoyxOmhhzubSOi94DLc=;
        b=l8fVvbayNLXIUSh06t44/g+pI5EzUxXSpNUZeRK4+b7g9YPj8OxqNrxMtJp7P1a60n
         LjVs5YPnNeUIo2XO2wNYkRSShfWR8XwrMjeI2mzLsauWE5qMTGGxDniPOkl7H6Xm6Go1
         YdeFMCMlWOMlpBmkSGYTYOffk6pMn094m+0R38Vfdbuy1clbtWD6RAQZjBUdw0S5x7LD
         nlAwpsN7OQXzO1nucXlbgZESJJgSRdbbnbwWAXZmchgM+405XXDkCX8QiSM2+RsBZNGE
         G32wtMWO1WDj3dlmc0TvudQe6pvTc+ja5predNSFjrbhPWIT858gXgNBOsv/xB/lPYkV
         1Vng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gnnnwGSJsb03QcQHWrWgoKsHGoyxOmhhzubSOi94DLc=;
        b=Ktn3FzSht2r8vuilpJdJiORv+76C5/UOp6uYIYGKuajT+6y7qWKj7fliuxVKiY2LKj
         YpoQSVQIIfHagMjp0zlbf5+7zRFk1mI/coB7Na5Y7xQsZyff7fksHya1hUO1EPwAYf0n
         UEI2Po+8ZsYWYew2Fs9gcF2rQwuhHlJk4I8Kwmh8TAMUxTGXp+Bk3wKbzj8+OHlx7jCy
         r7Fp1O3yMcDtLz3XDT2mym6z15vVYNXwsfcWf9vNbhUWnZDEWoWiKGwSh5szdEtRqorx
         iCVRJc/Q4sNvASp7qFKA0H+Q8mABbdiEJ7giVlfEnz6mYJeue41bzC3r6gmMmSYYzlqH
         PCfQ==
X-Gm-Message-State: AD7BkJIcG9p1UwW0EknUNoEjmer+1m1zT6tS6ytDZ+uCyGUe5t0yHYqGMgfeVqUB060usw==
X-Received: by 10.194.123.131 with SMTP id ma3mr24800186wjb.107.1457385777686;
        Mon, 07 Mar 2016 13:22:57 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id h128sm65949wmf.23.2016.03.07.13.22.56
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 13:22:57 -0800 (PST)
Date: Mon, 7 Mar 2016 22:22:55 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv3] extensions: libip6t_icmp6: Add translation to nft
Message-ID: <20160307212252.GA10639@sonyv>
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
v3:
	- Generalize the source code, as Pablo suggested.

 extensions/libip6t_icmp6.c | 65 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/extensions/libip6t_icmp6.c b/extensions/libip6t_icmp6.c
index e183ce6..08eca99 100644
--- a/extensions/libip6t_icmp6.c
+++ b/extensions/libip6t_icmp6.c
@@ -4,6 +4,9 @@
 #include <xtables.h>
 #include <limits.h> /* INT_MAX in ip6_tables.h */
 #include <linux/netfilter_ipv6/ip6_tables.h>
+#include <netinet/icmp6.h>
+
+#define XT_ICMPV6_TYPE(type)	(type - ND_ROUTER_SOLICIT)
 
 enum {
 	O_ICMPV6_TYPE = 0,
@@ -15,6 +18,14 @@ struct icmpv6_names {
 	uint8_t code_min, code_max;
 };
 
+static const char *icmp6_type_xlate_array[] = {
+	[XT_ICMPV6_TYPE(ND_ROUTER_SOLICIT)]	= "nd-router-solicit",
+	[XT_ICMPV6_TYPE(ND_ROUTER_ADVERT)]	= "nd-router-advert",
+	[XT_ICMPV6_TYPE(ND_NEIGHBOR_SOLICIT)]	= "nd-neighbor-solicit",
+	[XT_ICMPV6_TYPE(ND_NEIGHBOR_ADVERT)]	= "nd-neighbor-advert",
+	[XT_ICMPV6_TYPE(ND_REDIRECT)]		= "nd-redirect",
+};
+
 static const struct icmpv6_names icmpv6_codes[] = {
 	{ "destination-unreachable", 1, 0, 0xFF },
 	{   "no-route", 1, 0, 0 },
@@ -222,6 +233,59 @@ static void icmp6_save(const void *ip, const struct xt_entry_match *match)
 		printf("/%u", icmpv6->code[0]);
 }
 
+static const char *icmp6_type_xlate(unsigned int type)
+{
+	if (type < ND_ROUTER_SOLICIT || type > ND_REDIRECT)
+		return NULL;
+
+	return icmp6_type_xlate_array[XT_ICMPV6_TYPE(type)];
+}
+
+static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+			     unsigned int code_min, unsigned int code_max)
+{
+	unsigned int i;
+	const char *type_name;
+
+	if (code_min == code_max)
+		return 0;
+
+	type_name = icmp6_type_xlate(icmptype);
+
+	if (type_name) {
+		xt_xlate_add(xl, type_name);
+	} else {
+		for (i = 0; i < ARRAY_SIZE(icmpv6_codes); ++i)
+			if (icmpv6_codes[i].type == icmptype &&
+			    icmpv6_codes[i].code_min == code_min &&
+			    icmpv6_codes[i].code_max == code_max)
+				break;
+
+		if (i != ARRAY_SIZE(icmpv6_codes))
+			xt_xlate_add(xl, icmpv6_codes[i].name);
+		else
+			return 0;
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
@@ -234,6 +298,7 @@ static struct xtables_match icmp6_mt6_reg = {
 	.save		= icmp6_save,
 	.x6_parse	= icmp6_parse,
 	.x6_options	= icmp6_opts,
+	.xlate		= icmp6_xlate,
 };
 
 void _init(void)
-- 
2.7.0


