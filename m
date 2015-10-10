X-GM-THRID: 6203759305105080320
X-Received: by 10.67.4.38 with SMTP id cb6mr2031181pad.44.1444463626574;
        Sat, 10 Oct 2015 00:53:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls493844qgf.50.gmail; Sat, 10 Oct
 2015 00:53:45 -0700 (PDT)
X-Received: by 10.13.223.129 with SMTP id i123mr14728002ywe.33.1444463625933;
        Sat, 10 Oct 2015 00:53:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si588690pac.2.2015.10.10.00.53.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 00:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so107616758pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 00:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wCklrFdaYYB65tPeqQiBHMxkWAuyGt92hA35LUmzwEE=;
        b=Z+Ju4ty5/qrxdPwn93od5OBDAtGBga1khylJCf+VlnV/hmDbyAkPaugda7AAO36IPY
         hLVDO+TRGKoMtIVVXyqoVB1k8kcqAXO0AcHqzenQT7EDb9knZv0IdEiwe6/LBKyk8Wad
         wnwrt1py0vDVeRJ92LXb9P1e40CpXqoHkhoJjDMd9NorKD7ojhSRG+sP7qkkq/5FYtEb
         qSBqH0LBxXiu33Ve8fVmHI3Gk87+oS/4JEudmDExG+DdCbswVM5BkK7lL/igLDWUhj7a
         1bABBBerBau8K635cdw8DQfBwOynxU1Tql4aJol7jhJpHubQ5T9+2ZD6sTSDR7zB/hqI
         KQDw==
X-Received: by 10.68.69.40 with SMTP id b8mr20994277pbu.84.1444463625706;
        Sat, 10 Oct 2015 00:53:45 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.131.197])
        by smtp.gmail.com with ESMTPSA id fk8sm6549184pab.33.2015.10.10.00.53.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 10 Oct 2015 00:53:45 -0700 (PDT)
Date: Sat, 10 Oct 2015 13:23:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: Replace GFP_ATOMIC with GFP_KERNEL
Message-ID: <20151010075341.GA31673@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace GFP_ATOMIC with GFP_KERNEL since GFP_ATOMIC is called in
atomic context and only needed when functions are not allowed to sleep 
whereas the function is later calling msleep().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Fixed commit message
Changes in v3:
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


