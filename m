X-GM-THRID: 6258660898055913472
X-Received: by 10.28.63.201 with SMTP id m192mr970750wma.5.1458165625964;
        Wed, 16 Mar 2016 15:00:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.8.7 with SMTP id 7ls244347lfi.60.gmail; Wed, 16 Mar 2016
 15:00:25 -0700 (PDT)
X-Received: by 10.112.16.34 with SMTP id c2mr878530lbd.19.1458165625174;
        Wed, 16 Mar 2016 15:00:25 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id g81si231057wmi.3.2016.03.16.15.00.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 15:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id l68so937571wml.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 15:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Wwfkh4Smsz7+oLYsjpsQf4jOrRj1wXnCYuTUIXSb78E=;
        b=zwpVTMTfg1alC0rZrncz3wQMvPwCjCxY0tHfpDN7pEJ/1eCJRiH1uUCFvUMSUK6Cfc
         9nO3jZTGnIk3x3+2hNA0QrXAIDKvnXiz0F61ojnGXTEN2L2EENn82GJI50LwS5p+lu+p
         G1FC2kaH5wT+vYpMx3eyUKdn3NORbNNFCX/uiEpom6jhKy8W6hamZMVz8Um4/vRM/cBu
         7IdxOOPF8gDqv0N7klHVxMjV/EzyyG7kBLcNYwQpQSsSyF1v4msn0ZsogxcXTWnyOcKS
         XDzcREd2U5kQ7paGzj+UjtGRP0rvCIoKE81+vycxY4BFxRrBkxXCuohiuvTDk+vewy+S
         s8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Wwfkh4Smsz7+oLYsjpsQf4jOrRj1wXnCYuTUIXSb78E=;
        b=UR+smzyP+wBXtT7xqRbNZUbnUEaD0TAX5D18H9Oa3mqXD7yhGR6/H3Zo4rpxq/9TeX
         mv9eMlUbGYG3DdoE4glkCeWp0ajpKbtTZ4aaXov2D1FzVl6jXQxGliURrwVxwaVJis+J
         OSTdrUQwNusZJk02IpuYNwjLrNwDz9aQzz6Rkhbmombh1MddsURIGgh7lKzrRTy8jTRq
         v+LsPvYPhtDbgRNxi9aZVWd3UBisMUYD2P4ecHelC0BaOQtKkW19cvwOdDNdJHXxIjCD
         ckc3CtWo+Wdrzpnoq7Bo2JwseIxhkmlTUvBB0fDRPffwU24kn642AJwLjwObWTT4nKW7
         X7RA==
X-Gm-Message-State: AD7BkJLGkRi0qGdAqXutpyJfdmE/Tx3y6jAUcbJJJiMWyVfkXiY7SvJLCACwgrhAsnBOTA==
X-Received: by 10.28.184.18 with SMTP id i18mr30898105wmf.96.1458165624991;
        Wed, 16 Mar 2016 15:00:24 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.red-79-150-198.dynamicip.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id hx10sm4836826wjb.25.2016.03.16.15.00.23
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 16 Mar 2016 15:00:24 -0700 (PDT)
Date: Wed, 16 Mar 2016 23:00:22 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv7] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160316220019.GA2952@sonyv>
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

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v7:
	- Fix 'any' case, as Pablo suggested.

 extensions/libipt_icmp.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..77afad5 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -249,6 +249,44 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
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
+	if (info->type != 0xFF) {
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
@@ -261,6 +299,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


