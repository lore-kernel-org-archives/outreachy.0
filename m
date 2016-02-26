X-GM-THRID: 6255482024290680832
X-Received: by 10.182.137.193 with SMTP id qk1mr42924259obb.50.1456467906679;
        Thu, 25 Feb 2016 22:25:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.64.180 with SMTP id p20ls219673igs.40.canary; Thu, 25 Feb
 2016 22:25:06 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr45036955pas.4.1456467906361;
        Thu, 25 Feb 2016 22:25:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ui7si1767056pab.0.2016.02.25.22.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fy10so45703328pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 22:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=w3IKkO1B6yQk5Ed5efxCgl3QgaNsSpehyKPir/4UnjxrPgzRXA1BzhjdDxAJvWMdlB
         ZhTGyQekrs068rf6A0ZX6guQJ3xQ1Diz5ZYMv82nssQecP1kyIWXWv6x3bWtl44MuaMq
         42tnTDk5GhqTX3wFNHlm7HKmRrb7pHOLWybAs7Y1lmYwRKKLRNEFGe4O3laE6cMevogx
         NjgCk8Ywn7jJdWfgEceNclSbMC1FxqUYfgLBRF7q7ePc7jWeBP+rvXypqKZHoKo+/HTG
         va0ucgBRpddMdk9UeGBKZsWoJk9grhWCfl/8jRA1bsKhd6s0CXz20R38JF8paVlwOSmc
         UYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=YV7XWNyVr3LmWyK+IIunZy4sbGv3Nou232YMUXuTD3x1bl7qI3h8uJv6UTcateo0CN
         U0+WF6qt03UPvffphvs9yuBhDx8f9ArsZ0g2daEycGrgo3DO2WuDllqZw6PIfRS0uO0V
         x7yqKlqRuumptUHDaIWYKaueOlGmDJxeNUbssN3Vpf3coA8cs2/xc0M1Xfx251t7Ddkf
         peSfYAGm7q85w/cdrofkWFLUkIYlFi0vGYpDejNjJLqUhLgaK5yZ2Fl4AJ1VvBtYI2CO
         ERznx4b2siR4XDNNlYkdn6RhC2PQ3mqqXRlYceQ7RsoM6AbS4d25knAPGJGnQoMUtvCO
         BoKg==
X-Gm-Message-State: AG10YORnmJpN5zXIZGTyJGkkF65CDV9Ff/9Mm/L7AiCDjSUFcvWfmx6389cJ2fL0tIHQPA==
X-Received: by 10.67.8.100 with SMTP id dj4mr69010099pad.88.1456467906225;
        Thu, 25 Feb 2016 22:25:06 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.182.127])
        by smtp.gmail.com with ESMTPSA id ml5sm16405569pab.2.2016.02.25.22.25.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 22:25:05 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 11:54:55 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: comedi: Use DIV_ROUND_CLOSEST
Date: Fri, 26 Feb 2016 11:54:54 +0530
Message-Id: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>
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


