X-GM-THRID: 6203759305105080320
X-Received: by 10.68.138.132 with SMTP id qq4mr13028902pbb.11.1444429428943;
        Fri, 09 Oct 2015 15:23:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.170 with SMTP id y10ls969194obk.28.gmail; Fri, 09 Oct
 2015 15:23:48 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr13775794obc.3.1444429428528;
        Fri, 09 Oct 2015 15:23:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si420273pbb.0.2015.10.09.15.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 15:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy16so97701865pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 15:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=36N71RbPw/cPqpEhD2f454t/mEwEAinCvsheOhUKDbk=;
        b=vsybkSHCT20M469KAfkxbOkReK69n+ysa2Z6pyKo4fudOI9h+BLqeSVWAbFNdzTg4z
         99zm58YDcN4O/6818xc0+OSD655hkqdJMHLhmuvSc2cxUssFdD8cDG3JW5t+X7YLHA0n
         86y7oj7XSuTmuive/KHUUmy3fUtq4ZrPuidLhxKB27eCT3jfMW2GF2Z6B08kkpE7wz4A
         +mJr0KS+/EK0AaLqg+h/dToW5TZHaGI0UgDTrGRpGINSk4umdwkbtGH1BSOxZADb9OLl
         ya421KVuyaB93fp5dZZ+FRyyJ0017dRAprQITf9h5QaScKxYxRGkfnIR/eAs+riusgmQ
         17jQ==
X-Received: by 10.67.30.136 with SMTP id ke8mr18348845pad.16.1444429428359;
        Fri, 09 Oct 2015 15:23:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id uc1sm4402878pab.20.2015.10.09.15.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 15:23:47 -0700 (PDT)
Date: Sat, 10 Oct 2015 03:53:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Replace GFP_ATOMIC with GFP_KERNEL
Message-ID: <20151009222344.GA29876@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace GFP_ATOMIC with GFP_KERNEL since GFP_ATOMIC is called in
atomic context and used where functions are not allowed to sleep
whereas this function is calling msleep(). 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
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


