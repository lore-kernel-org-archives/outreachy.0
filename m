X-GM-THRID: 8063106940928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7fd4eea76392c31c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.97.97 with SMTP id dz1mr45069300pab.2.1426254373849;
        Fri, 13 Mar 2015 06:46:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.168 with SMTP id np8ls606496obb.6.gmail; Fri, 13 Mar
 2015 06:46:13 -0700 (PDT)
X-Received: by 10.182.251.231 with SMTP id zn7mr51636088obc.24.1426254373517;
        Fri, 13 Mar 2015 06:46:13 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ri9si375232pdb.1.2015.03.13.06.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 06:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id eu11so29704998pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 06:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=wlO7FzwMNQZ7QN8Sedbs+rHzFcCs2bkC5zL2/Bk9bAs=;
        b=mu4a+X0nkkZ92Y4PdC7/knBZmtzRfYKYRzFg7JUjEkf5LzpwDiFRtJ+NWBkVxn4I2X
         4QuPTRnglauM9riHiC+xadNXi/9tBvFkDm+VKRDQkGrsKLF0mZpJrYqESdxjW8Mr1m4F
         mVReWFWltLARtdAHddcC4tTntBQ5aOJV16vXb0wG2UnTL9WXgiP4edPCsgdvrFIxh2mC
         r2ri3eZoNqx8JiBJTS7ieJWkesN790VneR0Rw3i9NhOlvsdkCheuf45fVJgw8lT3wkpj
         H/To4BMcPOjlmkhzPHUEe18YspPKzgZKVhX4J7c5FGpA6X84A37zH2MINzyizfY+ThSY
         iqXQ==
X-Received: by 10.66.101.35 with SMTP id fd3mr104285849pab.50.1426254373376;
        Fri, 13 Mar 2015 06:46:13 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id bt2sm3709699pad.12.2015.03.13.06.46.11
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 06:46:12 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] iio: Add ABI documentation for in_magn offset and raw values
Date: Fri, 13 Mar 2015 19:16:06 +0530
Message-Id: <1426254366-27021-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch adds ABI documentation entries for in_magn_offset
and in_magn_raw. At least one user exists, mag3110 and
hid-sensor-magn-3d in drivers/iio/magnetometer.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 9a70c31..37564cb 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -177,6 +177,7 @@ Description:
 		arbitrarily assigned). Data converted by application of offset
 		and scale to degrees.
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_magn_raw
 What:		/sys/bus/iio/devices/iio:deviceX/in_magn_x_raw
 What:		/sys/bus/iio/devices/iio:deviceX/in_magn_y_raw
 What:		/sys/bus/iio/devices/iio:deviceX/in_magn_z_raw
@@ -253,6 +254,7 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_temp_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressure_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_humidityrelative_offset
+What:		/sys/bus/iio/devices/iio:deviceX/in_magn_offset
 KernelVersion:	2.6.35
 Contact:	linux-iio@vger.kernel.org
 Description:
-- 
1.9.1


