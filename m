X-GM-THRID: 6403004537116819456
X-Received: by 10.99.112.82 with SMTP id a18mr742395pgn.168.1490815667902;
        Wed, 29 Mar 2017 12:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls5762198iod.30.gmail; Wed, 29 Mar
 2017 12:27:47 -0700 (PDT)
X-Received: by 10.98.24.87 with SMTP id 84mr644998pfy.39.1490815667160;
        Wed, 29 Mar 2017 12:27:47 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1432741pfx.8.2017.03.29.12.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so4151292pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wh1RiUN8oJFKIpz7xWJgrtLsnb1R6MnUVGp2q0Mh8ig=;
        b=Ip7RpUzgs5krB0YMIFVoYfMeUOt0GF8+jQwjatTq204+KT0yfnKQyPXzgkGUk1sk8q
         mNTQl+/1cxkx2GDu+E+wdz2vhYcvLWiC//x/4q+YRaw+1RCisfH+UyKG2Y1NVR4M/X1f
         nLQKdjz3OKp/7jVKDGV9mVFxk4D00wkDtVwBvPcFj1fB66yYRbDTpbo/Jt9d1CS2C5UL
         OhyLZM/1p+5TWoHcPKtDJBD+zAeax2JB6ozUNcleKhMdAqSaMK62IvH025Cg+iCpS+sy
         oPzbs7s07nBfv9m4V3m7f00ZhO+vUBDJSwJclc4slCelBBXJJhmEInlXGBGNODQM3ODK
         JLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wh1RiUN8oJFKIpz7xWJgrtLsnb1R6MnUVGp2q0Mh8ig=;
        b=ez861wReb+QgP05Z82yHQVKgUz1ZdB/WKV864aQUutgNKoCysDydCs+d6gx8jP8NXS
         TDCxVYmyiJRGqi/P18n8ircmJJwQA1wFQejt0DkHBirUn3gKoq8Bf9hy6oAH1FkKXzBZ
         aovZXvN5KVINGl5Nqx+AWBS+apQkvn4siAKFV5+c2fm2j8Mpfcl7dOdR3TDf0meLoHSR
         1Gq45qrz6ZG64RCcupHVZBoMN7wH0qkGWhOXsJSWRkpgi0aHsLPfUlr3WSId2s5Rw/hr
         gP/qvi0/2IlwXRUnb45hCQgq09mqVEcug45BG/U55DmqNuPp/NRvWf2tVgDcT7cTZquk
         YirQ==
X-Gm-Message-State: AFeK/H0OzzVGWVx/ssvBaNWSai05t6VQX7D0BCUWKK8Tfdn3SMutDwDSe4FbRjv+5v9aNg==
X-Received: by 10.98.16.137 with SMTP id 9mr2184682pfq.104.1490815666803;
        Wed, 29 Mar 2017 12:27:46 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id s21sm14962521pgg.65.2017.03.29.12.27.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:27:46 -0700 (PDT)
Message-ID: <58dc0ab2.15dc630a.414de.570e@mx.google.com>
X-Google-Original-Message-ID: <20170329192743.GA20106@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:57:43 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: netfilter-devel@vger.kernel.org, pablo@netfilter.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] iptables: Remove unnecessary braces.
References: <cover.1490815157.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490815157.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove braces which are not required, to fix the check patch issue.
The following coccinelle script was used to fix this issue.

@@
expression e;
expression e1;
@@
if(e)
-{
 e1;
-}

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 iptables/iptables-standalone.c | 3 +--
 iptables/iptables.c            | 3 +--
 iptables/xtables-standalone.c  | 3 +--
 iptables/xtables-translate.c   | 6 ++----
 4 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/iptables/iptables-standalone.c b/iptables/iptables-standalone.c
index 4da1d7f..c211fb7 100644
--- a/iptables/iptables-standalone.c
+++ b/iptables/iptables-standalone.c
@@ -73,9 +73,8 @@ iptables_main(int argc, char *argv[])
 			fprintf(stderr, "iptables: %s.\n",
 				iptc_strerror(errno));
 		}
-		if (errno == EAGAIN) {
+		if (errno == EAGAIN)
 			exit(RESOURCE_PROBLEM);
-		}
 	}
 
 	exit(!ret);
diff --git a/iptables/iptables.c b/iptables/iptables.c
index 62731c5..97cbda9 100644
--- a/iptables/iptables.c
+++ b/iptables/iptables.c
@@ -1114,9 +1114,8 @@ void print_rule4(const struct ipt_entry *e,
 		       e->ip.invflags & IPT_INV_FRAG ? " !" : "");
 
 	/* Print matchinfo part */
-	if (e->target_offset) {
+	if (e->target_offset)
 		IPT_MATCH_ITERATE(e, print_match_save, &e->ip);
-	}
 
 	/* print counters for iptables -R */
 	if (counters < 0)
diff --git a/iptables/xtables-standalone.c b/iptables/xtables-standalone.c
index 355a446..139c477 100644
--- a/iptables/xtables-standalone.c
+++ b/iptables/xtables-standalone.c
@@ -85,9 +85,8 @@ xtables_main(int family, const char *progname, int argc, char *argv[])
 			fprintf(stderr, "iptables: %s.\n",
 				nft_strerror(errno));
 		}
-		if (errno == EAGAIN) {
+		if (errno == EAGAIN)
 			exit(RESOURCE_PROBLEM);
-		}
 	}
 
 	exit(!ret);
diff --git a/iptables/xtables-translate.c b/iptables/xtables-translate.c
index 00de019..e049f24 100644
--- a/iptables/xtables-translate.c
+++ b/iptables/xtables-translate.c
@@ -236,9 +236,8 @@ static int do_command_xlate(struct nft_handle *h, int argc, char *argv[],
 	switch (p.command) {
 	case CMD_APPEND:
 		ret = 1;
-		if (!xlate(h, &p, &cs, &args, true, nft_rule_xlate_add)) {
+		if (!xlate(h, &p, &cs, &args, true, nft_rule_xlate_add))
 			print_ipt_cmd(argc, argv);
-		}
 		break;
 	case CMD_DELETE:
 		break;
@@ -250,9 +249,8 @@ static int do_command_xlate(struct nft_handle *h, int argc, char *argv[],
 		break;
 	case CMD_INSERT:
 		ret = 1;
-		if (!xlate(h, &p, &cs, &args, false, nft_rule_xlate_add)) {
+		if (!xlate(h, &p, &cs, &args, false, nft_rule_xlate_add))
 			print_ipt_cmd(argc, argv);
-		}
 		break;
 	case CMD_FLUSH:
 		if (p.chain) {
-- 
2.9.3


