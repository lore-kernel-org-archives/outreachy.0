X-GM-THRID: 6258660898055913472
X-Received: by 10.194.84.40 with SMTP id v8mr2271753wjy.2.1457303087900;
        Sun, 06 Mar 2016 14:24:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.72 with SMTP id f69ls299562lff.31.gmail; Sun, 06 Mar
 2016 14:24:47 -0800 (PST)
X-Received: by 10.112.156.33 with SMTP id wb1mr1131732lbb.7.1457303087288;
        Sun, 06 Mar 2016 14:24:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id v68si261231wmd.1.2016.03.06.14.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 14:24:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id p65so50726775wmp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 14:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=I0FDnXw5QjqRhzyaeUmRDRiWL8itEi0Bmk8SZ0F5LFg=;
        b=bEpPJiW9aDKyPOWiYL5fUMmT7QfM7GtI5Sv03haBOLZcnNrPZ3loKpSAJ/r3zhtwhz
         OkIAZ4qyNz9HBaaXocX02HorsObsUquIekr0A1gMAHRAKYRDwrtkr+JkVp+IdpBd7/me
         3UuekIfpSYmFXmf7EQaYJOOrTZ1B0Q08sARkm1VyN38EYN5hjpoxiVLypJX/qhczgKMW
         4Frt9kL/ZnLgHs/hJz1S6JkhPzUjZXdtGF0Wv2vQm23fGt/Feo6H8loMVFDE3czTAiss
         uxr63ox3LC7iKh5wFiMye3CfjuiIlSfSiyQW7xnNpnAoQ7uselineBNNaTp3orUq9FYl
         9cww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=I0FDnXw5QjqRhzyaeUmRDRiWL8itEi0Bmk8SZ0F5LFg=;
        b=Ao0Pz15uZcTY8E4vTffQ0HsL3yufUJ4DaaP9EVR6dA+d1uL/uMSicyO6p8Gor8nN7l
         J5jLqA8i248B48cBMRm5surWWCoUHf2Ao+BTnavmZWQXulFmB+omjNyIc6hcG/+TxKDl
         vxdztr24TM3eNsZfxu3hqkDA2REI60+nf9qeX/OgnuIpFgpTzGUhtq996So2cDoWkIAT
         nlpMryeYJM4Sa4ejyTDGcZSJk3ObQlUFaxRmjWBlZIhXY0bjusiyOTUFmKz1yKJLsG7D
         7uSZcTPhdy0OQM1LW91LkHMpFxwHh5HXKg2o+9RtIufIa3U/xeY0T7p6aDahK+MRsFyv
         LtEg==
X-Gm-Message-State: AD7BkJLP83R3uJeXgH85vJEowEAVlcFxjGCVEmCsoWaYZOTlzc7uxEKXjfa8wFLGF2uL1A==
X-Received: by 10.28.177.134 with SMTP id a128mr10261626wmf.55.1457303087113;
        Sun, 06 Mar 2016 14:24:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id e25sm2621301wmi.21.2016.03.06.14.24.46
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 14:24:46 -0800 (PST)
Date: Sun, 6 Mar 2016 23:24:44 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160306222442.GA20945@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for icmp to nftables. Not supported types in nftables
are: any, network-unreachable, host-unreachable, protocol-unreachable,
port-unreachable, fragmentation-needed, source-route-failed,
network-unknown, host-unknown, network-prohibited, host-prohibited,
TOS-network-unreachable, TOS-host-unreachable, communication-prohibited,
host-precedence-violation, precedence-cutoff, network-redirect,
host-redirect, TOS-network-redirect, TOS-host-redirect,
router-advertisement, router-solicitation, ttl-zero-during-transit,
ttl-zero-during-reassembly, ip-header-bad and required-option-missing.

Examples:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j LOG
nft add rule ip filter INPUT icmp type echo-reply counter log level warn

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j LOG
nft add rule ip filter INPUT icmp type destination-unreachable counter log level warn

$ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j LOG
nft add rule ip filter INPUT icmp type != destination-unreachable counter log level warn

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Detection of not supported types in nftables, as Shivani suggested.

 extensions/libipt_icmp.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..89eb36e 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
 }
 
 static void icmp_print(const void *ip, const struct xt_entry_match *match,
-                       int numeric)
+		       int numeric)
 {
 	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
 
@@ -249,6 +249,49 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
 	}
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
+	case 0xFF:
+	case 9:
+	case 10:
+		return 0;
+	default:
+		for (i = 0; ARRAY_SIZE(icmp_codes); ++i)
+			if (icmp_codes[i].type == icmptype &&
+			    icmp_codes[i].code_min == code_min &&
+			    icmp_codes[i].code_max == code_max)
+				break;
+
+			xt_xlate_add(xl, icmp_codes[i].name);
+	}
+
+	return 1;
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
+	if (!type_xlate_print(xl, info->type, info->code[0], info->code[1]))
+		return 0;
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
@@ -261,6 +304,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


