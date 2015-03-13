X-GM-THRID: 8071528054784
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b064a26b34e980c2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.30.134 with SMTP id s6mr51432019igh.2.1426261024900;
        Fri, 13 Mar 2015 08:37:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.111 with SMTP id t102ls1787895qge.62.gmail; Fri, 13
 Mar 2015 08:37:04 -0700 (PDT)
X-Received: by 10.236.63.42 with SMTP id z30mr48177498yhc.37.1426261024720;
        Fri, 13 Mar 2015 08:37:04 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id pc4si448404pac.0.2015.03.13.08.37.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 08:37:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjp10 with SMTP id p10so29696405pdj.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 08:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=cdqDFuzFVfzTLxKlPEcxlbtiPCs6isVhwtYnjn+D73o=;
        b=CqmsQXn+1dh1AMKgVIW3XYeJcokJWpqVCLayUJ2rXFeBySIVR/30K7CUE3FHntO9d/
         2wTRZYsCxqa+USjeaJLddgMOgaWPorEbJQxrgUYdEHQOcA9fdS76k4mDlJ8awFFGR6Nu
         EoC2nr/U1IlLyl6I0fIV+QAsFUZ6TNjvQPUgcqrlpaVTKntpR0aPJmDUhHUJUqgr0pyU
         RAyrw7S0PZHR9VJF5RQMMi/XXIMZSQNHlIBxjdn0GPql8sxVxPiImmXffB/ErlWW8tH4
         zYLbKPEI7IXNiLE6ITG9SONnTIZzjjyfJUlOf12EChQwNgtXJ6YVu9wOYXEsVg3gHYBu
         aLKA==
X-Received: by 10.66.193.226 with SMTP id hr2mr64318286pac.47.1426261024328;
        Fri, 13 Mar 2015 08:37:04 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id tg14sm4126521pac.15.2015.03.13.08.37.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 08:37:03 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2] iio: Add ABI documentation for in_magn offset value
Date: Fri, 13 Mar 2015 21:06:58 +0530
Message-Id: <1426261018-6025-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch adds ABI documentation entries for in_magn_offset.
There is one user, hid-sensor-magn-3d in drivers/iio/magnetometer.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
Changes in v2:
    - Removed attribute in_magn_raw as no driver in drivers/iio/magnetometer
      or staging/iio/magnetometer has info_mask_separate set to
      IIO_CHAN_INFO_RAW without any modifiers.
    - Changed subject and commit message accordingly.

 Documentation/ABI/testing/sysfs-bus-iio | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 9a70c31..4fd3976 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -253,6 +253,7 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_temp_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressure_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_humidityrelative_offset
+What:		/sys/bus/iio/devices/iio:deviceX/in_magn_offset
 KernelVersion:	2.6.35
 Contact:	linux-iio@vger.kernel.org
 Description:
-- 
1.9.1


