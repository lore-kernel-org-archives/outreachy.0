X-GM-THRID: 6258660898055913472
X-Received: by 10.25.165.148 with SMTP id o142mr3052464lfe.8.1457385708555;
        Mon, 07 Mar 2016 13:21:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.131.203 with SMTP id f194ls392700lfd.77.gmail; Mon, 07 Mar
 2016 13:21:47 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr1927941lbb.23.1457385707853;
        Mon, 07 Mar 2016 13:21:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id w10si427679wmw.3.2016.03.07.13.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 13:21:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id p65so2510913wmp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 13:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WMRLwUsDyPAlvxgbn84tJKl6+DZk4c0X0IZ5eM77Nd8=;
        b=pgsCJOiJOEa7YTA8uTnlscQP1buu8OZnAAK5HisuAG/jS98MkdJkZHwJmIHT8SrHzX
         1YaNb8gqSxG0vd8hARm9vx2NxdRZgHyRC75+HsRbCAOo3mKeT3ui/3Bp+lenpFLMsG/i
         sP/HDrEDRXv9rvxPCBdmTgXFaWZ6u0FhO+86185A/Q+q95W6ljZw7TdHDsRRhiDfzTgJ
         WP1CZ+IrSnRTB0oNI6IwpMpzc78SMNCsjJdfp0i3YfBkMUgDUWjqR1r9i29IyEUdksSd
         fPS/SOPnIaEoSEIPESqRccHTVawolmwKgyxLuK4OrM/+SDnw+cRz40EJwO8gSrCbGFdX
         IXGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WMRLwUsDyPAlvxgbn84tJKl6+DZk4c0X0IZ5eM77Nd8=;
        b=HkPMGovzF0LzJE9n8x6zJ33iNKASyD+4hqd2kDYcDLYUvoDhlbPH74D8U3qXvZO2m+
         4+5AUlgZ45aV7dsMige14hwn6/TNRxvcFO5XUWioyRxo/x3Q3rUC3H0hOhnfMiYu0Af3
         zq12+3j8Hom6NKcD9r/6PjokJi7l6o7Iemr48/gyIzQeFwvSIBez/QA1cQkkPz+72etg
         QJPjERIl5z9WutjozUbcaYKQN4t1i+BnWEQIfOXT9NUqn4W95OwCuwiigXEoaVSW4MUk
         PD/Jumj6mBdhlu/ab5Vn+mOhDRH9xqbxrBFskdK1W51B7gs1CBmjmNr7xVk2NFCH0oFO
         nx7w==
X-Gm-Message-State: AD7BkJLsyY1UeoVzvWLVbVdeOOweU2bBd6EL26i/VC4dWOr6LvOgw6IZKfg9YiUmmpIcUg==
X-Received: by 10.194.91.205 with SMTP id cg13mr24499753wjb.166.1457385707654;
        Mon, 07 Mar 2016 13:21:47 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id u14sm9344639wmu.8.2016.03.07.13.21.46
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 13:21:46 -0800 (PST)
Date: Mon, 7 Mar 2016 22:21:44 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv3] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307212141.GA10594@sonyv>
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
v3:
	- Fix array iteration protection.

 extensions/libipt_icmp.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/extensions/libipt_icmp.c b/extensions/libipt_icmp.c
index 666e7da..2c8be87 100644
--- a/extensions/libipt_icmp.c
+++ b/extensions/libipt_icmp.c
@@ -218,7 +218,7 @@ static void print_icmptype(uint8_t type,
 }
 
 static void icmp_print(const void *ip, const struct xt_entry_match *match,
-                       int numeric)
+		       int numeric)
 {
 	const struct ipt_icmp *icmp = (struct ipt_icmp *)match->data;
 
@@ -249,6 +249,52 @@ static void icmp_save(const void *ip, const struct xt_entry_match *match)
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
+		for (i = 0; i < ARRAY_SIZE(icmp_codes); ++i)
+			if (icmp_codes[i].type == icmptype &&
+			    icmp_codes[i].code_min == code_min &&
+			    icmp_codes[i].code_max == code_max)
+				break;
+
+		if (i != ARRAY_SIZE(icmp_codes))
+			xt_xlate_add(xl, icmp_codes[i].name);
+		else
+			return 0;
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
@@ -261,6 +307,7 @@ static struct xtables_match icmp_mt_reg = {
 	.save		= icmp_save,
 	.x6_parse	= icmp_parse,
 	.x6_options	= icmp_opts,
+	.xlate		= icmp_xlate,
 };
 
 void _init(void)
-- 
2.7.0


