X-GM-THRID: 6393222666299375616
X-Received: by 10.176.3.148 with SMTP id 20mr211795uau.9.1488538148076;
        Fri, 03 Mar 2017 02:49:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls9302259otg.39.gmail; Fri, 03 Mar
 2017 02:49:07 -0800 (PST)
X-Received: by 10.13.212.195 with SMTP id w186mr862906ywd.105.1488538147740;
        Fri, 03 Mar 2017 02:49:07 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h79si2006019pfh.2.2017.03.03.02.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 02:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so5208988pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 02:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=KkmRbwzEdJdLv+gcay6Oy7qxgHUyb4Rtsij81DsbsKc=;
        b=X/bRVhaxdsSH9g8BotO+bBAss6ymWmyWmgO1GJ9yUSGTmdcuClbhoLYt0lpirQeWmt
         SS/N3OjoRiQO7sYPRnUQoLQOgZI0aNERmTM5ChsU7Rt/mKJz71+g6GVDXW6pcY3ucx+Q
         IGzLCEZJwIAugOoFZ0Qdg6a1wriXCem3ueMAe0HSFma3BpZFLvw6n5jtm982g8maXMQJ
         hnc3SbeeFW+uFL7UBgSMnMqUlkg2aOCN8bfy3NxmNf2gS5qe6vN8VrmZ0TGSNRMTt6h+
         jbaYVbSFY+PdIyyqPzrYiors74gbgnHNpm5wqXFh4QK0lzQFhXr9+JdMQgJB1gg8O3J5
         jh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=KkmRbwzEdJdLv+gcay6Oy7qxgHUyb4Rtsij81DsbsKc=;
        b=K65uFsl7xXfSdinkB+kpHyeGgLxT9L3P6HPHJlEKPj2jWQQcF3qNOZrmZqQIR0Z8Vb
         rVoE6wmLbPwt5DUD11IdyxDkfIlrVGPhJFx92PUuNtFnbNqDcwwocLmjj3Rs5Yf3Ja9h
         KESaoTfh3QL5M3fYW4cZslKAD2oN+H1Zu5kbTByhLdEKrcY38GAQexqgsa2fWvF8+Y/m
         HRtZ61HVRJS1fOwMKaqz6RU+/jShkI8uoRjOJeJTOxXmHrOgOVJlPAciQa+87eKuNKJQ
         sJXw5QiPn/pfXxUjQUpQNNVrWkRu30xf97D5JqVv38aFe2ULxEvCU26tKbX5Y/z9Bme5
         aRMg==
X-Gm-Message-State: AMke39nBOkqcdz2U5cU2zzVV7aIJtUmxAYlbMTd0dMaAJ7PcuygeCFrdSrwxXM2nGOkmlw==
X-Received: by 10.98.87.142 with SMTP id i14mr2590248pfj.85.1488538147469;
        Fri, 03 Mar 2017 02:49:07 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.55])
        by smtp.gmail.com with ESMTPSA id y9sm22622986pfi.39.2017.03.03.02.49.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 02:49:06 -0800 (PST)
Message-ID: <58b94a22.0910620a.79513.e66a@mx.google.com>
X-Google-Original-Message-ID: <20170303104903.GA4154@<rvarsha016@gmail.com>>
Date: Fri, 3 Mar 2017 16:19:03 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Removed unnecessary parentheses.
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
+		(x & HWC_LOCATION_X_MASK);
 	poke32(HWC_LOCATION, reg);
 }
 void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-- 
2.9.3


