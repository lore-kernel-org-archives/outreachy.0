X-GM-THRID: 6250911562045849600
X-Received: by 10.13.235.144 with SMTP id u138mr8788506ywe.21.1455403762739;
        Sat, 13 Feb 2016 14:49:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls1162057iod.50.gmail; Sat, 13 Feb
 2016 14:49:22 -0800 (PST)
X-Received: by 10.50.102.40 with SMTP id fl8mr4028770igb.7.1455403762441;
        Sat, 13 Feb 2016 14:49:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id y131si1555744ywc.0.2016.02.13.14.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:49:22 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id b67so87728521qgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=E73w+7LmZunumgpT63Pqz/48VaI9MlIRBb3rNNL0nLA=;
        b=QXWNmiX+yhV/0TPcJ9Vd0LN3pum2oBYneLqHT8nuFJyHPobsQuU3dcxibJ42t8eORM
         M75P9jsiMBShsM7u1LbtfrOk6mt31mvd9fB/h2ZAlfZuc2SdNPzIFMgs0d/OdGZtc8vG
         n7TjMOEbU2PYdeJtUTgKd6i0ijQDmlKCHuW1FW0v8wRajWZn5rW9h1PxOgWGzr6W3U3d
         hdAtD5Ze2mEnB/HkW6XcWCdKvwPeCgdrpqgs2G4OcLfCO65fHdUQuKMTgc96j0MYXc9h
         MpQwMdERN9o8OebmQ+YRJZvLESTASIfiYYi07vDtjSXwLYzoohVNtLY5UCuHhJIE8WXP
         okhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=E73w+7LmZunumgpT63Pqz/48VaI9MlIRBb3rNNL0nLA=;
        b=c3tes5HlDn8nTwZFMgu6oqTMWnRM9EDWStqBE+O/DKrEkfQgOuQKKTHrmIM57sdc/n
         JOPkXQi5PPkTAhvpUyGvq+tgtEdF18WTiuVPjDZ9CxROfU8PBCLR3DnJluThME7R9Ad8
         nNNyetmoqSlq1f12RxrKBl0Vpdr9v6tUsspGAxPxO20WIiSyx0Ylkj12hL1kWuim8Kdi
         K+92N04LClXorW6U0UO8jtPSVACRR/0ra6+tmZxxReZx/N68R4Kzk/EsuzerzqgPqjE3
         zo4wBLOkNFZRiUbrYYhh02g75xLIUCZhxUFDCiGdlV2zp5ORKnHJmYjIcdww3khX36Ml
         uXNw==
X-Gm-Message-State: AG10YOT1OY4mniy+lTDg0jbmgLwBbv7BDPNU09n/Lt/HdFcuuHGOnN3PSwDLDdvu4BG4gw==
X-Received: by 10.140.18.172 with SMTP id 41mr10930643qgf.7.1455403762312;
        Sat, 13 Feb 2016 14:49:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id o75sm8256996qgd.12.2016.02.13.14.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:49:21 -0800 (PST)
Date: Sat, 13 Feb 2016 22:48:42 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Eliminate commented out code
Message-ID: <20160214034842.GA25081@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes commented out code in the file.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index a8d3e96..8f599af 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -115,15 +115,6 @@ void hw_cursor_setData(struct lynx_cursor *cursor,
 	pstart = cursor->vstart;
 	pbuffer = pstart;
 
-/*
-	if(odd &1){
-		hw_cursor_setData2(cursor,rop,pcol,pmsk);
-	}
-	odd++;
-	if(odd > 0xfffffff0)
-		odd=0;
-*/
-
 	for (i = 0; i < count; i++) {
 		color = *pcol++;
 		mask = *pmsk++;
-- 
2.5.0


