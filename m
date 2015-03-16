X-GM-THRID: 8491640029184
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7d3ef29b642a96bc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.64.67 with SMTP id f3mr56725455ici.5.1426506506850;
        Mon, 16 Mar 2015 04:48:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls1010203igi.25.gmail; Mon, 16 Mar
 2015 04:48:26 -0700 (PDT)
X-Received: by 10.66.97.10 with SMTP id dw10mr23540769pab.48.1426506506423;
        Mon, 16 Mar 2015 04:48:26 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id gb13si1840490pac.2.2015.03.16.04.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 04:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id op1so56322571pdb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=d50ZTp0S3EGEzQIwE8GM2+NIzgxsh84A5ZZ43b6+fQs=;
        b=Wq6xS/0TdaSZqtN9QQ6eGM6bPB9jz+bSp8iN+4JbYdbx5XDWb9QCZfxwnGgT4RccGh
         hUWFFm0PI/DqqW8deeTlZOslouyMh6REhBy9B0oXjLuVU0maSdT9K3TpmqJ70vEJoCFd
         Sn32PedwvvUaRZoFd7KwdblLxa4o2C4WR7ctqcB/0lbzMuxeWaaEvHSrVTi2cT1P7yUU
         PPXEPQW1oceNQuHRTpSAW4miV1N3aEo4VhrlV1j1XpRoQR9dOUq7Y8RVpjDmuNn0Auwy
         hFlVDfR64I074NXVFQvqT0q+lu+6vta37h7UK32wx9uS2IFQPOat1YehKIL7wmjwvxkl
         PHuQ==
X-Received: by 10.70.138.69 with SMTP id qo5mr58864130pdb.124.1426506506290;
        Mon, 16 Mar 2015 04:48:26 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id s17sm16954281pdn.87.2015.03.16.04.48.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 04:48:25 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] iio: Add ABI documentation for illuminance raw and scale values in light
Date: Mon, 16 Mar 2015 17:18:20 +0530
Message-Id: <1426506500-11836-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patchset adds ABI documentation for the following attributes:

in_illuminance_scale, used atleast once in al3320a staging/iio/light/
in_illuminance_calibscale, used atleast once in cm32181
in_illuminance_input, used in cm3232 at least once
in_illuminance_raw used atleast once in al3320a
in_illuminance_clear_raw and in_illuminance_ir_raw exposed by
gp2ap020a00f with modifiers IIO_MOD_LIGHT_CLEAR and
IIO_MOD_LIGHT_IR respectively.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 4fd3976..4d1cbba 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -297,6 +297,7 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_scale
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressure_scale
 What:		/sys/bus/iio/devices/iio:deviceX/in_humidityrelative_scale
 What:		/sys/bus/iio/devices/iio:deviceX/in_velocity_sqrt(x^2+y^2+z^2)_scale
+What:		/sys/bus/iio/devices/iio:deviceX/in_illuminance_scale
 KernelVersion:	2.6.35
 Contact:	linux-iio@vger.kernel.org
 Description:
@@ -337,6 +338,7 @@ what		/sys/bus/iio/devices/iio:deviceX/in_illuminance0_calibscale
 what		/sys/bus/iio/devices/iio:deviceX/in_proximity0_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressure_calibscale
+What:		/sys/bus/iio/devices/iio:deviceX/in_illuminance_calibscale
 KernelVersion:	2.6.35
 Contact:	linux-iio@vger.kernel.org
 Description:
@@ -1144,9 +1146,13 @@ Description:
 		values should behave in the same way as a distance, i.e. lower
 		values indicate something is closer to the sensor.
 
+What:		/sys/.../iio:deviceX/in_illuminance_input
+What:		/sys/.../iio:deviceX/in_illuminance_raw
 What:		/sys/.../iio:deviceX/in_illuminanceY_input
 What:		/sys/.../iio:deviceX/in_illuminanceY_raw
 What:		/sys/.../iio:deviceX/in_illuminanceY_mean_raw
+What:		/sys/.../iio:deviceX/in_illuminance_ir_raw
+What:		/sys/.../iio:deviceX/in_illuminance_clear_raw
 KernelVersion:	3.4
 Contact:	linux-iio@vger.kernel.org
 Description:
-- 
1.9.1


