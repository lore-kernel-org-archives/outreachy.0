X-GM-THRID: 6331374049308966912
X-Received: by 10.157.33.196 with SMTP id s62mr12624823otb.8.1474192856131;
        Sun, 18 Sep 2016 03:00:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.81 with SMTP id 75ls8443293otc.6.gmail; Sun, 18 Sep 2016
 03:00:55 -0700 (PDT)
X-Received: by 10.157.54.250 with SMTP id s55mr2852643otd.48.1474192855773;
        Sun, 18 Sep 2016 03:00:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si3895659pam.0.2016.09.18.03.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so5538160pab.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cmPfXshdABXI6GC3IYA+sUVPGiRjlyhjJTRwKOpTZ1Q=;
        b=sgNOeDENdZr1Q8RtFe5TSlbrFXZTljTMn8oU9FrazmaNIcVdwQPCAMcrQst7r4bhL+
         6T8Bhyk+UCkYch/shfhfxA9qTSX7txpbPu6zXxJO6D7mOE886iJkgiuSRu7nDK4w82UT
         T6plBJub5hbKr5852sSd43Y6k2lxzGu6SMUC1xZs33huf1t6hd8R+3nduRpF+UldB9JI
         Dz3bXuu7zMlIayb0ZoapVoZPUNvtvKRsxw/gJw63sY5jY3Q6iQyhotB0aQHP9FKBUy8y
         jWQOURD0kcu4ny4JztG59opVpwd/ysAuAiTO4nXf+bekCo/eyFF5yFBW+sI9xmB+2W5j
         1ghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cmPfXshdABXI6GC3IYA+sUVPGiRjlyhjJTRwKOpTZ1Q=;
        b=RbnXHy0ZPhoW2XhN+pz0plinEN9Fjfe+Bp6ZJ+XrjcHQZg8ZfbctBinvWVaBy9KKU6
         7elu41E/UZR9o4+FjlyRCxIhobQxWaXIUutH4XuON/kEc+YZgvBpCb8e1Ae5qGhwcAY1
         GhdRZpfENFRigYuhyQOu4Px9RbEpMxdh0VyJPWQk8nnFHwCv6K0Xg22pZCQxqcgQ6ERE
         Jqb5t/XdALrnUYP6KGpDTWYR0jWiEwyWElZBDzXaSGXGr8HxG1RpGUO5vQ3FpxN3TXCJ
         LymevHZ0WV4s16cvjVDWQJV/s2vn5G8dMLxH4XS5uCcd11Ar8U0LYNeL1+7grKfcdatx
         7MGQ==
X-Gm-Message-State: AE9vXwN/9YlgUmFmoxrTdppMgJPhRFlPyUEzcglySW9WpoafAzYqGqyBGI3YcDHxX5DvUg==
X-Received: by 10.66.148.167 with SMTP id tt7mr37587037pab.21.1474192855542;
        Sun, 18 Sep 2016 03:00:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id co6sm17655473pad.23.2016.09.18.03.00.52
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:00:55 -0700 (PDT)
Date: Sun, 18 Sep 2016 04:29:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: lustre: lmv_obd: Remove redundant if-statement.
Message-ID: <20160917225954.GA24486@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove redundant if-statement.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting the file permission issue.
 drivers/staging/lustre/lustre/lmv/lmv_obd.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 5783359..0713e55 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -949,10 +949,8 @@ static int lmv_hsm_ct_register(struct lmv_obd *lmv, unsigned int cmd, int len,
 
 	rc = libcfs_kkuc_group_add(filp, lk->lk_uid, lk->lk_group,
 				   &kcd, sizeof(kcd));
-	if (rc) {
-		if (filp)
-			fput(filp);
-	}
+	if (rc && filp)
+		fput(filp);
 
 	return rc;
 }
-- 
1.7.1


