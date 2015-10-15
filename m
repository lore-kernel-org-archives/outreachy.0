X-GM-THRID: 6205781635135176704
X-Received: by 10.68.165.5 with SMTP id yu5mr6371547pbb.1.1444896611971;
        Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.103.161 with SMTP id fx1ls253454obb.44.gmail; Thu, 15 Oct
 2015 01:10:11 -0700 (PDT)
X-Received: by 10.182.230.197 with SMTP id ta5mr6266139obc.37.1444896611695;
        Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si1266788pbc.1.2015.10.15.01.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id rc13so80602159pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Vch4H6IjQoe5Xw9N7B5ZnfCyV9e9U+830Rye6IEKfXA=;
        b=pECmPZnO0Jd6dCMj01pKJQfbmvskQWlL/6KIPAU+5RDGd3LrobTWJ8Q+fLLphZuWGZ
         MfsHRDlQYBPKuFh2bjLluSTTu1mOOmJX1Rx5ZgJ3MID7BmFxW8a3dVl3j+GJTaRkLIm5
         /hsGFPasyT75FVCtoWjgc1lP/YX0pajEMspxhuPrll00y1SiJIuEbWfh5ggQJXo+ll0j
         VlinogGc/v2JjY4QhVPdmFRAFTjK4ots0DVHYQ/FaxTE/vDoaPtoiWWyoROYQbfawdBM
         otbWE2hrAJyY/OlgfpvwzWOL+5WDrWouoAMcm2Sbr9RKtDnK/UHUQKFYJ6furdBZzpQz
         hWcw==
X-Received: by 10.66.141.199 with SMTP id rq7mr8737558pab.140.1444896611540;
        Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id jt1sm3880914pbc.83.2015.10.15.01.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:10:11 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:40:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/18] staging: media: lirc: Remove useless initialisation
Message-ID: <73be14ca2f8c2acc4eb6cafec4a9fc416b6126c6.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index d3dedb8..bc78da0 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -244,7 +244,7 @@ exit:
  */
 static long vfd_ioctl(struct file *file, unsigned cmd, unsigned long arg)
 {
-	struct sasem_context *context = NULL;
+	struct sasem_context *context;
 
 	context = (struct sasem_context *) file->private_data;
 
-- 
1.9.1


