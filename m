X-GM-THRID: 6393222666299375616
X-Received: by 10.129.153.65 with SMTP id q62mr1813151ywg.23.1488937501351;
        Tue, 07 Mar 2017 17:45:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls655176ioi.15.gmail; Tue, 07 Mar
 2017 17:45:00 -0800 (PST)
X-Received: by 10.107.57.198 with SMTP id g189mr1414776ioa.24.1488937500613;
        Tue, 07 Mar 2017 17:45:00 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si345575pfd.3.2017.03.07.17.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 17:45:00 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so1890691pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 17:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=/ynFHFJu7JBYxOImSs/Qz4tElai8no1GGe/CQXsk5fc=;
        b=T3qY1KS3prVsIylKHJ8e7/9QaI0GhEU9YUx3Kbz29+fO2Sob47aio3Z8v1DZj+5AoX
         W4CcZhZ+1m6h7/Iv+GzKBHzqwWJgx5VaIfstYRXQ9lG97BrYmn2NJ3avXaTtOftoVE00
         lr/V+rJF4rLRBs9IY1RDKX6Wz0lDPSgnJFCvUPThI1cVMkNZaI2i0Jwx88XaN9NtHlfV
         k/M1hsRdYs+oadq3+30sFbh00RlDF4GHOIcCxOH1AcJPC6R/txp0CYn/jQj4+pPSc/Fk
         sZ9KKrrhTeI6JdOxGJmxN75aQ+f+dG5OxNruu3OuSe8WwD6LmKMUpoWOnMbf9e8cyar/
         LOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=/ynFHFJu7JBYxOImSs/Qz4tElai8no1GGe/CQXsk5fc=;
        b=jNVUVo0IvsmfW3c4e9lJY7XuUp0YjJQDPXKCpD7DipCoSlWCocy4mFBfOALYPZ9/Gm
         S9Uuca1gK8Qh4DTC9xTljtQG1h4a926ZLvXXRCphDS4NgBzj822iUQtDBbx0hrTrjQYY
         /f1NbajWw2wjjn44RaEDNncvEhwhr6nWwuSeLOj1zE9ii8ZJJLnig90W9RR3jWQIu3BI
         bTIlFgw79uqLDd34T+1QhEwJZ2sWyyefiZXWCqQ/iFb6lCVFvhQP/7KlXm5HqaDGY0lR
         53VyF1Tgycrv0/ONQE9NE1nZ4CSmj1NGmTW0Urueomm+unNFx8Y2Iz/qGa0ch6NmcX8/
         H+AQ==
X-Gm-Message-State: AMke39nFwcYYFtmmFo7T2NQPV+KlWnnBzugPEkqOvO9xkvkU43hiCjxmHp0dwfZHc6eZJg==
X-Received: by 10.98.10.83 with SMTP id s80mr3903229pfi.27.1488937500094;
        Tue, 07 Mar 2017 17:45:00 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id p66sm2049623pfb.88.2017.03.07.17.44.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 17:44:59 -0800 (PST)
Message-ID: <58bf621b.455b620a.e68a5.675f@mx.google.com>
X-Google-Original-Message-ID: <20170308014455.GA4963@<rvarsha016@gmail.com>>
Date: Wed, 8 Mar 2017 07:14:55 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v2] staging: sm750fb: Removed unnecessary parentheses.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed parentheses on the right hand side of assignment, as they are
not required. The following coccinelle script was used to fix this
issue:

@@
local idexpression id;
expression e;
@@

id =
-(
e
-)

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr> 
---
Changes in v2:
- Maintain alignment of last line to as it was before changes.
  (sm750_cursor.c) 

 drivers/staging/sm750fb/ddk750_chip.c  | 2 +-
 drivers/staging/sm750fb/ddk750_hwi2c.c | 2 +-
 drivers/staging/sm750fb/sm750_accel.c  | 2 +-
 drivers/staging/sm750fb/sm750_cursor.c | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 9e49298..5e4bfb6 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -352,7 +352,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig, struct pll_value *p
 		RN = N * request;
 		quo = RN / input;
 		rem = RN % input;/* rem always small than 14318181 */
-		fl_quo = (rem * 10000 / input);
+		fl_quo = rem * 10000 / input;
 
 		for (d = max_d; d >= 0; d--) {
 			X = BIT(d);
diff --git a/drivers/staging/sm750fb/ddk750_hwi2c.c b/drivers/staging/sm750fb/ddk750_hwi2c.c
index 68716ef..fe814e4 100644
--- a/drivers/staging/sm750fb/ddk750_hwi2c.c
+++ b/drivers/staging/sm750fb/ddk750_hwi2c.c
@@ -217,7 +217,7 @@ unsigned char sm750_hw_i2c_read_reg(
 	unsigned char reg
 )
 {
-	unsigned char value = (0xFF);
+	unsigned char value = 0xFF;
 
 	if (hw_i2c_write_data(addr, 1, &reg) == 1)
 		hw_i2c_read_data(addr, 1, &value);
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 9548863..6db9b90 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -212,7 +212,7 @@ unsigned int rop2)   /* ROP value */
 		sy += height - 1;
 		dx += width - 1;
 		dy += height - 1;
-		opSign = (-1);
+		opSign = -1;
 	}
 
 	/*
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index aa232c3..401b916 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -70,8 +70,8 @@ void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
 {
 	u32 reg;
 
-	reg = (((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) |
-		(x & HWC_LOCATION_X_MASK));
+	reg = ((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) |
+	       (x & HWC_LOCATION_X_MASK);
 	poke32(HWC_LOCATION, reg);
 }
 void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-- 
2.9.3


