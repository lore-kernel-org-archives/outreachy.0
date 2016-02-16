X-GM-THRID: 6251874501508726784
X-Received: by 10.182.199.70 with SMTP id ji6mr20856892obc.32.1455627964554;
        Tue, 16 Feb 2016 05:06:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.234 with SMTP id z10ls1040599igl.1.gmail; Tue, 16 Feb
 2016 05:06:04 -0800 (PST)
X-Received: by 10.66.139.138 with SMTP id qy10mr21149546pab.46.1455627964174;
        Tue, 16 Feb 2016 05:06:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id yd9si673158pab.1.2016.02.16.05.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:06:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yy13so103173019pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=abMhx06D8blaS3f4OxdPFgJmNo4qpA35PI8yg0cC03g=;
        b=dO5zDZ+YKPMlxrNvydCg5L6R8mb5Cc7h5JjcuZ6/8A9EMW5cydfdmXdd2JiBuv+7On
         mHIdqdNRfzwS7yyelSTFKAPNp10/rPtDjF5yNR4h0CWvmz1smw7hH57o/4TApdT5j6af
         QSGbdOdMKy48yKPpNs4RSiMKFKrpcalLVpv6C5Lgh6J2CrMv9nqy/RHns9zdSZp4cr1T
         +MXqL2U7SGchXZcd3MwtZvb+3UFxuKTTAo9s8savckUPQccZUz5AmbZmsicKTCTKQUL5
         Ah/lKuWpAArX4dWnzkkjjo9yEyxV94IUiFHqZ09T9zjdwoPjasuALuPFyIXfmTqJO+Sm
         0HKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=abMhx06D8blaS3f4OxdPFgJmNo4qpA35PI8yg0cC03g=;
        b=FgpSI/Wn1j9ZXd1kIf59FZ2fhWUlIriCy/NrGSDpO5V3NfcvxffXRDk9ta+57T1+nC
         mHGu7j/2o98wZT01BAxhjKeKX/CKp7P9eOoFcQ2alig1wkvvccPCl1nBmH/x888XF779
         1u3qXjtIOladpwWSzrfqK6jfT0+f2czJheWnJBu32m5ot3SuS8ik8s7UY3OE3Zir0nk0
         NQeH85L8jS/IkypjvVJuh4TZFWfjI1Ktkarbr9s4pEHEzciZo5mAOJmmA+52PNYZ8aTj
         tunhE0Q1LKoGl/OX+DKM41BfvXmjNv1FF0xo/HlBLYCVunHTTDKF4rSqi17Njq17R1z8
         hgXQ==
X-Gm-Message-State: AG10YORm9YBdeCKNmZD7sL2OhOTCx6r7jtuTXfKBs18QOdKqfT2kpwmwP6xpzZ0PlvK/Uw==
X-Received: by 10.66.248.168 with SMTP id yn8mr30852054pac.24.1455627964037;
        Tue, 16 Feb 2016 05:06:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id 69sm45852793pfj.20.2016.02.16.05.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:06:03 -0800 (PST)
Date: Tue, 16 Feb 2016 18:36:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove unused function
Message-ID: <20160216130600.GA5386@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wilc_wlan_global_reset function since it is not used anywhere
in this driver.

This also silences the following sparse warning:
drivers/staging/wilc1000/wilc_wlan.c:1120:6: warning: symbol
'wilc_wlan_global_reset' was not declared. Should it be static?

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index ef65e8e..c44b878 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1117,12 +1117,6 @@ int wilc_wlan_start(struct wilc *wilc)
 	return (ret < 0) ? ret : 0;
 }
 
-void wilc_wlan_global_reset(struct wilc *wilc)
-{
-	acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
-	wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, 0x0);
-	release_bus(wilc, RELEASE_ONLY);
-}
 int wilc_wlan_stop(struct wilc *wilc)
 {
 	u32 reg = 0;
-- 
1.9.1


