X-GM-THRID: 6258660898055913472
X-Received: by 10.25.210.201 with SMTP id j192mr606661lfg.6.1457626329187;
        Thu, 10 Mar 2016 08:12:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.131.203 with SMTP id f194ls318631lfd.77.gmail; Thu, 10 Mar
 2016 08:12:08 -0800 (PST)
X-Received: by 10.112.26.74 with SMTP id j10mr618251lbg.18.1457626328097;
        Thu, 10 Mar 2016 08:12:08 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id g81si164668wmi.3.2016.03.10.08.12.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 08:12:08 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id l68so35215912wml.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 08:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3FUfOntlGdjyYutxmqaSro3+aK4/j+R3PhZezMn2Sro=;
        b=llPb3Nny//L6Gng0Z/3EPwfA/LHW473kZdtcmgVSsopuUJBZxlIAq6dNwqM/fOEhN3
         +HdryOXLVSTbfGP31w3/3UXffIO7YvY2hUljtSqIqDhpM6jA8biTxhI8yuUaDyH1+0fR
         C1Oe/mMDDHuGrjmty2LafOTCxuKk4ivSwR3ijlS+/TisJF/kPaD18oTWhFUU7ayg3bTf
         1oBZ8+3e/BAluk1cqxC3dQZmhs0IkVCbsh2SrKbbpK6iY1RLe5HEFqDLJd5p1cD+9+dw
         IpwqPGTjI/m1X6SptWK/6zjKIs143zRl8DeSx+ad6tvHm41Q4Kb0UrABhz281/+9FzTl
         WQfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3FUfOntlGdjyYutxmqaSro3+aK4/j+R3PhZezMn2Sro=;
        b=mQmlRRuD4PzeJhP6ylYK6MCeelau6ycZ6XQp1N0DIuG+Yf/0MPPJK8AeJMSQ2/kIEe
         YwfyHD/WN9vnVAK65+CMYegNZesViZCR1hXaQn2j1St2gTdG0TN9wntZ9VLSNS3hsL7/
         LSv+Wf6daEXKsRKNT35Xmy7Ai2Z7QTKP2OJA5ApXdY8YX9lyI1d99sgOnv61DRt2MOLp
         vnQqBam7KhVZvbFDW7bupFWcXcP4IZGGdDsWlj3rhUlUOLBjuoBZOfSHQuwFJptHjgJE
         1HQuqKpL3KkDF2K+HbaVcz765QgamZK6j1l4TXWB1ZzxIrdonWJtp+YRw8ekzKrUpnJ4
         tyZw==
X-Gm-Message-State: AD7BkJJHjJ5WqLq59XDyxWAIiYcPUP13yqt94whaRxi1PelquNIXS1wMltIcWRPHSSHdMA==
X-Received: by 10.194.209.204 with SMTP id mo12mr5118754wjc.69.1457626327855;
        Thu, 10 Mar 2016 08:12:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id h1sm3481715wme.8.2016.03.10.08.12.06
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 08:12:07 -0800 (PST)
Date: Thu, 10 Mar 2016 17:12:04 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv4] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160310161201.GA9569@sonyv>
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


