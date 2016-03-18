X-GM-THRID: 6263333928440954880
X-Received: by 10.107.148.84 with SMTP id w81mr10642659iod.20.1458296069768;
        Fri, 18 Mar 2016 03:14:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.51 with SMTP id f19ls248920igq.41.gmail; Fri, 18 Mar
 2016 03:14:29 -0700 (PDT)
X-Received: by 10.50.23.68 with SMTP id k4mr11490800igf.10.1458296069289;
        Fri, 18 Mar 2016 03:14:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id tu5si1644687pab.2.2016.03.18.03.14.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 03:14:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id 4so30612410pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 03:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=54XSjG3OO29aZh3DCGjSoLUYLOZytF03/Vp9InRu0zw=;
        b=y4SbigsdLgf9g5lnoHVRx7wEsZyNfeB58P2zQQSrrgoTQIrsVtBGq9E7DlrgyB+eJu
         9MNz5Zo0Rz7YjO4StMIxGwcgmmR4PsOjNpcY9o1+d+RtohNNYekvsJn/Zhm5s7HWAB7a
         DOfOjJyuzWgWFgkDRnUx5J2o5S+zMPf5DtEFXHbaX0cG/oRLWm0ZDYRuw470b++9MKaF
         6Gzoi/aL17KoJk0At8eMDtiEhVjTh3e6itHBnax6u5K+gjgR3d3a7fKHy81NpFwEpOZ+
         s0V6t8Lz1e2N/OnggwnSEP911mJm4Cpfm5X1FEhftnzA47jb/ZpJnPL5JA1GE1t09L6h
         n0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=54XSjG3OO29aZh3DCGjSoLUYLOZytF03/Vp9InRu0zw=;
        b=bCXZLNIFtrQ3PoCT7A0Y92sovW3/h4zA0Aqg10ffaTnpVTX+gmG+rsqDSMqhbDBUoe
         ionbgoywR94kSKuH/orWpl1S1gTPcmmGGv47zW9Cqu6MGCYLhY6SedehbGyxfveckdwL
         M1XSLJOUmNEJRi5yDnEbxjQBj9oFD/NkGTvVUB+qWMFuKVhtMI6voEccQN+UmTZCq/CH
         +ue5bUb3fpf4QsOSHZEXKOT45m394L2PvHvOcpYr1n/XsCgmqk+Bu84uo6eF4zH/L8xv
         +LAG5e86QzYyF+E6ud0hXfTnDGzSAz9f8AVPUoChJW+RPwgvuFfzgei29FtXRJhRAeGq
         oODQ==
X-Gm-Message-State: AD7BkJIgBH9UBl2DCmRL6tOOXswP24GbipE2ADHyADLQuvlg/fONCYU+9WK1iZPO8eSmkA==
X-Received: by 10.98.7.153 with SMTP id 25mr22506086pfh.38.1458296069107;
        Fri, 18 Mar 2016 03:14:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id p85sm13891940pfj.16.2016.03.18.03.14.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 03:14:28 -0700 (PDT)
Date: Fri, 18 Mar 2016 08:45:08 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i4l: pcbit: drv: Remove unnecessary semicolon.
Message-ID: <20160318031507.GA3740@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary semicolon.This issue is detected by coccinelle script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/pcbit/drv.c b/drivers/staging/i4l/pcbit/drv.c
index c1b6f88..69478d9 100644
--- a/drivers/staging/i4l/pcbit/drv.c
+++ b/drivers/staging/i4l/pcbit/drv.c
@@ -284,7 +284,7 @@ static int pcbit_command(isdn_ctrl *ctl)
 	default:
 		printk(KERN_DEBUG "pcbit_command: unknown command\n");
 		break;
-	};
+	}
 
 	return 0;
 }
@@ -968,7 +968,7 @@ static int pcbit_ioctl(isdn_ctrl *ctl)
 	default:
 		printk("error: unknown ioctl\n");
 		break;
-	};
+	}
 	return 0;
 }
 
-- 
1.8.3.4


