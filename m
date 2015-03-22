X-GM-THRID: 9545669672960
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4674f108a50e6ab4,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.216.150 with SMTP id m144mr95532311qhb.9.1426998852620;
        Sat, 21 Mar 2015 21:34:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls2077931qgi.34.gmail; Sat, 21 Mar
 2015 21:34:12 -0700 (PDT)
X-Received: by 10.52.5.169 with SMTP id t9mr95276018vdt.7.1426998852444;
        Sat, 21 Mar 2015 21:34:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pj7si362881pbb.2.2015.03.21.21.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 21:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id xg6so140500094pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 21:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ww8md9mPILD1bfUI93OlULPIPH/Bx1NplXs7UxMrdS4=;
        b=gvfyFTPaP0dMekmGigyw+NPhOuXle/x//OEDqAaxh4CuUSZVGFAvA4OZRlcg+/FxUx
         p3s97P4bFSC1Q2gmmDMhnN6W9GItqL3syQFEurrZPouq9oGDD6nnAofM4EabvgWYxrnU
         IMW8OltARDPvw3hkOYLb2QF+VQBcCYJKZmWH6bxk7T6p8LLmCY8vNBI7uith8CfxfpFI
         eA6oWzupkit1tek4IMxmTA2Ohb4Y2AsZ2iv6qKljlzUjnGLbm3ZXheTj42rFrWItJMPe
         sXUKMKawrUuD20zMm2i9Q8CGJUkxtX9yL9w+aEEqvrcsMfY8BIZrKvxdbonv+d8oU2jg
         Pg7g==
X-Received: by 10.70.109.197 with SMTP id hu5mr127573496pdb.98.1426998852301;
        Sat, 21 Mar 2015 21:34:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id yc2sm3315384pbb.87.2015.03.21.21.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 21:34:11 -0700 (PDT)
Date: Sun, 22 Mar 2015 10:04:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 5/5] Staging: sm750fb: Correct brace '{'
 position
Message-ID: <20150322043407.GA30227@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl error by placing the brace '{' in the correct
position after if statement.
ERROR: that open brace { should be on the previous line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index a1672c8..03d96c0 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -191,8 +191,7 @@ void setMasterClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-	if (frequency != 0)
-    {
+	if (frequency != 0) {
         /* Set the frequency to the maximum frequency that the SM750 engine can
            run, which is about 190 MHz. */
         if (frequency > MHz(190))
-- 
1.9.1


