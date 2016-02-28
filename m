X-GM-THRID: 6256372514284371968
X-Received: by 10.182.24.41 with SMTP id r9mr9431573obf.25.1456675239155;
        Sun, 28 Feb 2016 08:00:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.65.202 with SMTP id z10ls949863obs.31.gmail; Sun, 28 Feb
 2016 08:00:38 -0800 (PST)
X-Received: by 10.182.75.196 with SMTP id e4mr4943385obw.36.1456675238881;
        Sun, 28 Feb 2016 08:00:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id y20si1023810pfa.2.2016.02.28.08.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:00:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id bj10so8062395pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hY8ICRINdWsN3kx0Oiwjy4i30UYLP+LksPuow7NoeYc=;
        b=WBruUiZytYbdo9c5qLUJIGVRnrB+iP9z6IuFjhLsmEifEN4EBFBJ7V8DGymovsaicM
         GiZxZZT3UM2xRu4l1w4SRg/RQIHJRpY7xwsC58QOblOaV4vB4naJsyrq6wulTLRIVktL
         /JD/louAV7J51CjMmLfjDCiixhf6/Z208skwuvxA8ZdGLAcUBFynA/UwCtclGRHVvHz4
         b83rg8dr4ha1I28tpruUlAtxb9Ef2PFhW91xxIFCR+poCNnCdSeSdZhvdwDdt2/Ac9zh
         eRnIsKjse8DFrO4iBxtLKB1wJZxgHSNB0F3sR8/m15gKzSFHvY97XL3qxSuW4cm/P43W
         o7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hY8ICRINdWsN3kx0Oiwjy4i30UYLP+LksPuow7NoeYc=;
        b=Ap9bmCvEWoLb56t1aZ0PXJgAFVIXfzVJbciU4zzfxzCcXKZWA7nPrvnGODkDDYM37H
         XK68AWL8nRyGU2ke7KMCujgBVdYc7kn6ewsNFeFAgDRjs7r9Uv/9Z5YKkpzx0tvT6t5Y
         l6GH4LaWysPOdqcAc3apjtXCbLjP+ump2qsK+8osVJK67y2kKzUmekYOxFzcZ68oBD69
         XKnHxhrWrJSMML++HvGvPLF3WbA4HWVELXr6QNLlL7s2N+QdbVRrl+Pn0QahuZwPvE21
         18i13jMG/fJrEXbDq2Ti4skRjj7KorYuj99u39jRyYsSwNaXKFd+5a9Iq6mlsgFL5gr1
         rsyg==
X-Gm-Message-State: AD7BkJInBdf8z/I6CA5yPDgO3brkN6X+X+yo6etmaNbRDIcgNlg442iT9Gd6aLw2JTjLzQ==
X-Received: by 10.66.55.39 with SMTP id o7mr15969305pap.13.1456675238500;
        Sun, 28 Feb 2016 08:00:38 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ll7sm32129871pab.6.2016.02.28.08.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 08:00:37 -0800 (PST)
Date: Sun, 28 Feb 2016 21:27:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove Unused macro
Message-ID: <20160228155749.GA17278@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro PEEK32 is used nowhere in the file. Hence,removed.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index 2d348c6..d622d65 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -19,8 +19,6 @@
 #include "sm750_cursor.h"


-#define PEEK32(addr) \
-readl(cursor->mmio + (addr))

 #define POKE32(addr, data) \
 writel((data), cursor->mmio + (addr))
--
2.1.4


