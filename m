X-GM-THRID: 6466363123603341312
X-Received: by 10.159.49.163 with SMTP id v32mr16372517uad.116.1505567488983;
        Sat, 16 Sep 2017 06:11:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls2540983itj.19.gmail; Sat, 16 Sep
 2017 06:11:28 -0700 (PDT)
X-Received: by 10.99.115.17 with SMTP id o17mr17734510pgc.123.1505567488136;
        Sat, 16 Sep 2017 06:11:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505567488; cv=none;
        d=google.com; s=arc-20160816;
        b=xX0jvFom6ZIye9ITz9UhSD0i8vmWYqOgcwTBTO3DOsNZO/f1tcQaC5TUtNDF2zUdQU
         c17GrZbl68elZVGYMCoeAo/fPgPaltDn8DSQgdHDswEHMb1Zeoh7LxgLEyDfmx9UW397
         nTFkx9eI7VYCDef9OaiTXbjN/klZ/BMj2IoKZ1jgs0O9/ttFP5IbZOxYf3LnrZZW/3q3
         Y4B1G3RYrP2x8WOBho9QEWoPh6vJXgTTigIl/sX3zv81uZsGOLSrK6+HOytn3xjVztFj
         l1h6XbqC7dQreIaM3/0IHWFhlKbVa7abG+CkUOqRpPvTxiICEVmOgATe4M8JHCDjx2Eh
         OQkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=iZWGnQlYUj1wvs0WXhqbbjYURy4eRNnIYE5Ky9GuPCI=;
        b=kQYOctzRX2JhWstTvO4iYemiPuHrWN8BRMgmnpaPeAQdx36WFYY0gvXKLJTHFVNKrl
         cds/9pxZJnWkTv4FWOWSM7y9Bu8tH7d+D4AlqEn9eZ+ibwxQmbm2j4pfHKUU6LX/Lyes
         H3MPCSqSPYJUEuPDCtz8f4gQxQqm/IBsoMN3WYihYVil7Gf4iZsw6jiuRZiktm/tJOOI
         v41LwL6yBhliuE2PU4xvDYZ2dRjMUWHGMxdMe5c57YFFkTQmdt9o4JvMyaj7ZDjFIIkv
         oU54fx9QWGWNY7Cq1Ym5VWGFIYkX+UaJTs+bS5np8lV3K6BjlUkz78Xl79lPqVYCSNBf
         0KfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3AyDwhc;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id t77si299193pfi.13.2017.09.16.06.11.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:11:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3AyDwhc;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so2508829pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 06:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iZWGnQlYUj1wvs0WXhqbbjYURy4eRNnIYE5Ky9GuPCI=;
        b=d3AyDwhcPcj3/gtJocs5N7YIGaGI1JSeYe1Z4SzMnP3uE1jy4fJRTYW9wGqKJ55p4S
         U8Iy2+QAm4sVajxQMBsPpb/2qhYBWZjHqwudM+JN84AXuQ+cnRmONny9p3z2LVNaPjhN
         EveyuepS33swQgEVxGT8MUiHYg1LmU1aJM0cPBcuxnaRw/dF3POOFbzJ//5b4slpMmhy
         lKFUn8SSqGzm+Ppbn0d5Fa1uB3Gbi5p1EaIQo6P7E7YmSAS3fP7JK+7nEUNTDH4gaXd4
         JKeB/7bAz49sllS/o0gUa46PjwabF5ZS5CfLj1nxQuf0VpAX8uNw+o9+jRO8zrF0uRmW
         DfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iZWGnQlYUj1wvs0WXhqbbjYURy4eRNnIYE5Ky9GuPCI=;
        b=bILS8/SuYO02E7Y2s5AB1GPkXki3EuCPutqT+q0L5U0+moB05NVCUSsdRe08dVWbIh
         ze+T6u/TeD+BF9fbXEgskDx/9vrdaxIH8F0zgd7zagZKpZQl4jMdBhsQjscSRHIbMQjn
         aCGdQEztErTF8naYIFuH+ALy+dh1DKST0x/7uhwON1Ks/yWrrxIWkCgq87WP79XBp8Js
         H2oOVtUudyBwOPzWzdATbmz4KDNZZfkuvMC7FXJkyA5QOIkRlI1gbjlUF64CQHrUB14k
         cGHHJGNDszZpXMLCbiX1l78uAafT42IPXzm2e+BnE+cW2R5kvpmMn3pRJ0/9FHcNohPc
         bNhQ==
X-Gm-Message-State: AHPjjUhW6+r5LAZjjZaq2TJjnxPqbxo3RrIFeQDzN4VEl4A08jogwF0k
	a415zE93cKT22fdLTkw=
X-Google-Smtp-Source: AOwi7QAr3OXQg1NFiMjwd2RsyrhWFDZCCHE6qnGSXqdVYHklGHboiHQukPCbPODA6Qt0N7rAXRw+qA==
X-Received: by 10.98.53.196 with SMTP id c187mr14415308pfa.38.1505567487837;
        Sat, 16 Sep 2017 06:11:27 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id p85sm7206704pfj.47.2017.09.16.06.11.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 06:11:27 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: dgnc: remove unused macro definition
Date: Sat, 16 Sep 2017 18:41:21 +0530
Message-Id: <1505567481-16496-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unused macro definition in dgnc_driver.h

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index d69d9c0..a19427b 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -213,7 +213,6 @@ struct dgnc_board {
 #define UN_BUSY		0x0008		/* Some work this channel */
 #define UN_BREAKI	0x0010		/* Input break received	*/
 #define UN_PWAIT	0x0020		/* Printer waiting for terminal	*/
-#define UN_TIME		0x0040		/* Waiting on time */
 #define UN_EMPTY	0x0080		/* Waiting output queue empty */
 #define UN_LOW		0x0100		/* Waiting output low water mark*/
 #define UN_EXCL_OPEN	0x0200		/* Open for exclusive use */
-- 
2.7.4


