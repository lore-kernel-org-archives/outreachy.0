X-GM-THRID: 6667942778398310400
X-Received: by 2002:a62:11d6:: with SMTP id 83mr16910298pfr.144.1552501408849;
        Wed, 13 Mar 2019 11:23:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls1562801pln.3.gmail; Wed, 13
 Mar 2019 11:23:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzzh0dpyCXeL+WiUtc577rR7K83AmHXzy1ImZtxCUEtXvu1hjkc4qUK0nw0mF2milWErQ9
X-Received: by 2002:a17:902:868d:: with SMTP id g13mr3863403plo.4.1552501408053;
        Wed, 13 Mar 2019 11:23:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552501408; cv=none;
        d=google.com; s=arc-20160816;
        b=oAwfgmDRdJxMMuAyeGdgYcBbEHpTVVmqqvbBtqf4qBEFVkgkU9zWFyFViiiZnGlGzc
         HZk4rySdlMUNbT91Ax4m1AWa1cLzWXDE0nmJUhiq+byBWP1GzbXRKEPJAvyEymYSU+NU
         7sNPEP+aNphjNS6UKR/9BbJDXDsGVmopQulHlvk9UW8fhkPqpdmsWQA82CI8OOzL4+ZK
         kLW8g7pbApZAMe2GKsEp9rXY0mMGG6qKZBW8iGSIfx/EGOoF36ab3mz6jhxtqLNCHyS/
         tP3FooXJ0ipYHgMXRM//ry6CpsmZYFo5Y8oFbXW6VpXrhdthO0bc1BBRVwCjxXRAId+H
         TbyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y0SX8IGP1l8+ReG3Ogqv8y5ylDb2SBsJc27oSNIw2Bk=;
        b=Fhqia6nWxmxpnO8ZmYti9NMflLNmOkUWcknksrqHY2zrKiRdSIua7LDO3EAR/bi01F
         X7ZLhO0QtyXjFQMIR1/imoqS7cRvgZdGlBMS6w+Okxk/4QftCZWt0izohd5otiZ9BEVL
         TsBXmKrVaKMu0tUwCHuRPdUKWWACgTA1jjzr5I+dw29Bx8hM3jmvJH7lF84cbDDMG3bT
         PG2DimMFxDhrUWZnxYtr/YqTTZvabCFD2OkJWvRq2kqaFE5plB1QRrKPSDoE2MZSWtkb
         P6WUzbe/Uxk8coUL7f8iWujBV3o+6tBOfo3EhJMbDUW59q/pBhiw4hhBxYmcOc4cEjyN
         sJEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvd6hVFS;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z184si673573pgd.0.2019.03.13.11.23.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 11:23:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvd6hVFS;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id h34so2084616pgh.11
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 11:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y0SX8IGP1l8+ReG3Ogqv8y5ylDb2SBsJc27oSNIw2Bk=;
        b=mvd6hVFSjreh8nvzg8lQObP09vrM3Nnx632PQSQFQwSVlhytH+4M8rlPU2fP5lm6fU
         eVAF9BWhgHbUC3Bauc/M8lxpDbS/29ilKih7fAcihdK0t1FxsPxCDFBtaEIUUonO5g7l
         OsKurUgXWzW3qKOm363dVTAEKIK5naMdNINR+nJSTY/fjVqti4wgr86QZaR4gICU3+/V
         sm5e9zqdG316Jvx2mDmf7jWiyrRr4lrvXlj7JO4RdSrbY4zBRMYqNDVfH4QQGdxBda51
         xFRHAxI/h99eK9PJELO3eYKIXOhqcsTID54bl/Mm0GRi35J/P7Mj9qu+roZVY70Ruen9
         ZyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y0SX8IGP1l8+ReG3Ogqv8y5ylDb2SBsJc27oSNIw2Bk=;
        b=ZNP6KPN4OghZ7uPdgXPgqJGEuqBzxdA7Yt1wfu9w8aI4Ob2gEOh+rj0d9fygpG3HaH
         QqCKs2vdtddeLtuEB7RAquf/cW8oRwHOyPxU1yFkzXvpxuNAr51NUey1jDQd4Mm9DLr+
         CKygTeyJUblbYgNpHbTW+UQHlLOeCpS+QUK6LgmlqeetMCl6ZwxnVbENKKvjKM+4X3KM
         0rBZ1k/+2y8gNvUVycjxQI3w/syJb58CvROUVjJmsVkO2FG8grFwndX+6i6Iq726JiQP
         L7sG0/geyr4zoIITvRe4IstzXnX/b52sVLGvOZwa472u3gs6eu92u8se9O7a26YZZTQ/
         wl5A==
X-Gm-Message-State: APjAAAUeoNzhvJZT/aYgdaysv7xJgl6gLlCC2bRhME2lCmytWdyz5bDm
	a62bXVgs+18jYOYIlXXS34s=
X-Received: by 2002:a17:902:8d97:: with SMTP id v23mr45500801plo.274.1552501407591;
        Wed, 13 Mar 2019 11:23:27 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2e96:de47:a16b:5134:be60:2635])
        by smtp.googlemail.com with ESMTPSA id 20sm31166693pfs.182.2019.03.13.11.23.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 13 Mar 2019 11:23:26 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: speakup: Remove unused variable.
Date: Wed, 13 Mar 2019 23:53:15 +0530
Message-Id: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unused variable which is used to store return value,
Detected by Coccinelle semantic patch ret.cocci.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d3..a748eb8 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.7.4


