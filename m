X-GM-THRID: 6330646891713265664
X-Received: by 10.66.67.35 with SMTP id k3mr2274517pat.119.1474196090607;
        Sun, 18 Sep 2016 03:54:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.155 with SMTP id h27ls5820723otc.37.gmail; Sun, 18 Sep
 2016 03:54:50 -0700 (PDT)
X-Received: by 10.157.58.38 with SMTP id j35mr2735501otc.138.1474196090259;
        Sun, 18 Sep 2016 03:54:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si5572534pfe.0.2016.09.18.03.54.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so4371002pfy.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AkO+cMe/bUxa3wt16rJ2REq/nFl5M7ucp4ceslEAqF4=;
        b=IC8ey7dXYYA2qZLa38m00IY6Slg25ieFpiA72YzKrJa/s1OLAffZ7WBtDfyRkRPH18
         ArYPyVSBB3uUsxBL8lfN6EntbABq21P/HVaROeR2SGTvJfOjMaTmYSCAzyQlV3LqXbtj
         X4lCDMFKjIyoy2+xJnOvNvWlJmqQzxx5S8CUsa4nBsYRI93ldRdJOyPCevvPPeLHliBZ
         uSUTNjMcN41KdhxFqiJb0PtppfSEJdu445Wn+Uh6IVWPJZIh4m2/4gdRSR5ByRM0UT+q
         aM7oFkmhxa5zLlBdorETUfJcHbN2sG7NZjmnBglOPOceZI+yoT3p4ct6OfTc3JmfCdyO
         qD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AkO+cMe/bUxa3wt16rJ2REq/nFl5M7ucp4ceslEAqF4=;
        b=LsbOas2+bkyzoj03r3qrEN6514z6sRAffoDFTUNpXXfPcq2ZWCFsU3LS1Jcbj2kcLL
         ZrI7eMwNThycKvmYjVeRuy8qVQeAVqek1+eGvdg1LiLjni3PwFa+GWX2dzXhd19RoLCA
         bf8Ujd9D9w3aEFxDIrK+pWPPqPCPE/XAPw2sZoDk4wPmWTTxjY0pkxtT1+qQUBVOnd1k
         mQX7mWZ1ukqI3ah9Ibz+mxg5Ahwg0YBAVWZAdJXCxdYlIkdk80H2IRaTXQpm0cLmsC7k
         PPaNuwPAtI0szjK0fjNr4KT9VaCh57t47OHXRM6lOPyKiQVq8JtPZDstyrQNcamVq37v
         NeTQ==
X-Gm-Message-State: AE9vXwP+u+0i1BioICNvwpwGqkhp4kUYtRpXHMF/r3VLGMqYZMXnWaE6cAARgsaBzdLYIg==
X-Received: by 10.98.75.4 with SMTP id y4mr38143384pfa.25.1474196090055;
        Sun, 18 Sep 2016 03:54:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id g14sm18843709pfb.77.2016.09.18.03.54.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:54:49 -0700 (PDT)
Date: Sun, 18 Sep 2016 05:23:49 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v4] Staging: lustre: Convert array index from the loop bound
 to the loop index.
Message-ID: <20160917235349.GA24727@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert array index from the loop bound to the loop index.

The structure cl_env_percpu[NR_CPUS] has been initializing for each possible
cpu (i.e 0 to i). During initialization if any error will occurred, the error
handling code should uninitialize cl_env_percpu upto i. But currently
unitialization is repeatedly done for the same cl_env_percpu[i] element.
This does not seems to be correct.

Used below semantic patch to identify this issue:

@@
expression e1,e2,ar;
@@
for(e1 = 0; e1 < e2; e1++) { <...
  ar[
- e2
+ e1
  ]
  ...> }


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v4:
* Correcting file permission issue.
 drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 91a5806..eeccd30 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
 		 * thus we must uninitialize up to i, the rest are undefined.
 		 */
 		for (j = 0; j < i; j++) {
-			cle = &cl_env_percpu[i];
+			cle = &cl_env_percpu[j];
 			lu_context_exit(&cle->ce_ses);
 			lu_context_fini(&cle->ce_ses);
 			lu_env_fini(&cle->ce_lu);
-- 
1.7.1


