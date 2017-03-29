X-GM-THRID: 6403004360189542400
X-Received: by 10.107.165.193 with SMTP id o184mr738913ioe.99.1490815626846;
        Wed, 29 Mar 2017 12:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.13 with SMTP id y13ls5749045iod.17.gmail; Wed, 29 Mar
 2017 12:27:06 -0700 (PDT)
X-Received: by 10.107.130.199 with SMTP id m68mr831986ioi.2.1490815626263;
        Wed, 29 Mar 2017 12:27:06 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si1307955pfz.1.2017.03.29.12.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 12:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so4135655pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 12:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bSQB0EHoa7FS8w0xlWMuB98eYpITELeKhWXgo7oOouM=;
        b=EA+dRRju2xz+9X6CnM//b328lqLbZqfEEEh1teKAjlpRGdtvMEMIDQXDRZMGfXUWRX
         czQCERqMJJKI9nHjbKHrtfz6KXAKtmXZDEdAwVEg/uQuy8jk/iRtIEXPsO819MV9orFo
         DY+0xC+ywaB74XwHud1rf3j7JlLYiZC0w7xbTHuIpCF06rdpsZenQJ+aHa6gT9FuVtQ/
         GpjTysxP1KI+M8+2wjXfKkcHyejw5LdLvMg1wlVB+BSGjzfU6ZaMdXA/0f10v+7knDjx
         dxyDhVOnW5C3U7L8MpEDCXXWTZPLRoenpx7EfPUQldHNHBnm6kavj/Cj7beDS1duT3ts
         xrsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bSQB0EHoa7FS8w0xlWMuB98eYpITELeKhWXgo7oOouM=;
        b=aNHgzhRZy6ff7vSAfOkifGK9SNH8gdriC3DCb5J6TgyzGE3o1WpHZHmseRfM8qJ2Dp
         I4XXIhTHHO7DVY4PKHuZGMYGlr/Wz6ycCmGgfUUHDxJiSXuaEVMtaM7ISeNA0lerZ9Du
         2d/LceN0zZOPeUVSwuuH2y/mezKvuiDSFADFZZzz2QbSt01mF+Aek63uvDTprXKRTd5J
         DbO8in0xOwSuG98ZdUuCgJOczgOYtu1v4n7oLD0LPMNkcsrnlNRb0m0XKCh+lm/bFSGM
         D5w6Sa3sffk6LuBsCXnQw1fsSSGGUcuVfnjhxgQwH/MbumQsvAwKusvo4pptdRnhl5q4
         uNSQ==
X-Gm-Message-State: AFeK/H2xa0qFQjNrPGz16/m6UW34uS1LJ9s7+E1LR4w5EK6YTBJUux6bKh4W4Hdx99Zpbg==
X-Received: by 10.98.35.9 with SMTP id j9mr2173221pfj.114.1490815625999;
        Wed, 29 Mar 2017 12:27:05 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.142.90])
        by smtp.gmail.com with ESMTPSA id f81sm15042785pfe.61.2017.03.29.12.27.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 12:27:05 -0700 (PDT)
Message-ID: <58dc0a89.549c620a.6eb0a.5c33@mx.google.com>
X-Google-Original-Message-ID: <20170329192702.GA20102@<rvarsha016@gmail.com>>
Date: Thu, 30 Mar 2017 00:57:02 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: netfilter-devel@vger.kernel.org, pablo@netfilter.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] iptables: Remove explicit static variables initalization.
References: <cover.1490815157.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490815157.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Static variables are initialized to zero by default, so remove explicit
initalization. This patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 iptables/ip6tables-restore.c |  2 +-
 iptables/ip6tables-save.c    |  2 +-
 iptables/iptables-restore.c  |  2 +-
 iptables/iptables-save.c     |  2 +-
 iptables/iptables-xml.c      | 10 +++++-----
 iptables/xtables-arp.c       |  2 +-
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/iptables/ip6tables-restore.c b/iptables/ip6tables-restore.c
index 8a47f09..30a4ade 100644
--- a/iptables/ip6tables-restore.c
+++ b/iptables/ip6tables-restore.c
@@ -26,7 +26,7 @@
 #define DEBUGP(x, args...)
 #endif
 
