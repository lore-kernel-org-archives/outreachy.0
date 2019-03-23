X-GM-THRID: 6670745270189293568
X-Received: by 2002:a37:49ca:: with SMTP id w193mr11541002qka.261.1553340500322;
        Sat, 23 Mar 2019 04:28:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls619691qvc.2.gmail; Sat, 23 Mar
 2019 04:28:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywYmQeXJ5rzL7jt1b2Lx25AxbOjquZoCVIuf4m5AIad0qpyu4XZwwzpigDkJCp5LTYNaIw
X-Received: by 2002:a0c:d0af:: with SMTP id z44mr12028348qvg.144.1553340499763;
        Sat, 23 Mar 2019 04:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553340499; cv=none;
        d=google.com; s=arc-20160816;
        b=KGbrlOTO3qZxQt8ksuGnVyVw5FJwyos73EsFmWIHWibAw6URI9I5q3eJ135lDP4Gdd
         zAAuhJgWBamnJaRqipuB28IKWMUREI8y/5LkHpy72ARqB75qQ7LAHRC/UzrG9r6876GM
         gy/W0xGgOCIZOKPi1oUYsKoQPxEWgSPpDHmj/1ZicnYb+sKiPRaGzqJMegnB8uYnmgiu
         7Xqu4anraqGr+hWHbCujSWkwOF3Gz8KeP3SXcoJRbqqUhbQnaVcopwmj5KLfF8mfNAnX
         PQ1PqlkMPi3GfZ8w6C63bnqbuW8Lt3H0xAhu42nmTNly+oZFVZvnhZPmuLkMyfDLPQDg
         9pSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pj9G7GP4u34VMBJk6hu+Gci9A8NgeTfc0Oizcp8XpZQ=;
        b=FNetFwMms8J1jlVogx+Z2Hku8xLU65jolWLYzdos7BUWbHNIYn50shtkWplRvGTh1D
         DkuZZvURwTOmk+jY22kYo0TyF+LQo/EJSQG8s64M2xHL0p+UjT+hv9PLSJ1TosPi4FpG
         9RMcY2P+N4cmjegVIPnSMzAXq2Zzc0EKnJo8aGeso0nsoka1iV790ln3Z5NjDotLy2ge
         l8YvBjdOzyfFDXJzePXmzYktNijhjpOO6vRFUqxRJujCVQT61SSKlNc+3bZftn8K5iWa
         FfK8esEdjClYzNf1BzYwL8ZdjcJA+vvJX6bObRhguh8MGjHrqMiIHlwgEZ+BzZwoJILZ
         sbnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iis+DuoY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j18si649241qth.2.2019.03.23.04.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iis+DuoY;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id y3so3242506pgk.12
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 04:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pj9G7GP4u34VMBJk6hu+Gci9A8NgeTfc0Oizcp8XpZQ=;
        b=iis+DuoYiLSJG3wJTV7qb9mrKHFyCTvGKlbkC55c4mmzoAtM8zw38glQ2RRP/elctG
         Of1jKb0G1bG2B7jIdlHNBodfTyBsIPx2obbk+tUsnf1xQMgFQX0NE2pu5A2atmsboeoe
         lxEQJl17WgYihnINjrYtG+2OqVJj4eBXzDgus+UsDySC3VvPKii7gQ6TDuHxygi4bFvO
         NllxO27uzpT5qNw3vbYWBdMMnqDFXnRDIVIXLwU29LmqsZqolfujEFAgBFsT5vn08fQg
         OOlDlNcWzf1+coIwWXZ63LtWVFRArV5NtGWBxaTWvoG13wfaMs0ZiFOpuujUkeoZbu1H
         a7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pj9G7GP4u34VMBJk6hu+Gci9A8NgeTfc0Oizcp8XpZQ=;
        b=gZZEVHICU12twnGGP2n4lNEKkkYyChD3Wv31ksdQNd1NziXuE/+3n8sROsrH43Puow
         dT4PuUYHA1ljqX0qC205pJ6lPa49nbXB8cAFyOir530SNzMZS/ZkONH5CR52YWJw6egR
         cZSzV4ENggEf/QjwrBrxooDVo4ynLbdva9MdRjnSILNiFPHwqMK95ketEa32Q9gsSCH9
         1du2IhO0cVLG0SpARvUVy6OVpsQWNYSMMbszmKXXjjtoxht3LP4DsmN5N72VHQnrRN7R
         jRcSI8bXntrXn9NHEyo7rvutcnSBS1dYQYPaUcO6UBr06+q9nDWr68W3ySeks4CIrjBE
         /BeQ==
X-Gm-Message-State: APjAAAW92T/UpAqYhi47GrYXjuOwzfL59pLzAKeEjeRwdXBlzX6xTEqE
	2o6AgO6hsMrXpCNv7kHyU2Y=
X-Received: by 2002:a65:6548:: with SMTP id a8mr13538046pgw.103.1553340498982;
        Sat, 23 Mar 2019 04:28:18 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.101])
        by smtp.googlemail.com with ESMTPSA id b138sm15658248pfb.48.2019.03.23.04.28.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:28:18 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: greybus: svc_watchdog: Modify char* array declaration.
Date: Sat, 23 Mar 2019 16:58:07 +0530
Message-Id: <20190323112807.9804-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Modify "static char* array" to "static char* const array".
Issue found using checkpatch.pl

WARNING:char* array declaration might be better as static constant

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Test build the patch
 drivers/staging/greybus/svc_watchdog.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/svc_watchdog.c b/drivers/staging/greybus/svc_watchdog.c
index 7868ad8211c5..b6aaabcec320 100644
--- a/drivers/staging/greybus/svc_watchdog.c
+++ b/drivers/staging/greybus/svc_watchdog.c
@@ -44,12 +44,12 @@ static int svc_watchdog_pm_notifier(struct notifier_block *notifier,
 static void greybus_reset(struct work_struct *work)
 {
 	static char const start_path[] = "/system/bin/start";
-	static char *envp[] = {
+	static char const *envp[] = {
 		"HOME=/",
 		"PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin",
 		NULL,
 	};
-	static char *argv[] = {
+	static char const *argv[] = {
 		(char *)start_path,
 		"unipro_reset",
 		NULL,
-- 
2.17.1


