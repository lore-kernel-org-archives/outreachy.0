X-GM-THRID: 6669200248940789760
X-Received: by 2002:adf:f152:: with SMTP id y18mr88568wro.21.1552826031137;
        Sun, 17 Mar 2019 05:33:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4083:: with SMTP id n125ls1670189wma.4.canary-gmail;
 Sun, 17 Mar 2019 05:33:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHdBKDN0Se7fZLqjmmpfhPAanlSTlloeA2EjvBZxoc8CZBjXr/j6/yhyLRsM3FK25FKcwt
X-Received: by 2002:a1c:9c47:: with SMTP id f68mr747494wme.11.1552826030244;
        Sun, 17 Mar 2019 05:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552826030; cv=none;
        d=google.com; s=arc-20160816;
        b=q4cyZEhD28g/NqHznN2QVPrHIms40DyBsykZ11NPqUaLB9qPMhVG/rAY4hueVwTQDS
         0WnvexkFv14eG9L+sPG44OXaJVQsjrkTNw9ea2G9VDmYRV9FQZ1uWn0Jv0UmrE9D+tnn
         jNej7RSgxBWIDDCwmhqXTNBtPJoU/5v+AsgWSpxqTwo6xJ6baoNHZmgXB4sUuYJCzT+w
         pehZ8bv0FlVKDFekbCPofb0FDYljIDtE4ovzkIrLiNWXy19Bg2PGyzspi+t0KVx6c5De
         E3xt7zLEIYCA5uWdpgvyWpK3p6ce5pgXOttkZfGIhJwz/1mKHKbAXZzrTpJUm8TIh07w
         6NPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=s8d7NYedenNLa3dOEXbcsmmWAluQegNyPPxUihiRRAw=;
        b=rmHSlJe/CfUqwBzFQ6/DSYR6sFCIwmk7Ouqcbo+fkW6m6p4SuGsor4qs4SiRkK4Zl4
         m6AR3Tv1xndcBTvhZty9NmDyRifg1TE2bB4+5r9443tawWvtKSydkDYTvqaUTZr5LN/f
         P/Qbs1MTpAwuNFEmq6FJwFwhvSZ6ussR9rwm54hTei7hMlzPXD4vr82WBxyntfho3Zr4
         11v/47JTdrgqpJYCDpWE5EEUtCper0nGfj5qcHiMxCL0DpKpYY6LE1aQlLvqIWoG/yyz
         ufSkB3CTfKdFIlepXfmc8kZejuc8ztS/CBFwvdXJHtQWH2NG7XqoOCrvLoin6YqFPZ8D
         pAZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4SiCt4g;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 2si317806wma.3.2019.03.17.05.33.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4SiCt4g;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id n19so10411224wmi.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 05:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s8d7NYedenNLa3dOEXbcsmmWAluQegNyPPxUihiRRAw=;
        b=J4SiCt4getNmqKVpwA6y9XQNFoaaFdkm4cIINiT8EFef6SaL1WLrZgTpcbl76Se5Oc
         ZJVz8qA4q17utO8FoQUKNRgd4n0QUK1IPr2ixqvbRd0kRGs15pmzJne5GfBVnmZ2EFlu
         gyvCjXLYOOr87qrgN06P37MVqTyE2F1DgI+gNpWol9JxsOf0JhzO3l6ywa6CrLrbCQj0
         EZm2OLlTShV8IkFCHXf0gRJHM/fSZCGPhylVSag0Ua5R1QkDb5xmZ2PTzsMxPU4NZVap
         Yaa3t2fS6bCPm+W53z0hKIgxTK3kaN4dAByGq90UtOhWnVvSToZ85i4AwKbwW7K+QKEM
         8Smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s8d7NYedenNLa3dOEXbcsmmWAluQegNyPPxUihiRRAw=;
        b=ja6vUs8ox8Hz85U3sqQGpmBhRL0jSI1Ua9NAV0U+esyIGEYRKgl3NSkFNBvnPhWtdW
         xaknf9gJ1+1ebKiiElgAfSH9LT3XQ8BBnTL5GTUVgViwucqrWipk9QFoQLmLObc7Yujt
         6gCOF25Xvc8EoAqAbR6+ojFsOrRRDF3XPeMcE9EIxXvdyfDCHMNqT9RxhMeGTPP71fy7
         t+aOohiaYCDXMi47rYgI1rrZV4amw5ztdOthxcDmC9Dn1dmO3GGXUjoclL7Qrd9ncjCp
         IZjba9Vl5UmLDrvqF4OOafrExGHnxyqcoPkbka5dMqICBk0j2zn9rLpJ8LoFuh71n9ja
         bs+w==
X-Gm-Message-State: APjAAAWRA2DWv5fpI/8xcxx1wyPVWzG8NbyVyX/5rLjJ4nIhM1nrL0CK
	ST+i0UXLcjwtVplnFxWyq1djNh8=
X-Received: by 2002:a1c:4d:: with SMTP id 74mr7668787wma.1.1552826029764;
        Sun, 17 Mar 2019 05:33:49 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id d7sm4539755wmf.31.2019.03.17.05.33.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 05:33:49 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: speakup: fix line over 80 characters.
Date: Sun, 17 Mar 2019 12:31:10 +0000
Message-Id: <20190317123110.21150-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix coding style issues which solves checkpatch.pl warning:
    "WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
This version line wrap the comments without losing the full meaning
 drivers/staging/speakup/kobjects.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 11c704b27c3c..f653c16eb4e5 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -154,7 +154,10 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+		/*
+		 * Do not replace with kstrtoul:
+		 * here we need temp to be updated
+		 */
 		index = simple_strtoul(cp, &temp, 10);
 		if (index > 255) {
 			rejected++;
@@ -788,7 +791,10 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+		/*
+		 * Do not replace with kstrtoul:
+		 * here we need temp to be updated
+		 */
 		index = simple_strtoul(cp, &temp, 10);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
-- 
2.20.1


