X-GM-THRID: 6402509847805296640
X-Received: by 10.13.206.67 with SMTP id q64mr9996064ywd.2.1490700494858;
        Tue, 28 Mar 2017 04:28:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.215 with SMTP id y23ls15302713oty.7.gmail; Tue, 28 Mar
 2017 04:28:14 -0700 (PDT)
X-Received: by 10.237.37.219 with SMTP id y27mr8857443qtc.41.1490700494463;
        Tue, 28 Mar 2017 04:28:14 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si527448pfb.2.2017.03.28.04.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 04:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so20631825pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 04:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Vuzapx4baP1TnStY7b3g4nv3pJzA9Y4HCyzx9ZPQqao=;
        b=UtmW4dtMmHgD/hHUOWywdhqSw9Eb/Bznt94H51CeajrNVwXgayav35wGVX3sfmv9EO
         BOeobiEWFwa677R6Yf/7GGATxb28kvZuOruhwa6ag5Cp238aWVMC2uep/gRLw6PSc5fC
         zvFpM5kXQmMVPUWuDlVFoQAJXskohaXqvvGM/r6MDNdG7Q/qtfSOiRaujjDk3sPbw8Di
         sRmHtftmuDa0crMiqXdOhM4FAnEnbxWvN28qZy+nnMv5oAYlfosq7/lW9h9KK2ujlbt8
         o8xUS4VEH+xqoWBOd4L0NNjocqAQ1vdPKoo1aPd+fF2/WkAZeEXcWk5AgHwn1kuEak9y
         I2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Vuzapx4baP1TnStY7b3g4nv3pJzA9Y4HCyzx9ZPQqao=;
        b=BAigpBSF1Hy2LSXrmWIQhr66VkwxNg0ZlIkoJyM0nP1pLuSlckh023CONK5Ngm5qnX
         9xa9dCU6JUvSfVdvXuvxipuPIlMzgXWcBrUb6MlbTLaN9eQNlfxZmY46QBzkJ8zopIjO
         /CcbhjS1Y2nGDir2xSXtGGGEaZUgtzwr5rqxXoKf7bOfuoB0TgyR4RRhZqIyCyzDbUEe
         lB+9mc30luqhy2T8BZmqYyFpegoscMtNEW+a1uBA1zLJA7zAu5TU0ChOCf4bjuqZ6SLa
         3+FxOFPKZpEZp6XooabyN23icUsdtcpHw+H6mf5YAIp/nhjCyqh2m9DcOXawoBBEBC8G
         VEqQ==
X-Gm-Message-State: AFeK/H2AmeG/3cM6myQdiFEUZ6WFhQ19MtLv8ASBssFFXX57JiXEqeX+Z2cfE5F9PeFCxw==
X-Received: by 10.84.129.195 with SMTP id b61mr35978202plb.83.1490700494197;
        Tue, 28 Mar 2017 04:28:14 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.168])
        by smtp.googlemail.com with ESMTPSA id z21sm6921543pgc.53.2017.03.28.04.28.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 04:28:13 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/3] ebtables: extensions: Constify option struct
Date: Tue, 28 Mar 2017 16:57:50 +0530
Message-Id: <54ae426a3c02ffa3dc6e6e11bacd74f6e1173693.1490699407.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>

The struct  of the type option is only used to initialise a field
inside the ebt_u_target struct and is not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/ebt_arpreply.c | 2 +-
 extensions/ebt_inat.c     | 4 ++--
 extensions/ebt_mark.c     | 2 +-
 extensions/ebt_nat.c      | 4 ++--
 extensions/ebt_redirect.c | 2 +-
 extensions/ebt_standard.c | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/extensions/ebt_arpreply.c b/extensions/ebt_arpreply.c
index c3757f3..51eda66 100644
--- a/extensions/ebt_arpreply.c
+++ b/extensions/ebt_arpreply.c
@@ -19,7 +19,7 @@ static int mac_supplied;
 
 #define REPLY_MAC '1'
 #define REPLY_TARGET '2'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "arpreply-mac" ,    required_argument, 0, REPLY_MAC    },
 	{ "arpreply-target" , required_argument, 0, REPLY_TARGET },
diff --git a/extensions/ebt_inat.c b/extensions/ebt_inat.c
index 1aa9435..681975d 100644
--- a/extensions/ebt_inat.c
+++ b/extensions/ebt_inat.c
@@ -23,7 +23,7 @@ static int s_sub_supplied, d_sub_supplied;
 #define NAT_D_SUB '2'
 #define NAT_S_TARGET '3'
 #define NAT_D_TARGET '3'
-static struct option opts_s[] =
+static const struct option opts_s[] =
 {
 	{ "isnat-list"     , required_argument, 0, NAT_S },
 	{ "isnat-sub"      , required_argument, 0, NAT_S_SUB },
@@ -31,7 +31,7 @@ static struct option opts_s[] =
 	{ 0 }
 };
 
-static struct option opts_d[] =
+static const struct option opts_d[] =
 {
 	{ "idnat-list"     , required_argument, 0, NAT_D },
 	{ "idnat-sub"      , required_argument, 0, NAT_D_SUB },
diff --git a/extensions/ebt_mark.c b/extensions/ebt_mark.c
index 5776b1c..4cf1378 100644
--- a/extensions/ebt_mark.c
+++ b/extensions/ebt_mark.c
@@ -20,7 +20,7 @@ static int mark_supplied;
 #define MARK_ORMARK  '3'
 #define MARK_ANDMARK '4'
 #define MARK_XORMARK '5'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "mark-target" , required_argument, 0, MARK_TARGET },
 	/* an oldtime messup, we should have always used the scheme
diff --git a/extensions/ebt_nat.c b/extensions/ebt_nat.c
index e6afbf8..00d9cd4 100644
--- a/extensions/ebt_nat.c
+++ b/extensions/ebt_nat.c
@@ -21,7 +21,7 @@ static int to_source_supplied, to_dest_supplied;
 #define NAT_S_TARGET '2'
 #define NAT_D_TARGET '2'
 #define NAT_S_ARP '3'
-static struct option opts_s[] =
+static const struct option opts_s[] =
 {
 	{ "to-source"     , required_argument, 0, NAT_S },
 	{ "to-src"        , required_argument, 0, NAT_S },
@@ -30,7 +30,7 @@ static struct option opts_s[] =
 	{ 0 }
 };
 
-static struct option opts_d[] =
+static const struct option opts_d[] =
 {
 	{ "to-destination", required_argument, 0, NAT_D },
 	{ "to-dst"        , required_argument, 0, NAT_D },
diff --git a/extensions/ebt_redirect.c b/extensions/ebt_redirect.c
index e470818..3f8227a 100644
--- a/extensions/ebt_redirect.c
+++ b/extensions/ebt_redirect.c
@@ -14,7 +14,7 @@
 #include <linux/netfilter_bridge/ebt_redirect.h>
 
 #define REDIRECT_TARGET '1'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "redirect-target", required_argument, 0, REDIRECT_TARGET },
 	{ 0 }
diff --git a/extensions/ebt_standard.c b/extensions/ebt_standard.c
index 67d4d7c..81edead 100644
--- a/extensions/ebt_standard.c
+++ b/extensions/ebt_standard.c
@@ -11,7 +11,7 @@
 #include <getopt.h>
 #include "../include/ebtables_u.h"
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{0}
 };
-- 
2.7.4


