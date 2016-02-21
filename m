X-GM-THRID: 6253692932562354176
X-Received: by 10.182.227.137 with SMTP id sa9mr22580321obc.44.1456051350092;
        Sun, 21 Feb 2016 02:42:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.225 with SMTP id ed1ls472097obb.76.gmail; Sun, 21 Feb
 2016 02:42:29 -0800 (PST)
X-Received: by 10.182.227.137 with SMTP id sa9mr22580310obc.44.1456051349660;
        Sun, 21 Feb 2016 02:42:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si2561411pab.1.2016.02.21.02.42.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 02:42:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ho8so77021792pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 02:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CCBwmJlkgTBcKBqZqmoC9EFhSLjGEr1KxqLdmWQS3zM=;
        b=PXq5l4tORKjaEDwO4M44XOj1vPei3DRB6wy2y8F/yIv5F7/u0AgkgRow8hbqiWl4O4
         FVVVKZpglJ/wYVe1oYCeFqn0VShODdBqkEmmju423fQN9D+uq+UvlwXDjSiLFhxNTkg/
         zl1nXk/rSIi5Lmltuoflq3MlnIzZ/Pdb5tT+m5+aRc+dteJsswQyqNmAq9etceYT+Y16
         rKxnCtyoboBLnEOt/57tN//WaG2nlqtAc+A2i6AN78aWhvvvz6ulsIj55ZkJm7q+o21o
         A5VMFdfqDGMJR6+BXbH1D1RlZiXZj/ZfGMWP0GmJXdIKD3vgGIyxI7AJJjzPB8zP0ZA5
         lH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=CCBwmJlkgTBcKBqZqmoC9EFhSLjGEr1KxqLdmWQS3zM=;
        b=BRmOfjsq9+SeRQxrhiWmNAHq+NcYwdWLPC3pWWyN7KpSIRD3CP75KPRRvIJYBVqUka
         RFc0bodW1gYTMtnYCFSuHnQtHvfmtEtcsl2SXuU1eZs1EEQ7QKh6/UAEybRk7nNty/Cg
         y7j3h9rpqwQsSWbWAgCR/T319JGxVY2NhdRh8k4oOC+441jryz66qZifFb3XRijaIpuP
         PHRqunt/3hx34S6onFIKyUgPf+/yvNOhFbCRG1QZwaR+N/iuhTa3ZFzskNCGmwcI4n7V
         kH25z9soKtpMFa1T8OSNG69/CiYL3nUQT+eBIAspZpNR7SuWgVKvWKasQ/DF4bGHYCSL
         YLFQ==
X-Gm-Message-State: AG10YOSTbDCQzNceHqPOEt2Yu0HjNhlbdC3kTWUxNpUSOcUNAosvUlHV/rKpJ3T2yiAMlA==
X-Received: by 10.66.174.199 with SMTP id bu7mr30481777pac.34.1456051349524;
        Sun, 21 Feb 2016 02:42:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o17sm29311494pfj.50.2016.02.21.02.42.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 02:42:28 -0800 (PST)
Date: Sun, 21 Feb 2016 16:13:01 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: Use macro DIV_ROUND_CLOSEST
Message-ID: <20160221104301.GA26433@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Occurences of the computation (x +d/2)/d can be replaced with
the macro DIV_ROUND_CLOSEST.

This was detected by the following Coccinelle script.

@@
expression e1,e2;
@@
(
- ((e1) + e2/2) / (e2)
+ DIV_ROUND_CLOSEST(e1,e2)
|
- ((e1) + (e2/2)) / (e2)
+ DIV_ROUND_CLOSEST(e1,e2)
)

Since some lines exceeded the 80 character limit,
some changes were made by hand.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 28 +++++++++++---------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 1c2abb3..8d8535b 100644
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
@@ -4233,9 +4233,8 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 	case INSN_CONFIG_PWM_OUTPUT:
 		switch (data[1]) {
 		case CMDF_ROUND_NEAREST:
-			up_count =
-			    (data[2] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			up_count = DIV_ROUND_CLOSEST(data[2],
+						     devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			up_count = data[2] / devpriv->clock_ns;
@@ -4250,9 +4249,8 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 		}
 		switch (data[3]) {
 		case CMDF_ROUND_NEAREST:
-			down_count =
-			    (data[4] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			down_count = DIV_ROUND_CLOSEST(data[4],
+						       devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			down_count = data[4] / devpriv->clock_ns;
@@ -4297,9 +4295,8 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 	case INSN_CONFIG_PWM_OUTPUT:
 		switch (data[1]) {
 		case CMDF_ROUND_NEAREST:
-			up_count =
-			    (data[2] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			up_count = DIV_ROUND_CLOSEST(data[2],
+						     devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			up_count = data[2] / devpriv->clock_ns;
@@ -4314,9 +4311,8 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 		}
 		switch (data[3]) {
 		case CMDF_ROUND_NEAREST:
-			down_count =
-			    (data[4] +
-			     devpriv->clock_ns / 2) / devpriv->clock_ns;
+			down_count = DIV_ROUND_CLOSEST(data[4],
+						       devpriv->clock_ns);
 			break;
 		case CMDF_ROUND_DOWN:
 			down_count = data[4] / devpriv->clock_ns;
@@ -4918,9 +4914,9 @@ static int ni_mseries_get_pll_parameters(unsigned reference_period_ns,

 	*freq_divider = best_div;
 	*freq_multiplier = best_mult;
-	*actual_period_ns =
-	    (best_period_picosec * fudge_factor_80_to_20Mhz +
-	     (pico_per_nano / 2)) / pico_per_nano;
+	*actual_period_ns = DIV_ROUND_CLOSEST(best_period_picosec *
+					      fudge_factor_80_to_20Mhz,
+					      pico_per_nano);
 	return 0;
 }

--
2.1.4


