X-GM-THRID: 6402257939123404800
X-Received: by 10.99.116.17 with SMTP id p17mr8822364pgc.111.1490641836970;
        Mon, 27 Mar 2017 12:10:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.11 with SMTP id r11ls1912684itc.14.canary-gmail; Mon,
 27 Mar 2017 12:10:36 -0700 (PDT)
X-Received: by 10.98.156.89 with SMTP id f86mr6133617pfe.24.1490641836072;
        Mon, 27 Mar 2017 12:10:36 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si223874pfb.2.2017.03.27.12.10.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so15184027pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ctf5vSAkryASO3Xdh8VT7ppZS+MGQcLztW1RWp8Ghg4=;
        b=WJMIsNiDZLKpV6t7yx6dN/Zw5zJcMg+OP0HwiLr2ZvqurB7UyLttP2cGqAhEZbx2B/
         0/l88b+crjUKqZb/brFGhfi5qmG8sTXnW6LXiV9Bg+gKtd4Dhl4/tVtcug0ItruKT9hP
         ii4twA76BdoUcsilXlWqYgd6V/z2qs8GhY0KYabts4hp5H8+8OphJcb0JtGG26+AUJPw
         35NsZpyDHMUH89WmSc9OTCaYLmWLoTM3HXJfHk7o+j9lcB+ISnQQsIhsa9nk2oHNdYma
         8LxgvZXPnTqSflkWRZGeATfO0FyF/S2i8niE76y00Qz8Sbe/9i5wyCBxyFdN+XQ0zU3Y
         /v8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ctf5vSAkryASO3Xdh8VT7ppZS+MGQcLztW1RWp8Ghg4=;
        b=pRCjZRkoXLnoOSV8BPYKP3t14nyGPzVG2WmapYX0I6iIk6Z0CXrFidnXhYaxfBOuuu
         xGHtLKp/8lXZhPCPg4DnRTNYVLmy3hnyHDegKjOU9x2PorDA5qG7NxB4h8gLwG1mQAgm
         E5FnPN1sHoqzNXRVHuE9+cEUr7+3ntmxVAHtDqE4DIg6UokyXuvrXIbz8LeE3zfL+eNe
         xyFR/z5Kaw2P5MI2oOJFtNvBvrGO9iQDYT9uS8A9582C3VIqjaA3OoWqt+FGb8IzAK+J
         4VmTNE/GATG+Bj7z/8dADc2whimq8jByC61UyLtoFcLJocqFmKJJSsL8HE9nA/7iBytm
         x5/g==
X-Gm-Message-State: AFeK/H0zLzGEwfGkVbsTBZUsgU9JihalhEQVKKZ280DI4YkXjAN72piaI9iMqF7tiHjhcg==
X-Received: by 10.99.178.81 with SMTP id t17mr25694855pgo.136.1490641835843;
        Mon, 27 Mar 2017 12:10:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id v17sm2674051pgc.20.2017.03.27.12.10.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 12:10:35 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] iptables: Constify option struct
Date: Tue, 28 Mar 2017 00:40:15 +0530
Message-Id: <1490641815-12741-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The struct  of the type option is only used to initialise a field
inside the xtables_match struct and is not modified anywhere.
Done using Coccinelle:

@r1 disable optional_qualifier@
identifier s,i;
position p;
@@

static struct option i@p[] ={...};

@ok1@
identifier r1.i;
expression e;
position p;
@@
e = i@p

@bad@
position p != {r1.p,ok1.p};
identifier r1.i;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct option i[] = { ... };

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/libebt_limit.c  | 2 +-
 extensions/libebt_mark.c   | 2 +-
 extensions/libebt_mark_m.c | 2 +-
 extensions/libebt_nflog.c  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/extensions/libebt_limit.c b/extensions/libebt_limit.c
index 6b9bb16..988f678 100644
--- a/extensions/libebt_limit.c
+++ b/extensions/libebt_limit.c
@@ -29,7 +29,7 @@
 #define ARG_LIMIT		'1'
 #define ARG_LIMIT_BURST		'2'
 
-static struct option brlimit_opts[] =
+static const struct option brlimit_opts[] =
 {
 	{ .name = "limit",	.has_arg = true,	.val = ARG_LIMIT },
 	{ .name = "limit-burst",.has_arg = true,	.val = ARG_LIMIT_BURST },
diff --git a/extensions/libebt_mark.c b/extensions/libebt_mark.c
index a1a208c..7b80b22 100644
--- a/extensions/libebt_mark.c
+++ b/extensions/libebt_mark.c
@@ -25,7 +25,7 @@ static int mark_supplied;
 #define MARK_ORMARK  '3'
 #define MARK_ANDMARK '4'
 #define MARK_XORMARK '5'
-static struct option brmark_opts[] = {
+static const struct option brmark_opts[] = {
 	{ .name = "mark-target",.has_arg = true,	.val = MARK_TARGET },
 	/* an oldtime messup, we should have always used the scheme
 	 * <extension-name>-<option> */
diff --git a/extensions/libebt_mark_m.c b/extensions/libebt_mark_m.c
index ab9d234..eb08dba 100644
--- a/extensions/libebt_mark_m.c
+++ b/extensions/libebt_mark_m.c
@@ -18,7 +18,7 @@
 
 #define MARK '1'
 
-static struct option brmark_m_opts[] = {
+static const struct option brmark_m_opts[] = {
 	{ .name = "mark",	.has_arg = true, .val = MARK },
 	XT_GETOPT_TABLEEND,
 };
diff --git a/extensions/libebt_nflog.c b/extensions/libebt_nflog.c
index fef7196..5f1d13b 100644
--- a/extensions/libebt_nflog.c
+++ b/extensions/libebt_nflog.c
@@ -30,7 +30,7 @@ enum {
 	NFLOG_NFLOG	= 0x16,
 };
 
-static struct option brnflog_opts[] = {
+static const struct option brnflog_opts[] = {
 	{ .name = "nflog-group",     .has_arg = true,  .val = NFLOG_GROUP},
 	{ .name = "nflog-prefix",    .has_arg = true,  .val = NFLOG_PREFIX},
 	{ .name = "nflog-range",     .has_arg = true,  .val = NFLOG_RANGE},
-- 
2.7.4


