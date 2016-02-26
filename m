X-GM-THRID: 6255482024290680832
X-Received: by 10.140.29.183 with SMTP id b52mr16445316qgb.8.1456470759936;
        Thu, 25 Feb 2016 23:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls832136qgm.23.gmail; Thu, 25 Feb
 2016 23:12:38 -0800 (PST)
X-Received: by 10.140.153.23 with SMTP id 23mr19507qhz.18.1456470758770;
        Thu, 25 Feb 2016 23:12:38 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ui7si1784808pab.0.2016.02.25.23.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:12:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id q63so47327838pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=KFTrtcnJn+PywKqvANVQ4DMWpGhejrXaLZDjdpjstq+3EP7C0uaGpeSfT8EYnciDwt
         v3sQA8t1QqL0205/gDzk8Xr4UtD6ljimRo2Bz9IagZVKpLDIOFD41LdACOjHoyPmJCbN
         FMyE0+XKX9Kl4qX1ZeWgVwKOQ+YASvsCPJRxOu3yfvtkcHcAzl6pP3KGYUHnoETqi+sw
         /cPC5Y7Y2brgT6VNmviOCHCtyCwRPgSL/fw/qNgRpjPfXEZC5w9RBfAFe6ISRSXHR7et
         UwdL4uxEgCRPBPK8OvDjogjFok0heB+pgcnVKUdXfYjKqtUoqh28Qgdo8songimcYlOo
         lwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mM5a4rtI/amPv+IInPROO94ydMlR5kCqkRNxDjTnCp8=;
        b=mjDZlXroHd4acugMyWi7KPPzajofwu/E7sMNgutruKRT7jSnof5k7ZVIWrE+13kJuF
         wfP971E7cuC9tYnlL/mcUN45LwwzBDWMmQCzbSs/7Nw7v6ZvXEkb2L+PtADvWbv0H5Mg
         313uJ+3ARstHFOQiiEWG3b5AhZcDPXZO79EWXjGEknS+OrabUaWlPgGsqeCgpNe+N0TT
         muXWB15vwzWOcyn7cnRgMJhLuSg0Kt6JCutdoUQaD7bQsWSUtMvNz6VUAbo5B2IiAes7
         RJhiUQPRtCrSOjO4G3BKbKfl/rkgGcTUOhzwHI+dkGBQ8/Fauntn2xra7KPesR0Jcrqr
         n9gg==
X-Gm-Message-State: AD7BkJIz07qR7ZjQ4eZaiXp1E0OzlZLUAMBGRg1U6qCVka9FKK+wgCQJFcG11kXlkXe1dQ==
X-Received: by 10.98.31.221 with SMTP id l90mr39533pfj.92.1456470758602;
        Thu, 25 Feb 2016 23:12:38 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.133.245])
        by smtp.gmail.com with ESMTPSA id c68sm16755536pfj.41.2016.02.25.23.12.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:12:37 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 12:42:28 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [RESEND PATCH] Staging: comedi: Use DIV_ROUND_CLOSEST
Date: Fri, 26 Feb 2016 12:42:26 +0530
Message-Id: <1456470746-19844-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>
References: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>

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


