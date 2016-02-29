X-GM-THRID: 6256826514740871168
X-Received: by 10.194.92.232 with SMTP id cp8mr5718wjb.6.1456780944016;
        Mon, 29 Feb 2016 13:22:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.39.209 with SMTP id n200ls512936lfn.36.gmail; Mon, 29 Feb
 2016 13:22:23 -0800 (PST)
X-Received: by 10.25.210.201 with SMTP id j192mr1887716lfg.6.1456780943186;
        Mon, 29 Feb 2016 13:22:23 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id h73si497383wme.0.2016.02.29.13.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 13:22:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id l68so9311693wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 13:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qw3YsTvMVCzd6dowp13XXfSkH4ejBVyueiBs9t5+iKA=;
        b=vaIQjcOOerHWyMB6O8kxANu7Yw7l7mVBQZ7Fls7Kz3R9a8S/Jn7hBpYU4ppQJS3I9Y
         6pbQLLEHKWHkYk9DdglVnIu2k1M77nYmO9luTttPBwuINj9M2Ij36QKNigpw09z1M9N0
         NRLOHCBxm3mesjQ3F1KuQMvyVnORV2gDI1EcQb2uZ26hI1rxjm/rNLQ6fjIyOcXcopCq
         H+sRCENIqzp8wqigPPpNPUm0xpWjZ+kXTibEnoz1sPJSGfFHJocKo4FGcg832K8fGdb6
         OVvj3JQKPie9N6MRO0cV2MImB2TPAARePOnTYpqsTlYZIMS6RcaKyXdt3qUSVP/4QwZz
         KXeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qw3YsTvMVCzd6dowp13XXfSkH4ejBVyueiBs9t5+iKA=;
        b=bxHn4hvXeSaO/FbLka8f5iAMKYDDrmOUpBRcbePCAEMckoos8jIBOcXUjM4BWuLuCI
         uFbsIOtr19JcI+d5GjSr/5P04T0OS4iom7F+AxNbCVkDkE7b545A61P58cxNtI45TuSn
         LE2bk1FvgXHWUP78GKo4Lg1QPjOvv6LwRPBVioQM1us/40R7xl06cUs7PVbtuKJtJFta
         p60wWomiEoggwuFEltCDfpH7W9JF/8uNj+TgqGKFstqz7z0NxdnMUl8yAsPhONJt8O/3
         Fq94QHh3R+b/tiWyJS1RkYAsxYbbE5auf2Z25FZLiyweFpF/IBXCqsv11d9mopmRSCQi
         RRPw==
X-Gm-Message-State: AD7BkJJKE4NAuO10Wtf3v9dn05Qi2YrG33gJAKIHtZdM5wMwGUdRZrcoqKDFuyj1BqrcEQ==
X-Received: by 10.28.30.132 with SMTP id e126mr97800wme.42.1456780943025;
        Mon, 29 Feb 2016 13:22:23 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id lz5sm27620538wjb.5.2016.02.29.13.22.21
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 13:22:22 -0800 (PST)
Date: Mon, 29 Feb 2016 22:22:20 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org, fw@strlen.de, outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160229212216.GA29706@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for random to nftables.

Examples:

$ iptables-translate -A INPUT -m statistic --mode random --probability
0.1 -j ACCEPT
nft add rule ip filter INPUT meta random 0.10000000009 counter accept

$ iptables-translate -A INPUT -m statistic --mode random ! --probability
0.1 -j ACCEPT
nft add rule ip filter INPUT meta random != 0.10000000009 counter accept

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 extensions/libxt_statistic.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/extensions/libxt_statistic.c b/extensions/libxt_statistic.c
index b6ae5f5..95d588c 100644
--- a/extensions/libxt_statistic.c
+++ b/extensions/libxt_statistic.c
@@ -133,6 +133,20 @@ static void statistic_save(const void *ip, const struct xt_entry_match *match)
 	print_match(info, "--");
 }
 
+static int statistic_xlate(const struct xt_entry_match *match,
+			   struct xt_xlate *xl, int numeric)
+{
+	const struct xt_statistic_info *info = (void *)match->data;
+
+	if (info->mode == XT_STATISTIC_MODE_RANDOM) {
+		xt_xlate_add(xl, "meta random%s %.11f ",
+			     (info->flags & XT_STATISTIC_INVERT) ? " !=" : "",
+			     1.0 * info->u.random.probability / 0x80000000);
+	}
+
+	return 1;
+}
+
 static struct xtables_match statistic_match = {
 	.family		= NFPROTO_UNSPEC,
 	.name		= "statistic",
@@ -145,6 +159,7 @@ static struct xtables_match statistic_match = {
 	.print		= statistic_print,
 	.save		= statistic_save,
 	.x6_options	= statistic_opts,
+	.xlate		= statistic_xlate,
 };
 
 void _init(void)
-- 
2.7.0


