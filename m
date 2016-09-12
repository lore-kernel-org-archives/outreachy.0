X-GM-THRID: 6329533652034125824
X-Received: by 10.129.132.208 with SMTP id u199mr17040826ywf.38.1473709394370;
        Mon, 12 Sep 2016 12:43:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls422691ota.17.gmail; Mon, 12 Sep
 2016 12:43:14 -0700 (PDT)
X-Received: by 10.157.2.72 with SMTP id 66mr1814356otb.7.1473709394016;
        Mon, 12 Sep 2016 12:43:14 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si2645093pfe.0.2016.09.12.12.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x24so8499475pfa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 12:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AQ9X2dEAVArHH2EbB0bsZHVimyxXxcf5//xBFhqhleU=;
        b=rYYuILZscdOgCCjrQj6wFVeIEWnEfchlbB6CoYSzxQX/HNIdKs+C8ihB60c+yZC2gN
         9183GJ39BmChOU959yscuxR7gHiVTmphQeHjjQuBOL0rxUHIF2cgOhyarz+I2MuI25o3
         OCyOIBRGD5VzuSB395kDzBzN0zKMKMSpb5D0HK9JuAS9jNR8ZFo2h7EY+bPTArq5dmBk
         VDnwxMVh0zMpv+KePKV/a6he0DOpeSrKtwlAd3kH+mTFghFY83RBO/DNTA4SZYENuMdt
         x+tgJTiKmJwwJzM+DOYxLkYVYCHk/EQW4R2GkhLRZSW3YTkOYgpQ+kvHsLBULKoNAdIf
         Eg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AQ9X2dEAVArHH2EbB0bsZHVimyxXxcf5//xBFhqhleU=;
        b=P4RYWBfhrZTuCGFXkts338SZwlNsrec1WRuQgw+S/lC9k9XqnhLxIBZD7RlxMlpXWO
         nMfRDnEMtrb8tC8wRfcURUhwxKSxhwXd+d/eDKtS3C2tm24ll4k3cOd/m/epqTA79yUz
         S9ABLpkTK7XYHU6EzhbwoaOZZjfkh8IGeCOp/HVU6+4BgCe1XA8eus8PmeJBPXvGcTLH
         t0hvJ5wn6l6m22Kk9B+AoluEJ60FHXIXnWeMYvFCKfaFG1sdVTlUw8SVL63WVUli/+qZ
         a+zbFQWtu9FjWFZoLRFtOZioHdzPWYmKphsN+XLYxX4DoodFuSpqDbMel9QhFhvIvIAz
         xxUA==
X-Gm-Message-State: AE9vXwOkPJ4hwHmgPpx9G2R92ArKls157WhJjZIL4HLvCDgjq9ZR+q1EkTGeH1mVIDtNCg==
X-Received: by 10.98.68.148 with SMTP id m20mr36365108pfi.0.1473709393639;
        Mon, 12 Sep 2016 12:43:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.35.146])
        by smtp.gmail.com with ESMTPSA id ah5sm26390862pad.30.2016.09.12.12.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 12:43:13 -0700 (PDT)
Date: Tue, 13 Sep 2016 01:13:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: bus: Space prohibited before close parenthesis ')'.
Message-ID: <20160912194345.GA2666@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Space prohibited before close parenthesis ')'.This patch is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/bus/arm-cci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bus/arm-cci.c b/drivers/bus/arm-cci.c
index 5755907f..9e1020f 100644
--- a/drivers/bus/arm-cci.c
+++ b/drivers/bus/arm-cci.c
@@ -2108,7 +2108,7 @@ asmlinkage void __naked cci_enable_port_for_self(void)
 	[offsetof_cpu_port_port] "i" (offsetof(struct cpu_port, port)),
 	[sizeof_struct_cpu_port] "i" (sizeof(struct cpu_port)),
 	[sizeof_struct_ace_port] "i" (sizeof(struct cci_ace_port)),
-	[offsetof_port_phys] "i" (offsetof(struct cci_ace_port, phys)) );
+	[offsetof_port_phys] "i" (offsetof(struct cci_ace_port, phys)));
 
 	unreachable();
 }
-- 
1.8.2.3


