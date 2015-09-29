X-GM-THRID: 6200047519591825408
X-Received: by 10.129.153.2 with SMTP id q2mr129129ywg.40.1443561054453;
        Tue, 29 Sep 2015 14:10:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.91.4 with SMTP id ca4ls23246obb.2.gmail; Tue, 29 Sep 2015
 14:10:52 -0700 (PDT)
X-Received: by 10.182.24.169 with SMTP id v9mr98207obf.35.1443561051995;
        Tue, 29 Sep 2015 14:10:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id w5si3692372pbt.1.2015.09.29.14.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so16489359pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mKYlngzpco0KPHLoDjvu6SgTTPQUT+RcHU40Jbw0wks=;
        b=cdQ7WbwNZhXKSPndV2WmIRZZpCujjnVFkaTfWUM4pFAmC41hblQUabGXc9zb4I7xOB
         I1CE95lPHKVFy9ejL+GpxRIqZoz37eKdHDktz2W4Rmac21k04imdDn07Q3zz9PAn9td8
         +qb41Tn40ZoWzwIZ9en4+UTkiG/M9n9UK9r8SmEpuaEzdl0QNX57fiOEiWL06S1QEOEo
         3YXXrNhe6B6q80flApRsdiScKHJTO/3GA6KGpIS7O5v9L/BZnDU0jNsm/4lQk+CXiBy0
         94egmPETj0y+usypqy6WfUjHW8HLKrS5FANblFXEiBOmOhWJKvox93yUXevtoja2sBcP
         /2hQ==
X-Received: by 10.68.96.67 with SMTP id dq3mr89247pbb.161.1443561051843;
        Tue, 29 Sep 2015 14:10:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id cs5sm27320650pbc.15.2015.09.29.14.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 14:10:50 -0700 (PDT)
Date: Wed, 30 Sep 2015 02:40:43 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Drivers: memory: atmel-sdramc: fixed character limit for a
 line
Message-ID: <20150929211043.GA11379@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed the 80 character limit issue for a line.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/memory/atmel-sdramc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/atmel-sdramc.c b/drivers/memory/atmel-sdramc.c
index a3ebc8a..fb156c8 100644
--- a/drivers/memory/atmel-sdramc.c
+++ b/drivers/memory/atmel-sdramc.c
@@ -44,8 +44,8 @@ static const struct at91_ramc_caps sama5d3_caps = {
 static const struct of_device_id atmel_ramc_of_match[] = {
 	{ .compatible = "atmel,at91rm9200-sdramc", .data = &at91rm9200_caps, },
 	{ .compatible = "atmel,at91sam9260-sdramc", .data = &at91rm9200_caps, },
-	{ .compatible = "atmel,at91sam9g45-ddramc", .data = &at91sam9g45_caps, },
-	{ .compatible = "atmel,sama5d3-ddramc", .data = &sama5d3_caps, },
+	{ .compatible = "atmel,at91sam9g45-ddramc", .data = &at91sam9g45_caps, }
+	, { .compatible = "atmel,sama5d3-ddramc", .data = &sama5d3_caps, },
 	{},
 };
 MODULE_DEVICE_TABLE(of, atmel_ramc_of_match);
-- 
2.1.0


