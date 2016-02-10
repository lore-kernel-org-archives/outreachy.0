X-GM-THRID: 6249584492196921344
X-Received: by 10.50.176.231 with SMTP id cl7mr8721174igc.0.1455099193013;
        Wed, 10 Feb 2016 02:13:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.185.5 with SMTP id j5ls172412iof.16.gmail; Wed, 10 Feb
 2016 02:13:12 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr39443172ioi.3.1455099192667;
        Wed, 10 Feb 2016 02:13:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si328221pab.0.2016.02.10.02.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id gc2so296213pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LMO5IEngoyCxC5I1bBsp1WTCa1DtjnJiHM3DDcdHKdc=;
        b=yHDhwDGCEX7Zdzb13jOEKVdEQCaxrbEy5v4YXgqwdcM+MYkAWyb8tE1D5lZps6GOsu
         C4lnrEQxqj4lj5FGzu1jahjzzxzDCwXgAGPIkUXdPSmkILE4jMKYnJwrPr48DySAZ3EV
         3+iqBpEnujJnaRZjO0r2VWKcdS4431JRDrxe3G30enhQ5a6mkYWJnRNcqcOTBakZoRl4
         AfdusW/k4tqHjAqVfkdn9GJT1OXugfKhXvSW8OEZtZnfQktZ6oJ1F3vKazRzLaJR/AUz
         96U/CE597S0cVLKwmVTkEjR7Be99QfrI0bfyNrFC7dYR8+UcturraASjl1kCXk+J7zJL
         N1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LMO5IEngoyCxC5I1bBsp1WTCa1DtjnJiHM3DDcdHKdc=;
        b=mbIOCmOWB2321slXjsVWoNlBkuEn1escBIlnnniYFi6xqxBPL488tRaJ94284CHyl8
         bFa6Ptp1ieyxRf3hjm87U5IKc6v9w+7PifVmwXygYHH9IceRYZ9ICUah99su77a/Bofe
         FZW98Bpdju1nHYVpHW1TmP3mk4/+o3RX7iP3b8fMe98OdS/6F2+VOzmQvrvEe7J45UZn
         bcjvwsiEVHiByvjkbXxDx6+5wBDRxVdVtTGu736KyRG5xiNmshelfqfdqEiTEdh2eeQU
         0orkFoNvaxWRR4gJpDmoie/boLzrUwmtjXNVANKi20vpPEjbEp7XBGk9UAQ2wAMfVDlx
         ktAA==
X-Gm-Message-State: AG10YOQ7d5X5kZkq82deRJzPnolY2mw9hcBokAwR0kT6PMWWvIkMXaSHa0Cv78D0pz0q/w==
X-Received: by 10.66.227.133 with SMTP id sa5mr57168853pac.36.1455099192521;
        Wed, 10 Feb 2016 02:13:12 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id o73sm3958978pfa.37.2016.02.10.02.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:13:12 -0800 (PST)
Date: Wed, 10 Feb 2016 15:43:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: comedi: drivers: dt282x: Merge if conditions
Message-ID: <20160210101309.GA29093@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -While merging use !x || !y instead of !(x && y)

 drivers/staging/comedi/drivers/dt282x.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 5a536a0..dc188c1 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -887,10 +887,7 @@ static int dt282x_ao_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_src)
 		return -EINVAL;
 
-	if (!dt282x_ao_setup_dma(dev, s, 0))
-		return -EPIPE;
-
-	if (!dt282x_ao_setup_dma(dev, s, 1))
+	if (!dt282x_ao_setup_dma(dev, s, 0) || !dt282x_ao_setup_dma(dev, s, 1))
 		return -EPIPE;
 
 	outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
-- 
1.9.1


