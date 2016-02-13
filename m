X-GM-THRID: 6250791352115658752
X-Received: by 10.50.87.7 with SMTP id t7mr3269903igz.11.1455375773350;
        Sat, 13 Feb 2016 07:02:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls1049293ioe.76.gmail; Sat, 13
 Feb 2016 07:02:52 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr6945487pab.38.1455375772837;
        Sat, 13 Feb 2016 07:02:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ui7si2382494pab.0.2016.02.13.07.02.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 07:02:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id e127so62972271pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 07:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oTCzRohUNLjn4NYxr790flR3MOBOiqamp7DU5P+mbAg=;
        b=Pnq60G/kVAwowk6Ju86kHjD5lWr0UOB9y/BC69GWgP+T0mtz4bhJz9nXNz3OiI40xw
         yjkSIwjqqucd48OpHrqEWg+oHRanf2aS2oIvamnqY5SeORg9/lElm5h2YAoEEes0wuVo
         5l9Ld/Z9yuC1nF/K9Sk+oHfhEg9PFsoQyp9td979iNUV/CKweO6rdF8myepqVbsSK7Bm
         L6kRHAfsxIkcqQPUC89rEQ0kSJv7hUFPtiSvfu/wcMnV3mPjMYBctayfrf8YTj9Qi5I6
         zyp1txUUV4GrB3dbjmM4+8Ov2n4TTPrJycx0kLoOjMbSvGmv+t+0T8SlLv550QdUb7jZ
         BTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=oTCzRohUNLjn4NYxr790flR3MOBOiqamp7DU5P+mbAg=;
        b=Or6y1fP49yLOiWwAOBopI/glxTv7Cy6TWFEvKlW3kxD3DySjBgiiklPIYO3/h6uxLL
         IuBVI2aLqSGHOjvKYOmGCEafxoJ7UM3IIhOmedAc0fKXvXGlSrWX0pqU9V14QktJgIJ6
         v0di3hXBLmW7YSqB6PQ6HCfWGb9ZrOIlebW5W4obzkPW8Bwae9YniFedP2lq44x7K+hj
         QIV78U92xm8OhG9Qe3pJnOEFZKTMzwGZkTy2yVHFHzHt8qy9tSCmneuDZPTUjsOjn2Tr
         rZaIPqa5t3V6SmuIerIWTNNp7dcP+Z7IYXZT29od4crDnDVnesTC78zFzbCtSng6oCon
         vueA==
X-Gm-Message-State: AG10YOSbwX5xXCYrGshYK59U4LN+TlrBRS9RH225hWRNHzGooB4/rcg5bXFfr0TiVYBBrg==
X-Received: by 10.98.18.201 with SMTP id 70mr10484959pfs.104.1455375772663;
        Sat, 13 Feb 2016 07:02:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id qj8sm26830458pac.40.2016.02.13.07.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 07:02:52 -0800 (PST)
Date: Sat, 13 Feb 2016 20:32:48 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdclass: Use IS_ERR_OR_NULL
Message-ID: <20160213150248.GA24016@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use macro IS_ERR_OR_NULL in place of tests for NULL and IS_ERR.

The Coccinelle semantic patch used to make the change is as follows:

//<smpl>
@@
expression e;
@@

- e == NULL || IS_ERR(e)
+ IS_ERR_OR_NULL(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/kernelcomm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/kernelcomm.c b/drivers/staging/lustre/lustre/obdclass/kernelcomm.c
index be4867c..8405ecc 100644
--- a/drivers/staging/lustre/lustre/obdclass/kernelcomm.c
+++ b/drivers/staging/lustre/lustre/obdclass/kernelcomm.c
@@ -59,7 +59,7 @@ int libcfs_kkuc_msg_put(struct file *filp, void *payload)
 	mm_segment_t fs;
 	int rc = -ENXIO;
 
-	if (!filp || IS_ERR(filp))
+	if (IS_ERR_OR_NULL(filp))
 		return -EBADF;
 
 	if (kuch->kuc_magic != KUC_MAGIC) {
-- 
1.9.1


