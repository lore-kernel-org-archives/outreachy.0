X-GM-THRID: 6391116518625640448
X-Received: by 10.31.160.131 with SMTP id j125mr2579916vke.13.1488113861170;
        Sun, 26 Feb 2017 04:57:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls11375144otb.40.gmail; Sun, 26 Feb
 2017 04:57:40 -0800 (PST)
X-Received: by 10.157.32.138 with SMTP id x10mr4331994ota.51.1488113860880;
        Sun, 26 Feb 2017 04:57:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h130si2559581pfe.1.2017.02.26.04.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id y23so402906pfk.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mE+vbhTBnDEaek7ZJ5c9CDzLiSL6TD054xG0g1AHUZo=;
        b=aRBDfsLOpDzP8ND+z0FiXIyQoSh57WReodjbneB1jrSIYGPUXuBmeFyouZBJ8E9Tv9
         mjCWt1gov10znuyz5siRzyaDJ+7fAqPn5j5fktdJ4zmqyICn3dJRobEh3m1j1aFGoJZ7
         Zq0CPpGKgxHiO3gkh58sSXDazH8Cmqj6scd5j+4C+7QWSUQn6woRVWYMjKg2MUVzlByb
         3S4zowBnk1twMl9Xo97E9iCDutHOZV//CMsiTEB4MyGznwsSu0gYjDQz0BUHSneSvxxb
         OLwvsCYpXzl9qFGRoqKzdh5rLen5KLGJcD6N9T5P+7b+NZ+7aDMNhoOykOr66kQ0i+6v
         g4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mE+vbhTBnDEaek7ZJ5c9CDzLiSL6TD054xG0g1AHUZo=;
        b=Ni5GXmaKHa0MbMXMVmmzxy9+okVHaEvXZouDsIngRMNgDDE2clldEEVTMQsQs6jIuH
         CAv/bU4fhHJRIwW5u4Oj6cJBxqFc4fcnG/vr/p1Cg1q7HpzRH/QDiQ8z92K1rzv2ew5r
         e+NAakF3dEB3GVL8sw0xZsnqL92xyOk7JEz4vZsNWCyQMeuH1NhLlNPaKPRACTjL8zIw
         hRZRLE4zie2Y6tqDd54lKdhx0X9pSJ0aCOoV1Mon+cuqwewdMh/o3OLDsE9F8uhdpf3A
         +OcMcW2Klrns9/a4+37+DNM6/4BBxlP9Mh0MQyrtlmu42dS//bJ1bfXwhnysnSD1V1tz
         5JpQ==
X-Gm-Message-State: AMke39nInsQyX6B/NCm3PY87QGRy012jdl7N2fovEVtLB+dpfhGTca/3xiOU3gev3USh7Q==
X-Received: by 10.98.13.197 with SMTP id 66mr5371426pfn.91.1488113860680;
        Sun, 26 Feb 2017 04:57:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id o189sm24935983pga.12.2017.02.26.04.57.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:57:40 -0800 (PST)
Message-ID: <58b2d0c4.c641630a.25cf1.4a43@mx.google.com>
X-Google-Original-Message-ID: <20170226125734.GA17853@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:27:34 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 7/7] staging: sm750fb: Remove blank lines after { and
 before } braces.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary blank lines after open brace and before closed
braces, to fix the check patch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- Removed braces which are not required in sm750_accel.c

 drivers/staging/sm750fb/sm750.c        | 1 -
 drivers/staging/sm750fb/sm750_accel.c  | 4 ----
 drivers/staging/sm750fb/sm750_cursor.c | 4 ----
 3 files changed, 9 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 332a3ef..c618c56 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -806,7 +806,6 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 
 	for (i = 0; i < 3; i++) {
-
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				   pdb[i], cdb[i], NULL, 8);
 
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 57ae743..9548863 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -259,8 +259,6 @@ unsigned int rop2)   /* ROP value */
 	if (accel->de_wait() != 0)
 		return -1;
 
-	{
-
 	write_dpr(accel, DE_SOURCE,
 		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
 		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
@@ -276,8 +274,6 @@ unsigned int rop2)   /* ROP value */
 		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
 
-	}
-
 	return 0;
 }
 
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index dbc8bb1..aa232c3 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -131,10 +131,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
-
-
 }
 
 
@@ -178,6 +175,5 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
 }
-- 
2.9.3


