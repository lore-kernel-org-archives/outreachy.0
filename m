X-GM-THRID: 6256792083376373760
X-Received: by 10.13.219.80 with SMTP id d77mr14285421ywe.39.1456773100008;
        Mon, 29 Feb 2016 11:11:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls2578426qgo.79.gmail; Mon, 29 Feb
 2016 11:11:39 -0800 (PST)
X-Received: by 10.140.239.3 with SMTP id k3mr14078086qhc.25.1456773099395;
        Mon, 29 Feb 2016 11:11:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si1800903pfa.2.2016.02.29.11.11.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:11:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so9048333paa.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/lZEOjzuA5x+Rc4rpyfuBhN+2o13AW5XPA2f36sJRxs=;
        b=lUNMEfHuZhGHG4GOMVu6qtgAtGu5CGYZTUtgunpGwhL8VUQ1y2g5adHfd+GxZy0e98
         qUdccxF4auPXviYzJ8DOuDoame0dTF/qK2E1SmlhD1QRMES1XADzXEZt9/uC7DYtjYOB
         oule0MS+yz4l8EmgOq80cyvSfmucuPVuiAoJJsSBVu+3xOkyydKQLHxwfBbDhsgJrdV3
         sAVQbkgCPL/aZ95rfPdgH76bOfKPFv6z5fDC5QuvC0sg8QKae75E6G7+05tftqr6C5q0
         xDrZsccnwisaIk0E8qt0DeDrmT0hVluHJNxmFP/PBtcH0upJ2YlfzATvtsRZQ2/JOgpH
         6QNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/lZEOjzuA5x+Rc4rpyfuBhN+2o13AW5XPA2f36sJRxs=;
        b=bWANRvl6j22+y6z8CRFQx3+gakaWuFmJURO8j7TamCJyf0uWQBu+hhzjkvXUPd96bj
         J8JOImGIgHeSALjwg/d0uR6o00lhIJW5i5VfLtOPyRcEFJ3tlTBkX2AW7z62ysMCeyb3
         BUxm+ArCgb8dD5LrarCu/jDMXVpX2dJEP2KNvo5zbzHPpNhkFFfpUARFssE5fJrjC6wM
         4dQb82jyv+l4eAohSJzZnDxt+z3JofqErcKyQNIiL6JH0iJ/AR5YELf14hh47jC4RtlT
         VslMrPaKrulMsu4lCTHp3u+Ljyn8KHbmfLv3R9JVLQwK7ifNu76cbUZK9Wo6HVx6COu9
         7q8g==
X-Gm-Message-State: AD7BkJIRQ5akBIQmv4ogJGJPML4eh2G1upJ/lrSPiePxsj+rIt+woI8+J+SZZzowbsqfQQ==
X-Received: by 10.67.21.205 with SMTP id hm13mr24616222pad.56.1456773099238;
        Mon, 29 Feb 2016 11:11:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id yh5sm39945605pab.13.2016.02.29.11.11.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:11:38 -0800 (PST)
Date: Mon, 29 Feb 2016 16:41:36 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] Staging: media: Remove Unnecessary goto.
Message-ID: <1ba56a683ed2fc412718a7ccdfb0887c9fb9e27d.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Semantic patch:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
) 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8fdf0ac..05afbb4 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1835,8 +1835,6 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 		goto exit;
 
 	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-	if (err < 0)
-		goto exit;
 
 exit:
 	return err;
-- 
1.8.3.4


