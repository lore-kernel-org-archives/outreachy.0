X-GM-THRID: 7460820615168
X-Received: by 10.180.11.34 with SMTP id n2mr5345539wib.2.1426007132093;
        Tue, 10 Mar 2015 10:05:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.129 with SMTP id r1ls216944wia.43.canary; Tue, 10 Mar
 2015 10:05:31 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr4880496wjb.1.1426007131596;
        Tue, 10 Mar 2015 10:05:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id o3si1115013wib.2.2015.03.10.10.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so4770765wid.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=CBY+HZHI1qEcrQ06Pjc4qFsNmQd3yCnF6DVXsCHCPXY=;
        b=S/dU8cDj7dbkBzpmEbBBqFr1X5nArxR6/8Um5CPtf5aRXwnrV4ih5yHy77gLEX9Zyh
         S3KcA6jzlfDFDrGCaU+o9JXuR2uciO7wuvnMLOQZK0QUali0OX48/eANcSk4++Ej9X8D
         2vdg6Hfnbw6NqLcwXJ+6rZJX6Vm0JQ+WDaSv2KRqzKSWLmmlTf1x71IDZBOK3U+ekAMY
         3gifSSbR146SrhFDwzRI31NQFLluf2t55U1SbfqmUzWiKHabtEcN/mF7fAVcXIwyOEuD
         4khdN/FZFBtip5jXxIp5gCoJrcAIyq64KPR7DsEjMV6VY6nvIXleG5t7g2JERIpMpB4i
         UTsw==
X-Received: by 10.195.12.167 with SMTP id er7mr71559726wjd.54.1426007131479;
        Tue, 10 Mar 2015 10:05:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id hn8sm2397135wib.18.2015.03.10.10.05.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:05:30 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:05:27 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 13/20] staging: fbtft: fb_hx8340bn.c: remove extra
 parentheses around function arguments
Message-ID: <8b2002339d1c47e9fa76417b95dfde21e5be9629.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fb_hx8340bn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_hx8340bn.c b/drivers/staging/fbtft/fb_hx8340bn.c
index 26a987a..072b755 100644
--- a/drivers/staging/fbtft/fb_hx8340bn.c
+++ b/drivers/staging/fbtft/fb_hx8340bn.c
@@ -129,7 +129,7 @@ static int set_var(struct fbtft_par *par)
 #define MV (1 << 5)
 	switch (par->info->var.rotate) {
 	case 0:
-		write_reg(par, 0x36, (par->bgr << 3));
+		write_reg(par, 0x36, par->bgr << 3);
 		break;
 	case 270:
 		write_reg(par, 0x36, MX | MV | (par->bgr << 3));
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

