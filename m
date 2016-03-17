X-GM-THRID: 6262299386982694912
X-Received: by 10.140.140.19 with SMTP id 19mr7095634qhm.29.1458222917459;
        Thu, 17 Mar 2016 06:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.144 with SMTP id p16ls770976ioi.55.gmail; Thu, 17 Mar
 2016 06:55:17 -0700 (PDT)
X-Received: by 10.50.85.37 with SMTP id e5mr7736833igz.12.1458222917045;
        Thu, 17 Mar 2016 06:55:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id ui7si1359322pab.0.2016.03.17.06.55.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 06:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 124so122510585pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 06:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bZvus8bjvTKKxxjGgAE3HZDcidoYd56MPag892t7/OU=;
        b=tr294BgcCuf2tcVpktLh3/i7HEzZ67yDem4w2DW8thR3jEgxQG7tfo8khMLY0bV4N6
         lICMJkuODpiQ1GLjsVkKST0XZDGgL8oSjzPf3IOEB4GbdpMKYFX77HB5IseF9H0tvZSm
         9B309w831csztCPxTgQRt/r1EjfGjr9w5Ni8fpLtxRhh7s1Ts3DQhfRlcIn+ximev2z1
         xyE9WPOQsgyvp4LpkOAtKqphOHi5xhs81/ukMbsClKFUvwEe3mXIZ6ouSToqxaS2Lo8W
         NN20P61XxdgVXrEaiLpOGg6Q6MybfGS3Ixat1hT9HidehhZ0ds2cwTps9MTMUGU2aJkX
         5jAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bZvus8bjvTKKxxjGgAE3HZDcidoYd56MPag892t7/OU=;
        b=CHVVFyJ38x2lAjU6ytLf6OdjO44FedZX/e29k20K72fa+s5K0HKjeD62eEXfj8w5yZ
         /Tubk3U8GcRB1oKWQvmshWWpskiy0lAWrmLKbN4HRQd+MaVXh0HJrB7uuf0W/DCM1/P2
         Q6DfXAzQRXPGzmOCxVK0frrZYQf+heCv4bXiFRAI6MF519C2WO7kOt/fiF3siGY9meWf
         ezgykaWu8+SVwuuV+Q7JK7qpGEPPel1t0gJV6quS+qnjy0METQnwGaWViQCS+SopNLew
         zMisNOqLDaaLo15wpI6lGPSRD436/dfo9R/BQ/oQ4fpkVOPlq1DkXb04ZMK136uxwdiY
         7j8g==
X-Gm-Message-State: AD7BkJJ47ZD0tLX6lmtNmgqJeCHXRu24yqFSYEva5NU7tcJJhRE3AugO7F36hvaAQiYEVQ==
X-Received: by 10.66.226.135 with SMTP id rs7mr15388431pac.116.1458222916724;
        Thu, 17 Mar 2016 06:55:16 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.162.14])
        by smtp.gmail.com with ESMTPSA id ta2sm13695996pab.42.2016.03.17.06.55.15
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 06:55:15 -0700 (PDT)
Date: Thu, 17 Mar 2016 19:25:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: tj@kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: light: tsl2563: Remove flush_scheduled_work
Message-ID: <20160317135510.GA4831@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

flush_scheduled_work is scheduled for deprecation.
Replace cancel_delayed_work and flush_scheduled_work with
cancel_delayed_work_sync instead to ensure there is no pending or
running work item.

Since there is only one work item, chip->poweroff_work, there are 
no further dependencies of flush_scheduled_work().

Acked-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/iio/light/tsl2563.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/light/tsl2563.c b/drivers/iio/light/tsl2563.c
index 12731d6..57b108c 100644
--- a/drivers/iio/light/tsl2563.c
+++ b/drivers/iio/light/tsl2563.c
@@ -806,8 +806,7 @@ static int tsl2563_probe(struct i2c_client *client,
 	return 0;
 
 fail:
-	cancel_delayed_work(&chip->poweroff_work);
-	flush_scheduled_work();
+	cancel_delayed_work_sync(&chip->poweroff_work);
 	return err;
 }
 
-- 
1.9.1


