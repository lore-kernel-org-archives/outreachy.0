X-GM-THRID: 6472949369841647616
X-Received: by 10.99.123.81 with SMTP id k17mr126941pgn.57.1507275551953;
        Fri, 06 Oct 2017 00:39:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls7204553plc.10.gmail; Fri, 06 Oct
 2017 00:39:10 -0700 (PDT)
X-Received: by 10.84.229.144 with SMTP id c16mr74180plk.37.1507275550969;
        Fri, 06 Oct 2017 00:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507275550; cv=none;
        d=google.com; s=arc-20160816;
        b=cfWORv1MU5vL4tgIPSWiJTpVFIYyIXtqsLQg9Yp5cjkv8KAMKu7UVykBz6peMbt3qL
         Ml1mWBtyAopL6N558k3WJJDoppxojustkyZqnoIU76+jZ7rMV1wFeePVgy4LV1gaNRL+
         sKpR6csRTj3OrQdLwRqiAUrJy/4HDbA5unjBl6/wx4zeAqUX8ZSNXnRn0Fb1Di0EU/JQ
         DpfPEElXQ+qGDEcqjVtS7HT3yP+Mz6MHYzaEXmNcJjfmraHqDq+trd6JT5HRVT0Lh2II
         vyyAX1fPxaquImQu5Awjj1q/vxeBcrTwCIu6Q1BpQkCMXj4VN14AUeNFqo2bOvl2Rd23
         ugxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=c3eXswHbs2YSNYT6Use7rTIBqUTQ6XP6SZdWcv0J+bc=;
        b=K/5SMC60gKErlP/jq1jH2WneJzYDWMHf01R/VeiE5ZrDuPC1P7lSbYCJf2FNC9bWPY
         i6wJKji0uUzc7MpJacPkLynWHbL20Q9bzShRP18Kgp7msiIZ5RQxCMiimbWQ8abPGMf4
         4/fr03NLc784M5TJ3qniNvKakxqgfPK+TG0Q/mrwW+VMCN4jgkcEOMCy965/NJ0F1GGC
         C6Tp2nJtvSqXjMVKYO02q3/TyVP9FhqtyAFTK8G5NLsipQm2WygLXI/d9NEF+FIlKGGW
         DN2782cbObtGNY9/CtWhrMrwzfq4ol+XFcC1XkEPE5GaMKvgUt4we+xoO046/k6gUllD
         whVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkkjaVnc;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si87938pfb.5.2017.10.06.00.39.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 00:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkkjaVnc;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o1so16296774pga.4
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 00:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=c3eXswHbs2YSNYT6Use7rTIBqUTQ6XP6SZdWcv0J+bc=;
        b=LkkjaVncqEOZhfZ1yBdiVr+RlTVBzo5b5yuRwyGmoOEveLQK4plXuuBfq0r8Va7uks
         HfZzzVcpwmF53YiIlweZ1yxY7y+Dp9Bx1V4zlMlibryOE6ZWdS8ccPdkV/KiX+z50M65
         zeLEiYJ5EPamLsoP9ShpebnffVlvKYC621LKAOY664fqVB6pL21Fl/w6FBXh2oflSv0G
         /IspfR8kNj7vR77VCdgXyFo1BI9Bk6ccsK6QiFGDl3y6beVUBrVI7KtYYScluaIK3x6y
         yGnfHyGv1eZh/wMr21tJRECJ1D52oBRem4WhiBclPp+NKrL1lxNucnDiOOqOJ5KRqThx
         rEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=c3eXswHbs2YSNYT6Use7rTIBqUTQ6XP6SZdWcv0J+bc=;
        b=a3G19QTAwYOV+kJMZfYYc3HxE54RHu8eMxNL3xow+M0jq/werQfUYfcOFlJynzV4Ke
         StH57wDH+nnHKu7qApJTaLlCBVXR6T1zbrNzFC9EI+SZnAIoFUWzytpxxu4BjMtA2KLU
         9idLBHZzs2HML6I7vAJkiyKzu9OAnGD7mz3Gdc+fCTUsnzl/cxdtKY7dmsiKL+r+3r21
         qxE8TcQLd4/jh3iwzgH6o7wjuKqLY0dw44EZaDV6C4ep1JgHeE4KX6GK/3vNpn3kZDFS
         gl92QfpekJtXG248K6xllhXWctc3h0gmObohSnoqsySnhrGvZr/htipXYFNwTbaek92t
         B/5g==
X-Gm-Message-State: AMCzsaXwToxFH8pm9RIlT04Cguz9jbgGtE9LiDVZSTeMEU6OnpC/CZud
	1dH/W13x93uoEdbSOPKfh0k=
X-Google-Smtp-Source: AOwi7QCGOe9hvtZO3PdFIhF6iTVHAO3v9+2hEPLORPpVeLbIzOvPuPqnURF+8qz2GPTOJ9BnIcs2JQ==
X-Received: by 10.84.231.202 with SMTP id g10mr1178551pln.407.1507275550682;
        Fri, 06 Oct 2017 00:39:10 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id n2sm1824848pfa.118.2017.10.06.00.39.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 00:39:10 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] nftables: Add support for reserved header and addrs for routing header type 0
