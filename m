X-GM-THRID: 6254173347374956544
X-Received: by 10.66.220.67 with SMTP id pu3mr28257146pac.19.1456163205230;
        Mon, 22 Feb 2016 09:46:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.69 with SMTP id i66ls900427iof.3.gmail; Mon, 22 Feb
 2016 09:46:44 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr28120111pfj.11.1456163204647;
        Mon, 22 Feb 2016 09:46:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si3629433pfa.2.2016.02.22.09.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id q63so96083048pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=L4753Pu9YQbk/zcLHKr/Px6L9Gi6WA6M+nAj23zJ50w=;
        b=J8xKTA3uph9hrBUPRakXYSXryhuFlsUrqqJurb/HfnzmD0Dj85/4wNiMkWpZusRcig
         eo3Ct1UdeP2XUvXTJCroIezjadiUv7TsWmaCWoh+sSDvOorRtUo5o7a1WtJGF6eQpugZ
         jWNAFfcdDa6moB5gr3O7jJuPlE7yOBxQuWO4LWRwy/MpCGcttw3Ev4VWK97qhsjKEwFK
         LryyCOrD2xvkbFhkDCzDM3ToP3Na4gtSBrHcVmj6XxMvI4MhbFRYpynmWU6wfSEsugmW
         nUt4jSp//OAhZaj7dpuEvVES8tLxsRcmfg4Ox9qBjdIsvfStN0E88Y6sfgtDE0qmL4iR
         4iWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=L4753Pu9YQbk/zcLHKr/Px6L9Gi6WA6M+nAj23zJ50w=;
        b=JJwhMoNp4ONKFB9MPVmxkW4Guh0NU72Yxiu/PNwS1/s3vGkL2PoyguzVOW8gYp2yVj
         +gPjWdx1HgCIJT/nu3GOdPT3xIcCZv9tdSKNSGy6EtAuPiyRQMwXy5vDTotHfWiuj6L3
         JGOme+hA6zhBBGCNcrHgrdkXrmbofTSm90fkEqPSfPPeKzTOgGHZEJSA7MEuLVYmpXpP
         6tItnqrrdCoeibMDVfn6ajYrvajdfrQpuBP8We/ZVc539iQk8Jlv5rwawr/3kwxveaBs
         stTF+mQ4GJrYbQXAoADPdybMRZh+7Q4nEKOLFMklKr1w1wem39F5UdQ0VBGJxYrydKlg
         0O+w==
X-Gm-Message-State: AG10YOTKy7OJV54EcUFtp/gjZ28NIoPfPA0LKs6RK2zqeZ/d8DLXYKE5Kez088fmLYOkbA==
X-Received: by 10.98.0.148 with SMTP id 142mr39711466pfa.84.1456163204529;
        Mon, 22 Feb 2016 09:46:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 76sm38307491pft.44.2016.02.22.09.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:46:43 -0800 (PST)
Date: Mon, 22 Feb 2016 23:17:16 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: fbtft: Use kmalloc_array
Message-ID: <20160222174716.GA27662@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:

@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(
+ kmalloc_array(
e2
- *
+ ,
sizeof(e1), C)
|
- kmalloc(
+ kmalloc_array(
e1
- *
+ ,
sizeof(t), C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(e1)
- *
e2
+ ,
+ sizeof(e1)
, C)
|
- kmalloc(
+ kmalloc_array(
- sizeof(t)
- *
e1
+ ,
+ sizeof(t)
, C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	- Modified Coccinelle script to respect 80 character limit.
 drivers/staging/fbtft/fb_agm1264k-fl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 2a50cf9..ba9fc44 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -272,8 +272,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int ret = 0;

 	/* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp */
-	signed short *convert_buf = kmalloc(par->info->var.xres *
-		par->info->var.yres * sizeof(signed short), GFP_NOIO);
+	signed short *convert_buf = kmalloc_array(par->info->var.xres *
+		par->info->var.yres, sizeof(signed short), GFP_NOIO);

 	if (!convert_buf)
 		return -ENOMEM;
--
2.1.4


