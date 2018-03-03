X-GM-THRID: 6528628385749401600
X-Received: by 10.223.132.68 with SMTP id 62mr811009wrf.25.1520064761923;
        Sat, 03 Mar 2018 00:12:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.0.78 with SMTP id 75ls622744wma.4.gmail; Sat, 03 Mar 2018
 00:12:40 -0800 (PST)
X-Google-Smtp-Source: AG47ELtiTAAYclyEFFUaQq5/24qk5cfNiY0jVjgn1r3H2FFGRWZnbInNgLR249NkqnXl40jyV7OW
X-Received: by 10.28.5.2 with SMTP id 2mr406379wmf.3.1520064760777;
        Sat, 03 Mar 2018 00:12:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520064760; cv=none;
        d=google.com; s=arc-20160816;
        b=aXphXsEYI6XB3sott19Zil51cY5vRUDx5OchqUg2mAn43g2b734hAevwWdrQwjxyML
         5H20hcxtBvflRPQKbgDl20xS+3NKzhS1XbMqeRfsicwpude5pl4twqrkUQO/MRvyIBvz
         XEnrpJB7L9lmV2PId4mTQdsylmjpTE8twI99WLqVSMLfZKkZ8DBvS30KATH19KYV+8uP
         bPKajv2grrPhZwKaAIqNlilgB+JJUbNsrqBCv8vllEubn5hbYj+r4jNQyMO7MJLmDfWs
         8ejD51WDiglewJNxEBne41aUveHdxvZVf7awkgpVirxHOBtHfRjpyCyAkvlDtmHcJO1A
         6+lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=5mdAhbeoHIrZErlRf0ja6SotxTwp7fdCxQ1rczqYpHQ=;
        b=W+3/+fwpJzTttUKNaSxeqA4zRY8Cfi0Sqz8Lnd8NrUpssUbUl0n8e9BU7KEv9b1Mur
         1oLr7AuiiYgRId+ZxOXKwm0YbAKqBGaU4wHcC0IMg0z94oqRNbB7/Zz4fiYE9E3XBfSn
         trTHtMX0IA0tf2XQDZM1pMf2F9xJNl5nXilFkTHwhnP56AdoZMNul7xM26h/Eba/bikM
         regs/hbGmIX47fApzs8f75sOnnRmCSnhU+efo0xfqRKPOe7lRuqjQgMLXtWAnlmIxXgG
         KmU6ZXplfukfRyuMO6wFYIWULaCd/kqbUXA7Z0JJFUXO3DNcDivblzvoPh0TQ2bZysaK
         z1/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iGPeb+sl;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id j199si81704wmj.1.2018.03.03.00.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 00:12:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iGPeb+sl;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z81so7044321wmb.4
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 00:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5mdAhbeoHIrZErlRf0ja6SotxTwp7fdCxQ1rczqYpHQ=;
        b=iGPeb+slAzLBpM3KwS3ACisjVbeIR6AuQ6Fa7kn4ZbwpY4QTzlgxh1QUBXPHXFbSZR
         e7dedyXNyx89uWmZcjuq7e84eXcOfztu7/D3tP3KCDko6EuNmdRy9N/tbXKd2twSnn9I
         CDmdTqaaYMeovaIJCaVhdxNSobq77N+l/XPIA2/YLvCeCuYi+GwCJR3Gx2PMQxaTGPoG
         DxCyJ0nOmRDfiApZzuwnUnPU3yXQ9bUOGSHhCQklr/AZye3eGe8zI4F+UbBnKv+NW9Yt
         0p0P49DM9lvtog8EEtLXlq63N6mmRJQpUIOEjn9XyN+DKPNSPHs29Ta8ZE3LKnc3mXjK
         s7Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5mdAhbeoHIrZErlRf0ja6SotxTwp7fdCxQ1rczqYpHQ=;
        b=oSbCezsjOD6yfGeG/IBEX6LZvvNsJ13Sk19gIkTq+u/c4A1NigQB7rFr2141d5sz6g
         49X6E14ic/A4MFWmHswJXLl4DkWqZu2vfKZtO8Cf+oooavTrc+TXE6EI93pgDiQc2snP
         WSSGgY78qbaSJ69MgszyBglMNm3nVY6hqtpDoms/nhc8R+GUMxaUAyboNmpoVo5tlcO3
         eOo+Zj1QrqsRZ+ASv6YZR8LTDfcVX/2wixZkTBt+YVKu7W1W//52B9McGQmfn82Cmj4Y
         66ZMcgB5XJzmRzB5H4lrMwwmAViDhyOhGMJTM8s2liwLlIQ1bG+782sg+itaHp51ayu/
         H52Q==
X-Gm-Message-State: AElRT7E2jXrFwEq9A428Per32aTi11NEaXNFC8MW921IY2ihiqyygujc
	HkHiN6gbd29TmbfsU7jAvEj6NPIE
X-Received: by 10.28.132.203 with SMTP id g194mr3619719wmd.77.1520064760435;
        Sat, 03 Mar 2018 00:12:40 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id r98sm18712986wrb.70.2018.03.03.00.12.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 00:12:39 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
Date: Sat,  3 Mar 2018 10:12:06 +0200
Message-Id: <008d96a213ae753dc3f330ca22e09be5471e8ab1.1520014706.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>

Replace 'unsigned' with 'unsigned int' to improve readability.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 64cc746..2ed3505 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1467,7 +1467,7 @@ int lprocfs_write_frac_u64_helper(const char __user *buffer,
 {
 	char kernbuf[22], *end, *pbuf;
 	__u64 whole, frac = 0, units;
-	unsigned frac_d = 1;
+	unsigned int frac_d = 1;
 	int sign = 1;
 
 	if (count > (sizeof(kernbuf) - 1))
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index a97b2fe..649eed6 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1797,10 +1797,10 @@ int lu_env_refill(struct lu_env *env)
 EXPORT_SYMBOL(lu_env_refill);
 
 struct lu_site_stats {
-	unsigned	lss_populated;
-	unsigned	lss_max_search;
-	unsigned	lss_total;
-	unsigned	lss_busy;
+	unsigned int	lss_populated;
+	unsigned int	lss_max_search;
+	unsigned int	lss_total;
+	unsigned int	lss_busy;
 };
 
 static void lu_site_stats_get(struct cfs_hash *hs,
-- 
2.7.4


