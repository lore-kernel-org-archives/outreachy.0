X-GM-THRID: 6402509847805296640
X-Received: by 10.31.242.137 with SMTP id q131mr6777400vkh.38.1490700490398;
        Tue, 28 Mar 2017 04:28:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls2263558otc.32.gmail; Tue, 28 Mar
 2017 04:28:09 -0700 (PDT)
X-Received: by 10.237.50.229 with SMTP id z92mr8664723qtd.67.1490700489972;
        Tue, 28 Mar 2017 04:28:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si638833pfb.0.2017.03.28.04.28.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 04:28:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so20689432pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 04:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=TCM+UtCPaDTjmDhSiULl6LD6OGs/uAlATwAdl05ZAzk=;
        b=BNTWylEjBukvNqx5rGxleSS/QnVE3xWg7dqsqlWNEaOa8jYVyEubrEziHzqsjHeqc8
         QNJsFhSysIPX2cWSAgpgIXAyn/3Cg5AvY31ywdV66da8yFrXz+4BivVMY15RJ+4iXvNy
         7BAFLWv/+8TvOvYmm8vMEHWowkJeTLSyPCbsnTwkTqQ/7nbdpqivh10ltEADKGeIol9J
         hYJiy5ta45AZGGRaMlRulXuMKNB4G6xczjIakhHrYY1vs7Npyu9zKGumok4oJ9x7WiDA
         Ushbe21xxtqVm6x5NqtbuSH9N68W9DOtwH1OJeQqlDXsSYMxqEbKIQ36FWDwUcJqJF0T
         whAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=TCM+UtCPaDTjmDhSiULl6LD6OGs/uAlATwAdl05ZAzk=;
        b=R982tZzMLzYzELW8bGpecIXmPFjn3q+rZIlIuIqqkjMi/JWJF909X5ZYwhb6iTibIo
         8myaGGXygv1g3G2EIkUp8qMpY4mkoRw9yh2b88NQZFTH+816VdqboDNbcTs6iv6U/r2g
         n4BVGrqmUwtOAb9mb4tV3YREdozjQZyf0HrbQ5keiLaj+OvPqdqsolFdR5kYWKuWoz2U
         NDnzeWOye3Av7JvkNq5hgXF2Sk5Vcy8dIo0VPuKSiQG9dE3xIJ7nlzltTcD8Wq9FYm6N
         n1JFhliGHlEV6+enr+4q91CL//CXGzNM1K8g4+3sQVdsHq+b2PG0/Edo8FNXVk8GO0rk
         optA==
X-Gm-Message-State: AFeK/H15yzaL0Pkw6x/FdBdquuMIO1aiDmIWVhrQdW3reisHx9bWkd9cJQE+VzAxFs4Akw==
X-Received: by 10.99.117.66 with SMTP id f2mr15387283pgn.153.1490700489747;
        Tue, 28 Mar 2017 04:28:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.168])
        by smtp.googlemail.com with ESMTPSA id z21sm6921543pgc.53.2017.03.28.04.28.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 04:28:09 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 1/3] ebtables: extensions: Constify option struct
Date: Tue, 28 Mar 2017 16:57:49 +0530
Message-Id: <b962c022d3f076c8625b076aa31038341c122369.1490699407.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>

The struct  of the type option is only used to initialise a field
inside the ebt_u_watcher struct and is not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/ebt_log.c   | 2 +-
 extensions/ebt_nflog.c | 2 +-
 extensions/ebt_ulog.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/extensions/ebt_log.c b/extensions/ebt_log.c
index 1cf831a..97d5091 100644
--- a/extensions/ebt_log.c
+++ b/extensions/ebt_log.c
@@ -61,7 +61,7 @@ static int name_to_loglevel(char* arg)
 #define LOG_IP     '4'
 #define LOG_LOG    '5'
 #define LOG_IP6    '6'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "log-prefix", required_argument, 0, LOG_PREFIX },
 	{ "log-level" , required_argument, 0, LOG_LEVEL  },
diff --git a/extensions/ebt_nflog.c b/extensions/ebt_nflog.c
index 0cd10e0..405673a 100644
--- a/extensions/ebt_nflog.c
+++ b/extensions/ebt_nflog.c
@@ -25,7 +25,7 @@ enum {
 	NFLOG_NFLOG = 0x16,
 };
 
-static struct option nflog_opts[] = {
+static const struct option nflog_opts[] = {
 	{"nflog-group", required_argument, NULL, NFLOG_GROUP},
 	{"nflog-prefix", required_argument, NULL, NFLOG_PREFIX},
 	{"nflog-range", required_argument, NULL, NFLOG_RANGE},
diff --git a/extensions/ebt_ulog.c b/extensions/ebt_ulog.c
index 162586d..54eec53 100644
--- a/extensions/ebt_ulog.c
+++ b/extensions/ebt_ulog.c
@@ -24,7 +24,7 @@
 #define ULOG_CPRANGE    '3'
 #define ULOG_QTHRESHOLD '4'
 #define ULOG_ULOG       '5'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "ulog-prefix"    , required_argument, 0, ULOG_PREFIX     },
 	{ "ulog-nlgroup"   , required_argument, 0, ULOG_NLGROUP    },
-- 
2.7.4


