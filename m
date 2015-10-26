X-GM-THRID: 6210026226543755264
X-Received: by 10.13.202.13 with SMTP id m13mr29780373ywd.57.1445884403325;
        Mon, 26 Oct 2015 11:33:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.69 with SMTP id ck5ls987092igb.0.canary; Mon, 26 Oct
 2015 11:33:22 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr30920567ioa.6.1445884402797;
        Mon, 26 Oct 2015 11:33:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si3634011pbc.1.2015.10.26.11.33.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 11:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fv9so204191417pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 11:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rP49miZU5ScRKHfmJF2KW+D32iskGyPy2UPC03JnJ1o=;
        b=yz1BID7I2J9OSkZkpdGnsq/ZBJ9btBfh+stbPjhnpXb9UrLpNozSXcQ394VYh2h0Um
         V7csBEBiDoS8Q24w9YOFsoR6xw0y6SQd+iTi0/p9pI+n6PXqgZEYfrGt/EEV1D3PLA0s
         Oa0Bh0buj2s8JPu+xjp9GgnH2sPUc05xW2wTaqARmOAFOFdIO3i5sRiM0cabuUlaLDKJ
         limstiWBOR6MU64S/sAWk859YP7lRAQ46kk0OwInbH9wNCJU1dPI/ZYb0EzEUGXV7TGb
         q7CBh6wDNP3luPOSh+Xxqy567SS+jn5k2VFesiYirAbklwpjof1qqa6F9tXhvobgm82D
         a9tg==
X-Received: by 10.68.182.34 with SMTP id eb2mr23241710pbc.87.1445884402602;
        Mon, 26 Oct 2015 11:33:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id vl1sm35222322pbc.31.2015.10.26.11.33.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 11:33:22 -0700 (PDT)
Date: Tue, 27 Oct 2015 00:03:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove unneeded function
Message-ID: <20151026183318.GA25808@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The function hw_sm750_getVMSize() had code that was replaceable by a single
line. It was being called only once so replaced that call with the
single line code and removed the extraneous function. 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 92e194d..9ba94c3 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -72,7 +72,7 @@ int hw_sm750_map(struct lynx_share *share, struct pci_dev *pdev)
 	 * size but not the actual size,use
 	 * @hw_sm750_getVMSize function can be safe.
 	 * */
-	share->vidmem_size = hw_sm750_getVMSize(share);
+	share->vidmem_size = ddk750_getVMSize();
 	pr_info("video memory phyAddr = %lx, size = %u bytes\n",
 	share->vidmem_start, share->vidmem_size);
 
@@ -182,13 +182,6 @@ int hw_sm750_inithw(struct lynx_share *share, struct pci_dev *pdev)
 }
 
 
-resource_size_t hw_sm750_getVMSize(struct lynx_share *share)
-{
-	resource_size_t ret;
-
-	ret = ddk750_getVMSize();
-	return ret;
-}
 
 int hw_sm750_output_setMode(struct lynxfb_output *output,
 									struct fb_var_screeninfo *var, struct fb_fix_screeninfo *fix)
-- 
1.9.1


