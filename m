X-GM-THRID: 6332848920515837952
X-Received: by 10.129.135.195 with SMTP id x186mr7442541ywf.138.1474481290788;
        Wed, 21 Sep 2016 11:08:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls4972909otb.16.gmail; Wed, 21 Sep
 2016 11:08:10 -0700 (PDT)
X-Received: by 10.129.89.213 with SMTP id n204mr8533036ywb.23.1474481290383;
        Wed, 21 Sep 2016 11:08:10 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si7996630pfw.1.2016.09.21.11.08.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so2672994pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 11:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MiMxk+yV9T0z5lwPxL7oCuoLNki7QB6mOertfHmhyiM=;
        b=jR7ami/3+DacjKIiKhh+7mSYY98AGxc7fuf/r8oYDGQ4JXc4m/CkIP55yO9h81JTkJ
         3h1I9svlagJV2KEO7gMd9J/lT4BP9FIpBNKg82eqx23gbFh5TNpTaU92H4V2bYPF33Lp
         pw/GzU0k6HLUvPbwIklvkMB7Ukm5aPTS5KO3OjpD0UEHrVGBHk0U9mpxXsQ/Wg1Yb8Xm
         DZtChIZxVbAOiPEdfmdt6cqA7enK7STuqrHASPMzT+SVE14iT4PtGYGu9NVjR/gCYHJI
         wtF13kJ6JgYY3ub8QI/svGN3ZyAYIhgU657W9VCTlT/TRxynMDOUCIvWCSa/wdK7hUEA
         lv2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MiMxk+yV9T0z5lwPxL7oCuoLNki7QB6mOertfHmhyiM=;
        b=ALiyp6mfWFHsefPQN4PLTk4tX5YRc1rSk2q6BUW8jUgMDDMYfEwOu7C5cvxCqocX/r
         YlDky0Q87NyWjxcxKB9nPF50Uv7guwaC+BkVgChE2PYX/ED5P0a6QqhDMt51gQJzOXRD
         Zufk1jdfRLQgAbLYBIgK3gcp0ZuJzXdKC2ftT8scUeuva51uRmHKdPxKpviw33wUTOA2
         ybbOEIDf92CBQ9sHn9bIlJ+bpkV9chcjVy/14KizruIzvucLy//SxU1sXaQp+ITbg03d
         PZt2V7ww244R8fLihc7W9LrOWCQ+dS27Pnoe7ytAyKCiiRy+ja1PAKPkwE00kZT1Yp3T
         28OA==
X-Gm-Message-State: AE9vXwO9pRAezx3V9Z+flhZz+dRjQWI7b4Ev8w9Jw8v13oJlMQyyc+nUFQoyO6I88UQkqg==
X-Received: by 10.98.67.139 with SMTP id l11mr50555592pfi.16.1474481289905;
        Wed, 21 Sep 2016 11:08:09 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tw2sm48213970pac.41.2016.09.21.11.08.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 11:08:09 -0700 (PDT)
Date: Wed, 21 Sep 2016 23:38:00 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: octeon-usb: Remove unnecessary assignment
Message-ID: <20160921180800.GA26789@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove 'x=a;' from a consecutive double assignment of the form 'x=a; x=b;'.
Issue detected by the semantic patch found here:
https://github.com/coccinelle/coccinellery/blob/master/write2/write2.cocci

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 17442b3..9a7858a 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -3292,7 +3292,6 @@ static int octeon_usb_hub_status_data(struct usb_hcd *hcd, char *buf)
 	spin_lock_irqsave(&usb->lock, flags);
 	port_status = cvmx_usb_get_status(usb);
 	spin_unlock_irqrestore(&usb->lock, flags);
-	buf[0] = 0;
 	buf[0] = port_status.connect_change << 1;
 
 	return buf[0] != 0;
-- 
2.7.4


