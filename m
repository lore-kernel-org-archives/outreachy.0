X-GM-THRID: 6255098629488377856
X-Received: by 10.129.79.21 with SMTP id d21mr40711838ywb.46.1456378684863;
        Wed, 24 Feb 2016 21:38:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.134 with SMTP id j6ls195969qgj.88.gmail; Wed, 24 Feb
 2016 21:38:04 -0800 (PST)
X-Received: by 10.129.83.85 with SMTP id h82mr40548328ywb.18.1456378684299;
        Wed, 24 Feb 2016 21:38:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id yd9si940410pab.1.2016.02.24.21.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fy10so25924764pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=b9FWOOHQWA01FphkyheXuoxrc5ElLbtVQNt87o9RwrA=;
        b=qeguNlb/QPJkH4ZmMPISifIvrWd1SVkURy0/4ZwvzkJ6+KzujtZc0bHJw69LZUaNQu
         fgQ6kLhpr/uudAGFkveLOCF4mWy9s5hsLwpienTkTc8svkRMRkTlvoSBvil8qdP18t17
         rnOTEVML+9Wmg3JCvamwenMH0waBjWkIJqw3ZLp6mRSm8yn065wfF05ALYZKEazq4SDj
         1OSs/troLF2Mz9UxQGQqJcM3Scc56YRerVzWb0sv550LtnzxjiIilanvKNtSbM393+dT
         yAUKO2Ib1jG1oZVjmWHyHEuBL3us/mFtOvno3zCp5gkorO7X3t75fuUZSHBmELt/dcZO
         UvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=b9FWOOHQWA01FphkyheXuoxrc5ElLbtVQNt87o9RwrA=;
        b=LdokzNKiXX66BlvPOvp62IT9t08HFlCiCsStRq4qLg9Iknc9JOmE2sCeu7imXHFBrN
         fFNm7yNw9JLaS5zylMyINrsc3yAK0t1pm8JF6Xo61Fv7wYis3PNjz5FChtX1hWoPL3ZY
         qaHuYDPm3Dfs3IYUtgkYiMSKw/NaFoEioS88PCa2TVPnqejDpJp0Kbc70vAS5BwKDVTP
         nXsQVEnQUVKA58h5WqfyP0mh4wIUs+2PqgePoJQ+R7h8/zSrxgEy9l7H5qj2sVnl8Rh5
         1xStT8U6A1jzlETxIwouRpQ4EbTFaX9bSAKuXrE942cQOPkToi0qBVLGowARXfqa7F7Z
         EZiQ==
X-Gm-Message-State: AG10YOTMjdpGyp6kMO5W3RUB9rIAwluocVUxxJF0JxCvvkTzmNvVtKJNHOZk0JM5bsCotA==
X-Received: by 10.66.248.168 with SMTP id yn8mr60419255pac.24.1456378684087;
        Wed, 24 Feb 2016 21:38:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id s197sm8801614pfs.62.2016.02.24.21.38.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:38:03 -0800 (PST)
Date: Thu, 25 Feb 2016 11:07:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: unisys: visorbus: Remove unnecessary
 dev_set_drvdata()
Message-ID: <9e2250fd4578831883f2efdff4bbf6b08a065ea8.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary dev_set_drvdata() has been removed since the driver
core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
struct device *dev;
@@
- dev_set_drvdata(dev, NULL);
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/unisys/visorbus/visorbus_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index a301385..ec8ff85 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -221,7 +221,6 @@ visorbus_release_busdevice(struct device *xdev)
 {
 	struct visor_device *dev = dev_get_drvdata(xdev);
 
-	dev_set_drvdata(xdev, NULL);
 	kfree(dev);
 }
 
-- 
1.9.1


