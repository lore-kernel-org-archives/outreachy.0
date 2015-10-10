X-GM-THRID: 6203759305105080320
X-Received: by 10.66.194.136 with SMTP id hw8mr14255533pac.39.1444467675919;
        Sat, 10 Oct 2015 02:01:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.138 with SMTP id i132ls1104503ioi.42.gmail; Sat, 10 Oct
 2015 02:01:15 -0700 (PDT)
X-Received: by 10.66.158.229 with SMTP id wx5mr15056223pab.3.1444467675654;
        Sat, 10 Oct 2015 02:01:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id wl2si541059pab.1.2015.10.10.02.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 02:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so108285423pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 02:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=o6IpNEVTBH9CazHQomrW7N2Ze1XZ/YH5F3efwZUOjuI=;
        b=PLJlFSYQT1r4RnBxvnfewsNYlcRnSKbQuOvz7VtHDWwqWxFysLXGzXlIyxMkjJV9H6
         Nzcr1kg9VjDwcQfxSSabg2i41HrymmOpPsgAATb2x6B3G6vb4zgolKYRQ5zC1oygAwIX
         Nhzd5BrZGOBKFvNHY08G0YiSJTxT8wxuSUdwtRyYK83xUtU/Y6SFibBjcWDdCydpRRTc
         nTYxlVHU9JRHbh+zxxtMz2fB3NTLJbNyEJsP8+wFBX/vciyJyZQ9JAe8atbVkk9+BxCE
         CKdmdAdIIvrGFXNrurkMwu7eeMc8p2dDsSm0c/U/T5vgf6IGlsX5DwQqZ8kciceV7kqL
         93UQ==
X-Received: by 10.68.100.226 with SMTP id fb2mr21236968pbb.92.1444467675490;
        Sat, 10 Oct 2015 02:01:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.131.197])
        by smtp.gmail.com with ESMTPSA id eg5sm6935567pac.30.2015.10.10.02.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 02:01:14 -0700 (PDT)
Date: Sat, 10 Oct 2015 14:31:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: rtl8712: Replace GFP_ATOMIC with GFP_KERNEL
Message-ID: <20151010090111.GA32345@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace GFP_ATOMIC with GFP_KERNEL since GFP_ATOMIC is used in
atomic context and only needed when functions are not allowed to sleep
whereas the function is later calling msleep().


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fixed commit message
Changes in v3:
        -Fixed commit message
Changes in v4:
        -Fixed commit message

 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 2031291..39ba658 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -177,7 +177,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		maxlen = (fwhdr.img_IMEM_size > fwhdr.img_SRAM_size) ?
 			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
 		maxlen += txdscp_sz;
-		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_ATOMIC);
+		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
 		if (!ptmpchar)
 			return ret;
 
-- 
1.9.1


