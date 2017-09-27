X-GM-THRID: 6470423342765572096
X-Received: by 10.99.6.144 with SMTP id 138mr321449pgg.28.1506512831318;
        Wed, 27 Sep 2017 04:47:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.185.88 with SMTP id v24ls407767pgo.16.gmail; Wed, 27 Sep
 2017 04:47:08 -0700 (PDT)
X-Received: by 10.99.51.202 with SMTP id z193mr312520pgz.69.1506512828945;
        Wed, 27 Sep 2017 04:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506512828; cv=none;
        d=google.com; s=arc-20160816;
        b=g3k2uBgx3lldXUB1K+edSXZJBbm8pEn5yWPg8irwxjkmwH5Bcyd4wyuJnfK6IfodSb
         3hFOtOhY8rPlpnRtcQYWsi+Qne+yE4YHEQW/rxGOXj0I11WRU94YDllTb4K9NAbHJkKR
         kJwZpc0vZbWzJXHC1r7t0AwdGBpJ31Lp28HVsw3UpyJZU5eU4rRXWnvBPYjh8Nvrv5sg
         xMOOVKznbA8u9DjTb0waHAJKiQ7RZBI/nN8Ak0wT4ZPdi2nSVqTwouWcfHO0sH3VTEho
         BNH3WzjFF2eu8tWpzYVTjulpnYkB2vNGriVWE90rQiYn/Uz1gEp1LkhuRdZvTwgwPc5P
         CcPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=gwRgVbP/BnI5fmhvhXKdFZ1JOUTXhe80a6s2mXNx25s=;
        b=z1jfXzWIJKq5zIwUPEvMsR5EcdZ4k71/zGgB27fum6rxsvxlbVOnIW2C+Zvuqej/tZ
         YQz6X8AzKjWn11tgcaF7HHdHIDUYnVC5HJ8/aKMXHpTDbvV4mp11i9efFvwDvkRuxINz
         bLUceMibzTZ+4/wyMNaEZT7M08Yt88/5SPgKSVGaDJKPus3wjc3j/DAQOimA52MNcY5I
         PLRfvCzBTlF+2bxwndeevfCxVSbvp6fI4W2/e9MzMmvaVk+oUgL/buvCnRtPySy1u+rH
         1megIW1BXHwbcbBxn9LEdDz3fdw7hyN7l5qhHWuqyt1edkItZxyz+zXgDXa1JbyZujKf
         SA4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ocd0F88E;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s81si888571pfg.19.2017.09.27.04.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 04:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ocd0F88E;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so8949096pgc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 04:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gwRgVbP/BnI5fmhvhXKdFZ1JOUTXhe80a6s2mXNx25s=;
        b=Ocd0F88EiE7UXg4HyhLUqdUtMIMzMjB5lSkWHs8L+zJvNHxYMfQIE3xqia/bUM5uhS
         yw+8mxJyi+aaEqC3qkUqNo5xsl6d3zhKc/n2m2U4B/9b/AvoTiE3+q3NkpZI+n5Z+oKz
         hdwa4W+XBhIElk1Zul5uqlq/Q9DU6k8svr7uF+Xs6uABLsPToC1OajEj6nNKPQ23mKuz
         4isYDZXVZYzyeXsXIu4bGpDYMgYA8CcGcsUDTZARvzx2umI0E0pwmn0VKBcfaNDbGqHs
         Th16XrUYB8vsz8YMcJynDsto0P7PHWqOtJC0k99yt0avIi4pR01sashQVffZmzW7SVuk
         lkmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gwRgVbP/BnI5fmhvhXKdFZ1JOUTXhe80a6s2mXNx25s=;
        b=sDmyHJZJTpWBkVlpy9BuOU7NZq0vL9bP4MuouBHtrAWVqXlDEX40mIW6ZHPmHhIolV
         OTbBoBZozdB5b4jMoXNuIrd3E+8RpzjoCswA9bgolcS9dUtjT+8HrgirY06mkvT7iQUj
         YPydA8yHfENYZvOYi1Zk3TgCFuBVFSFPFFbBPyC/EebdQ/SDc6HbQG016y0ORHSeBOAc
         XggN9hmy/2caFj8ZHxxTSOoioqQdX8K99829/qBtdfw1AZcdn/kayBSqsu+zcmTmyMaU
         cXOtTiBntEw355Ltve0ULwhfbKuibi2r8APtoexzicJF1AJBuA6LcmMJef6i4IsRADRH
         6oQg==
