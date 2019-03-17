X-GM-THRID: 6669200248940789760
X-Received: by 2002:a2e:80c7:: with SMTP id r7mr598276ljg.10.1552794186465;
        Sat, 16 Mar 2019 20:43:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:558f:: with SMTP id v15ls1206531lfg.5.gmail; Sat, 16 Mar
 2019 20:43:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6CR/UbtC+VJ2TI04yooS/DB7+GGqOraxrPSjN86AqiNmZOXOKBf4X4x3c0dCVO7U49ZXq
X-Received: by 2002:a19:3809:: with SMTP id f9mr537212lfa.1.1552794185521;
        Sat, 16 Mar 2019 20:43:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552794185; cv=none;
        d=google.com; s=arc-20160816;
        b=hubSJ4MyfkJleG5e4kwC8IOUawk16WYvFsDVXOsaqek2Ba52LbLTsbqbLBq2y7OpF2
         AsLcX5in1U/cimsZ8jCxE0oQWKz2Fq0f8ZvrZr9SE6d4wqoGT3wQcvewzs9pEX1p5P4D
         TyetRGb8bdrsL+HSfvQDlg8zLItDrbNe9JL9Ss8ngdJUhj6ePbl9xWhiStVxUsiqxUg6
         BNwRRvSo8AlvXNi5QkDLf2viPWErHyYENvdkLxOT3QGe0MpZTwvvenkdFqn/436h7kvM
         qDNr+DlHvpTnAXb12IxUM3J0Iunbh/Nja8hFxRlbLlvuJG36h/1afI1zzWVwsQkolJog
         0P1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zCFeCo9jfyzbFu9on12SSuPHmbccO4YKVoxxZUjoebM=;
        b=duk9MkTvuMQqDMvZBWSRkSgexpg4ivXQGxfVV+WcFL8Z+0Bs1DExZTH78pfj8ANczp
         CCBPLLV65N614MBc+1WOKDBv5FTnaZlv3M52g0hn1roHmEMVimcNINxnTY/HnGI5EJnG
         H1SiAbyW64azIQi3su4lLOpGlclzJ8Gt2THZkrILKTM9BknNv5LwRvOTOckF8Kt1Nbru
         GJb+TIKDjMG9zo9PRVTl/GcJeqhGghuegnHiRyADFNTWkWVQf+9JYLdzlkLOOa36qT7a
         KAAEt0UIDxCl+cfbYJqTtF0Xe7kOLeVybaIbzxIgAEyA66m6lH+cXyDzTm7LfT+2QmT3
         kTIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e4Q+ivyF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id i21si273447ljj.0.2019.03.16.20.43.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:43:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e4Q+ivyF;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x329.google.com with SMTP id f3so9953640wmj.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 20:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zCFeCo9jfyzbFu9on12SSuPHmbccO4YKVoxxZUjoebM=;
        b=e4Q+ivyFEjJYWH3r0ODhhHSb/tzXyMdCrNlayCevlkr7VFUK0vvc1hoctdhpIKDJDs
         XDqC3ImI5sMlLVpLoPAzGnqaJd4QXzw0uXc/e5VgXz3McyKE0t/PWZ1oGMJfsSXjP1nb
         iR5aWvWPbzFJcFwf4SD2m+vFw11DdjKkm7lDgPjFAUqGBrVuvEKnrzY64xJoc90jg4wR
         EiWJ5XtSpp2z4azepzL69EzcIJE9rwhkS7ZQ7gMq0BXl7iRmr8fxf1TYGXNNjPPGT0eQ
         mV0h9nAlTYogk1M1yK3yNWRzPDAvSMUNJ6JRmyuiHNbqrIk9eAHNpzzXlVDIWjYHDkBv
         J5CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zCFeCo9jfyzbFu9on12SSuPHmbccO4YKVoxxZUjoebM=;
        b=iBQDybbBpiPqwNJdVAqsAsNSjkhBsS6KEKRlzS7sOt1xSyg/i3iiyjfpCN9HmuSATW
         ZtR/QD9LeHgb94FHS8WJADuw/83n5C99Ybt8XHmabsF2/xyKEbAZYbnlWxRHEQTW88sp
         NUr2ARtL8DECPi8Est4m0FSMoSAu9QmcaI7KBrAv7pJnUHE7SyH8Vu4pW8GMwwjZvWeM
         mZSEP+FiQ+pDHWNZuqR53ZkLHXEHp/UFqpmZL5OUj0khWFYQOT4jySQI6pD1Vg/b2Mua
         zbSNXcyPSCrGGwfwef/Z2tuMlm22CXqnqtCLH8aBwM59umoDC9BQ8w3R3YI0ieUFGDOn
         0fPA==
X-Gm-Message-State: APjAAAXFM7Lc6fKxtenJuO1HygvZ8sCKrvyneTs12vXXHBNOH2tu1Tyw
	+JzvZfR45KsGrwhtOaj6rQ==
X-Received: by 2002:a7b:cd82:: with SMTP id y2mr6363962wmj.121.1552794184839;
        Sat, 16 Mar 2019 20:43:04 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id w10sm6398386wrn.32.2019.03.16.20.43.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 20:43:04 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: speakup: fix line over 80 characters.
Date: Sun, 17 Mar 2019 03:39:46 +0000
Message-Id: <20190317033946.12585-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix coding style issues, which solves checkpatch.pl warning:
    "WARNING: line over 80 characters".
---
 drivers/staging/speakup/kobjects.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 2eb5af3debb3..abeab64899db 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+/* Do not replace with kstrtoul: here we need temp to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 		if (index > 255) {
 			rejected++;
@@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+/* Do not replace with kstrtoul: here we need temp to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
-- 
2.20.1


