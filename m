X-GM-THRID: 6256826514740871168
X-Received: by 10.28.170.73 with SMTP id t70mr142105wme.6.1456864849965;
        Tue, 01 Mar 2016 12:40:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.149 with SMTP id r143ls721524lfe.29.gmail; Tue, 01 Mar
 2016 12:40:49 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr2672236lbb.20.1456864849153;
        Tue, 01 Mar 2016 12:40:49 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id w128si42540wmd.0.2016.03.01.12.40.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:40:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 1so6123567wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0Ngf+DKN5lin1LL1gwDfSGln+ccHaz+TAl4/ujpJhaY=;
        b=WpJ7mNVpUtnpHD4FDrlC8SXU59a8wysRHzFfcv7Zohc1kvouHMeTY6H/6GvzsfFK/Y
         iFZLjKIw1aytFlqJba0hzQ/wlw2tTBxE6Neds9Rm4wTtS2XCUgk1jvOGbbn3NQH2LYYn
         iDDXCgtc3/8X4uyqX2Msj4eaIuZVpXKDlbXBuhKMDyjBZyZO12oLgYIsfWWpRMwR82m0
         qfrUqT+hD57Omjt/indU1pKeN3RYd9/6jLrq91O2ijTGJnB5B10kcdXqqmIUEjtBWhKa
         WoBOdmvOPN0K0yHD4rstybIXLnWCs25kpSd5Ku6WHvPGkI13kdKpcxrD8w1vUkTVsBtF
         3dxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0Ngf+DKN5lin1LL1gwDfSGln+ccHaz+TAl4/ujpJhaY=;
        b=e6guBMYJ3y9ccbmiEOC4ZhWbexF44mRTrLQVDDvsw4UuiqkATfQb+g8w0eUo6wpdjt
         2q79nzzWHyHdNzzfy9K0rXRfNaqojftj9iTFXDl3FPxs9tMKQG7EBr1SPjut7zlG0iO8
         K5QeO76qpIh+jclHksc8KD4AoWcxhhL0GOmfAc2e37gx8BlJBCazqJqx3z34TROFiX29
         ITj+qPMAZyDcoFEYC3x0G52wx9tPefZ6CsP2zIqVcO1KRGCHyUlhc6ExGLJRPy6HsSvO
         15K7jmc9rSUIxPI09bDZcZI5NSLSObWWP5JzXtQf4r6tYIaA4PzSrg94TSTi2TZpO+Fz
         UpKg==
X-Gm-Message-State: AD7BkJJv2DMTb/Z/U2gVWY3JcircQIzFGT6LG9kl/aAzR4NE3gze1RmxB3mJyNwbkOrJkQ==
X-Received: by 10.28.98.84 with SMTP id w81mr870341wmb.57.1456864848955;
        Tue, 01 Mar 2016 12:40:48 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id et11sm32524446wjc.30.2016.03.01.12.40.47
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 12:40:48 -0800 (PST)
Date: Tue, 1 Mar 2016 21:40:45 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, fw@strlen.de, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] extensions: libxt_statistic: Add translation to nft
Message-ID: <20160301204042.GA15382@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add translation for random mode to nftables. The nth mode is not
supported yet.

Examples:

$ iptables-translate -A INPUT -m statistic --mode random --probability
0.1 -j ACCEPT
nft add rule ip filter INPUT meta random 0.10000000009 counter accept

$ iptables-translate -A INPUT -m statistic --mode random ! --probability
0.1 -j ACCEPT
nft add rule ip filter INPUT meta random != 0.10000000009 counter accept

The .xlate indirection returns 0 if the translation is not available.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
Changes in v2:
	- Return 0 if the translation is not supported, as Pablo suggested.
	- Include not supported modes in the commit message, as Shivani suggested.
Changes in v3:
	- Fix wrong email format.

 extensions/libxt_statistic.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/extensions/libxt_statistic.c b/extensions/libxt_statistic.c
index b6ae5f5..c771363 100644
--- a/extensions/libxt_statistic.c
+++ b/extensions/libxt_statistic.c
@@ -133,6 +133,22 @@ static void statistic_save(const void *ip, const struct xt_entry_match *match)
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
+	} else {
+		return 0;
+	}
+
+	return 1;
+}
+
 static struct xtables_match statistic_match = {
 	.family		= NFPROTO_UNSPEC,
 	.name		= "statistic",
@@ -145,6 +161,7 @@ static struct xtables_match statistic_match = {
 	.print		= statistic_print,
 	.save		= statistic_save,
 	.x6_options	= statistic_opts,
+	.xlate		= statistic_xlate,
 };
 
 void _init(void)
-- 
2.7.0


