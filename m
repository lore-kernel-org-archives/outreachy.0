X-GM-THRID: 6333834735065759744
X-Received: by 10.66.8.66 with SMTP id p2mr3282959paa.11.1474732865606;
        Sat, 24 Sep 2016 09:01:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls1375798itg.16.canary; Sat, 24 Sep
 2016 09:01:05 -0700 (PDT)
X-Received: by 10.66.12.168 with SMTP id z8mr3550896pab.29.1474732865120;
        Sat, 24 Sep 2016 09:01:05 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si2968376par.0.2016.09.24.09.01.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6703052pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MLrRQseTHOUMw2onzco5obL1R2vvkq0adfudSPtTA3Y=;
        b=vSWkknl/fsZ2OqIQ9yFdit3caI3Rg5A0tgv2h+IHgbaZHgA7rSjxHHGn0V+tTwwegP
         00LjwPjM2leWbwI1jfLvJkpIDSLpWOFJK591n/FGVTJ/PLTTlxSxbaEm4Zhg+DpYuZOL
         nWnBJqQ/ypN3yOltlWy1TNy2dHACzVt4NnW1xiunG6xOQ2LbvYMWBDOQGXY3gazyIYiL
         ZTa2zLHKB006xMoh5bCwdvhlhbOwJcihbKJcIHe0kIvDHGzHXQ7jh0LyH7SMnSC74Ld2
         c0wpTk3BXM3LyFVcbmQ+SLCe+XDtj3TmkrATPnela3Qd6OwTOfC3BGFjFhM9Oxs+kIoP
         CKOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MLrRQseTHOUMw2onzco5obL1R2vvkq0adfudSPtTA3Y=;
        b=V+FjBZPTLMI74ViKzmtHcPLyOLroW4cG/QZk/c7zhFc+3YJo/dFjypEnjxvnSGpOzy
         aw6hxiUtuv9m5NrH6iIEsB0sd+wh35QgNx55cKwS6NIPIcf4ParZGJa6X5oyeyReU8k8
         Xm1tGzrwziTLKQ/D9+npATR4KefJqV8+DagAHu3rV/M33LXH8JkLtdvcEU30ZH2NXv6l
         4GvwAPXdPpBaiYKVumetwc3HGjiQZWkt48oZAC5Uaplr8iorDHGhtKc2HXIK5VVlQEpK
         2RYXUrkrMPajuJd8SFkFNjXLvrl8JzzjrCpWz3zdd4zlqD7tVJXXyTsnezDyKrDb5FrU
         5MoA==
X-Gm-Message-State: AE9vXwNjzQQwen8zoPbEF8aUns6qUqsEfkeiPNGaZVCEBLFW94qBKaWfvZXBajpDwZ78Ug==
X-Received: by 10.98.71.5 with SMTP id u5mr22367824pfa.98.1474732864941;
        Sat, 24 Sep 2016 09:01:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id z185sm19499550pfb.56.2016.09.24.09.01.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:04 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:30:57 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/6] staging: media: lirc: Add space around binary
 operators
Message-ID: <a84f4ffd4eb14442060ed45e993e322cf72b2cf1.1474722341.git.namrataashettar@gmail.com>
References: <cover.1474722340.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around binary operators to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_parallel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_parallel.c b/drivers/staging/media/lirc/lirc_parallel.c
index 3906ac6..64d99ec 100644
--- a/drivers/staging/media/lirc/lirc_parallel.c
+++ b/drivers/staging/media/lirc/lirc_parallel.c
@@ -163,12 +163,12 @@ static unsigned int init_lirc_timer(void)
 	if (count >= 1000 && timeelapsed > 0) {
 		if (default_timer == 0) {
 			/* autodetect timer */
-			newtimer = (1000000*count)/timeelapsed;
+			newtimer = (1000000 * count) / timeelapsed;
 			pr_info("%u Hz timer detected\n", newtimer);
 			return newtimer;
 		}
-		newtimer = (1000000*count)/timeelapsed;
-		if (abs(newtimer - default_timer) > default_timer/10) {
+		newtimer = (1000000 * count) / timeelapsed;
+		if (abs(newtimer - default_timer) > default_timer / 10) {
 			/* bad timer */
 			pr_notice("bad timer: %u Hz\n", newtimer);
 			pr_notice("using default timer: %u Hz\n",
-- 
2.7.4


