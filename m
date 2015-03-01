X-GM-THRID: 5447739244544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3803f49973626918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.113.228 with SMTP id jb4mr23313653obb.31.1425224173353;
        Sun, 01 Mar 2015 07:36:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.93 with SMTP id n90ls1050689ioe.7.gmail; Sun, 01 Mar
 2015 07:36:13 -0800 (PST)
X-Received: by 10.68.241.163 with SMTP id wj3mr22226420pbc.8.1425224173225;
        Sun, 01 Mar 2015 07:36:13 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ks4si1190482pbc.1.2015.03.01.07.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:36:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so7023197pad.9
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iLl2aoGKnYOa1foZmdVPrc/rQD41XL6K10nS4r1c3bE=;
        b=stj3WoBcZNslXEUBB9e9jcq1Z9hzQhOYkkF1h0O0VDmS5YNg55ENh5gtdFbC9EBt8j
         uTudulqqW+f5TEbNVXu8yQ3ENB5uLoyrfxSI9lF9cziTzbGdxFhaW070TZ9ko/TH6tAc
         XqqraCjiJuJX+J1SXvYYAXLXmSJwjtXV8K2CHB0x46XTIv8S1+Y4sEs8jgD0IS8wl19I
         +W+8HgBwVGD7ydZRHbIIsvxmLx2KoAGqnwT2khvfH+dk3kd77+6xK8H9h2VElsORTl+4
         3la1kClUxvmpyiz5/huvb/jcL+mmjPRhcWQbpIEEaUFQMjSFHiun8CmRslcWITMzapsZ
         hURA==
X-Received: by 10.70.18.36 with SMTP id t4mr40216918pdd.66.1425224173152;
        Sun, 01 Mar 2015 07:36:13 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id z2sm9346957pde.94.2015.03.01.07.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:36:12 -0800 (PST)
Date: Sun, 1 Mar 2015 21:04:47 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: wlan-ng: Remove unused variable
Message-ID: <c015862f8ccc967cf9b1856af9c337df98969837.1425223729.git.vatikaharlalka@gmail.com>
References: <cover.1425223729.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425223729.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The return value of the function need not be
assigned to a variable.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 0163e06..e5b0ecd 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -591,9 +591,7 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 			mib->parm2 |= HFA384x_WEPFLAGS_DISABLE_TXCRYPT;
 	}
 
-	result = prism2mib_flag(mib, isget, wlandev, hw, msg, data);
-
-	return result;
+	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
@@ -630,9 +628,7 @@ static int prism2mib_excludeunencrypted(struct mibrec *mib,
 {
 	int result;
 
-	result = prism2mib_flag(mib, isget, wlandev, hw, msg, data);
-
-	return result;
+	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
@@ -679,9 +675,7 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 			return 0;
 		}
 
-	result = prism2mib_uint32(mib, isget, wlandev, hw, msg, data);
-
-	return result;
+	return prism2mib_uint32(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.1


