X-GM-THRID: 6256370221351698432
X-Received: by 10.13.235.144 with SMTP id u138mr9136919ywe.21.1456674724496;
        Sun, 28 Feb 2016 07:52:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.232 with SMTP id rz8ls1059574obb.62.gmail; Sun, 28 Feb
 2016 07:52:04 -0800 (PST)
X-Received: by 10.182.220.132 with SMTP id pw4mr2164464obc.4.1456674724148;
        Sun, 28 Feb 2016 07:52:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si3364719pad.2.2016.02.28.07.52.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:52:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so7245929pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WtisdP+RQvzG5Trm6k53kCOalSmqVy7v53FfddX0ku4=;
        b=nepehGSx4FHf7cAkeToTEylfxvbs9bxtjglw21f5wBDnctu5mTCQv0qlR2N4Z43Rk2
         shtlCFfNICF8vT/qaJ3OSQGzh0/yEVjkgLkfwyCJJ/z2SJomQO0MtkXFV9nHFFYP56N6
         a/vsx+yKhGStJW8nv40ETJ7ts5slE8OfBX3uO8voTkdhP7DY+f2naIUTiRZNx0x8I+Sz
         CmUs3qrVanuoti0WOIVcdSzAO4JL+9UGK9La4vbLiFCrrGkqbyjqBEP0eMO1rfhaJJMz
         mYVFReFhlEktLB2THryQoHK+ZVE/5oLn98Rp0dH5c++4idvUacCT5uZcR8r5ztlyd7Fi
         ik7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WtisdP+RQvzG5Trm6k53kCOalSmqVy7v53FfddX0ku4=;
        b=F0VWY2+4XCIKdpeY1dIEtjwzMMuH0MlgTIhIFDh5P6PDqBVPVemCkueXqhQODS8lSg
         uLgi9f6EtcaVlkEo8eh3Dz34ToIFxhGFeQvVrIo5WU5vKk0jKWA9JwI/EgNHBqtU3d6g
         mfxbAUyJ4EpTBZ+62FBx/QQ97RTPG4zeQrMBtA5DvB5hsQqX5zQU6OMQWdgXaUNRIDpF
         tBTmQHI5GzMCy3GrmfizCYVyNyclx6Y8F/gZ8Ff+uc52rU8lz9IWdq2nvcOZHS4i3GKW
         wdzpX1dL55Lru4n9dB3qMXM4t2a2fOS+gCQjSZweDYCPSqeVlhO4RBmSmCSgCEDOifWX
         rlOA==
X-Gm-Message-State: AD7BkJLfNCmrD4ZPRal8dGrmc5cVJPrN4Sq8Ay5U2RzXLfVJoD2ty9N3rRr567yQWXoAAw==
X-Received: by 10.66.252.100 with SMTP id zr4mr15692115pac.111.1456674723963;
        Sun, 28 Feb 2016 07:52:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id s197sm32046134pfs.62.2016.02.28.07.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 07:52:03 -0800 (PST)
Date: Sun, 28 Feb 2016 21:22:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: sm750fb: Use pcim_enable_device()
Message-ID: <a6e5c5f78d7772089e74230ef4acbaab8f1519dd.1456673895.git.amitoj1606@gmail.com>
References: <cover.1456673895.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456673895.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Devm_ functions allocate memory that is released when a driver
detaches.
Replace pci_enable_device with the managed pcim_enable_device 
and remove corresponding pci_disable_device from probe and 
suspend functions of a pci_dev.

Also, an unnecessary label has been removed by replacing it 
with a direct return statement.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 7967a85..fde79ee 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -422,7 +422,6 @@ static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
 			return ret;
 		}
 
-		pci_disable_device(pdev);
 		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
 		if (ret) {
 			pr_err("error:%d occurred in pci_set_power_state\n", ret);
@@ -1053,14 +1052,14 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 	int err;
 
 	/* enable device */
-	err = pci_enable_device(pdev);
+	err = pcim_enable_device(pdev);
 	if (err)
 		return err;
 
 	err = -ENOMEM;
 	sm750_dev = devm_kzalloc(&pdev->dev, sizeof(*sm750_dev), GFP_KERNEL);
 	if (!sm750_dev)
-		goto disable_pci;
+		return err;
 
 	sm750_dev->fbinfo[0] = sm750_dev->fbinfo[1] = NULL;
 	sm750_dev->devid = pdev->device;
@@ -1115,8 +1114,6 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 
 release_fb:
 	sm750fb_frambuffer_release(sm750_dev);
-disable_pci:
-	pci_disable_device(pdev);
 	return err;
 }
 
-- 
1.9.1


