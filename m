X-GM-THRID: 6253728944685580288
X-Received: by 10.107.135.93 with SMTP id j90mr17485463iod.27.1456059735926;
        Sun, 21 Feb 2016 05:02:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls1056929qgd.75.gmail; Sun, 21 Feb
 2016 05:02:15 -0800 (PST)
X-Received: by 10.129.132.3 with SMTP id u3mr23235353ywf.5.1456059735182;
        Sun, 21 Feb 2016 05:02:15 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si2826103pad.2.2016.02.21.05.02.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 05:02:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id yy13so75942663pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 05:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Js/qPVS13UXJFuk1kisfnindVCL2jbR7UfWCPRLxwfI=;
        b=pHIRVD6vsQ6JM6kYygf9WidVvw6cu/x21eeRL6d4yySJFeebJyCRGH79zSA/eSvVUu
         BMM/qb+fm455ogbU7Fl3+zXXxsipD3IQv821UvCGdh7DGZTnxqZo+WcM7lIF4wBzJ17O
         eeOhGiqr9zmEiTUqgY87UFz4j1RvF10I7+4MuUMz/e7+7kwa3n5ZloctgzNJw/Sj6kpw
         tyv4a12gJ4DtWeau8hSkeo5pJZy6WncLeQ30YabDkV2mxtScd3V/Q+5e5g0L5jBbadb2
         yV+O0wBIKTO06bNk3HKXLNltoANbMHSzgw7paZSfFDij0QICz0G1Y3UPpxrWTh2jwt3U
         5tLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Js/qPVS13UXJFuk1kisfnindVCL2jbR7UfWCPRLxwfI=;
        b=J1StgsfmVnGCxTc/nspjE5ECnFq7553XwpAHedSOHwqBkd4HDwwUaKWWWsTVwTMWxN
         AEfuC47V6YKTDSOWDtct5OeruRiit+/A7HPFLC8CUz6itltut9fk0bmW0+hWLGkpHgQJ
         Wpr/vtrHjSHVqD8CvobcSHv8ROdJV9W2hMTfY1jXdlLXSN9bzraGTARg6O8+YtURyJCY
         IwAfWNkHhTIdQlQL/azQcG88b6xNHOPI92I0wKF9KVDf6e8O6gwZpIU34tctY9xhfGy5
         mRbKyUgf+UpiZiZSKGgLFFEtTMVy3xQJvsEsGXkqOr7AKQGwVFvQMf4d7UkQsotsepRA
         t6yA==
X-Gm-Message-State: AG10YOT3cYDAENZogp6ZpiBEIwMaBYpoIvEPT/uwQlxmAIGBqm1PqavmRh2ozWrqxyY2cg==
X-Received: by 10.67.6.10 with SMTP id cq10mr31129602pad.120.1456059735030;
        Sun, 21 Feb 2016 05:02:15 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.31])
        by smtp.gmail.com with ESMTPSA id fc8sm30182500pab.21.2016.02.21.05.02.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 05:02:14 -0800 (PST)
Date: Sun, 21 Feb 2016 10:32:05 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: most: Do not print message if kzalloc() failed.
Message-ID: <20160221050205.GA3014@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/most/mostcore/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/most/mostcore/core.c b/drivers/staging/most/mostcore/core.c
index 322ee01..7c619fe 100644
--- a/drivers/staging/most/mostcore/core.c
+++ b/drivers/staging/most/mostcore/core.c
@@ -1259,7 +1259,6 @@ static int arm_mbo_chain(struct most_c_obj *c, int dir,
 	for (i = 0; i < c->cfg.num_buffers; i++) {
 		mbo = kzalloc(sizeof(*mbo), GFP_KERNEL);
 		if (!mbo) {
-			pr_info("WARN: Allocation of MBO failed.\n");
 			retval = i;
 			goto _exit;
 		}
-- 
1.8.3.4


