X-GM-THRID: 6393222666299375616
X-Received: by 10.25.195.206 with SMTP id t197mr1068633lff.11.1488632169971;
        Sat, 04 Mar 2017 04:56:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.87 with SMTP id t84ls600285wmt.15.gmail; Sat, 04 Mar
 2017 04:56:09 -0800 (PST)
X-Received: by 10.223.128.208 with SMTP id 74mr180148wrl.14.1488632168969;
        Sat, 04 Mar 2017 04:56:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id b186si582359wme.1.2017.03.04.04.56.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 04:56:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id z63so4676309wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 04:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=wZtzc3EVwsUGTaPJbaLKxrr+1lS4sL4gOxQ8AnahzWI=;
        b=ORTfOowjC1v4qJaIZUD9a514u++2qdrrk61GZbVuUWNpl0vouRN2IDECCqPI4+iTl5
         Ydfcnbzroj6+pH6rzlLvXyhO6JpG7FWLOwZORTANUhIN2s6pzjxmshvXY7laBxLJ69GY
         6kobrRHoIhq35iwpJIR4zb4W3ohUxm4Acr6V7SXqsPv/Lfm0s2vhzZWaJtoxi8L0PuwJ
         nqTujb4IKFPDDP1YhCAbWhw+2vePQ+GXH4vEY5P/kfMqSNzjFBA06qXCa/21tMoWNDwW
         ++oQRYZ4PR9DQ6xJcQZ7n0yXAAT4R4cVs+D7VZO0aeg90gpaUfJufX5QiBZEjKHyvGGw
         JcOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=wZtzc3EVwsUGTaPJbaLKxrr+1lS4sL4gOxQ8AnahzWI=;
        b=DHQ+xOahFEGgJpT1ETtQJRq9iKY/6JEgnCOGKe/T0Bu69KDc8W9fCYqZU5F9HEYYoV
         jYP1mlSZBiLgxmWibfaFYBViQiuWvCvwrdBiveeMmIIqDCfz5TjEGRCT1ISbXzyQXhGe
         Vj1iBaZ8SaGsfAwLxdZdTGxvejeTmyZfHAwYMEpkJWS9+e5bPGDqSyU2m8XWuxnbTFhR
         zaS+8XnK/+BEbBJ2omD7NL4Ec7qairu8j/YCOKKe6jS+GBfE8fhK2vdYLGfJvXqg9HDD
         qwRN20+BoaZ535Oho5D0DaLxrakWTK5bpjv/FVPVLX4Zorzfhe6oy31V+LnBRKDul4Ja
         xyxQ==
X-Gm-Message-State: AMke39mjE4TgYssOrfMJggvwOPIMQBMCRZwNry5yc9jMg9FHvkmWYZ6Z/WPqbr4ep0JwSg==
X-Received: by 10.28.19.207 with SMTP id 198mr6167760wmt.70.1488632168500;
        Sat, 04 Mar 2017 04:56:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.27])
        by smtp.gmail.com with ESMTPSA id y145sm6956734wmc.17.2017.03.04.04.56.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 04:56:07 -0800 (PST)
Message-ID: <58bab967.977d1c0a.81978.2abe@mx.google.com>
X-Google-Original-Message-ID: <20170304125524.GA3430@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 18:26:02 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: sm750fb: Removed unnecessary parentheses.
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


