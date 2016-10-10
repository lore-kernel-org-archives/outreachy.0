X-GM-THRID: 6338573306714652672
X-Received: by 10.13.215.7 with SMTP id z7mr3485244ywd.47.1476070708332;
        Sun, 09 Oct 2016 20:38:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.80 with SMTP id p77ls2924750itp.4.gmail; Sun, 09 Oct
 2016 20:38:26 -0700 (PDT)
X-Received: by 10.66.85.10 with SMTP id d10mr6736039paz.4.1476070706438;
        Sun, 09 Oct 2016 20:38:26 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x244.google.com (mail-ua0-x244.google.com. [2607:f8b0:400c:c08::244])
        by gmr-mx.google.com with ESMTPS id h127si109508vkf.2.2016.10.09.20.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) client-ip=2607:f8b0:400c:c08::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x244.google.com with SMTP id p25so3608849uaa.3
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 20:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OBTd3eCDh1I3+Njhl1ymkJuBv21soScG4UfUTlXanjg=;
        b=jjTJszDynV6N3dp10EBRUAmimWQykpcHcSKJKqz0oF+zt4jk0N5PRG+hjSVv93RXTS
         Fy0XQNcZIY4qNC0eicIaf2tJZLJiltKAiYfPnHqpz3tsoeT9sCBSHT337X4M6Js/ZLYA
         p8K29c7mt7wxycw3xUEGscEca3sd9KcEIuCix8IM4k+wQ3o4NY6shv5f7nui/zNkgCa0
         AX5RmYkFbxvWW1sS/ze54XCZsyAp2wmzML1+CDp3TJsPE9WgJnDNL4FwXU8vRGb0C/j9
         sQo4glpxLVl3ArXyCwda/4iOXWq/JGgR3M/jIvD6s/Q+j6MXgH5WegBuxm6IMjtttczN
         VT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OBTd3eCDh1I3+Njhl1ymkJuBv21soScG4UfUTlXanjg=;
        b=SqLftdR77Zi1IRE7nTMw9W47w7lFrt6icOyYdjdTX2sP1JzamuJCyLyZFWmqteNoZc
         sYdF1NTEeMJ6JCio1Nn63T1zeZO2nyIe9UdReMl6qpBs+6nZh4Mkqxym3K9N+zu2RdCF
         MFOqsdnS0+5JcOwdAKoXEbSUpwXyvuN6v1EX34uOzeshZ1McawMaoLF0qZ5Nw9dI5b8Y
         pMtZCr2240Wmu3pS7XIXBODVkRbogDQnaXEfniBFtxe5M2KaPPUtzGdUQnVNo5aPPhMV
         pLuyyFXxd6KBp9XvtXTzTLtc/mclrhDJNILi+2UGzzZMvAR85IqreXhS+2j9TpNd0J/+
         YWGw==
X-Gm-Message-State: AA6/9Rk9alFkRK/OuBSYcN41/hCjOpnYPYbB6zmufSjnjh27fPe+0Lj/mFa03CeqfYdEdw==
X-Received: by 10.176.84.65 with SMTP id o1mr21421921uaa.122.1476070706246;
        Sun, 09 Oct 2016 20:38:26 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm6369383vkd.0.2016.10.09.20.38.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:38:24 -0700 (PDT)
Date: Mon, 10 Oct 2016 00:38:20 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: wilc1000: Replace printk() with pr_info().
Message-ID: <20161010033820.GA5206@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Replace printk(KERN_INFO...) by pr_info() for more uniform error reporting.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

v2: Added the first pr_info() to the commit, v1 contained only the last two.

 drivers/staging/wilc1000/wilc_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index 802bb1d..07260c4 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -62,16 +62,16 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
 		return ret;
 
 	if (flag > DBG_LEVEL_ALL) {
-		printk("%s, value (0x%08x) is out of range, stay previous flag (0x%08x)\n", __func__, flag, atomic_read(&WILC_DEBUG_LEVEL));
+		pr_info("%s, value (0x%08x) is out of range, stay previous flag (0x%08x)\n", __func__, flag, atomic_read(&WILC_DEBUG_LEVEL));
 		return -EINVAL;
 	}
 
 	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
 
 	if (flag == 0)
-		printk(KERN_INFO "Debug-level disabled\n");
+		pr_info("Debug-level disabled\n");
 	else
-		printk(KERN_INFO "Debug-level enabled\n");
+		pr_info("Debug-level enabled\n");
 
 	return count;
 }
-- 
2.7.4


