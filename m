X-GM-THRID: 5490263195648
X-Received: by 10.236.3.106 with SMTP id 70mr22776368yhg.20.1425232910235;
        Sun, 01 Mar 2015 10:01:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.171.134 with SMTP id au6ls703298igc.34.canary; Sun, 01 Mar
 2015 10:01:50 -0800 (PST)
X-Received: by 10.66.102.66 with SMTP id fm2mr23618836pab.4.1425232910044;
        Sun, 01 Mar 2015 10:01:50 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ri9si1235602pdb.1.2015.03.01.10.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:01:50 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so7788902pab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8p42CbBtrgMIhqvxkxVl8185A/fZS4S6vl6QdEHssho=;
        b=y29W3fC+afLDJ2pwZKuYNJnZTMrQ+72BoRNgYc9dyZQU9UU9FbO58uJ8v3OruxpXsc
         Eq9eGghO5er4KEDXN/a0kWWUntuBkCI8xdBnzYzQZr7HQ8wzv9I8iadUGzwo3t7vuMkC
         h7cfgmYuAl8lARVmyZ3n5bUrKSDkCg1P/b0NdBRv9jQx7f8wXvh7aWTjYPu5rvP+nbwl
         520eKewH0LpC4EfCIPl6vPJOIU7u7pWaghJrCHf7Z1xQcTJVP0sscm0TENNvYp4AGaDY
         bVnpFPeF4bQ7WjCbGc1Qgd5IZYjKmBW7MESFFX/9nfZ9t+UZb/oyvEWFOZEiU/TxWufW
         TY6g==
X-Received: by 10.66.164.200 with SMTP id ys8mr40857880pab.130.1425232909963;
        Sun, 01 Mar 2015 10:01:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id t13sm9652159pdj.58.2015.03.01.10.01.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 10:01:49 -0800 (PST)
Date: Sun, 1 Mar 2015 23:33:04 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: media: Remove memset.
Message-ID: <dc524a374c3ed2302ee184b830077f72e88748f1.1425232491.git.navyasri.tech@gmail.com>
References: <cover.1425232491.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425232491.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The memory area set by the call to memset is immediately
overwritten by the subsequent call to memcpy. Hence, remove that
redundant memset.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 75e70e1..7cc8d1b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -907,7 +907,6 @@ resizer_set_defualt_configuration(struct vpfe_resizer_device *resizer)
 			.out_chr_pos = VPFE_IPIPE_YUV422_CHR_POS_COSITE,
 		},
 	};
-	memset(&resizer->config, 0, sizeof(struct resizer_params));
 	memcpy(&resizer->config, &rsz_default_config,
 	       sizeof(struct resizer_params));
 }
-- 
1.9.1


