X-GM-THRID: 6335655497747660800
X-Received: by 10.66.158.98 with SMTP id wt2mr15969pab.84.1475134747838;
        Thu, 29 Sep 2016 00:39:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.208.14 with SMTP id m14ls3247503itg.14.canary; Thu, 29 Sep
 2016 00:39:07 -0700 (PDT)
X-Received: by 10.107.138.70 with SMTP id m67mr322864iod.84.1475134747182;
        Thu, 29 Sep 2016 00:39:07 -0700 (PDT)
Return-Path: <agarwal10megha@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3031796pab.2.2016.09.29.00.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 00:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of agarwal10megha@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of agarwal10megha@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=agarwal10megha@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so3095770pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 00:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TDOUlQaIEfQxj2MT0TYxVLoAsWTwWD4m4rGKUC42KFg=;
        b=qXcM0AXKIRT96eHxNMwB9FOU3gNZy0iQLFp50FciOA9DTvDBLBCDpCCpMaS0ISadRW
         WnDbRwa6X7Iimg0rLCDfPaW7KF+XxGlxBU9W01pgz20Rtl/PWfQ/7l5OQZ2aXT99UgIo
         8CSvJwTabJKV2auRAlFJl5Y5SnSN2GKnP2IpSW+NLZCqP+hBbEI/6VG0Bwz6bTZ2tnHS
         /Q5oQAy4P5ZTsw9z+5YWvEyYUpx7B1LgXU8UW27UlTmL0siJIj302uh3FebCrDX3dyEI
         GMD0w63kSpELe3BNYTmFT6bt3JSo08WRDwn9eJTupxlgmMH2yrtkkyM2FrMAoxNYth91
         kaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TDOUlQaIEfQxj2MT0TYxVLoAsWTwWD4m4rGKUC42KFg=;
        b=AJQ/jViAKZBDgAXYioaESWoUfDrpcO1QjC4D5hZxja5b30/Bz//MhGJ+ill46iuo8M
         OF/Of9FdRPAP8PC2tBuE8/n2Bezc3J57yX1YzJhq5I0f4hxkRiPpbzMEu1Ey4h1AGwJu
         3yuW42hczCgjTVlvPwmS/eP0Bg+ZkMxXjEnq9CqKyk3Hva23/BEDzuX4HChsS31PyUFy
         odStFSwJGDzoopWp7VQ/09lDxymVaulq4FGGAEYFxe8DHpC6CndViLFDIygPYX2XijAa
         ucS40JcMSi4eVP7xRivRFyAEglPNi47QswpF5GtY50o6rDvkga9If6/kDsHAuKzQCzXZ
         rWPA==
X-Gm-Message-State: AA6/9Rmdo+bVS3Q1yBcAXfy+eLfNot8nj2lOxEMKbJicyFzYBjd+K7X3U+S+5ddnXFLfPg==
X-Received: by 10.66.163.5 with SMTP id ye5mr53025pab.125.1475134747017;
        Thu, 29 Sep 2016 00:39:07 -0700 (PDT)
Return-Path: <agarwal10megha@gmail.com>
Received: from megha-HP-15-Notebook-PC ([182.68.207.206])
        by smtp.gmail.com with ESMTPSA id k80sm17533079pfk.27.2016.09.29.00.39.04
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 00:39:06 -0700 (PDT)
Date: Thu, 29 Sep 2016 13:08:59 +0530
From: Megha Agarwal <agarwal10megha@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] [PATCH] staging: media: bcm2048: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20160929073859.GA21701@megha-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This is a patch to the radio-bcm2048.c file that fixes up a
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
found by the checkpatch.pl tool

Signed-off-by: Megha Agarwal <agarwal10megha@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index ea15cc6..f6f847b 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2022,7 +2022,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 	return count;							\
 }
 
-DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
 DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
 DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
 DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
-- 
1.9.1


