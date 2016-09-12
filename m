X-GM-THRID: 6329536989610639360
X-Received: by 10.157.62.230 with SMTP id b93mr10561019otc.14.1473710171255;
        Mon, 12 Sep 2016 12:56:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls2761243ota.36.gmail; Mon, 12 Sep
 2016 12:56:10 -0700 (PDT)
X-Received: by 10.200.52.230 with SMTP id x35mr17332943qtb.23.1473710170912;
        Mon, 12 Sep 2016 12:56:10 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si2655466pfe.0.2016.09.12.12.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so1959312pap.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 12:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mHI8w7vXyoIrt7J8wGHP+3noqG4UsRn3U0qUVIJGnv4=;
        b=t5eekfe8FolY/7CnuzbJl15GlBc4/7lXWQdHHYfX+t/HBKMrPenFFr1ed4jcvnkWzn
         egDI6TtosNNO4r6KvuyZpv/Iaz62Qs95MJU6qKQgws6dSqc1zveKAFJ3hd8LxXfGDWqV
         0a1B26klPY9IOw3wnkJzUB/0ow2V4jshGmF2M8VO+9mk+b0QHvJMJucrbzxOICLL5HoI
         ZQm/JWB69z1VDFHL46E33sEBf48aT9lToEHBUR7vv9lSWxUy4ZsbCY0uK8l1WE3fnJKo
         ddnVJYC3iAPYTL1+wUPbpz2JKwGofQDs/ublr7j4j+Fi4O0dZ7G5n4zeETk4D1oXYsl+
         JcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mHI8w7vXyoIrt7J8wGHP+3noqG4UsRn3U0qUVIJGnv4=;
        b=YgNZX1c4pLO3QinTqitobXGB0Iqhs0QkMiLPmJIAa6q+IhDPGiRGHYX8xNh0iodQY8
         iPeqgW8GwDUh+ak8F5M7UNbIqOtEAvMKRQGsIVMLFa7hcNkhxjVpaDwzPAsRf9+Rrd4O
         UrXGQ2zE80v/tYv/Wfv0P8grRjX2oPqKaKT2hhOcHb0JR1hNn+9p/9hiX2pKLA+zlH4J
         0rraT4ElehqonX5eVK0YBWzC1rXRnGpIZsnsHyoBAwS6g+3x6rUrDWvuOljcnK68lbCo
         9JeHaLOXAVtwD7WLA0po4xgx6ugECv1sPBkakHwZiRWanNS4kkl2j+5UrarotrU79l4K
         R2+g==
X-Gm-Message-State: AE9vXwMwMvxgaJtdzEr6QBwgareWONyKrtt/r1NpQ485CudCLVSicnUIdnnQEyPB4B0jxQ==
X-Received: by 10.66.152.238 with SMTP id vb14mr36437751pab.78.1473710170495;
        Mon, 12 Sep 2016 12:56:10 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.35.146])
        by smtp.gmail.com with ESMTPSA id w81sm26368662pfa.54.2016.09.12.12.56.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 12:56:09 -0700 (PDT)
Date: Tue, 13 Sep 2016 01:26:42 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: bus: Space required before the open parenthesis '('.
Message-ID: <20160912195642.GA2775@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Space required before the open parenthesis '('.This patch is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/bus/arm-cci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bus/arm-cci.c b/drivers/bus/arm-cci.c
index 9e1020f..99513f7 100644
--- a/drivers/bus/arm-cci.c
+++ b/drivers/bus/arm-cci.c
@@ -2271,7 +2271,7 @@ static int cci_probe(void)
 	struct resource res;
 
 	np = of_find_matching_node(NULL, arm_cci_matches);
-	if(!np || !of_device_is_available(np))
+	if (!np || !of_device_is_available(np))
 		return -ENODEV;
 
 	ret = of_address_to_resource(np, 0, &res);
-- 
1.8.2.3