-static int counters = 0, verbose = 0, noflush = 0, wait = 0;
+static int counters, verbose, noflush, wait;
 
 static struct timeval wait_interval = {
 	.tv_sec	= 1,
diff --git a/iptables/ip6tables-save.c b/iptables/ip6tables-save.c
index 053413a..c2495d2 100644
--- a/iptables/ip6tables-save.c
+++ b/iptables/ip6tables-save.c
@@ -18,7 +18,7 @@
 #include "ip6tables.h"
 #include "ip6tables-multi.h"
 
-static int show_counters = 0;
+static int show_counters;
 
 static const struct option options[] = {
 	{.name = "counters", .has_arg = false, .val = 'c'},
diff --git a/iptables/iptables-restore.c b/iptables/iptables-restore.c
index 7bb06d8..15db358 100644
--- a/iptables/iptables-restore.c
+++ b/iptables/iptables-restore.c
@@ -23,7 +23,7 @@
 #define DEBUGP(x, args...)
 #endif
 
-static int counters = 0, verbose = 0, noflush = 0, wait = 0;
+static int counters, verbose, noflush, wait;
 
 static struct timeval wait_interval = {
 	.tv_sec	= 1,
diff --git a/iptables/iptables-save.c b/iptables/iptables-save.c
index e8ae9c6..fbc6059 100644
--- a/iptables/iptables-save.c
+++ b/iptables/iptables-save.c
@@ -17,7 +17,7 @@
 #include "iptables.h"
 #include "iptables-multi.h"
 
-static int show_counters = 0;
+static int show_counters;
 
 static const struct option options[] = {
 	{.name = "counters", .has_arg = false, .val = 'c'},
diff --git a/iptables/iptables-xml.c b/iptables/iptables-xml.c
index 740a563..2e093b5 100644
--- a/iptables/iptables-xml.c
+++ b/iptables/iptables-xml.c
@@ -34,9 +34,9 @@ struct xtables_globals iptables_xml_globals = {
 static void print_usage(const char *name, const char *version)
 	    __attribute__ ((noreturn));
 
-static int verbose = 0;
+static int verbose;
 /* Whether to combine actions of sequential rules with identical conditions */
-static int combine = 0;
+static int combine;
 /* Keeping track of external matches and targets.  */
 static struct option options[] = {
 	{"verbose", 0, NULL, 'v'},
@@ -73,10 +73,10 @@ parse_counters(char *string, struct xt_counters *ctr)
 
 /* global new argv and argc */
 static char *newargv[255];
-static unsigned int newargc = 0;
+static unsigned int newargc;
 
 static char *oldargv[255];
-static unsigned int oldargc = 0;
+static unsigned int oldargc;
 
 /* arg meta data, were they quoted, frinstance */
 static int newargvattr[255];
@@ -96,7 +96,7 @@ struct chain {
 
 #define maxChains 10240		/* max chains per table */
 static struct chain chains[maxChains];
-static int nextChain = 0;
+static int nextChain;
 
 /* funCtion adding one argument to newargv, updating newargc 
  * returns true if argument added, false otherwise */
diff --git a/iptables/xtables-arp.c b/iptables/xtables-arp.c
index 6aa000a..4a968f4 100644
--- a/iptables/xtables-arp.c
+++ b/iptables/xtables-arp.c
@@ -150,7 +150,7 @@ static struct option original_opts[] = {
 int RUNTIME_NF_ARP_NUMHOOKS = 3;
 
 static struct option *opts = original_opts;
-static unsigned int global_option_offset = 0;
+static unsigned int global_option_offset;
 
 extern void xtables_exit_error(enum xtables_exittype status, const char *msg, ...) __attribute__((noreturn, format(printf,2,3)));
 struct xtables_globals arptables_globals = {
-- 
2.9.3


