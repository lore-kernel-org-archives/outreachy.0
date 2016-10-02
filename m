X-GM-THRID: 6337009316705337344
X-Received: by 10.28.209.12 with SMTP id i12mr170660wmg.14.1475449958124;
        Sun, 02 Oct 2016 16:12:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.9 with SMTP id 9ls616432ljf.35.gmail; Sun, 02 Oct 2016
 16:12:37 -0700 (PDT)
X-Received: by 10.25.75.21 with SMTP id y21mr1121588lfa.11.1475449957236;
        Sun, 02 Oct 2016 16:12:37 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p199si1050305wmd.1.2016.10.02.16.12.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 16:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id b184so12091338wma.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 16:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bDZS08gKPWPQFpS6uTVZypEUbmKs5wi8cE7JPlzqe2w=;
        b=wsLQ19apjVhKc4qeMC3zsAjbo1D36T/gS5FHK6UgGZ3t58uP8jbZrzVgQ8V91iGe+8
         2IOWpdv30LbSQI/RSVdlZasg7xaABJTx5SQoL/TiWEx4ynAwbVaQ60rOIArlO2xYwzN+
         sQKMrrMp6QLQjEzP3MwPCKz7wrTAXyO6o4alF7Pq1yvaEMnTqQ0KK6i5MhptJRp6w/Dy
         wY2UT6LYY6l31fH+FVV0KOALgWkUesw/jIEo1cg7hAP7VfAGs8Cl1U5S9O85r9fFOhFI
         SozFL0W09gjHzYIP+ndVxQ+6WsBShMwx0nXiojVb1XIlozZlIK/TIOckR+W1/ZmbJ4l/
         Ir3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bDZS08gKPWPQFpS6uTVZypEUbmKs5wi8cE7JPlzqe2w=;
        b=kgG3sZ3elFLVNmhTIE1U7mK2b2Od9iPN5/hlSnz9ZEq0g71gVi/3hTi81kG0zfnDho
         717fX/jqAscdwvsDSWDDbD9yamzp/6OxEH0lACchH7gLIA2GcEpZOs+iW8rt9E+JiA9R
         6g+dcSsMbNbkwpVU8RJwX1HCUhZQRcXB01mq5Qeu2JmLisIe1YLSS+8nowPzJNNc/V6s
         Lsc+Lm9r62eGa3zc8jnxa1akcJILez+MZsJzwPLtj1FWo9brgtdNzj6RQFRcC4yFTPEI
         5IZyERgClvFtsEBOptXPtLQb33gOrb3f0JyjqC52CvD+ouS3szzqERNlspk+tuRw1IhN
         n4OA==
X-Gm-Message-State: AA6/9Rm5r234R9O4HNoFWWOfIhq5k0tO0Me3bEKMgUsPRW9GcxwzplcMuKFhE/fNoOAJ5A==
X-Received: by 10.195.2.40 with SMTP id bl8mr17862647wjd.191.1475449956787;
        Sun, 02 Oct 2016 16:12:36 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id p144sm16091139wme.0.2016.10.02.16.12.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 16:12:35 -0700 (PDT)
Date: Mon, 3 Oct 2016 02:12:34 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: make array char const
Message-ID: <20161002231234.GA16439@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a chechpatch.pl warning in file sm750.c
WARNING: static const char * array should probably be static
const char * const,by adding a missing const.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 7d90e25..90b6c64 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -32,7 +32,7 @@
 static int g_hwcursor = 1;
 static int g_noaccel;
 static int g_nomtrr;
-static const char *g_fbmode[] = {NULL, NULL};
+static const char * const g_fbmode[] = {NULL, NULL};
 static const char *g_def_fbmode = "800x600-16@60";
 static char *g_settings;
 static int g_dualview;
-- 
2.7.4


