X-GM-THRID: 6388545925534449664
X-Received: by 10.157.22.149 with SMTP id c21mr4436181ote.26.1487452930577;
        Sat, 18 Feb 2017 13:22:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.235 with SMTP id q98ls5497902ota.1.gmail; Sat, 18 Feb
 2017 13:22:10 -0800 (PST)
X-Received: by 10.200.43.252 with SMTP id n57mr4335145qtn.53.1487452930250;
        Sat, 18 Feb 2017 13:22:10 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1574691pfd.3.2017.02.18.13.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 13:22:10 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 5so8023851pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 13:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wTvjYlHUHKd4F9MS1848hLevLRY23U8kVZai4Jscucc=;
        b=NJlLLiBUKasRSkB9fS+v8HZZCTLzpLko+F0VQCjOUq4UNAeBeAo/llg8vxJVuPqXWo
         njNULABRQPlnOvrSTJvVPPf24J//bUl+PkZiz+lt1awMN+UsfhrSTUZNxr5VKCjQXvUp
         RBbCHLvcm8WZdbCM2M667S14oowMAJ1ZYK3isyzSCFoajjBNV6nKt6ruYTamZOhNh+Lo
         uZgZyXfhTvyczGAmQQt7mh56SZk6m2WszeqJlFatpSKqnBhWTzEv2HVqFRc9IrJPDzVs
         waGYUoGd63tIPgvZOkfhdU/gm1d2sNy85wR6N9U+IWr6OAUgD5G0T556iTTpPPVnhLkK
         o3mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wTvjYlHUHKd4F9MS1848hLevLRY23U8kVZai4Jscucc=;
        b=caUY0dFgK+AuYfBWKBYRych0GvULB7IViRG6LNe364As1xAOf2hyDxukE0mZO8lx4+
         /74URGbgJx3okPIqOJispbSrt6HJ7JNPboHyNs1yIXQvoOFHodFKyg+kt/7u8ueoV8B9
         hjlPM4vwBRv244VKA2LkMby3V0zHmQfRadAkPwCKhnLbMv/djxKpHGFJCgxpk0FVBIVq
         7TwGAVwCSyap3KW4OG6861wqnA1ngOSxVgWnZox94CdRLhmoTaWF0uYV/mP6971uyLZ+
         OebLnSmHOTNQ5KoZatdaEX6ZiypXL9puoB5AmHsGMqwlBQd8WsDruJR307SN5p0YFkjI
         0nPg==
X-Gm-Message-State: AMke39lXlkG3lKxlJSQUoUzItIlfkBphwy4yxp61twXWvWaiMTtwM/fsjVIrztOOmjj9Ag==
X-Received: by 10.84.208.227 with SMTP id c32mr20468915plj.71.1487452929696;
        Sat, 18 Feb 2017 13:22:09 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n70sm26825830pfg.34.2017.02.18.13.22.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 13:22:08 -0800 (PST)
Date: Sun, 19 Feb 2017 02:52:07 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: forest@alittletooquiet.net
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/6] staging: vt6655: Compress return logic
Message-ID: <20170218212207.GA11388@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2: 
   -Removed assignment 
 v3:
   -Removed declaration of qwTSFOffset

 drivers/staging/vt6655/card.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e0c9281..1306e55 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -911,16 +911,13 @@ bool CARDbSoftwareReset(struct vnt_private *priv)
  */
 u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
 {
-	u64 qwTSFOffset = 0;
 	unsigned short wRxBcnTSFOffst;
 
 	wRxBcnTSFOffst = cwRXBCNTSFOff[byRxRate%MAX_RATE];
 
 	qwTSF2 += (u64)wRxBcnTSFOffst;
 
-	qwTSFOffset = qwTSF1 - qwTSF2;
-
-	return qwTSFOffset;
+	return qwTSF1 - qwTSF2;
 }
 
 /*
-- 
2.7.4


