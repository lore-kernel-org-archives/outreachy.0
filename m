X-GM-THRID: 6342256003248029696
X-Received: by 10.13.200.5 with SMTP id k5mr5468474ywd.60.1476671547558;
        Sun, 16 Oct 2016 19:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.39 with SMTP id e39ls3255586iod.11.gmail; Sun, 16 Oct
 2016 19:32:23 -0700 (PDT)
X-Received: by 10.98.194.74 with SMTP id l71mr6106110pfg.11.1476671542417;
        Sun, 16 Oct 2016 19:32:22 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id p131si4637041vkf.1.2016.10.16.19.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id b186so7213268vkb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 19:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G4hnWgTJO2sarcvMAgdMU1CHH62eibmaRGU0nvRC2IM=;
        b=wHXEnOuwjUGro85+DqL/s1xzGZflgQrYrTGS1avN+FXFvRthmMpWeTDup0zn6eQ+ol
         ElE6Z/I6O4FvFi1cZqDPf52V969+0YmoSQTI4HQQSTsLw0EEpkoilRARSQpS2sqUfH0/
         oAD7tzcYAzLe0v7dFoHpIqKwNK5mjz9hbWlBV/lhOV3CvbJeCKeny4+BwelZKKvLJq/o
         NLZcYyPnPeDRH7zIh+xNK8TKYFKWKPfD4jYpP1Se+hkTbHxleuNlbzQ1hSVWNgBO+C1t
         eGI/2zB7zN6qIqUfyOJ6N0tHWPej2VIxP4sHHyWBX+dpmd3DNu2KLrRzCsRpEKau0xdO
         OZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G4hnWgTJO2sarcvMAgdMU1CHH62eibmaRGU0nvRC2IM=;
        b=A7ocWwRwRjvevtiXzmumgMaJucNsfi3SRkQDxCHjqHsHAqb9KByVBHKkAwJ7RDRGch
         XqAOttIO25SfPMg8Wj4AAQj5+IzSO/zjHP8zfcmFsy+WyN1YxnqYGZj9Yi1hjkAhHmW5
         pcZHR0WHmrbGCu67zZfOalzQVfcx4TIFwDYUA+4zWUyedqi7burcwE+ub26WJOXPHQL4
         A1j7aPMdOcR4ozgNNKElWJBXChiclhmC3Kc2rdldFRt/Rd/BHZNbP2HBbxbAyAjLat54
         cSKrqilEv27fF3VMITYCLQExpWP0pI+JFVRrR0vfcW/hqYHxdqP7BNR16zWm0hCm7DXo
         Q5ew==
X-Gm-Message-State: AA6/9RlYSf4MkIVhn+XzZq8TBg2oPyVsRz1ZBccpKrMGtC6Tvd+qb9v9UTEeDoK7Lnrgrw==
X-Received: by 10.31.207.133 with SMTP id f127mr16038058vkg.114.1476671542240;
        Sun, 16 Oct 2016 19:32:22 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id t198sm11045315vkc.6.2016.10.16.19.32.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:32:21 -0700 (PDT)
Date: Mon, 17 Oct 2016 00:32:16 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Make variable read only after
 initialization.
Message-ID: <20161017023216.GA17876@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use __ro_after_init to protect variable, initialized in several steps,
from overwrite during runtime.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 0663ec0..5c02ad8 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	return ret;
 }
 
-static struct fb_ops lynxfb_ops = {
+static __ro_after_init struct fb_ops lynxfb_ops = {
 	.owner = THIS_MODULE,
 	.fb_check_var =  lynxfb_ops_check_var,
 	.fb_set_par = lynxfb_ops_set_par,
-- 
2.7.4


