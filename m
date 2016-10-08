X-GM-THRID: 6339053517033963520
X-Received: by 10.13.214.3 with SMTP id y3mr5111261ywd.174.1475925910372;
        Sat, 08 Oct 2016 04:25:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls6379784otr.33.gmail; Sat, 08 Oct
 2016 04:25:10 -0700 (PDT)
X-Received: by 10.129.96.8 with SMTP id u8mr5897824ywb.90.1475925909977;
        Sat, 08 Oct 2016 04:25:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id d11si2792000pfl.2.2016.10.08.04.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 04:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hh10so4059593pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 04:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KsgQeVfmwtHJyZ3bninBf4azPQxA+za+vtOT9EJrGT8=;
        b=Xahmw7t1RWOsS2/YZQAYMFpaTru1qj8UXwInRuqN+HL+PxluL+WrP6OQu0oXGfPeac
         achfT/uSKsuc7F+eZ4hnnc1ZezbMG/QvC7qTMPhpx/oRiGtbpGihJ/Co2zqyZO5YdSnx
         GpKN7zLOq9UlkLT0Pi7/OTQQWkJoYItpWscE31/T1+UdTtRFEeSWa+h8EyGH6AR5aQ9j
         sDtsSeKaXw2455GiUdGt7IqJ94P03o1kRZC1OJI3R9X9mhXZyyOHEZglN59YHlusfK9a
         8iRbefSkaIkfrvnOP4ri4j/OeJBC9p3u/cuLcTBxfP9d3gvxa4rOIwWSvfrQcUUxR2Bk
         r3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KsgQeVfmwtHJyZ3bninBf4azPQxA+za+vtOT9EJrGT8=;
        b=DMq8K6t/CFIDfB9W67q94mrWvGAGby6m9/jo8t+OVG4LSDrS7YH5Ta2DXgRMm3BnHI
         u4kSJ3iY7LKj0k2hWjS4FqzI02akHsWaBFBarTmK0gxySqnQUyeqwYFHViaZGUInbJaa
         2ENQIqFdHg5MTuDTeJC1NSOrX8PKktMFQRpCG55xla4FoOJkWYyxoTCsD6FRWyo7+KWF
         4fXpCWK1X5foMcLeyUAui/keNRSoyqPJ7r0LgzCl+qNgfBRuEs4riiKy4al2I7XSrsnu
         vIP1k1Z/9ylV4wuMz3WOeZQAN26aMzZA3gCAc8o9WwX0J7q+7icpMJ6nN628IkKg+Oxf
         xGdw==
X-Gm-Message-State: AA6/9RlRTFT3fQ7TDKmynhKoY5C+asWDN6XvDR79I8MZSTOE+SO6Nnxa1eiAVojQoc92/w==
X-Received: by 10.66.43.176 with SMTP id x16mr37078935pal.150.1475925909791;
        Sat, 08 Oct 2016 04:25:09 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id l2sm37879435pav.7.2016.10.08.04.25.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 04:25:09 -0700 (PDT)
Date: Sat, 8 Oct 2016 16:55:06 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: rvarsha016@gmail.com
Subject: [PATCH] staging: vt6655: Replace BBvClearFOE by bbvclearfoe
Message-ID: <20161008112506.GA12694@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue by replacing BBvClearFOE with bbvclearfoe.
Avoid CamelCase: <BBvClearFOE>

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index 6d9a936..a732fba 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -58,7 +58,7 @@
 #define TOP_RATE_2M         0x00200000
 #define TOP_RATE_1M         0x00100000
 
-#define BBvClearFOE(dwIoBase)				\
+#define bbvclearfoe(dwIoBase)				\
 	BBbWriteEmbedded(dwIoBase, 0xB1, 0)
 
 #define BBvSetFOE(dwIoBase)				\
-- 
2.7.4


