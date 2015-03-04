X-GM-THRID: 6398412849152
X-Received: by 10.180.75.232 with SMTP id f8mr3395907wiw.0.1425429467890;
        Tue, 03 Mar 2015 16:37:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.231 with SMTP id bb7ls113111lab.50.gmail; Tue, 03 Mar
 2015 16:37:47 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr220179lae.7.1425429467358;
        Tue, 03 Mar 2015 16:37:47 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id l8si990050wia.0.2015.03.03.16.37.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 16:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so26958313wid.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 16:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TKylhgkVekg4Bu9g4jMI2fJ/p8VKbAuEkSoAWpCz34M=;
        b=DVrZC1MoHnhmpmv5M45zVryXQLsc/orSFRYQevKnm/dOBiMRhtaraBMKLAitPbZ5mq
         xO+QnKLM1zVhae/MfwgyPCc+EmII3hnuX14dsz6ePrgiK+g2ECYcBAKJQFfQloW73Fmc
         Ikz15VayxrK17dHpIupAGogO7yuK0SEKe30VzSaGH0U7JKUAX2zScyYfU331OaNSi9DZ
         3ryPDayXr9z0TAecFwUQsTM9s/MImhwVBpI7NPEAwdXJq1zMs8mgqdvRKRsulf8NUpwu
         fFAKqhPi7qEZ0hG54bsaeNj8XLO/oZys1x3UcboBNxLhmPgiMS+KlUlEt8tfPSElw4oz
         OHtg==
X-Received: by 10.181.9.107 with SMTP id dr11mr7775466wid.40.1425429467213;
        Tue, 03 Mar 2015 16:37:47 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p22.eregie.pub.ro. [141.85.0.122])
        by mx.google.com with ESMTPSA id u6sm4693862wix.12.2015.03.03.16.37.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 16:37:46 -0800 (PST)
Date: Wed, 4 Mar 2015 02:37:15 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: Added define guards where needed
Message-ID: <20150304003715.GA15492@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The following files were added define guards to prevent multiple
inclusion.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/Documentation/iio_utils.h | 4 ++++
 drivers/staging/iio/accel/sca3000.h           | 5 ++++-
 drivers/staging/iio/frequency/dds.h           | 4 ++++
 drivers/staging/iio/meter/meter.h             | 4 ++++
 drivers/staging/iio/resolver/ad2s1210.h       | 3 +++
 5 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/Documentation/iio_utils.h b/drivers/staging/iio/Documentation/iio_utils.h
index 568eff0..bd6982c 100644
--- a/drivers/staging/iio/Documentation/iio_utils.h
+++ b/drivers/staging/iio/Documentation/iio_utils.h
@@ -6,6 +6,8 @@
  * under the terms of the GNU General Public License version 2 as published by
  * the Free Software Foundation.
  */
+#ifndef _IIO_UTILS_H
+#define _IIO_UTILS_H
 
 #include <string.h>
 #include <stdlib.h>
@@ -681,3 +683,5 @@ error_free:
 	free(temp);
 	return ret;
 }
+
+#endif /* _IIO_UTILS_H */
diff --git a/drivers/staging/iio/accel/sca3000.h b/drivers/staging/iio/accel/sca3000.h
index b284e5a..9c8a958 100644
--- a/drivers/staging/iio/accel/sca3000.h
+++ b/drivers/staging/iio/accel/sca3000.h
@@ -38,6 +38,9 @@
  * Can probably alleviate this by reading the interrupt register on start, but
  * that is really just brushing the problem under the carpet.
  */
+#ifndef _SCA3000
+#define _SCA3000
+
 #define SCA3000_WRITE_REG(a) (((a) << 2) | 0x02)
 #define SCA3000_READ_REG(a) ((a) << 2)
 
@@ -272,4 +275,4 @@ static inline void sca3000_ring_int_process(u8 val, void *ring)
 }
 
 #endif
-
+#endif /* _SCA3000 */
diff --git a/drivers/staging/iio/frequency/dds.h b/drivers/staging/iio/frequency/dds.h
index 611e2b0..fe53e732 100644
--- a/drivers/staging/iio/frequency/dds.h
+++ b/drivers/staging/iio/frequency/dds.h
@@ -5,6 +5,8 @@
  *
  * Licensed under the GPL-2 or later.
  */
+#ifndef IIO_DDS_H_
+#define IIO_DDS_H_
 
 /**
  * /sys/bus/iio/devices/.../out_altvoltageX_frequencyY
@@ -108,3 +110,5 @@
 #define IIO_CONST_ATTR_OUT_WAVETYPES_AVAILABLE(_channel, _output, _modes)\
 	IIO_CONST_ATTR(							\
 	out_altvoltage##_channel##_out##_output##_wavetype_available, _modes)
+
+#endif /* IIO_DDS_H_ */
diff --git a/drivers/staging/iio/meter/meter.h b/drivers/staging/iio/meter/meter.h
index 8f0de02..dfba510 100644
--- a/drivers/staging/iio/meter/meter.h
+++ b/drivers/staging/iio/meter/meter.h
@@ -1,3 +1,6 @@
+#ifndef _METER_H
+#define _METER_H
+
 #include <linux/iio/sysfs.h>
 
 /* metering ic types of attribute */
@@ -394,3 +397,4 @@
 #define IIO_EVENT_ATTR_VPKLVL_EXC(_evlist, _show, _store, _mask) \
 	IIO_EVENT_ATTR_SH(vpklvl_exc, _evlist, _show, _store, _mask)
 
+#endif /* _METER_H */
diff --git a/drivers/staging/iio/resolver/ad2s1210.h b/drivers/staging/iio/resolver/ad2s1210.h
index aec0bdca..c7158f6 100644
--- a/drivers/staging/iio/resolver/ad2s1210.h
+++ b/drivers/staging/iio/resolver/ad2s1210.h
@@ -8,6 +8,8 @@
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
  */
+#ifndef _AD2S1210_H
+#define _AD2S1210_H
 
 struct ad2s1210_platform_data {
 	unsigned sample;
@@ -15,3 +17,4 @@ struct ad2s1210_platform_data {
 	unsigned res[2];
 	bool gpioin;
 };
+#endif /* _AD2S1210_H */
-- 
1.9.1


