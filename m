X-GM-THRID: 6335442483781042176
X-Received: by 10.237.60.92 with SMTP id u28mr1920063qte.50.1475422495073;
        Sun, 02 Oct 2016 08:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls3382302ioe.45.gmail; Sun, 02 Oct
 2016 08:34:53 -0700 (PDT)
X-Received: by 10.36.227.205 with SMTP id d196mr3236620ith.14.1475422493628;
        Sun, 02 Oct 2016 08:34:53 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si6436789par.0.2016.10.02.08.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so924580pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eRXqyIktMHFLzBAYcgEbo5JFQwH3E/7A4GdEFlDAhFI=;
        b=qUGby82dYUORmDH9YYAf2PQCDM2mVbj8ESm3W87sWvxUBC0w/PPndCL/EpEcMQX16F
         1Wt2Aeu2mKt2gxyBavTKanrbDP/jbegy7Y9rZz9W3tkmJfQAeFlOgKK1xG+mpEsHqVsG
         2jMnTbwljpC8/rELGc1J8c0VT8fcyTypRLMHkPokaLKDvLOdFLEkKWBH9BzrZXxxwokE
         COuaVlG3maPlBHNvT1fLVVaZpH5zo7VTFveBh0M4T/8Uq0cJmjzfjAO0PlinqrLaxz1Q
         9KxqYfuZTaeYhSrsFeCTz/117zwCey+4Ub+a3Q+0+Y5cOC9bsBHzPTCC0DrmmUzrMlnm
         G25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eRXqyIktMHFLzBAYcgEbo5JFQwH3E/7A4GdEFlDAhFI=;
        b=bBAaKOnS35DUeAMq51eUVphm8Mtol2jQQ5jc8nC8a4zLfnbdcIK1cTdyd03z02nWmZ
         o4pdk4KOJ487tKEz9lZbN3HHIXcJqut3AhVMMEB9NFIaVH6FAdjvbufbMmQoPyfO4NAn
         6KS26NAU8ushImAQ4Z5T+5CjMYETNXBtuNnCCh4efrVZqSSuB0VjY5zUp3n56anqNo7P
         1kTyqUq8+S0f9gCM+Tqo7vqX2cgIqPeyYOnCIJI+QE+ed76T881t38tMEh9Lnkf6g8tQ
         lnPT+6p+J6QvoKtRyVNrDn09xGMbLgJjEfNlQgyx4N/j5mwKtgzbaoiCgYrBU59val1Q
         PptA==
X-Gm-Message-State: AA6/9Rmhu2xvftduDGwDq6lQKoeIM3mxEf2zSJFydwgOF+wtHskY6gswJrgSzoekvtgDIA==
X-Received: by 10.98.149.18 with SMTP id p18mr22529661pfd.146.1475422493464;
        Sun, 02 Oct 2016 08:34:53 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id sy4sm41089645pac.48.2016.10.02.08.34.51
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 08:34:53 -0700 (PDT)
Date: Sun, 2 Oct 2016 21:04:43 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: jic23@kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4 ] staging: iio: cdc: ad7150: add comment to mutex
Message-ID: <20161002153424.GA4211@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add a comment in mutex to explain what the mutex is work here.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index f6b9a10..13709bf 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -78,7 +78,7 @@ struct ad7150_chip_info {
 	u8 mag_timeout[2][2];
 	int old_state;
 	char *conversion_mode;
-	struct mutex state_lock;
+	struct mutex state_lock; /* protect hardware state */
 };
 
 /*
-- 
1.9.1


