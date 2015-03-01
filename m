X-GM-THRID: 5490263195648
X-Received: by 10.236.17.168 with SMTP id j28mr23341176yhj.0.1425232951316;
        Sun, 01 Mar 2015 10:02:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.72 with SMTP id k66ls1281561qgd.40.gmail; Sun, 01 Mar
 2015 10:02:31 -0800 (PST)
X-Received: by 10.236.4.100 with SMTP id 64mr23222144yhi.43.1425232951138;
        Sun, 01 Mar 2015 10:02:31 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ri9si1235678pdb.1.2015.03.01.10.02.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 10:02:31 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id bj1so11339897pad.11
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 10:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=E0cafVVskO6B+MXqH+twTjJhqOz9g1rb5okk++qEABY=;
        b=T7KIBLhJybSsNaG1UpFc4pcRP91m7Mi1SxLqLG8ydTTQJhgiaVXEyMX9mXdktp7oOi
         /oqslp3Gzt3/EFFDqQ6auAbxi6FtCncMT2XFyNF6grfsCtXeDCF1J0sCKDUGyCAK5JCh
         kn0JAQEBkV3a0ioFKX5h/v2Mgo5Q3br4iGjnp1jdWNiSRHdz8ejy7J10VhSn1X2oPF1M
         OLMvQ7TKSf9xg+QHqL7SHLOxLYEXMEUJPbU9FGMYPuuX+Hf+VSeqVBY2mEGBLhMIcwOm
         wOlcrqD6FalfBSRhu4Ae7hnPywlsRxJ55Mrj1jIiPXRsM094pYUsjTz3PexyE5WWvEPC
         oxIQ==
X-Received: by 10.68.95.130 with SMTP id dk2mr40809103pbb.51.1425232951039;
        Sun, 01 Mar 2015 10:02:31 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id qz3sm9763714pab.13.2015.03.01.10.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 10:02:30 -0800 (PST)
Date: Sun, 1 Mar 2015 23:33:45 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: media: Remove redundant memset.
Message-ID: <e5fadba582f2eed81fe29750f06732ba0767b7da.1425232491.git.navyasri.tech@gmail.com>
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
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 878abdd..ceeef18 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -747,7 +747,6 @@ static void ipipeif_set_default_config(struct vpfe_ipipeif_device *ipipeif)
 			.clip = 4095,
 		},
 	};
-	memset(&ipipeif->config, 0, sizeof(struct ipipeif_params));
 	memcpy(&ipipeif->config, &ipipeif_defaults,
 	       sizeof(struct ipipeif_params));
 }
-- 
1.9.1


