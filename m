X-GM-THRID: 9531177304064
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9f925fdfea633f78,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.254.65 with SMTP id ag1mr6150363igd.7.1426995803869;
        Sat, 21 Mar 2015 20:43:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.131 with SMTP id 3ls1624750ioj.41.gmail; Sat, 21 Mar
 2015 20:43:23 -0700 (PDT)
X-Received: by 10.66.101.34 with SMTP id fd2mr1009248pab.18.1426995803558;
        Sat, 21 Mar 2015 20:43:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ri9si1228364pdb.1.2015.03.21.20.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 20:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbni2 with SMTP id ni2so149804414pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 20:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jtBz828uLorREc/FyQLWmegFbB0c8PUa+133J1Uz3ig=;
        b=PN9wT+KCWsvHvJQB5rO6EymgiBrLZRttXXlDMSwnjQLQiilRj/ypArBQ3B5/qZP28W
         wEXkiXSgokQF0kezd81dqly23fPfQy7H8naYklLhAXpoI/k9HJdv2iJkF3ScRCZuTsw9
         w648u7Oy0AmTKswOxVkC6Fh8J1G3TaqTfkaKuPYorEMZPgW5xuGWnVK8y9UjKdZUyGRe
         8Fc2JFR/zt86wnSdAg5g1rLXd4c0+8ZDs6NqJ935Bf5W8OyvRfm23fLW/L+gdiIZ3tbE
         vO+qpOawUFYHs1+M/pTbA6i2TidYUxvKODvQUvrDryyhXDx+xEqgImXMErXOJKvdx+B0
         hleQ==
X-Received: by 10.68.89.4 with SMTP id bk4mr9222046pbb.80.1426995803424;
        Sat, 21 Mar 2015 20:43:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id pq1sm3234187pbb.23.2015.03.21.20.43.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 20:43:22 -0700 (PDT)
Date: Sun, 22 Mar 2015 09:13:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 2/5] Staging: sm750fb: Use tabs for code
 indents
Message-ID: <20150322034318.GA29965@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch.pl error by using tabs for code indents.
ERROR: code indent should use tabs where possible

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b1fbccf..5020280 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -149,12 +149,12 @@ void setMemoryClock(unsigned int frequency)
 	if (frequency > MHz(336))
 		frequency = MHz(336);
 
-        /* Calculate the divisor */
-        divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+	/* Calculate the divisor */
+	divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
 
-        /* Set the corresponding divisor in the register. */
-        ulReg = PEEK32(CURRENT_GATE);
-        switch(divisor) {
+	/* Set the corresponding divisor in the register. */
+	ulReg = PEEK32(CURRENT_GATE);
+	switch(divisor) {
             default:
             case 1:
                 ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
-- 
1.9.1


