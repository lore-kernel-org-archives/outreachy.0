X-GM-THRID: 6477098943281889280
X-Received: by 10.36.131.65 with SMTP id d62mr5422502ite.39.1508067115797;
        Sun, 15 Oct 2017 04:31:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.203 with SMTP id o194ls2192888ioo.7.gmail; Sun, 15 Oct
 2017 04:31:54 -0700 (PDT)
X-Received: by 10.36.5.5 with SMTP id 5mr5704123itl.30.1508067114954;
        Sun, 15 Oct 2017 04:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508067114; cv=none;
        d=google.com; s=arc-20160816;
        b=AyI/FSvzfXk+hRTqak6xKILl3HH0EGcooNqXn1mj5ZVVD2oBhTWxK+8OCzyo56E0k4
         mq6tkzX2EeT6tu8HwUZED+wfhMC8Iq9HFJ3DH3YFYbamPS4fTT9o81cmTlSQglZ8Txd/
         2YBniwJCQaYv69j45xVZn+j1AaN16XtoaODy9SxsMn74F/IkUVe5DjWTL5jOYhMJsJJw
         bgVGrpJhe8wbcrE7ZtdcOUrSBCD22eMTyeebjIknGexOakYEfEdVnHDsEQdfaw5fHqLU
         luOIqMwsYR00335vZOqQQdKn7FByXhux3Pc8FFJJNUViviBxmdVVz1KY0cClF4skpnjV
         enYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=i5b40AsftIFF5xKxQWohHdB09VmpEFsZYAl7fPbwRcM=;
        b=m1aP8hYFI3gGrUfQtKkO/eSBlSfBwoFijrthTJmpM+kR6cC1et0AlRMzI36mMH+B1X
         NBcsk6k5uoHudcoqPRQ9U1o6TUM9LQ9CXksFlvB9AWfV8oawZBPTNFhGXItpkEwP0q5/
         1UgnqJerjlRyq27xb+WlgRKRELmc6Q6MziKdhykVJLrCTkFqBjONRSli4vv6u6v9ILWg
         B9O8sNi9hLcAjzVzX84hlPjCahES9ZYdNmAD/SjrpzUxhHS8mB7xBjnTVgelpsZsOPgm
         fQDegJ2nfWwOrbJHk2wWo1LzgeqyrIZM9lvQVqbsQFge5ektrLGc185vq9blMXYNDJDD
         eqjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJOX3zzp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::230 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x230.google.com (mail-pg0-x230.google.com. [2607:f8b0:400e:c05::230])
        by gmr-mx.google.com with ESMTPS id a205si431321itg.1.2017.10.15.04.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 04:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::230 as permitted sender) client-ip=2607:f8b0:400e:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJOX3zzp;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::230 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x230.google.com with SMTP id g6so3202749pgn.6
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 04:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=i5b40AsftIFF5xKxQWohHdB09VmpEFsZYAl7fPbwRcM=;
        b=dJOX3zzp1bZqjsymAGP/WI16Z1fOg7CDLRewiro6aYX2x5VYIiJiK4DmeA44AZ7mCW
         gjbsxb9NikmDStocVlNZHUUmi5sGbbjZzOByrBBCKlYHb9ZUWIoTehUpSlEIW3qFZlQm
         2doyAC9RNC997mTLmcZhS90FxhvrZJucR1Xy0IFwCcX3IHvMlRtqxX2qUZoNz0kX1GIm
         mwCoKClz4uTaBuEL4/OD5vB3F/vSoScxROAM3rX+ZRrNL8ZH40sLDZumd/wWPRA87MJu
         I+IgL24nifXjZBwgvUNvcw55iDXdHByazDetpl3zATHvPoxdfgNJ0UspOJvKrjwY/mMI
         aguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=i5b40AsftIFF5xKxQWohHdB09VmpEFsZYAl7fPbwRcM=;
        b=gVXqwG/KHXl18ECE795AbhY93fEcp2s7QVHCJcCSEt5qS4r3GFGHkE4YlM5Z/yIirn
         nRWAef5Cg7B7C03GotoOHyAg2uGJSyQ32FESrDVJPKXaFHSQ8JhTvIPKJTFPJgNvsgyF
         O6gDQIkvu1cuSJWwscVt4Vj5H7bv2jPPXaXxn9NPv1Tz9Agpm0tMLxYe05fnmDgRVtvR
         J4EIHyBaFCL+bVKjAq4YMPS6PAFzS6k6NsXEnvRSVm5hnBYK4jJj73uWSrNbXquFD3ZN
         +QOOXixUvXmc9PUbR5UHzWwzccTEbm3aik/jAaSyOqm2pDWmaJBoyTsZD2jYsshoRNw9
         KZWQ==
X-Gm-Message-State: AMCzsaXKsgVCrJ5ea0zjYw4hP/KSpECK9ZJjjZ3Qhkc4uLWmzv0ABx41
	t6mEC+sLDbeLTZwYuHTZWne98vta
X-Google-Smtp-Source: AOwi7QCKM7n/CFi0b9CtUBTrgP3wPEGJHwYfHSx7IWZbisIkqsUkTC6r/MPKT59zGObZV8/7OFtKKg==
X-Received: by 10.84.194.3 with SMTP id g3mr6249159pld.246.1508067114546;
        Sun, 15 Oct 2017 04:31:54 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id f3sm10250733pfd.82.2017.10.15.04.31.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 15 Oct 2017 04:31:53 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	pablo@netfilter.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] iptables: iptables-compat translation for TCPMSS
Date: Sun, 15 Oct 2017 17:01:47 +0530
Message-Id: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Since path mtu support was added, we can now add
iptables-compat translation for TCPMSS extension.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 extensions/libxt_TCPMSS.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
index 4b71e44..7f65298 100644
--- a/extensions/libxt_TCPMSS.c
+++ b/extensions/libxt_TCPMSS.c
@@ -91,6 +91,17 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
 		printf(" --set-mss %u", mssinfo->mss);
 }
 
+static int TCPMSS_xlate(struct xt_xlate *xl,
+						 const struct xt_xlate_tg_params *params)
+{
+	const struct xt_tcpmss_info *mssinfo =
+		(const struct xt_tcpmss_info *)params->target->data;
+	if(mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
+		xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
+
+	return 1;
+}
+
 static struct xtables_target tcpmss_tg_reg[] = {
 	{
 		.family        = NFPROTO_IPV4,
@@ -104,6 +115,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
 		.x6_parse      = TCPMSS_parse,
 		.x6_fcheck     = TCPMSS_check,
 		.x6_options    = TCPMSS4_opts,
+		.xlate		   = TCPMSS_xlate,
 	},
 	{
 		.family        = NFPROTO_IPV6,
-- 
2.7.4


