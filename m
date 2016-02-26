X-GM-THRID: 6255482024290680832
X-Received: by 10.129.74.195 with SMTP id x186mr44384260ywa.36.1456467926668;
        Thu, 25 Feb 2016 22:25:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.226 with SMTP id l95ls637415ioi.95.gmail; Thu, 25 Feb
 2016 22:25:26 -0800 (PST)
X-Received: by 10.66.55.4 with SMTP id n4mr44136620pap.22.1456467926383;
        Thu, 25 Feb 2016 22:25:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id 12si1728441pfb.1.2016.02.25.22.25.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:25:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id c10so48200497pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 22:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=ErPS/xgQzauJoSRWi4dO+/B2YbuEXdZVm9CVW0HMDJT0i2t4HRrBUa1XFBA6LxdvdV
         +QY6HMPFTY1jIwErALTLS4NqhKiSRwXOjv7KPSItiKIrxL11rF0HthaauHiQLv2NYs4K
         DQmvzqhRGmRd4lDhjKGz/4C60s8srC9CjSJCG7GHexrvLDc72rKqQvs/+zLqt8vNcLJc
         nJPun3D2mpwRMxom5niwjlboj7q9CpJKWnOXCiHjWGy/oXcPRLwfUS5NlC//kSUW3ZUQ
         Nqdch+lISf2cFpGjVNW6Je3q1OxcA61f5b+KWBoAzigv8SxG1vso4GuFwXu7MU96L10g
         NjWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=TsRQ4BtnwyWw3Urv0PJjzk570FbyxLJ7a0w0eVHIGcl5WdIovfYuE3fE+mbK0J1bqZ
         JZ6HHnUBdSHmDXSTADD6+5frrdp6fJtyqJINB1w6hr5uRcR8tDv9ef1imnLndymOMocT
         5zxOCRHmBLKAD8dj2TVuOdNNx/GwFATzF3AL3z8k74+o0htgpgw+X+8QH9syS59EfKyB
         p7ci1eE4W+9tY64IufpKiEnUt9hswt8g3uGgIp/Cka4IuNVx3KZcML2SPfL4JE4oRuo/
         cZiRcisIk+6vIsngi/NYWWINUv80emzQFDXmYyvEW5RAqliVVjQ2cX8MD8TS9ACXcuI/
         7zvQ==
X-Gm-Message-State: AG10YOQbjCkxVou+JGoAyOoU0uAhSV7f5AWFoBA1LDAxdm+PpthFY3ynF8ji6JN1I8Ac+A==
X-Received: by 10.98.17.28 with SMTP id z28mr69629988pfi.38.1456467926265;
        Thu, 25 Feb 2016 22:25:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.182.127])
        by smtp.gmail.com with ESMTPSA id o184sm16363773pfo.36.2016.02.25.22.25.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 22:25:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 11:55:17 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: comedi: Use DIV_ROUND_CLOSEST
Date: Fri, 26 Feb 2016 11:55:15 +0530
Message-Id: <1456467915-14287-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macro DIV_ROUND_CLOSEST performs the computation (x + d/2)/d and
makes the code more readable.
Done using coccinelle:

@@
expression x,divisor;
@@
- (((x) + ((divisor) / 2)) / (divisor))
+ DIV_ROUND_CLOSEST(x,divisor)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 1c2abb3..0df293a 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2052,7 +2052,7 @@ static int ni_ns_to_timer(const struct comedi_device *dev, unsigned nanosec,
 	switch (flags & CMDF_ROUND_MASK) {
 	case CMDF_ROUND_NEAREST:
 	default:
-		divider = (nanosec + devpriv->clock_ns / 2) / devpriv->clock_ns;
+		divider = DIV_ROUND_CLOSEST(nanosec, devpriv->clock_ns);
 		break;
 	case CMDF_ROUND_DOWN:
 		divider = (nanosec) / devpriv->clock_ns;
@@ -4234,8 +4234,7 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 		switch (data[1]) {
 		case CMDF_ROUND_NEAREST:
 			up_count =
-			    (data[2] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			    DIV_ROUND_CLOSEST(data[2], devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			up_count = data[2] / devpriv->clock_ns;
@@ -4251,8 +4250,7 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 		switch (data[3]) {
 		case CMDF_ROUND_NEAREST:
 			down_count =
-			    (data[4] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			    DIV_ROUND_CLOSEST(data[4], devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			down_count = data[4] / devpriv->clock_ns;
@@ -4298,8 +4296,7 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 		switch (data[1]) {
 		case CMDF_ROUND_NEAREST:
 			up_count =
-			    (data[2] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			    DIV_ROUND_CLOSEST(data[2], devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			up_count = data[2] / devpriv->clock_ns;
@@ -4315,8 +4312,7 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 		switch (data[3]) {
 		case CMDF_ROUND_NEAREST:
 			down_count =
-			    (data[4] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			    DIV_ROUND_CLOSEST(data[4], devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			down_count = data[4] / devpriv->clock_ns;
@@ -4919,8 +4915,8 @@ static int ni_mseries_get_pll_parameters(unsigned reference_period_ns,
 	*freq_divider = best_div;
 	*freq_multiplier = best_mult;
 	*actual_period_ns =
-	    (best_period_picosec * fudge_factor_80_to_20Mhz +
-	     (pico_per_nano / 2)) / pico_per_nano;
+	    DIV_ROUND_CLOSEST(best_period_picosec * fudge_factor_80_to_20Mhz,
+			      pico_per_nano);
 	return 0;
 }
 
-- 
1.9.1


