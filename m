X-GM-THRID: 6206985870127398912
X-Received: by 10.182.65.134 with SMTP id x6mr21766893obs.14.1445176515311;
        Sun, 18 Oct 2015 06:55:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.14 with SMTP id b14ls1209818iob.5.gmail; Sun, 18 Oct
 2015 06:55:14 -0700 (PDT)
X-Received: by 10.68.138.132 with SMTP id qq4mr21518838pbb.11.1445176514720;
        Sun, 18 Oct 2015 06:55:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si2885842pbb.0.2015.10.18.06.55.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so3009474pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+YHubHS+f+Zfmy+nANCzetOm0UpB9W/4btxBV+YH3Tk=;
        b=MswSjLzVzHejyHDQ+4QSBRy7eBxAa39W/SFitnNIlPt9QTeEQRig6p30k1Fai8oHdf
         YZQmv+r+rQIoegmJkC29ypI98x+ICcVKHO45uVxDZBHBnyByetA/7/S9YUTqAvjzbG5t
         xskG8veJC2KrjpKAUzJ9DYRqafYcwLVg6CwNep4TxtMHZtC0DOVLwF98wJNEv5ydglvL
         Ty0TGmzz3SLChY2FinZdvuoelT+lKCqoa3Rf4hH1S/8wBGBUOGdAf+er7qUwGPSiHBt8
         MmHb5GmysSWln0exo5WpNKpFLiVEMBvzirzS4SLCVgP5duCCq/14urX/UsyyS/tAN0cm
         +F9A==
X-Received: by 10.68.90.195 with SMTP id by3mr28827606pbb.148.1445176514567;
        Sun, 18 Oct 2015 06:55:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.167.66])
        by smtp.gmail.com with ESMTPSA id dd4sm31163242pbb.52.2015.10.18.06.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 06:55:14 -0700 (PDT)
Date: Sun, 18 Oct 2015 19:25:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Replace include <asm/*.h> with include
 <linux/*.h>
Message-ID: <20151018135509.GA24240@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Problem found using checkpatch.pl
WARNING: Use #include <linux/io.h> instead of <asm/io.h>
WARNING: Use #include <linux/uaccess.h> instead of <asm/uaccess.h>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_help.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.h b/drivers/staging/sm750fb/ddk750_help.h
index 9b2d2d2..5be814e 100644
--- a/drivers/staging/sm750fb/ddk750_help.h
+++ b/drivers/staging/sm750fb/ddk750_help.h
@@ -4,8 +4,8 @@
 #ifndef USE_INTERNAL_REGISTER_ACCESS
 
 #include <linux/ioport.h>
-#include <asm/io.h>
-#include <asm/uaccess.h>
+#include <linux/io.h>
+#include <linux/uaccess.h>
 #include "sm750_help.h"
 
 /* software control endianness */
-- 
1.9.1


