X-GM-THRID: 6526261510442844160
X-Received: by 10.176.80.248 with SMTP id d53mr3206803uaa.43.1519513668889;
        Sat, 24 Feb 2018 15:07:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.38.99 with SMTP id 90ls110358uag.7.gmail; Sat, 24 Feb 2018
 15:07:47 -0800 (PST)
X-Google-Smtp-Source: AG47ELtNnFqE2jEoUFfjrsyu3vn9VjT/9bQuvnzMKEGYHy110T4obR17+7cSXsyVdG9S470qnHbp
X-Received: by 10.176.8.92 with SMTP id b28mr3253495uaf.53.1519513667330;
        Sat, 24 Feb 2018 15:07:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519513667; cv=none;
        d=google.com; s=arc-20160816;
        b=DsetkbPbNzZtKq8grf7AMOJgLhmldl3DvYa/sGSY3cNJOG6AgGfJdUkj4eo3YuL6zs
         7SGDjdgBzJHQz/YwMqMOgTJdattmfQM72vqBIYyfFZRbCX0VPuO7JJNPGX3sTgLxv24i
         OQwtfmmkcD1jla5uMIOzwcPjdT9Umg3AUw8TvTbi7PmRR73UAUVhJqLNLbltZA/kCj0w
         sCyxvzaL5xqnPpcpCQW6tYQBsw/jfNr6Q70zOu6WdwvmKOnrqzyGex9XeSjB7r9DFfJn
         YVSMjeuXvt5SktGUNcjb6Jp2GsiARnUJa3sHV2uw/GNR7+kvUDwiJ54xSyviWBaqWIKs
         INog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=kPMc2QAdV3kn5nOLs+iwVVdknTGWbL8NXUV9+yAHkI4=;
        b=BOFffBATfKnV5Lju0FhPS9e2d9eE1uQnW4VJD8gp+cToL4ubPOPlj75JxCJpgpBukF
         KDuHk1sBhMydBbr+flBtACHHJ4rU0YD4/J9t1QILqnWUHan0JKqpq2K7xWeN3gE9qrXc
         cDBEGO9lEHngngsjl18U+qL7f0GQkuzhe4ocWOUKU4N/KwfQuybFozbXOVOPfF5xnDx8
         49tdDR8YIXcS5K22Pak/C2TjodeuMsn5JdJmqvj6Bw6zMr4zqupmx6Fl05Lvb8H0UkNV
         G8GDvPMLF4ydjJuRJCEQ8webM01JKEs3eYsRGKo9QOLbUZ5d5Js/M/mosDHLJJxhTD0D
         1QvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQqiwFhc;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id c184si378433vkf.5.2018.02.24.15.07.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 15:07:47 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQqiwFhc;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id u13so7078843plq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 15:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kPMc2QAdV3kn5nOLs+iwVVdknTGWbL8NXUV9+yAHkI4=;
        b=UQqiwFhcN31+PlasGfCpDnJ+yIBnfU5YqlOiZ3PruKaO893/+vW5nLs0YG41hNIQmR
         Cu+ofvHWy1Spm2Qd51D1oxDy1W1MPxpW6V4K6evlwl1pY0j0bcEKRPOFu1AG8efAw2Kc
         wACyk85Ghy/JtSpodpiZUkmSZ+sHfwAWiquUlTRaFU9Ob57UBABUmQ3tGdsU08XSAr8N
         fV/1X/lQKsWANbdWXKbtGflFY2eL9Gunxs6SjSpeV9bjtH17OIrU5VLXdXtZ9ERaTf4v
         JG5s4UcH6dsn1kUOY0u13nh+Z1M/KCRijbz+Qkuv8Xz/n6mn5+H6sZQNlnXs7SIhM3kX
         wPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kPMc2QAdV3kn5nOLs+iwVVdknTGWbL8NXUV9+yAHkI4=;
        b=tcfXhXsDdvOFkknQqwCrm5ijdJJTIbaeEyIWDKtLAVIlc2yxv3sNe2IAApOaia7NKk
         oPYC1DG8dkAx7JIj+PLOMmEQlF7dtlWgpGgyiv+3EUefOgNHiZ6o4p/DeFsUWzG1suGv
         tyXPYU9hkmLekIj0s35mgmLjjoO+jMweqaLdGGUwhBnebFMhB75L1gcaX5UYYmOzUQ8o
         d4oNJZ4+ypQtB+rPvM8dDGUn2tZdPSnEWN1o9c5mq6G1lwJ4R1O6KaKIM3mDl5oO6f5u
         TmDVaBb8DDioxZ5Ppi2azfNQcNNY5KuNbS2mu+MF4GzvJp2RrQOCO2Vu7EZElqqdUepM
         a/qw==
X-Gm-Message-State: APf1xPB0xDSBhZZFZcHuP2VSGf/bYLH0O0ZVafIVh5Met1iGzaeXdQXZ
	D/HjLizgxKnLW29m1Osnlhs=
X-Received: by 2002:a17:902:64d7:: with SMTP id y23-v6mr6001205pli.258.1519513666393;
        Sat, 24 Feb 2018 15:07:46 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id y84sm11060516pff.81.2018.02.24.15.07.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Feb 2018 15:07:45 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: lustre: remove else after return statement
Date: Sat, 24 Feb 2018 15:07:39 -0800
Message-Id: <1519513659-12304-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove else after a return statement as it is not useful. Issue found
using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 9e96a8e..93707e5 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1193,13 +1193,12 @@ static int ll_update_lsm_md(struct inode *inode, struct lustre_md *md)
 			lmv_free_memmd(lli->lli_lsm_md);
 			lli->lli_lsm_md = NULL;
 			return 0;
-		} else {
-			/*
-			 * The lustre_md from req does not include stripeEA,
-			 * see ll_md_setattr
-			 */
-			return 0;
 		}
+		/*
+		 * The lustre_md from req does not include stripeEA,
+		 * see ll_md_setattr
+		 */
+		return 0;
 	}
 
 	/* set the directory layout */
-- 
2.7.4