Date: Fri,  6 Oct 2017 13:06:59 +0530
Message-Id: <20171006073659.10302-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Add support for IPV6 routing header type 0 reserved field and addresses
with corresponding tests

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
For struct exthdr_rt0, I have specified type to be IPPROTO_ROUTING
due to which when exthdr_init_raw is called in exthdr_find_template
which initialises expr->exthdr.desc to exthdr_protocols[type] and 
that will be $exthdr_rt and not &exthdr_rt0, when testing the 
testcases this warning comes 'rt0 rserved 2' mismatches 'rt unknown
0x2' and same for the addrs. Fot this one possible way is to define
IPPROTO_ROUTING0 in header file in /usr/include/. Can anyone please
suggest what will be the best way to fix these warnings ?
I'll add more testcases once these warnings are fixed.
Thanks.

Changes in v2:
 -Changed log message
 -Added tests and removed errors but warning is still there

 include/exthdr.h           |  2 ++
 src/exthdr.c               |  4 ++--
 src/parser_bison.y         |  6 ++----
 tests/py/ip6/rt0.t         |  4 ++++
 tests/py/ip6/rt0.t.payload | 14 ++++++++++++++
 5 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/include/exthdr.h b/include/exthdr.h
index 97ccc38..3930108 100644
--- a/include/exthdr.h
+++ b/include/exthdr.h
@@ -14,6 +14,8 @@
 struct exthdr_desc {
 	const char			*name;
 	uint8_t				type;
+	unsigned int			protocol_key;
+	const struct exthdr_desc	*protocols[3];
 	struct proto_hdr_template	templates[10];
 };
 
diff --git a/src/exthdr.c b/src/exthdr.c
index ac3e163..ddd0018 100644
--- a/src/exthdr.c
+++ b/src/exthdr.c
@@ -246,6 +246,8 @@ const struct exthdr_desc exthdr_rt2 = {
 	HDR_TEMPLATE(__name, __dtype, struct ip6_rthdr0, __member)
 
 const struct exthdr_desc exthdr_rt0 = {
+	.name		= "rt0",
+	.type		= IPPROTO_ROUTING,
 	.templates	= {
 		[RT0HDR_RESERVED]	= RT0_FIELD("reserved", ip6r0_reserved, &integer_type),
 		[RT0HDR_ADDR_1]		= RT0_FIELD("addr[1]", ip6r0_addr[0], &ip6addr_type),
@@ -260,13 +262,11 @@ const struct exthdr_desc exthdr_rt0 = {
 const struct exthdr_desc exthdr_rt = {
 	.name		= "rt",
 	.type		= IPPROTO_ROUTING,
-#if 0
 	.protocol_key	= RTHDR_TYPE,
 	.protocols	= {
 		[0]	= &exthdr_rt0,
 		[2]	= &exthdr_rt2,
 	},
-#endif
 	.templates	= {
 		[RTHDR_NEXTHDR]		= RT_FIELD("nexthdr", ip6r_nxt, &inet_protocol_type),
 		[RTHDR_HDRLENGTH]	= RT_FIELD("hdrlength", ip6r_len, &integer_type),
diff --git a/src/parser_bison.y b/src/parser_bison.y
index 7016f5b..7c4e775 100644
--- a/src/parser_bison.y
+++ b/src/parser_bison.y
@@ -3697,10 +3697,8 @@ rt0_hdr_expr		:	RT0	rt0_hdr_field
 			}
 			;
 
-rt0_hdr_field		:	ADDR	'['	NUM	']'
-			{
-				$$ = RT0HDR_ADDR_1 + $3 - 1;
-			}
+rt0_hdr_field		:	ADDR'['NUM']'	{ $$ = RT0HDR_ADDR_1 + $3 - 1;}
+			|	RESERVED	{ $$ = RT0HDR_RESERVED; }
 			;
 
 rt2_hdr_expr		:	RT2	rt2_hdr_field
diff --git a/tests/py/ip6/rt0.t b/tests/py/ip6/rt0.t
index 1d50a89..ebbae75 100644
--- a/tests/py/ip6/rt0.t
+++ b/tests/py/ip6/rt0.t
@@ -4,3 +4,7 @@
 
 rt nexthop 192.168.0.1;fail
 rt nexthop fd00::1;ok;rt ip6 nexthop fd00::1
+
+rt0 reserved 2;ok
+rt0 addr [1] 2001:db8:0:1:1:1:1:1;ok
+rt0 addr [2] 2001:db8:0:0:0:0:1:1;ok
diff --git a/tests/py/ip6/rt0.t.payload b/tests/py/ip6/rt0.t.payload
index 464b7f2..69577e7 100644
--- a/tests/py/ip6/rt0.t.payload
+++ b/tests/py/ip6/rt0.t.payload
@@ -3,3 +3,17 @@ ip6 test-ip6 output
   [ rt load nexthop6 => reg 1 ]
   [ cmp eq reg 1 0x000000fd 0x00000000 0x00000000 0x01000000 ]
 
+# rt0 reserved 2
+ip6 test-ip6 output
+  [ exthdr load 1b @ 43 + 4 => reg 1 ]
+  [ cmp eq reg 1 0x00000002 ]
+
+# rt0 addr [1] 2001:db8:0:1:1:1:1:1
+ip6 test-ip6 output
+  [ exthdr load 16b @ 43 + 8 => reg 1 ]
+  [ cmp eq reg 1 0xb80d0120 0x01000000 0x01000100 0x01000100 ]
+
+# rt0 addr [2] 2001:db8:0:0:0:0:1:1
+ip6 test-ip6 output
+  [ exthdr load 16b @ 43 + 8 => reg 1 ]
+  [ cmp eq reg 1 0xb80d0120 0x00000000 0x00000000 0x01000100 ]
-- 
2.11.0


