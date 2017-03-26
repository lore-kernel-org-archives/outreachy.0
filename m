X-GM-THRID: 6401831328540524544
X-Received: by 10.99.97.8 with SMTP id v8mr6726803pgb.137.1490542508334;
        Sun, 26 Mar 2017 08:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.11 with SMTP id s11ls3338951iod.14.gmail; Sun, 26 Mar
 2017 08:35:07 -0700 (PDT)
X-Received: by 10.99.65.195 with SMTP id o186mr2453364pga.52.1490542507714;
        Sun, 26 Mar 2017 08:35:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y90si1468520pfa.6.2017.03.26.08.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so3478105pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rDH4QliQvvx6ei03ODSV2gkIy9XW0YmmkwireMr7Zl4=;
        b=F0EF0/KMLSaKfMr8JC/+M8V/ZUG7OKMRWvwMI7AOFYBpgvgUZDEo/PDno6A9XFf9pO
         Vy82ZnSDNEcjFE81i6Mr5fY+Ac0PUHJvJttHnEtw01wkwyIoGR8FpiGHC5U1n4JRdq0T
         aeKaJTw0AW5hPg2ECwpnaOUQ0g5g6u+TZmQbv+mwuo/LbjxFAbJgEegpUs4uE1KUyi/Z
         IhFD1oxYU925WF4x2i3R1MY7IIEZ0Fc2TzFthSLSmM/713gdi24GqYMoU3MhzfuiZE/o
         sA0P2tUa/U4lsDsKooKZx8vZphjNY6Acm/rvwAZxu+EJLW89VqlOXv0ScYyCT69uZFSY
         JsMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rDH4QliQvvx6ei03ODSV2gkIy9XW0YmmkwireMr7Zl4=;
        b=NQfA3Xrlzbast6ff7mEC8y/Or0S7un552RSJJrWbiHkoh7dMEQWrnjb4638z9CuKAP
         Co6E1YqPndEZYOeKKIBXzj4eCWvNdm5gHEShT1Obi1qpFkcAAutBcBYai4CxyLKe7f3Q
         pylnfzaO/TIoFs5phQoAFiBEmG4rtoaqgcyB8MiJP1Hh58QC0I4aaqac5yMLKTdH4jzU
         r7vgZRDYo7ge7L5H9zsJVrwWPUTnJUD5NSHp5oTz87MMVvYX+jiZCpA0kmsR4FZFti/d
         Gz8qZIK5t8K3V0hoj0f4X3IeGCHFYZOSM3+PCPr/M1cqhe10nsNsXXMyHE+buJ7E4gy1
         a1nQ==
X-Gm-Message-State: AFeK/H1UYsFqTKCR/7x6ELhzXpYIk8tuFpRY3EUvEbidpRSRwhzdj+wEp4xo5+UJYkVOUQ==
X-Received: by 10.98.106.134 with SMTP id f128mr19974437pfc.142.1490542507346;
        Sun, 26 Mar 2017 08:35:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id p189sm15686433pfb.128.2017.03.26.08.35.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 08:35:06 -0700 (PDT)
Message-ID: <58d7dfaa.c65b620a.68c66.766e@mx.google.com>
X-Google-Original-Message-ID: <20170326153503.GA20020@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 21:05:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] kernel: pid: Replace unsigned with unsigned int.
References: <cover.1490542214.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490542214.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replace unsigned with unsigned int, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 kernel/pid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 0b0aad4..c022239 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
 	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
 	 * and that mapping orders 'a' and 'b' with respect to 'base'.
 	 */
-	return (unsigned)(a - base) < (unsigned)(b - base);
+	return (unsigned int)(a - base) < (unsigned int)(b - base);
 }
 
 /*
-- 
2.9.3


