X-GM-THRID: 6254513741412433920
X-Received: by 10.50.154.2 with SMTP id vk2mr1504399igb.9.1456481137335;
        Fri, 26 Feb 2016 02:05:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.97 with SMTP id rv1ls512889igb.12.gmail; Fri, 26 Feb
 2016 02:05:36 -0800 (PST)
X-Received: by 10.107.198.137 with SMTP id w131mr6292948iof.9.1456481136933;
        Fri, 26 Feb 2016 02:05:36 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si273927pfr.0.2016.02.26.02.05.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t66so193382pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tAnLXY9LQA51223q59xkSTSfWJaHC8GpPafoHXhAm+Q=;
        b=pVvHs8Gx2gDhsHTWXo7jI/JRZ/AR84XHVVcLEWY8pOmFnn2qitqxyw48BqPHUXcyWa
         8gQc8ok009iK0LOddqzJHUOBbmzmX2I8+BI0ormtm618s0uTuc6CFrqVzc8WDO2ZGrIt
         KLmmJ7DuMW3vH4FnwxhSTRMlTTGlyp/anUbOrJiOSwGZ1JRWCo20YI8n0dYJ3AUpo1pA
         F53aTZfWyzHc7x6ZKgsc30smUxJr+eqUK5fSsxd/ChG3j5dWVDrVEkATOilisoZTXwsG
         iMyl9CyIYueJstEP0BKX5zMtGsSjigPr5fo3WdbcmRNNO3PcHG6aXUPHgxWQMgDRi2Bj
         StTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tAnLXY9LQA51223q59xkSTSfWJaHC8GpPafoHXhAm+Q=;
        b=gVYou42/kunhCKDmhNYksgPTBY9fK85vkSnXz4fgNesWzGTiGvUD0NEpq63VVnRi0b
         EYI04A/b0+xbaWdXLfsXUHVdvxPdS3WKK8yGviZ0QhFcij8Vf2v8yBepaXVKZEobWCf+
         0NReSDmwYJnMVaR4PEg+FWG6Spg1eSalSAEUc84zvRRciGfWlAT8hMFwWw98fqkGfpLd
         t1YcKWbjGwN4SvrnupZ60MwLE+F6/77sLTL1xWzFPGG3As82jMYwfIU/mZLyg+Mv5pXW
         cRGS8Xs/T4BTJTn36ukwKfGB8w0QHtBqCCFlCF7Ogxcfdh26aBb5kvmJpHsANzkEFnzb
         rfwg==
X-Gm-Message-State: AD7BkJKyvqfe9nayQZ7UvHNxWq7lDTUxc/5PpzS5X7Pnl19jeKX07/6lNykaa5gWkjnJAw==
X-Received: by 10.98.17.208 with SMTP id 77mr800584pfr.37.1456481136771;
        Fri, 26 Feb 2016 02:05:36 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id u90sm18121897pfa.60.2016.02.26.02.05.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:05:36 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:35:26 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 5/5] Staging: rts5208: Use min instead of ternary operator
Date: Fri, 26 Feb 2016 15:34:34 +0530
Message-Id: <1456481074-9898-6-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
 <1456481074-9898-1-git-send-email-bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min returns the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.
Changes in v3:
No change

 drivers/staging/rts5208/sd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index 244d589..1612610 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -303,7 +303,7 @@ static int sd_read_data(struct rtsx_chip *chip,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++)
+		for (i = 0; i < (min(cmd_len, 6)); i++)
 			rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD0 + i,
 				     0xFF, cmd[i]);
 	}
@@ -383,7 +383,7 @@ static int sd_write_data(struct rtsx_chip *chip, u8 trans_mode,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++) {
+		for (i = 0; i < (min(cmd_len, 6)); i++) {
 			rtsx_add_cmd(chip, WRITE_REG_CMD,
 				     REG_SD_CMD0 + i, 0xFF, cmd[i]);
 		}
-- 
1.9.1


