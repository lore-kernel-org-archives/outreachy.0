X-GM-THRID: 6260126359125753856
X-Received: by 10.140.97.244 with SMTP id m107mr4648933qge.20.1457549249466;
        Wed, 09 Mar 2016 10:47:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.78.33 with SMTP id y1ls488707obw.27.gmail; Wed, 09 Mar
 2016 10:47:29 -0800 (PST)
X-Received: by 10.182.206.38 with SMTP id ll6mr6138070obc.50.1457549249062;
        Wed, 09 Mar 2016 10:47:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id 12si1408598pfb.1.2016.03.09.10.47.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 10:47:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id td3so19774538pab.2
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 10:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P6GY5Zf7U9EAeBtQudG839Vt+johhT6v1Vd5Bi4DXnM=;
        b=BrHikgrseedZehA/xCd/1cX2r3LnDvBQp8pwNNCxnUgulN5tzI8XfQJLrO1hM/DBNF
         bU6SmGw8NLwt3I+cqIrP4l/iJ6R//WzyuxMNvPqc8u5hGwC8zObFCvm24spy0UpIK7te
         a7FdmRdm0lnayZOaKqK2wRzNTa9aqFZM9N3wBAE8x10656A7GWqtErmTNL+bQtl408s9
         TVHc1pyjsmHwuu6whYOt9R4Kp48tg6AIVTf4Agdv9MgkxU3xp/BKGxJQEJOSHQF1+A6Q
         7Cb0fiWL/Nqfyad+E4tH7ct04OhWUM68r9ZRoMNIkwPq7QayHcWcEcK834oAee2ppgxb
         3S7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P6GY5Zf7U9EAeBtQudG839Vt+johhT6v1Vd5Bi4DXnM=;
        b=j1pDJnqy9HG/VxlK1KC0qoKV90hv8J6U1bsmTx2mRES+xaxusSbqJkS9jKTGbEYq5+
         it9TmD3tX+neS6BowxXyyCINPoT5EzqknKVelb0YGCQbQI/Kq2CqRji1dAEpHStNyHrg
         4Ly4MlAHi226og/fVrPn9gii1f9sQ8bGKyi0pVHUXziLhYjIDiloMFGcMVrenc3P4gNW
         J5BeN4VMXFemds4UTuEBw1u4/qXTcCuv4+ZUT9MC9nTZOCc3FJWmeNMUwjaMqMrMlITe
         1j5sgYsAT3vS1rlCzAkCbIFstQVrEtiTOFT3wHR98XyTjb64wGZfpsBFMbZ+VpE0sgao
         DkMA==
X-Gm-Message-State: AD7BkJL2s/MEStIZwftTGGSoW9nGNAVcFobcwfCUPH3KmY3OzGDxtv1476xusDmQWNXY4g==
X-Received: by 10.66.255.39 with SMTP id an7mr52304381pad.2.1457549248853;
        Wed, 09 Mar 2016 10:47:28 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t76sm5677691pfi.7.2016.03.09.10.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 10:47:28 -0800 (PST)
Date: Thu, 10 Mar 2016 00:05:16 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: ni_mio_common:  Prefer using macro
 DIV_ROUND_UP
Message-ID: <20160309183516.GA15288@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 8d8535b..d1226c9 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2058,7 +2058,7 @@ static int ni_ns_to_timer(const struct comedi_device *dev, unsigned nanosec,
 		divider = (nanosec) / devpriv->clock_ns;
 		break;
 	case CMDF_ROUND_UP:
-		divider = (nanosec + devpriv->clock_ns - 1) / devpriv->clock_ns;
+		divider = DIV_ROUND_UP(nanosec, devpriv->clock_ns);
 		break;
 	}
 	return divider - 1;
@@ -4241,8 +4241,7 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 			break;
 		case CMDF_ROUND_UP:
 			up_count =
-			    (data[2] + devpriv->clock_ns -
-			     1) / devpriv->clock_ns;
+			    DIV_ROUND_UP(data[2], devpriv->clock_ns);
 			break;
 		default:
 			return -EINVAL;
@@ -4257,8 +4256,7 @@ static int ni_m_series_pwm_config(struct comedi_device *dev,
 			break;
 		case CMDF_ROUND_UP:
 			down_count =
-			    (data[4] + devpriv->clock_ns -
-			     1) / devpriv->clock_ns;
+			    DIV_ROUND_UP(data[4], devpriv->clock_ns);
 			break;
 		default:
 			return -EINVAL;
@@ -4303,8 +4301,7 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 			break;
 		case CMDF_ROUND_UP:
 			up_count =
-			    (data[2] + devpriv->clock_ns -
-			     1) / devpriv->clock_ns;
+			    DIV_ROUND_UP(data[2], devpriv->clock_ns);
 			break;
 		default:
 			return -EINVAL;
@@ -4319,8 +4316,7 @@ static int ni_6143_pwm_config(struct comedi_device *dev,
 			break;
 		case CMDF_ROUND_UP:
 			down_count =
-			    (data[4] + devpriv->clock_ns -
-			     1) / devpriv->clock_ns;
+			    DIV_ROUND_UP(data[4], devpriv->clock_ns);
 			break;
 		default:
 			return -EINVAL;
--
2.1.4


