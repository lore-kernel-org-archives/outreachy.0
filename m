X-GM-THRID: 6258660898055913472
X-Received: by 10.112.55.212 with SMTP id u20mr1004858lbp.7.1457801678095;
        Sat, 12 Mar 2016 08:54:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.140.144 with SMTP id o138ls265066wmd.14.gmail; Sat, 12 Mar
 2016 08:54:37 -0800 (PST)
X-Received: by 10.194.239.163 with SMTP id vt3mr2004630wjc.3.1457801677687;
        Sat, 12 Mar 2016 08:54:37 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id s141si295733wmd.1.2016.03.12.08.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:54:37 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id n186so55932650wmn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AyrMo4tgO0WycfpbL/EkIaS+oyvgm/PDGY+AixzDfAw=;
        b=W5sStDiVEznyfMelCKEx6T7HUoekubyn5TchtvanDerXIW862YAPfc4S+v4V0twgx1
         1AxwMdlGTxlp+nhn1tsdSpuxUcjfakOxZ2mWXkaNvCMMCgtGvMcSiKX6E1WIo2df4a/g
         2jQ3cbEtlN1GYrHUv29PKdsjJ1bnRX9lymat8kYZ9Hw3TF742HX09AtXA67MwsoPlODJ
         99sjHC1VSMpbWu1GYM6s23vo0kjsS8TwYb/B7RUiWQhHlhwWL2JXRyOsU2eIgOTdRobi
         DMV4gVTonhNpHIZdoPqtXbfBEWGYp+mPysqchPuPmOT8sj29u2W7i5o0mL6TN3wbZdMU
         B9NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AyrMo4tgO0WycfpbL/EkIaS+oyvgm/PDGY+AixzDfAw=;
        b=epwkPjwsbUi5iocGEfE6RZnqMRimKRCGZKHuLMTylquBr1g+elhMBnmsveQMXcissp
         Uos0bJBoySpTsErLZ5fe+QZVWTMsuiOyfMqsqJyE9Ly1dDfBuCysh9ANjVi47+J+MInT
         JvXeYTJ5xcl3vn1u6IklsMzOAl3NjgD6d+DYq5iLi4xRg8KQhPZ6QaqOcOA7BVQsLD63
         BKf6ZpXKIkQELNuXhh69WytyZQWODy/a/xgRFBYhn4C8zPN9SL8crIUv1nvyqVHyhnuv
         tSGtJWOX6no5+gwxuwIU02EpYtPf0vDjFlK7ElykbPSi74b5eFcv1403z80aL1M45vvN
         ZBPg==
X-Gm-Message-State: AD7BkJIehD2smVD553damhcmJe8osFELUvPSJOUaasrLhMUXa9bErj78E6ZtgB9OR29efQ==
X-Received: by 10.28.125.195 with SMTP id y186mr8436874wmc.79.1457801677495;
        Sat, 12 Mar 2016 08:54:37 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id cb2sm13958094wjc.16.2016.03.12.08.54.35
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:54:36 -0800 (PST)
Date: Sat, 12 Mar 2016 17:54:34 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv6] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160312165431.GA12984@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for icmp to nftables. Not supported icmp codes in nftables
are: network-unreachable, host-unreachable, protocol-unreachable,
port-unreachable, fragmentation-needed, source-route-failed,
network-unknown, host-unknown, network-prohibited, host-prohibited,
TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
host-precedence-violation, precedence-cutoff, network-redirect,
host-redirect, TOS-network-redirect, TOS-host-redirect,
ttl-zero-during-transit, ttl-zero-during-reassembly, ip-header-bad and required-option-missing.

Examples:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j ACCEPT
nft add rule ip filter INPUT icmp type echo-reply counter accept

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j ACCEPT
nft add rule ip filter INPUT icmp type destination-unreachable counter accept

$ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j ACCEPT
nft add rule ip filter INPUT icmp type != destination-unreachable counter accept

In the case of '--icmp-type any' there is no type to translate, nft only
has to check the icmp header. This is currently not supported in nft.

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type any -j ACCEPT
nft add rule ip filter INPUT icmp counter accept


Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Detection of not supported types in nftables, as Shivani suggested.
v3:
	- Fix array iteration protection.
v4:
	- icmp types router-advertisement and router-solicitation already supported in nft.
v5:
	- Update commit message with the correct not supported codes.
v6:
	- No type to translate with 'any'.

 extensions/libipt_icmp.c | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..2238b19 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -249,6 +249,46 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
 	}
 }
 
+static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+				     unsigned int code_min,
+				     unsigned int code_max)
+{
+	unsigned int i;
+
+	if (code_min != code_max) {
+		for (i = 0; i < ARRAY_SIZE(icmp_codes); ++i)
+			if (icmp_codes[i].type == icmptype &&
+			    icmp_codes[i].code_min == code_min &&
+			    icmp_codes[i].code_max == code_max) {
+				xt_xlate_add(xl, icmp_codes[i].name);
+				return 1;
+			}
+	}
+
+	return 0;
+}
+
+static int icmp_xlate(const void *ip, const struct xt_entry_match *match,
+		      struct xt_xlate *xl, int numeric)
+{
+	const struct ipt_icmp *info = (struct ipt_icmp *)match->data;
+
+	if (info->type == 0xFF) {
+		xt_xlate_add(xl, "icmp");
+	} else {
+		xt_xlate_add(xl, "icmp type%s ",
+			     (info->invflags & IPT_ICMP_INV) ? " !=" : "");
+
+		if (!type_xlate_print(xl, info->type, info->code[0],
+				      info->code[1]))
+			return 0;
+	}
+
+	xt_xlate_add(xl, " ");
+
+	return 1;
+}
+
 static struct xtables_match icmp_mt_reg = {
 	.name		= "icmp",
 	.version	= XTABLES_VERSION,
@@ -261,6 +301,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


