X-GM-THRID: 6340275166389469184
X-Received: by 10.28.168.206 with SMTP id r197mr6849wme.0.1476210347157;
        Tue, 11 Oct 2016 11:25:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.206 with SMTP id r197ls8980wme.19.gmail; Tue, 11 Oct
 2016 11:25:45 -0700 (PDT)
X-Received: by 10.194.172.131 with SMTP id bc3mr429523wjc.19.1476210345558;
        Tue, 11 Oct 2016 11:25:45 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 13si4731wmq.1.2016.10.11.11.25.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 11:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id c78so87118wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GK1LherbOmb2Q1x1T5KVbOiQF4gydjZ5868T8+i+Vxs=;
        b=qipGh835JxSQNg1UFvIpqvFiTX3vmJOJmiri+KbBaEXqHioC1lvCsBfVbnPlpNJn3+
         UD1cXXNr/B2rRqF1uJyPE9WLqMUFg2OO+LTuucscOA5lXsu59/n8mZTb+gp0lEwXyYsy
         wCzXySr6UuOAmlthnIiH2UayY4vnCCYnYAA/Oi5QbRyg6OGsXbPbvbpwTUwZlyOqjmWo
         hAuEvIJnirqntc/D7Q7NArwwCpN7CmyFehNWwVPQ02MDmM27EdsshlgS2+1n7TGIeNsl
         PeK6LUx0XMGvJ+BIwlFssvkC59fC5L5Bp1IBv0d9hATG/ARC4DJ5Ruy6hsgWLUYTRlZQ
         JvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GK1LherbOmb2Q1x1T5KVbOiQF4gydjZ5868T8+i+Vxs=;
        b=HlJp4LOm6xkuYL5hNmmr7qyMYW/XcNMvMGIj9LGHDbZkcniFgoHdWPeQIgRa55cMLP
         attQ+DafFjuB5mPpneZZIiw8VpbprTgh4/QylZTnetCrrHMePXPb+cZjtX2TjBtZoGsE
         88omss/fS1eT36/rzSjuHr7LvFM/gBaecuQABWfgZlNPt8nHCAB0n2BPaouuqHYXbMY+
         1oYwDEIya+nH2d30TLnrbK2CIL0a1pd6wlZcPg4jBw8RldYeNW9/kFhilU4dbBXlFRrT
         PhaZ528jPzZXgQMxab2hXCdwYEBo7uS3x0tM4ygxnqknamcNbkkYWiYbAfcAKuNcYwdO
         Vm6g==
X-Gm-Message-State: AA6/9Rm26aD9eCc9vr0fG+JOO7+jMd1Wf7XKBEf6xvsMzci5AlLJZxL5jykbGx9xbRtpAQ==
X-Received: by 10.28.17.205 with SMTP id 196mr100695wmr.22.1476210345366;
        Tue, 11 Oct 2016 11:25:45 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.251.249])
        by smtp.gmail.com with ESMTPSA id t188sm108454wmf.15.2016.10.11.11.25.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 11:25:42 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: sm750fb: Add space around '*'
Date: Tue, 11 Oct 2016 21:25:34 +0300
Message-Id: <1476210334-9677-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operators '*'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '*' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/sm750fb/sm750.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index ff31c5c..2a4060c 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -175,7 +175,7 @@ struct lynxfb_par {
 
 static inline unsigned long ps_to_hz(unsigned int psvalue)
 {
-	unsigned long long numerator = 1000*1000*1000*1000ULL;
+	unsigned long long numerator = 1000 * 1000 * 1000 * 1000ULL;
 	/* 10^12 / picosecond period gives frequency in Hz */
 	do_div(numerator, psvalue);
 	return (unsigned long)numerator;
-- 
1.9.1


