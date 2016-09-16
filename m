X-GM-THRID: 6331013322941399040
X-Received: by 10.36.135.140 with SMTP id f134mr525843ite.33.1474053906064;
        Fri, 16 Sep 2016 12:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.70 with SMTP id t67ls2066787iof.48.gmail; Fri, 16 Sep
 2016 12:25:05 -0700 (PDT)
X-Received: by 10.107.144.197 with SMTP id s188mr497156iod.90.1474053904695;
        Fri, 16 Sep 2016 12:25:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si3329291pab.1.2016.09.16.12.25.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 12:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so806569pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 12:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NU/YS9WuhlQIKBUy9d/NeHF8/GkTNh+I6DxuKcSHomU=;
        b=uNAjags0Dxj60kHZhHdaeHOZ9z4vQVdg6SclnWAeTcT/5XW2Wx4EqVulvhoMz8ccPs
         5vyn9sXdeJySxHoIncQPTIzJUoRwHD9Xw1mPacPNQWp3B731qqns7xTups2I4xJkUDyW
         RxjxRuSE0xup5vIVQ038p0P906OTpdMls7orTgRm7Qs/uyBB1cPVxCWJckKEXuqlHXR/
         Drctv5wlmGdVZ739U8An2xUe5T3B5dOyLWfXXSnc97875A5di2hHRqPmtwpI4gsRZpX8
         wsaRiyiw3njhaK2hNsssyxI/5ZSEQhUX/BGMJx0JgJWhvyQ9Pg6Rx5ZhsAJYJGRmfFqM
         nSmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NU/YS9WuhlQIKBUy9d/NeHF8/GkTNh+I6DxuKcSHomU=;
        b=YEd17z8tqtbnshP/7b+wkmdDkw2YNAtOd01eDIkuV+nxMe9SFGmYOSBgKDZBnM1hBG
         usih2xhivjkiGNDCoenFUZHMKx7v3+AwI5ipFGKDW0LSyD7JRhQcNmKLRd+WKrdTowxQ
         HVW487ebQMT3shZg5KTr7QxWbA6vI8oJENPTK9BPJabVehEHsP7eQ6gjduJzLPBuaIOn
         JKdvaF57vSuRAXtTQ89Roow/VhZg4v4FFcunx+7BjiUwRMFEparjr6iq4rFizVBgx5FH
         IY9jv0LST+IcQWHJIe1vXEXz40vAB5P/lIwq6eZM8qNF9xRnykF4GfQavVtEajRmYgYG
         TH5w==
X-Gm-Message-State: AE9vXwOhWocpm6aZyHW8LSuUPH1x4uSuvpDeE/RX1C2/i9hgwrxWa/hncOND9+aiAY9+jQ==
X-Received: by 10.66.245.177 with SMTP id xp17mr25743189pac.118.1474053904456;
        Fri, 16 Sep 2016 12:25:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s89sm53956437pfi.83.2016.09.16.12.25.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 12:25:04 -0700 (PDT)
Date: Sat, 17 Sep 2016 00:54:59 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Leslie Klein <lesliebklein@gmail.com>
Subject: [PATCH] staging: comedi: Optimize code using logical short-circuiting
Message-ID: <20160916192454.GA6366@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Optimize code using logical short-circuiting. Two if statements
having same return value is equivalent to a single if statement with
condition being the union of the prior two.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 1999eed..0d69ed7 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -791,9 +791,7 @@ static int is_device_busy(struct comedi_device *dev)
 
 	for (i = 0; i < dev->n_subdevices; i++) {
 		s = &dev->subdevices[i];
-		if (s->busy)
-			return 1;
-		if (s->async && comedi_buf_is_mmapped(s))
+		if (s->busy || (s->async && comedi_buf_is_mmapped(s)))
 			return 1;
 	}
 
-- 
2.7.4


