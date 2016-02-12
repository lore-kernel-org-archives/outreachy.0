X-GM-THRID: 6250286468939382784
X-Received: by 10.129.158.2 with SMTP id v2mr29248067ywg.42.1455258221002;
        Thu, 11 Feb 2016 22:23:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.234 with SMTP id 97ls1614849qgl.23.gmail; Thu, 11 Feb
 2016 22:23:40 -0800 (PST)
X-Received: by 10.129.134.135 with SMTP id w129mr46681545ywf.24.1455258220273;
        Thu, 11 Feb 2016 22:23:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id u66si1442553pfa.2.2016.02.11.22.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 22:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id yy13so41663823pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 22:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=AqqHsap2Hx0I32IJQEpZs17rytGGq7Ar2ctVCxSTucc=;
        b=iQo0J0YAxmtgml+qNF63EzJapGEqNZcJR6B1lG8vlL8BxuEztgbvR77p8zYKY4bEbW
         YY3EM/RhK97wZ46aNfnli+FHev663Wkyhi4I9tUn1cno3AmqST2YRfKzTP10sMLz3t5E
         zpf1ETdEjhyrGAszffen+gIOC5ryUlK43vViSQOAIxIexqv4Epc4h14q5WepJbVOPf/q
         aj6+ie6IM8SFJgO9DIC9/MI2zkUjqRw6IpmxQyx9u+bPa3DlEZX7c3ApaZhcOL4n43dj
         m8yQtELrw9CIMQIl00aG+kKcp52v01m4RHmCBbcQNSx0v2K75ZtoaJ3YgO72TEGTQoFd
         FkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AqqHsap2Hx0I32IJQEpZs17rytGGq7Ar2ctVCxSTucc=;
        b=J/ECTEJOOtLdxayifA3gcZxt9Sshl24meMgScukVozibyyZv+mIOUQW06TvYHaiKmT
         iFn8crZor3Wwmh6oDAzawWpUPxSD/M33pK1wzEhEk/qPWbgywp59mfaBefozz9W9v0CI
         alBVNcD2gS8Fc/Z8ULRFr4CW15hWoQBWQ70jJDqz49P9nMB0215KC456tGdlPrziVT+I
         HapDu/jscbf2HZWJHr/Zdm/4R2hVYWMhXnYUBCN11ePn5ymLF8Ig0OUjs5/9H+MOgDy5
         rwj6Y6othsdsbGhifPUwwzlREd0RYOOaHF523XWgxrrqSKF3B6GOzQQoZINEsNaAjuwD
         3oCA==
X-Gm-Message-State: AG10YORVKqMqJXeewxr56Y8q8cYovVEPtHJzM2zOo6FAdeVNWnVUpiTJk7DmsFTebxd3jg==
X-Received: by 10.66.139.199 with SMTP id ra7mr9231829pab.74.1455258220138;
        Thu, 11 Feb 2016 22:23:40 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.186.224])
        by smtp.gmail.com with ESMTPSA id r87sm16426501pfa.61.2016.02.11.22.23.36
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 22:23:39 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 11:53:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: obdclass: Declare function as static
Date: Fri, 12 Feb 2016 11:53:28 +0530
Message-Id: <1455258208-7768-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare the function cache_stats_print as static since it is used
only  in this file. Used grep to find occurences. Problem found using
sparse.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 57c8d54..f118983 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -362,7 +362,8 @@ void cache_stats_init(struct cache_stats *cs, const char *name)
 		atomic_set(&cs->cs_stats[i], 0);
 }
 
-int cache_stats_print(const struct cache_stats *cs, struct seq_file *m, int h)
+static int cache_stats_print(const struct cache_stats *cs,
+			     struct seq_file *m, int h)
 {
 	int i;
 	/*
-- 
1.9.1


