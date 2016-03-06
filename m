X-GM-THRID: 6258988137630924800
X-Received: by 10.140.150.210 with SMTP id 201mr895106qhw.28.1457284236096;
        Sun, 06 Mar 2016 09:10:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.139 with SMTP id c11ls1309190qgd.84.gmail; Sun, 06 Mar
 2016 09:10:35 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr13606594vke.1.1457284235451;
        Sun, 06 Mar 2016 09:10:35 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r75si2493160pfr.0.2016.03.06.09.10.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 09:10:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 63so6541201pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 09:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G+2IFlG9W5WtJEbuuOOHht2vlLpO/vk0MXSu1nOUVR4=;
        b=zZJJoupXz/vhek2SMZPhh5flBtz75CLy7Bx4dLqAh0276j/Ba4aZw+PJMFNZtflGyc
         i+bhQ5ZelkQdp8Ph0nS1D8YBge4yKmgFmrGWZ8L/ujpmRVeD2NVRKK5wnHpdY0OJ/QT2
         kKYT0JK1hhkDB+rgbJAUvUPemMT1ID60mQp/BzpS9DZ6mpWfc/uMaAHWOx+SMZaW9clj
         Y9m/xlPKvRkWrl7Njyu670cP/xxTU5/kAn2nXKCUwBQSmy2SnSmjqks6E9nFqcstBdEL
         rFz5V0hacA75GI8py1LS4BGYjSayCeJSebFysjNiQ+iMaq7mwH4lWE0JGijXbHoOg3hn
         CiYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G+2IFlG9W5WtJEbuuOOHht2vlLpO/vk0MXSu1nOUVR4=;
        b=YnT5tx2wnWFQ9GkLWL76tz1pJqfWd8ZJkQ0cNpN3QxXIvfSKGNvsKFJuhHmfR42bG0
         IeFFjZ5p2KoX+SW1O67uzKFxX8NWHtu6zRaTx9qfScDnpG0AJcCPzwTcGMS84LSS+rVe
         mzjuVrD2h+txg7bFSMDbtzOsY6fAwnvTOdu5A/e50tLZg18Eu/W1rna09ParWB7IkU+C
         8iE8uKevgIOus7nkCGoBZyzFihQrNlouYtCjzpRpC1nFMxwdPXc9fUABBCuyu2eqljv0
         IGLZl812wiqgbiTz0dqpZHltwBgVkaYAUznSsbVlqTA1uSTs6sxIe+z06V5E9yVhAGOQ
         +NBQ==
X-Gm-Message-State: AD7BkJJ1d+3Zb+kfrEBtPqcszm4xu1wAb9zRCqiMIdnS4QNTxuSEqGRb0fijXOPT58AryA==
X-Received: by 10.98.68.209 with SMTP id m78mr10092093pfi.153.1457284235255;
        Sun, 06 Mar 2016 09:10:35 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id fa3sm18762094pab.45.2016.03.06.09.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 09:10:34 -0800 (PST)
Date: Sun, 6 Mar 2016 14:40:55 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: gs_fpgaboot: Use kernel type 's32' over
 'int32_t'.
Message-ID: <20160306091055.GA2252@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use kernel type 's32' over 'int32_t'. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
index f41f4cc..93a61ad 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
@@ -51,6 +51,6 @@ struct fpgaimage {
 	char	part[MAX_STR];
 	char	date[MAX_STR];
 	char	time[MAX_STR];
-	int32_t	lendata;
+	s32	lendata;
 	char	*fpgadata;
 };
-- 
1.8.3.4


