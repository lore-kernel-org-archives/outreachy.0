X-GM-THRID: 6203759305105080320
X-Received: by 10.182.137.227 with SMTP id ql3mr12750623obb.32.1444425272513;
        Fri, 09 Oct 2015 14:14:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.251.198 with SMTP id zm6ls735941obc.33.gmail; Fri, 09 Oct
 2015 14:14:32 -0700 (PDT)
X-Received: by 10.182.240.202 with SMTP id wc10mr13541894obc.9.1444425272013;
        Fri, 09 Oct 2015 14:14:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id uv4si412141pac.0.2015.10.09.14.14.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 14:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ve7so38026572pab.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 14:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HsD6wGIJRr5h9EjtGXGoobdmyc9RYgBH9kAbeYBgD48=;
        b=hKQG3h+r6SSxoZgg9nr/i/hL00a8boErqgmMOAKuLroX8aFw2JmyQvYAAbYnBeam+C
         N0dG4YBpUluTd85x3NVoTPtG5i9l2bTKF+xoK/sle+HbgaMyJQpAM8v1PIZZd0pUFqvs
         mFyCfcaXcuG0Cpu90AEJbeKIuKnCR6BTxlVxlx8R5Q22Ms1s8xOo9QPg/raKiTn+hBA5
         cVesr2ihW5gOWITrcn6n1PGZjSDyZnrJjBx8maU/hznoMO5Su+fHJfxugEPgTTCUiTii
         fhzxwYB4eSk7It8THtxklvqZiiTac4y+KI0MH3hJsdA0cpHbnaGkxtBMSpu910FXtbNm
         44KQ==
X-Received: by 10.68.69.17 with SMTP id a17mr17652159pbu.10.1444425271803;
        Fri, 09 Oct 2015 14:14:31 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id q8sm4204770pap.34.2015.10.09.14.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 14:14:31 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:44:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Replace GFP_ATOMIC with GFP_KERNEL
Message-ID: <20151009211427.GA29470@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace GFP_ATOMIC with GFP_KERNEL since the function is calling
sleeping functions.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
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