X-Gm-Message-State: AHPjjUia6E6ekStAc9So6xUctMaXWCZEMBXmowZEwcKQjOycXBc0ls3v
	jH/puhX82q7OJvBNotdRiVzNkQ==
X-Google-Smtp-Source: AOwi7QDmwcw7yx9J5lt9DwHt6VX3t82I+4v0NMsiUGbMi7JCl/DDlVljknvYrlvIWsIW01w2iMurpQ==
X-Received: by 10.99.43.4 with SMTP id r4mr1091267pgr.380.1506512827299;
        Wed, 27 Sep 2017 04:47:07 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id m24sm21038048pfj.28.2017.09.27.04.47.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 27 Sep 2017 04:47:06 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] iptables: Constify option struct
Date: Wed, 27 Sep 2017 17:14:52 +0530
Message-Id: <1506512692-7872-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

The struct of type option is only used to initialise a field inside
the xtables_globals struct and is not modified anywhere.
Done using following coccinelle semantic patch

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

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 iptables/ip6tables.c  | 2 +-
 iptables/iptables.c   | 2 +-
 iptables/xtables-eb.c | 2 +-
 iptables/xtables.c    | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/iptables/ip6tables.c b/iptables/ip6tables.c
index 49bd006..0f6fa31 100644
--- a/iptables/ip6tables.c
+++ b/iptables/ip6tables.c
@@ -78,7 +78,7 @@ static const char optflags[]
 
 static const char unsupported_rev[] = " [unsupported revision]";
 
-static struct option original_opts[] = {
+static const struct option original_opts[] = {
 	{.name = "append",        .has_arg = 1, .val = 'A'},
 	{.name = "delete",        .has_arg = 1, .val = 'D'},
 	{.name = "check" ,        .has_arg = 1, .val = 'C'},
diff --git a/iptables/iptables.c b/iptables/iptables.c
index 69d19fe..e930fe2 100644
--- a/iptables/iptables.c
+++ b/iptables/iptables.c
@@ -75,7 +75,7 @@ static const char optflags[]
 
 static const char unsupported_rev[] = " [unsupported revision]";
 
-static struct option original_opts[] = {
+static const struct option original_opts[] = {
 	{.name = "append",        .has_arg = 1, .val = 'A'},
 	{.name = "delete",        .has_arg = 1, .val = 'D'},
 	{.name = "check",         .has_arg = 1, .val = 'C'},
diff --git a/iptables/xtables-eb.c b/iptables/xtables-eb.c
index c8b5d4f..60ec935 100644
--- a/iptables/xtables-eb.c
+++ b/iptables/xtables-eb.c
@@ -247,7 +247,7 @@ static int get_current_chain(const char *chain)
 
 /* Default command line options. Do not mess around with the already
  * assigned numbers unless you know what you are doing */
-static struct option ebt_original_options[] =
+static const struct option ebt_original_options[] =
 {
 	{ "append"         , required_argument, 0, 'A' },
 	{ "insert"         , required_argument, 0, 'I' },
diff --git a/iptables/xtables.c b/iptables/xtables.c
index ac11325..aebe7d7 100644
--- a/iptables/xtables.c
+++ b/iptables/xtables.c
@@ -59,7 +59,7 @@ static const char cmdflags[] = { 'I', 'D', 'D', 'R', 'A', 'L', 'F', 'Z',
 static const char optflags[]
 = { 'n', 's', 'd', 'p', 'j', 'v', 'x', 'i', 'o', '0', 'c', 'f'};
 
-static struct option original_opts[] = {
+static const struct option original_opts[] = {
 	{.name = "append",	  .has_arg = 1, .val = 'A'},
 	{.name = "delete",	  .has_arg = 1, .val = 'D'},
 	{.name = "check",	  .has_arg = 1, .val = 'C'},
-- 
1.9.1


