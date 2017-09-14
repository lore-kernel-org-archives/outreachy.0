X-GM-THRID: 6465606659155689472
X-Received: by 10.13.243.196 with SMTP id c187mr1768788ywf.107.1505391360161;
        Thu, 14 Sep 2017 05:16:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls5096921itf.17.gmail; Thu, 14 Sep
 2017 05:15:59 -0700 (PDT)
X-Received: by 10.202.204.4 with SMTP id c4mr11556128oig.18.1505391359260;
        Thu, 14 Sep 2017 05:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505391359; cv=none;
        d=google.com; s=arc-20160816;
        b=rE7A7gZ+AQ4EYm7a7cqk6TQANJfoU7d1pM/hVWgYq3obIsnoivMicu3TZnKFjVJ5bl
         4afTBVhvFSyG3uPgTPBBhOAS3XSD5aGL+K44I9BD/C8la68HOTzqsLfePyN8iDQJJfDb
         CDeLWajtFYJDvY7uYXWbgIlQp5XBC+k/+rX6t+7OYTKOXT3QQ0N+ApsCqUpRMGyMSk9Q
         WG9kOLIKH1qSunDeIuGUeFxddDEy6Rr4HvvBdAxB2dBE31pXM7DZLmxaBo4Ioiv6qPbb
         Eja9ANxnIacZZYKVqAAOIl7xmGxIn+5cMMfNliAdEE3Gp8AOrcWci/x/0WPgUFyggzTP
         7b0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=LsFN7Rl+2twQqIXwOfarXZ4Ppn9AfhHVXERPKZM+UfU=;
        b=HJD0QvCYVeqDdhzS7Rbu891/eeF9wMT4jlU4zRGLbNSCDdFcRZkxrhbATNiYuze+JT
         3A/DIksgatbqL/oUNyxB1AuHgIOnK+5oRkzIx9TL9ioV74id6i88Zf9gQy1/TFppWJxi
         dcpUocyyCHclBpIpfX9lXuRPFCTVLd777UVrkAHIVoNMwNmg4GakENEvE/f7ia0c2xrd
         iNf91COZ0OJJIMXETbE5m99xFOt8esvZaJLSnT2gi7b0blFpeUL2XrtEjdxX79HWbIO3
         L2cDWbxaf/2iPKBWZnln4Y1H+D6byinioileJ6uf+x4ahAz0hRvW0tB9ooDzh7yJoSsC
         LUJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsaFAZef;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q15si1458428pfi.7.2017.09.14.05.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsaFAZef;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so1428785pfj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LsFN7Rl+2twQqIXwOfarXZ4Ppn9AfhHVXERPKZM+UfU=;
        b=OsaFAZefKOfBEru8FngsknR6iFe52XWoVszW4LgXYDjDgumLddzCzxQtOS4fDhCXjs
         XBrncBZlybMX+WkjPwiCRSxWR0B2KhUrmbipE4z3SesJJLdde7X4OI+xVSMiwsVBqcxn
         LkM5TZlIfjIuOyolD/dMr6UuEMqqRe5MIRDa18YYsL4YI6FF8AzQnHFK4wfGq7HLnxZ2
         bcNlE4r+s0rCT7ZvCJxXM9N3LmLfhwABTdEGeUjdyibfRaCH/yoVqQpp11f+sdF9Kla5
         KF5dz+uutj7IN78m0bQomuKUyWba+MZ8T7P7+gZ7RWt/1TcXPBbzyYXVL46jbGjJPbWe
         5aBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LsFN7Rl+2twQqIXwOfarXZ4Ppn9AfhHVXERPKZM+UfU=;
        b=UFU6B4OoP5QmHO9E7rskW6dlCee2vRy8mr/zIrAwaG4rb5kFYjKZh+SMpSDJFkbSch
         NCfUUTSVkVdxRPoTDqZrSXnf450AKNDpUPSoShO6TxPONqxEjQkgEvJH5CD8wWb4F0Dj
         nAfAJ2znCQiZ+eFYl3jonOp2NSpKpn76+W/vXQPmHdcgvT4bkJVZIz/04E2uVDPQgw0g
         bnKV0LI4Q+hmLvVArJgnp8PyFYerpV7R0N3KZi1NEflIqxTHejv2fv0k9KCiHdcSiQws
         RRkkJdtt6jm240yEBe6fQgAATn54KqXVVsYgh0amBnJ/ebxWMjGE6YBkZQ5tEU3yGJwy
         5UYA==
X-Gm-Message-State: AHPjjUj2coRuizuSk7Yn5bwtKnyfAkTG7wHB8OP4XkeNnMOPeAiZXc1d
	K/B5uEo2YZX4Ow==
X-Google-Smtp-Source: ADKCNb7rOGXwIHVp8lJwEs1DRIfFhxvg14N9fIIpf7nQMJ/FNJMFws2uQATNJbBv6gOIRWMKSt0mtg==
X-Received: by 10.98.216.202 with SMTP id e193mr21601957pfg.344.1505391358901;
        Thu, 14 Sep 2017 05:15:58 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.49.157.170])
        by smtp.gmail.com with ESMTPSA id c30sm27124541pgn.33.2017.09.14.05.15.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:15:57 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gilad@benyossef.com
Cc: gregkh@linuxfoundation.org,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: ccree: Use kcalloc instead of kzalloc
Date: Thu, 14 Sep 2017 17:45:53 +0530
Message-Id: <1505391353-4516-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use kcalloc instead of kzalloc to check for overflow before
multiplication. Done using the following semantic patch by
coccinelle.

http://coccinelle.lip6.fr/rules/kzalloc.cocci

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/ccree/ssi_sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
index 0655658..65a0529 100644
--- a/drivers/staging/ccree/ssi_sysfs.c
+++ b/drivers/staging/ccree/ssi_sysfs.c
@@ -376,7 +376,7 @@ static int sys_init_dir(struct sys_dir *sys_dir, struct ssi_drvdata *drvdata,
 		return -ENOMEM;
 	/* allocate memory for directory's attributes list */
 	sys_dir->sys_dir_attr_list =
-		kzalloc(sizeof(struct attribute *) * (num_of_attrs + 1),
+		kcalloc((num_of_attrs + 1), sizeof(struct attribute *),
 			GFP_KERNEL);
 
 	if (!(sys_dir->sys_dir_attr_list)) {
-- 
2.7.4


