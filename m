X-GM-THRID: 6330674938515554304
X-Received: by 10.107.31.129 with SMTP id f123mr8648429iof.30.1473975173494;
        Thu, 15 Sep 2016 14:32:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls4416609ott.0.gmail; Thu, 15 Sep
 2016 14:32:53 -0700 (PDT)
X-Received: by 10.157.42.43 with SMTP id t40mr7988688ota.23.1473975172812;
        Thu, 15 Sep 2016 14:32:52 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si1590895pab.2.2016.09.15.14.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so2708364pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 14:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OtImuLFbAkn6imoidaxNWNHI7YyT/TLs6XoZPCOw2XU=;
        b=xkjaJbkErSAISCr/7Y2ii7LKcgj5nMDD2Y/fnW/W9RwNoCq5ptLztpgblZ5JG6Pv0y
         2XZIFd39sf17/C8qLzAxdcBxQwmoINqbZ5lWVP0cNosrBl0e7cQJ1esfoUbyQtRyC+a1
         5ytcxEjTk8qe/PXd+sV56HWYtEnKLAd6tDmOD6f8G9XKWskBsecwY9sVl6zv3o0nRY56
         fAOYJxBOuHkkSslwf122VpyUzIemgtJzJLaVfZDpOzirpvHhSTh9TG81Y5Wpv+gJA4XR
         ZQ29V9qGa6ox1ToxC/cOK4JZl3LYTpreBJol7wmQDvR3aux0znOJTecf4nUI6QvyEqv8
         XMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OtImuLFbAkn6imoidaxNWNHI7YyT/TLs6XoZPCOw2XU=;
        b=RFinMdvHrcQYPsoGs74GskAWniJhhyq7KRFlkf0l2LR1FOmHdx6YFeyUp4mkuNO2z/
         AlChAQutUNfUbMqE7W2fFuLRTdrZaYQtRGGxFA1/2h4bh5JPqYmNGfC9MN7fxLM3+hW5
         VNMrHxxUsMBz2KP0rrl0T0nToxmLUCvRCEc0Jeay3hJJkJzvZdsCUhfWFOpBmuyMIgcQ
         XNPuApktmsQbRKR868yEuY0imslDISuq/7IZjg/FQ5gPtznD2N46H3BMygIp5mWTU8We
         z6VzGQPXKUYp4WUI4Qar0H0iTSXaWf3YDY5jqeT8tZlJp7L2b2uRRUrgRWF1xDyZnzfm
         pzsA==
X-Gm-Message-State: AE9vXwNn4Y85G35MFhfDwTlEkL6wXC/5RYSo4OWOpN/iHrzz+hIfto888oSXcGwMFVhv2w==
X-Received: by 10.98.83.130 with SMTP id h124mr17875747pfb.154.1473975172634;
        Thu, 15 Sep 2016 14:32:52 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id nc13sm7112458pab.43.2016.09.15.14.32.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 14:32:50 -0700 (PDT)
Date: Fri, 16 Sep 2016 03:02:42 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: sm750fb: Change 'x != NULL' to 'x'
Message-ID: <c94ef0d4e812a8c267d48d48b3edbaebb959f084.1473975000.git.aquannie@gmail.com>
References: <cover.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Changes the explicit comparison to NULL from 'x != NULL' to 'x'. Issue detected
by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 6ed004e..7d90e25 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1176,7 +1176,7 @@ static int __init lynxfb_setup(char *options)
 		else {
 			strcat(tmp, opt);
 			tmp += strlen(opt);
-			if (options != NULL)
+			if (options)
 				*tmp++ = ':';
 			else
 				*tmp++ = 0;
-- 
2.7.4


