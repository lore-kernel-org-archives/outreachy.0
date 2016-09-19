X-GM-THRID: 6332112108128305152
X-Received: by 10.129.145.5 with SMTP id i5mr13620862ywg.55.1474309737111;
        Mon, 19 Sep 2016 11:28:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls3576552ioe.42.gmail; Mon, 19 Sep
 2016 11:28:56 -0700 (PDT)
X-Received: by 10.36.33.200 with SMTP id e191mr3836732ita.12.1474309736699;
        Mon, 19 Sep 2016 11:28:56 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si5754877pab.1.2016.09.19.11.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so7295329pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iGHBTTwaJymJFloq+ubau4BDzIA2mj7tRfkXfvmxR8E=;
        b=aCopcm2IvZmvorvxfRwK57XDKHy+ovXA1YOQGeySirdJ/4WJBj1P7AyL7VBOuyjjS0
         o9+L82jJJVDwL3NVs206vnj8gP57zmW4exey+RcsmmxcWybWY8QeXKQIQa+gu3Zz/8wS
         NPNOUvhNu2KBTN7RLs7WBWN6SOegJDddXDSk7zBqLjSKvacM1yAFmrjfMog7ESyKKcI1
         6v542y7Lw0BWxH1hi62ogV88q2xe6S2MVxvQl/Qu8ZxKOiVzPQoB0TbhYoIxI8ONSyL+
         adZA3zr6SecJmd4QQG0a6Tb8gmI4e6nDeJ1+OEPX0kI1y5YklJ6vKeYkona8sZ2RWrIQ
         zqmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iGHBTTwaJymJFloq+ubau4BDzIA2mj7tRfkXfvmxR8E=;
        b=HINlHOAV22Wt6VQUJ9jTLONEDSVMT+VlJmMZdKNFc+ItyVmwNc9+5vhLvOlCDx4IL4
         0FUw2CRhP2k/seTfdFOHTwn8eAbKWrtN9gfQff8Lyh6zzg8UpYEb6Vxt6OAzeXGwcOjO
         bx8N1ft+7wvru7yGkYL7oZSrDsvAIFbqssPshVvLlQxbm1rnathzSzcemYtEpdQQ9yci
         ULAt7Z5DpC/Kgk+9hbPPbRiMT731fawXi70HfEaMp28dqL17M8EMG97VTfSdPZXh6jGz
         kJ5mkAFgCpQ2eDzbNULdfA1d1moIcM25KoqgpkYjYRw73KYqT+jHOE1evre+6QDkXnhx
         T3Kg==
X-Gm-Message-State: AE9vXwPRfEb64WOezhLZuhThORCedWCJPybozUfnkh0tVyTs8O1ADBJJ6Nri/yen0vGBhQ==
X-Received: by 10.66.217.170 with SMTP id oz10mr49557900pac.61.1474309736487;
        Mon, 19 Sep 2016 11:28:56 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.138.71])
        by smtp.gmail.com with ESMTPSA id b7sm73230217pfg.87.2016.09.19.11.28.53
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 11:28:55 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:59:36 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: lustre: lmv_obd: Remove redundant test.
Message-ID: <20160919182936.GA23833@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

filp != NULL is already checked, so no need to check it again.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index dad572e..7dbb2b9 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -865,7 +865,7 @@ static int lmv_hsm_ct_register(struct lmv_obd *lmv, unsigned int cmd, int len,
 
 	rc = libcfs_kkuc_group_add(filp, lk->lk_uid, lk->lk_group,
 				   &kcd, sizeof(kcd));
-	if (rc && filp)
+	if (rc)
 		fput(filp);
 
 	return rc;
-- 
1.7.1


