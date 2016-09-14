X-GM-THRID: 6330117409963245568
X-Received: by 10.237.32.228 with SMTP id 91mr1138947qtb.22.1473845310186;
        Wed, 14 Sep 2016 02:28:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.68 with SMTP id b65ls246055iti.13.canary; Wed, 14 Sep
 2016 02:28:29 -0700 (PDT)
X-Received: by 10.66.99.80 with SMTP id eo16mr1122641pab.38.1473845309798;
        Wed, 14 Sep 2016 02:28:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si835386pam.0.2016.09.14.02.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g202so520644pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KxPIEiYqjjd1Hnmc0Y35EB/tfPEgKdBLTDyzynBaLLg=;
        b=myvtxGUGxpANVqDDjoS5clMV8mN8wL2fSX9z1z9wL3Y5+FlWixN5AivhP32FhqRAwS
         oHSozFMTF236bylU9I2FXmKi+vLkx8KVtdLY1w/19/dUoGDsYWycHJaWE0wTB8d5Ww8D
         paKXT07IkhvRCnuvLMtC+bFFZuWKfq9CCIgB8o5Yifbh/ZRBAZXrYysqr3debI48xBwo
         GvBDL5HvXbJTfsuONlT7QlPgJfGm+WgpCs/50P8fY4EKKRwjtNK4CycLc7bM23WFY5go
         8XwliPyErCyNcOimSXwR/kv81QJ23bqFcPStQn/8TE9L01GcpwXaJYWKIrhoBimPXWDL
         E2jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KxPIEiYqjjd1Hnmc0Y35EB/tfPEgKdBLTDyzynBaLLg=;
        b=OJnIL226wrsyjApxLQZHtRO7PBLl2UIHmipRkR5iPq+kxt96vowG/rQ6+nRohnnLWG
         a/St6sk3VWAH/n7sfOQj2vnTt6UAXqWhcG/iAqpjra+iqdbPo6acflNIR/+AkQ70gq/0
         dq/z3PjWgW/vXmd3yXDBmgp3s0/H0YXH57uyvPAqkdIpuUAeRL+IO48+ZXz6KkF3l/T3
         ouOUozcuSoSTyVeYMwKxrxi/eQS5uoi8cf7XiaGm0e7u3Z68mf2Z3IAXZxYQj0a7hJ6i
         ZH/VHZVVj7+AIBp1J51MyuN3f5JW2mdLrHhb7DKSJK5B9rPE5hWWyLapGu4P7+aRoE0/
         Q3vA==
X-Gm-Message-State: AE9vXwP8sC2w+6HJd8UtxuNPSO267o5LsmxVTjACbWhC0fQWBMwFdG9uj+lMzB6a7PZH8w==
X-Received: by 10.98.66.212 with SMTP id h81mr2678227pfd.51.1473845309379;
        Wed, 14 Sep 2016 02:28:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id f195sm36690767pfa.26.2016.09.14.02.28.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 02:28:28 -0700 (PDT)
Date: Wed, 14 Sep 2016 14:59:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: i18n: Use x instead of x != NULL.
Message-ID: <20160914092903.GA2663@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL.
The patch removes the explicit NULL comparisons.This patch is detected by checkpatch.pl.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/speakup/i18n.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 8960079..41b56d6 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -407,9 +407,9 @@ static char *next_specifier(char *input)
 	int found = 0;
 	char *next_percent = input;
 
-	while ((next_percent != NULL) && !found) {
+	while ((next_percent) && !found) {
 		next_percent = strchr(next_percent, '%');
-		if (next_percent != NULL) {
+		if (next_percent) {
 			/* skip over doubled percent signs */
 			while ((next_percent[0] == '%')
 			       && (next_percent[1] == '%'))
-- 
1.8.2.3


