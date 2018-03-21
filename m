X-GM-THRID: 6535333398324445184
X-Received: by 10.55.79.201 with SMTP id d192mr11359168qkb.4.1521625881047;
        Wed, 21 Mar 2018 02:51:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.64.66 with SMTP id j2ls331495qtl.11.gmail; Wed, 21 Mar
 2018 02:51:20 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs9jaPbECvcon/bQ4Fc0anO7xoZ0RHCjqQTnJ3NQc7JNmA5H83ta1YucWconQyimN+dsnvD
X-Received: by 10.200.26.237 with SMTP id h42mr13630865qtk.13.1521625880178;
        Wed, 21 Mar 2018 02:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521625880; cv=none;
        d=google.com; s=arc-20160816;
        b=l3pl1spwl2tMjLgwKN0tfyvTZsQxty31o9olwmL2xY3ZdL6iB4Ag8iHyPFlEHOWj7R
         VNToE22cU8nd/1sfdXaLsbtwB20jXEi4m/Y7wUSwdpkAgU/ZuV/YvtoDTk9HJiRBgIIL
         VcvMxiTyTDUCKdH38wib+Xksl6vHxBOrx+T+mgwgo63w5vH2787620ARNRNHyYYW8PkD
         HP23/1qluBKfYZAtvrt7J56oXJN2XgIEeyg4dBUP1GJR6B9ZJgqONs77vvi2odPrJwpV
         OEfyV3B5BKZxBmD2mltw78lPB8HXkA9Jfno9/RVQodEujIKGriA/GsDmppoSpKGyCuQk
         Cy3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=cjp+3UzbiHY7aChVvb9QP7AyjcI/fr7IC3AsCQ6CWpE=;
        b=WOrRZMni0YcumRDCXmvp4J4O2cshzzIobp1m7YFjE5Zee6rzscHDgVFR+8JKskiPd3
         lSo8UjdFxS3360MNXt22ueyt6p1twupb4SY2DK8UGaRRl94Y0nwHEmeMjHGYWGziU4gQ
         dkMMk8o7HekekqGSLpHLEgh+qoH5PAg97Lyfy1zV1D7va5uNYDZdnwLx88RKiro8m7rh
         rASZebYLF9/OuI1poJwh/p6u2TAHcgJWzYyDa8EQYtBcGD56fiF7JFo6kH0zNldVD7zw
         DNNGSMrdlIZcQwAbsvarr/ViC0wwX1kCr1eFwTkdV7hUBjA5dYQ8Cdacz5mN8tlO58+d
         pWgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxUjbP6k;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id t200si147266qke.4.2018.03.21.02.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 02:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RxUjbP6k;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id a19so1745566pgw.6
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Mar 2018 02:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cjp+3UzbiHY7aChVvb9QP7AyjcI/fr7IC3AsCQ6CWpE=;
        b=RxUjbP6kTCdBBcVTOQurmrJhXI1fYG/0emWYEReapPkiazNFXAkdn5k43pxH79JoGC
         EnvXh/3gPp/nQq57ocequ4eoCsQtqDqB9L7LkKw0OtZdf0HLgoS/oEor5XyAsn1DOeSw
         s7tUsJxsFW3SSTtbH9rz+0LWxUz77ut1saaVurOwKwcrTnBON1zB3F4VuNLFvfBNAOvT
         HwQhC6y7evj9s5Leym5EOsyCpJgUndQgUHdt+w7RkQgQRCZotHFCJsGT8P5my3v2JLis
         8PTqtIZgGFJ62QvZeaPbGPHkce+Zl5fo/N+voASN8GtRtTKtSXAcNkjbarfqaLihHZNi
         1pXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cjp+3UzbiHY7aChVvb9QP7AyjcI/fr7IC3AsCQ6CWpE=;
        b=qgAKcTLi/zfUddKOeBBgJwZ6SZN5ckXOB6NPAr91E+15pMmF4pfXpIg+cvuk4KMFZ5
         T3byA8fIgaIccx1xxrH4STNsMpWAYg1qpIXlmYeS2kmYPnXL/bsx2KgsuBsLv8oiT/73
         MEldJbaVbE19/Gx+W7H431rSmLKcOTpdfTyyy/MVDIfEeQXeOX3Rs5MwBq7UKkUb1NOk
         QnGYIH1SjeL6ZnGJCGGONxW2kGi2AoEoD1uBhuXgGgzWZFL3/9lPw+pyJ7IHfwASnkpr
         9+tAMnmeiIAd+olM331xJ9N6J5ROvWNEkG4m5Injf1901OCxedRwH+USDgyTcLtm7yws
         KSfA==
X-Gm-Message-State: AElRT7EXcvJUDmKRO+jWCF1dJ/f6t25z3/07jqUuVASTLPut8izQvSQP
	+CJqnXDs51qfWDmz0Db2DLy4OA==
X-Received: by 10.101.65.71 with SMTP id x7mr14683665pgp.203.1521625878721;
        Wed, 21 Mar 2018 02:51:18 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n15sm8175526pfa.35.2018.03.21.02.51.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Mar 2018 02:51:17 -0700 (PDT)
Date: Wed, 21 Mar 2018 15:20:28 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] iptables: constify option struct
Message-ID: <20180321095028.GA18484@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The struct of type option is only used to initialise a field and
is not modified anywhere.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
*subject is modified.

 extensions/libarpt_mangle.c | 2 +-
 iptables/iptables-xml.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/extensions/libarpt_mangle.c b/extensions/libarpt_mangle.c
index ec9b543..0d1f140 100644
--- a/extensions/libarpt_mangle.c
+++ b/extensions/libarpt_mangle.c
@@ -32,7 +32,7 @@ static void arpmangle_print_help(void)
 #define MANGLE_DEVT   '4'
 #define MANGLE_TARGET '5'
 
-static struct option arpmangle_opts[] = {
+static const struct option arpmangle_opts[] = {
 	{ .name = "mangle-ip-s",	.has_arg = true, .val = MANGLE_IPS },
 	{ .name = "mangle-ip-d",	.has_arg = true, .val = MANGLE_IPT },
 	{ .name = "mangle-mac-s",	.has_arg = true, .val = MANGLE_DEVS },
diff --git a/iptables/iptables-xml.c b/iptables/iptables-xml.c
index 49674ec..69c19a6 100644
--- a/iptables/iptables-xml.c
+++ b/iptables/iptables-xml.c
@@ -38,7 +38,7 @@ static int verbose;
 /* Whether to combine actions of sequential rules with identical conditions */
 static int combine;
 /* Keeping track of external matches and targets.  */
-static struct option options[] = {
+static const struct option options[] = {
 	{"verbose", 0, NULL, 'v'},
 	{"combine", 0, NULL, 'c'},
 	{"help", 0, NULL, 'h'},
-- 
2.7.4


