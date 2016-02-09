X-GM-THRID: 6249320187876605952
X-Received: by 10.112.151.240 with SMTP id ut16mr3799258lbb.16.1455033241693;
        Tue, 09 Feb 2016 07:54:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.67 with SMTP id m64ls935665lfm.49.gmail; Tue, 09 Feb
 2016 07:54:01 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr4179765lbb.2.1455033241195;
        Tue, 09 Feb 2016 07:54:01 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w197si552647wmw.3.2016.02.09.07.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:54:01 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id g62so4229092wme.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yyg23Mrf4YyAkUdeV6VoeBBdHI/xeIa1QuX/d257++o=;
        b=M2utsndEd5R0Gb8/FSaoTddsB1/A2Bll0H5wU7iqasL7eGHaU3ADk6aoihQed3Y7oE
         B1gLKbdICiUTqNASChyYoyGVKVTYrBgC6bvgeRR5gCQ4j/8I8f3IXZvCEgNoWv54175k
         yLp95v2TBd0BYmNagP8wT1ERnCnBcHKyy/r//C8nXgTJsJIcsKjchH+V7upPRDOOZF81
         vkiggYvinohJ34/rO4k85Vs4ozB9RxsF/jpRv8QMCDJ5xpqm/zp81TVSCBOVzoBWBAp/
         iFxS1OsjwJIF0ueszL4nfo5VulADMiTfhN1JRh/i32qNyAR3RR4fbq38ZCQCMDREVyrP
         Rhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yyg23Mrf4YyAkUdeV6VoeBBdHI/xeIa1QuX/d257++o=;
        b=Iu271aGAQdJxtztj2KgJm5iIPMnGbvSrD9UYgH1dCTJfbWsvRgSpyWGMyw/mQ6COX7
         hySuT9X6myQI27a2ixIy8ou4jJIOCg7E2T3I1CeM0KS0UeegEcgGbeYzBx6m5zxBY0LX
         a6WhVXZRmdoAL5HDjiq6Ol5wWo3KIzGIQspJf7XPuCGr67/z5moscvyzwopY0a8JOOrt
         EC3bvwt4rreFQJ0CZOdZJWVaDJNhbVE8nu97NjKM+MEQ0vFBiRQaf9ruRYOgKTnD3XK9
         +rSXwldIkznrhLoZ7uv8wGZ3TalGkyx3m1o1FmfV7T+qhSFCrC5dhBuFM367Bhyd6SeM
         oSiQ==
X-Gm-Message-State: AG10YOQF1c8iOBKFXec32NBa9jLZ3HKTey+2MtB6Zu3saspzb9gf98gryWHYg0PYcMrbwg==
X-Received: by 10.28.179.84 with SMTP id c81mr5795681wmf.30.1455033241031;
        Tue, 09 Feb 2016 07:54:01 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id ka4sm35357130wjc.47.2016.02.09.07.53.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 07:54:00 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia.Lawall@lip6.fr,
	gregkh@linuxfoundation.org,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] drivers: staging: lustre: lustre: lov: lov_request: Fixed a coding style warning.
Date: Tue,  9 Feb 2016 21:23:32 +0530
Message-Id: <1455033212-16140-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed a coding style warning.
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_request.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_request.c b/drivers/staging/lustre/lustre/lov/lov_request.c
index 42deda7..c77b987 100644
--- a/drivers/staging/lustre/lustre/lov/lov_request.c
+++ b/drivers/staging/lustre/lustre/lov/lov_request.c
@@ -340,9 +340,8 @@ int lov_fini_destroy_set(struct lov_request_set *set)
 	if (set == NULL)
 		return 0;
 	LASSERT(set->set_exp);
-	if (atomic_read(&set->set_completes)) {
+	if (atomic_read(&set->set_completes))
 		/* FIXME update qos data here */
-	}
 
 	lov_put_reqset(set);
 
-- 
1.9.1


