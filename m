X-GM-THRID: 6340987629622788096
X-Received: by 10.107.11.153 with SMTP id 25mr2081501iol.16.1476377165381;
        Thu, 13 Oct 2016 09:46:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.72 with SMTP id u69ls2584700itc.6.gmail; Thu, 13 Oct
 2016 09:46:02 -0700 (PDT)
X-Received: by 10.98.223.66 with SMTP id u63mr1931409pfg.3.1476377162855;
        Thu, 13 Oct 2016 09:46:02 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id t8si2137318vkb.2.2016.10.13.09.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 09:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id x23so7800218lfi.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 09:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ghq0ngGC+taH/9WRHKLQejR/bruQEbxrBey3s7QY5gQ=;
        b=1HQuQMfWPFPsFNaHZo1llNTVbdZJHXuLHthlN80etObOe38t2SrQa6RFTfwtNduKM0
         r1jlFLqVjNLZChgv1JhguGZtoYT7+aU0AANEVyMYAn2EnBObkxdwl9r6gfMaetfO5FnI
         LfEGCLfUH6WriRdifImBzL6tq8lHxGEDFmoQCeNee16Wba0gT27JvUshglpy1vsr9wbp
         Jm1V3nJXuOzTUsIi4NXoCdMhtgnUEDSOIbHQn+HSccUYQ3otYz0CvvM8JZwRcBy3U72o
         wHAAHsFngOEohopWHDMabYElMrwvVHenkvzx594UHZ+hGPWxHSz+8H2MENftQR6bW9I0
         JXKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ghq0ngGC+taH/9WRHKLQejR/bruQEbxrBey3s7QY5gQ=;
        b=QYBQOHJYJPb0+92e8QmyPoKAflUFkcP53crr62PbvVDJ1rQqW0yOQu9uqnBHT4T8J7
         OpfRL1ioP2KBNsrBxlivkz4Ib/6RWVPUv7yB7wfHx1QI9EfrypPyW1SwgifHUFXrSHpg
         Mvb5LCzgq3Im01l8TF/FsvqhpB/U6IRPHsJh9WtTMcYpiWYr5Tr7iY55GhbrXFN2UAGx
         pcGg4VlBcOhffbr+NdEJ4X6iuVD31GgOU25FGpWJpp4GdxcNVdDxt6q94IyTJ3xiMYfx
         64V/ZhFdI7jttdACw8A+/bsVmVp1C3VgjO1LRtVN6QmQCelpPBS+kdUIX10rCEl6G4GX
         G8uA==
X-Gm-Message-State: AA6/9RlCYxvzmM2h3o7PAzitj97S1RpPRfzgQYThIppXWdBFeH0USlpfUo57djcbnr9IYA==
X-Received: by 10.28.95.213 with SMTP id t204mr2746659wmb.18.1476377162385;
        Thu, 13 Oct 2016 09:46:02 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id i10sm9846925wjw.1.2016.10.13.09.46.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 09:46:01 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:45:59 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: netlogic: Compress return logic into one line
Message-ID: <20161013164559.GA7204@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
expression e, ret;
@@

-ret =
+return
        e;
-return ret;

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- delete unnecessary braces
---
 drivers/staging/netlogic/xlr_net.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 552a7dc..7fa1a61 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -1005,10 +1005,8 @@ static int xlr_net_probe(struct platform_device *pdev)
 	 */
 	adapter = (struct xlr_adapter *)
 		devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
-	if (!adapter) {
-		err = -ENOMEM;
-		return err;
-	}
+	if (!adapter)
+		return -ENOMEM;
 
 	/*
 	 * XLR and XLS have 1 and 2 NAE controller respectively
-- 
2.7.4


