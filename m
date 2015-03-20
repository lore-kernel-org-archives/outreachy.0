X-GM-THRID: 8491640029184
X-Received: by 10.236.222.103 with SMTP id s97mr86516876yhp.19.1426846076463;
        Fri, 20 Mar 2015 03:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.99 with SMTP id g90ls1622164qgg.53.gmail; Fri, 20 Mar
 2015 03:07:56 -0700 (PDT)
X-Received: by 10.236.19.8 with SMTP id m8mr88735602yhm.53.1426846076320;
        Fri, 20 Mar 2015 03:07:56 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id gb13si714114pac.2.2015.03.20.03.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 03:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id we9so104642216pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 03:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=/WRk1ev2QlupP1EsTC+91MzbJI3fMtEsOibcpZUDisE=;
        b=CTo8f5gdiSf+HJCHh/MI82NwGejy5kHbGoPnt9I5/xf7qgxA80Tg9Bsdigj+IRNdSd
         v68Utj5pbfRUSKoUU1OWqfqMoUVPwujmTkI82HtY5p3Jzer8MusLMHk2BsNPH4nBZ/6+
         QSP9mYj7TAhKKDhTyYyEZlXelr2ahfFMTmxwIHtHEe/4l/Fb2gVb/uM23Ww1zYj3c86/
         eyXfWs8rHfyMVrmlU/gwkr+PLlGrXOaZW7sA82o4OSRqFkICX++7lnTNHfI7HNq8lNsj
         f7tJzcBbi90zZik5yIcKmDUj6WzW4xkP4b+rkkUuiNh2qkzUg3F5MztXDXFJbIT0ncSO
         H5OA==
X-Received: by 10.70.89.174 with SMTP id bp14mr102068968pdb.14.1426846076194;
        Fri, 20 Mar 2015 03:07:56 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id mi9sm7360551pab.3.2015.03.20.03.07.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 03:07:55 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH v2] iio: Add ABI documentation for illuminance raw and scale values in light
Date: Fri, 20 Mar 2015 15:37:47 +0530
Message-Id: <1426846067-26687-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426506500-11836-1-git-send-email-darshanapadmadas@gmail.com>
References: <1426506500-11836-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patchset adds ABI documentation for the following attributes:

in_illuminance_scale, exported by  al3320a ambient light sensor,
in_illuminance_calibscale, exported by cm32181 I2C ambient light sensor,
in_illuminance_input, exported by cm3232 i2c ambient light sensor,
in_illuminance_raw exported by al3320a ambient light sensor,
in_illuminance_clear_raw and in_illuminance_ir_raw exposed by
gp2ap020a00f i2c proximity/ALS sensor with modifiers
IIO_MOD_LIGHT_CLEAR and IIO_MOD_LIGHT_IR respectively.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
Changes in v2:
    - Made the commit message more clear.

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


