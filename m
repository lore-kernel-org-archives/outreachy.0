X-GM-THRID: 6264608921971851264
X-Received: by 10.140.25.227 with SMTP id 90mr24919915qgt.17.1458593139436;
        Mon, 21 Mar 2016 13:45:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.2 with SMTP id g2ls2454559qgg.28.gmail; Mon, 21 Mar
 2016 13:45:38 -0700 (PDT)
X-Received: by 10.129.145.130 with SMTP id i124mr23871387ywg.8.1458593138821;
        Mon, 21 Mar 2016 13:45:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si3711725pfb.1.2016.03.21.13.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so32581597pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CLYqoJFVEOYUoa9I9XbCbO6Z59U6LauGPap6CKSgogw=;
        b=Vstye8tlXDfjkWSsxLeVYceA80YDqbwFBWBJGhAUVQuhxSXt28VRtM/IIoUkvvu/Tx
         uVad2mHIJz4YkmsMOZpom02dg3M9HbrZ3w/shJIPotyTik738ghC0gKTbY+MIwHWyXtD
         M5tftfjTUFm76va5R+eRxRObVP3nknJH2W2qIAqiVmi9VqSxVEt5YLLfZcv5SaQZmYSS
         4vrSMh5kuDFK3XOeRtmTnLmiTYibeBJYKasWZoYpVd5NbF8WTucRP+Mqm7A9V1V1klV1
         IqdYBgUtYeh9GPoQPV7Lk6c1ftlg8kbobenO3yDFU7v6HZ2MZMD9l7buRaR9OpzXGiCF
         wQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CLYqoJFVEOYUoa9I9XbCbO6Z59U6LauGPap6CKSgogw=;
        b=SCklNjH5vApmRQB+Df1hy7UkN0yVgnph52kmkKPMHqOANlspuacxuaytWnkYZ+xugq
         P6/stUF85QTd3eCcj/Cwf5NIaqEVQuV9YE6nNGR3qDWeZFc6d46weDTgBka1JZRsUY3Z
         HTqy2f9rXbDJrqixheZy1HMu6Xjrzrh/8T3ibmvVRh/+Q/J+BtE+dzq2EDpIb/+rMVoR
         eZvLr08nwaEy78ZsXaEEHzl18r/+TQZK6CDSmNyqhJ5YQgrToED9EDlZNlt8mN7v376q
         mC0EN1KBZ6HoYSkvGIGsg1CsrqVXuoODplYCDHG5mi1M6CIZY0wK0OmVYdH9Tk8GdNLU
         waxQ==
X-Gm-Message-State: AD7BkJI0Tu9kBn/9wu6XSn6iLSKGmkGBsErMHDk11igHItSnyvCP7yPaQ3ZjzrCSdvv22w==
X-Received: by 10.66.249.228 with SMTP id yx4mr19809671pac.29.1458593138480;
        Mon, 21 Mar 2016 13:45:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id h19sm42751058pfh.43.2016.03.21.13.45.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:45:37 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:16:48 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: lustre: socklnd: Remove return statement from
 void function.
Message-ID: <dc969a985f29e980355fc5bb907176c04bb5029b.1458567188.git.bankarsandhya512@gmail.com>
References: <cover.1458567188.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458567188.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove return statement from void function.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index cca7b2f..406c0e7 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -2582,7 +2582,6 @@ ksocknal_debug_peerhash(lnet_ni_t *ni)
 	}
 
 	read_unlock(&ksocknal_data.ksnd_global_lock);
-	return;
 }
 
 void
-- 
1.8.3.4


