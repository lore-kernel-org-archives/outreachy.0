X-GM-THRID: 6337544242768904192
X-Received: by 10.157.56.209 with SMTP id k17mr495616ote.99.1475574505284;
        Tue, 04 Oct 2016 02:48:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.50.244 with SMTP id u107ls12088090otb.37.gmail; Tue, 04
 Oct 2016 02:48:25 -0700 (PDT)
X-Received: by 10.13.245.68 with SMTP id e65mr626452ywf.118.1475574504984;
        Tue, 04 Oct 2016 02:48:24 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id v21si2530056ywa.7.2016.10.04.02.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 02:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id g192so7475268ywh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 02:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+Hfng+yEkjuToL6J74emVg09jwE1y2o3J5mgNPFihx4=;
        b=NL1pXU0+M07+/OOBvgamKGX2hYB9t/IxIwryx49QQ7X0Eor1DfFT6jhsavasj6h1Ui
         bmDlTihh0gPRkYkRW9xk0BwH6tad1oolmYMOP/oovgnE4Ocx3d8e3SlnpadWfsH7oHAw
         OGqS39mA6t2LKbUniGWGtJZqWjvq1ycq0xi2QKkjuLGU6wABaLjNYCLiCLqEl5aXHx20
         FuVeG1wBJpah6lCgQosL1EfU/wObBaItjPOG8mSd4aSuGNViCYNa2mRxDPJCu//MFlBk
         YIydjYgljATHFJ0ClCztoyuJ3sGIwjuhPuRT8MGIPuiGkTDPZHjE7pxQtuL9pvKwrJmb
         gzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+Hfng+yEkjuToL6J74emVg09jwE1y2o3J5mgNPFihx4=;
        b=gWnKrkPNmOJSj1vKUx9Ok/XBnow3GazSAWvVTlKThNYYPVSITPFoVRdALk6uCokqOn
         dD/mYab4AcpajLsneLJpFDkgf4mFIyNERaw4B5UrJ+MlrqHSdgu5LHlrUOnYJitHxHon
         htYb/RZqtEPHpQ+hEWlU9Qne5KItmQvKUyVRPFcvWa6/biYfbAwXDFhcmiiujwQCao9t
         Kq5pdnP+50uMgPXrdd+6QxyFehFF786va825zliP8zX2X+LxFRvPeUdbXDq5lKlV+Fjg
         juWewo+zNgXjIFjhBvBb4U0BYriJiK5GRhS8qoM7fcTk6Oq0CePrxezB9G5ojXYyK27L
         M38A==
X-Gm-Message-State: AA6/9Rmy78S9mGRP53BOBOlAjWf0A6L/8ckE+h/qOjQnpyveVMRHJeglQ3u71ydRtpwE/w==
X-Received: by 10.129.101.132 with SMTP id z126mr1768667ywb.241.1475574504743;
        Tue, 04 Oct 2016 02:48:24 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id x134sm17324565ywg.14.2016.10.04.02.48.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 02:48:24 -0700 (PDT)
Date: Tue, 4 Oct 2016 06:48:22 -0300
From: Elise-Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Add blank line after variable declarations.
Message-ID: <20161004094822.GA3800@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch WARNING: Missing a blank line after declarations.

Signed-off-by: Elise-Lennion <elise.lennion@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 81c46f4..db5e632 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1117,6 +1117,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 	int ret;
 	struct ks_sdio_card *card;
 	struct ks_wlan_private *priv;
+
 	DPRINTK(1, "ks7010_sdio_remove()\n");
 
 	card = sdio_get_drvdata(func);
-- 
2.7.4


