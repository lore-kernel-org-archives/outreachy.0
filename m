X-GM-THRID: 6258660898055913472
X-Received: by 10.112.210.129 with SMTP id mu1mr596117lbc.3.1457626670438;
        Thu, 10 Mar 2016 08:17:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.205 with SMTP id g196ls332482lfe.25.gmail; Thu, 10 Mar
 2016 08:17:49 -0800 (PST)
X-Received: by 10.25.32.144 with SMTP id g138mr608247lfg.0.1457626669913;
        Thu, 10 Mar 2016 08:17:49 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id c140si180342wmh.1.2016.03.10.08.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 08:17:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id l68so37529426wml.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 08:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=95unpWignueZ4LhKO4UDfj5cLz4vyMtESBb0VYILgvY=;
        b=0Tnh1tWRGg+WHNFiG1X6xOIBZPXyOqp8cknxEZcB+qCyLEmVLM9EHNFvphCmwScNgv
         ulSg1S6PbhHJE883eymPUA4VRPoRVowVeKhVioy4ByajT4i/WJ0sYHMT6d2+cAEn4YOo
         gXTQENF5c6ssVrngM70bvuKRgk8Arp0c/lFMr+QuUACX44VxBDHFpgmc86tCGvu7v139
         6jLdMoUEYaqFp4cm8YicgXuaLfL1cY97/pRTl6wpKrh93dX+wCfdd86ltWNP9/7jiyDv
         wUQyHsegU/Uc3r3Rplb6tf6ryO9ZGHUMf21txHH8EDrAbtTRMkLEGRIYz/oC5fHYjDIE
         Izjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=95unpWignueZ4LhKO4UDfj5cLz4vyMtESBb0VYILgvY=;
        b=AmYzFvH650u2LEJ3uDA6iiymLf+ZBmZuXP8GjozVcNrTbC3LXa0o05Mbiu9I+GAHu7
         Ve0uGnTQCCofCIf3isHbkLHur7xxjyYnTTpGYfs/31ipsgAY/41wVQ+Dd6sonScjK5cp
         /Iv9429LYUrQcLr2bC9j5e8sFifOpz5vYrgxvjkbTeAnfUNothrybTAKo6vLOBUmzbf1
         pyRKtsfLaa0bwlmNqL6Xvd6OjhyPgb1buiub7P/lJHYtbg6L308mLwOP9wzZbOj8fcvc
         Av4BXhGHjxuU6g5ifffcRyDQs/9xToxGX4fQ7YU8iGf/r/wPVtSB8eeOkdnR/CsjOukJ
         u93Q==
X-Gm-Message-State: AD7BkJJGFdxpKUHR1AIdxpUI5JPHKfdRRNJuaRweo6KuV8XNTVlAd+0hm7CeVu76fkxvJw==
X-Received: by 10.28.50.133 with SMTP id y127mr4820094wmy.4.1457626669711;
        Thu, 10 Mar 2016 08:17:49 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id w133sm4246754wmd.3.2016.03.10.08.17.48
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 08:17:48 -0800 (PST)
Date: Thu, 10 Mar 2016 17:17:46 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv5] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160310161743.GA9997@sonyv>
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
ttl-zero-during-transit, ttl-zero-during-reassembly, ip-header-bad and required-option-missing.

Examples:

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type echo-reply -j ACCEPT
nft add rule ip filter INPUT icmp type echo-reply counter accept

$ sudo iptables-translate -t filter -A INPUT -m icmp --icmp-type 3 -j ACCEPT
nft add rule ip filter INPUT icmp type destination-unreachable counter accept

$ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 3 -j ACCEPT
nft add rule ip filter INPUT icmp type != destination-unreachable counter accept

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

 extensions/libipt_icmp.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..cc8e732 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -249,6 +249,41 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
 	}
 }
 
+static unsigned int type_xlate_print(struct xt_xlate *xl, unsigned int icmptype,
+				     unsigned int code_min,
+				     unsigned int code_max)
+{
+	unsigned int i;
+
+	if (code_min != code_max && icmptype != 0xFF) {
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
+static int icmp_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
+		      int numeric)
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
 static struct xtables_match icmp_mt_reg = {
 	.name		= "icmp",
 	.version	= XTABLES_VERSION,
@@ -261,6 +296,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


