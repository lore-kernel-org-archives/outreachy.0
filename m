X-GM-THRID: 6262249474194669568
X-Received: by 10.107.162.2 with SMTP id l2mr21657646ioe.14.1458043575784;
        Tue, 15 Mar 2016 05:06:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls261586qgd.80.gmail; Tue, 15 Mar
 2016 05:06:15 -0700 (PDT)
X-Received: by 10.140.39.229 with SMTP id v92mr22111252qgv.25.1458043575086;
        Tue, 15 Mar 2016 05:06:15 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id sf5si4081710pac.1.2016.03.15.05.06.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id u190so26511557pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=i5h8jzg0PISF1bfEmo9H2DrghPnWRj18xuSCj95X9nM=;
        b=muT4V3Qx8Q8ltJmHmIOvt5wjd2eBQbLwqp0qnZWjsWEyRJofuUMjkIvxLpSdoFzyb/
         xjrjJt9NcBr56dN3iLn2Gs6ADatRYxYtSfdqN/L0jPFUJKIpJmw2Df0IPWN7NxmBBWEd
         dfdY/CvVnFS1ukoRd6o74awNekt59WgM8VRo2HfrkoYUwV6g3hVbdrQeqgrXRS5QKbBr
         SuOGMI0iKM7MlbpePe4NCd3ExbqK1uF6Hj5vzFf0DIjuQFleigt1jV+oXfbOJ+Nm11iF
         H5pk5aExEQd6+QK2zgqOnTlY3bL1IVo4KWfTk4XQh5vX3HYjXdKX1rU2/7/I4UWIwdAV
         p8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i5h8jzg0PISF1bfEmo9H2DrghPnWRj18xuSCj95X9nM=;
        b=KY4L+/00kJ12bjinV8cLtTTUcC/RRtHJFH8onR04v9av/rET4YlbN/U54fTU1Eq1Qv
         86i1irDtxU8fKDAWp19+BPxNXgl41d+c5pm5VGbsnO0EvRT1M9FeiCJfzM0ryAafGj92
         NFX7mifEHPVXsVkXyXJ+ObP44Kt8bOlkSZYY8rmKpx3u360V4xnJuMndyGVURsRWeeI8
         3lLBoT5KP+4nq4ENFERl5gmbzaTdS1qniC5jgbtPzFo1qowzZJimGmZ0gc/r7E7xBt9d
         7eDuYYsDj3H7XpmkgfA442QRLekBJXSAko0BJa57ej/TkW171O4AHWB1wn0gMKQzyCIr
         U8ZQ==
X-Gm-Message-State: AD7BkJIyJACVK6bZS0OOJ5aeNs086+tbLia8+1an2CfZEOuK+Jauu88vBwzVBzYALnq7qQ==
X-Received: by 10.66.193.161 with SMTP id hp1mr46031317pac.9.1458043574891;
        Tue, 15 Mar 2016 05:06:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id wb7sm39398055pab.3.2016.03.15.05.06.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:06:14 -0700 (PDT)
Date: Tue, 15 Mar 2016 17:36:03 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Remove a blank line before a  parenthesis '}'
Message-ID: <20160315120552.GA3570@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Blank lines aren't necessary before a close brace '}'

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/nvec/nvec_paz00.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_paz00.c b/drivers/staging/nvec/nvec_paz00.c
index cddbfd2..51dbeeb 100644
--- a/drivers/staging/nvec/nvec_paz00.c
+++ b/drivers/staging/nvec/nvec_paz00.c
@@ -41,7 +41,6 @@ static void nvec_led_brightness_set(struct led_classdev *led_cdev,
 	nvec_write_async(led->nvec, buf, sizeof(buf));
 
 	led->cdev.brightness = value;
-
 }
 
 static int nvec_paz00_probe(struct platform_device *pdev)
-- 
1.9.1


