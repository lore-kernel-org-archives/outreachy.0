X-GM-THRID: 7905288912896
X-Received: by 10.112.224.12 with SMTP id qy12mr6368305lbc.10.1426175574969;
        Thu, 12 Mar 2015 08:52:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.66 with SMTP id c2ls1221257wie.1.canary; Thu, 12 Mar
 2015 08:52:54 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr6488726wjb.1.1426175574586;
        Thu, 12 Mar 2015 08:52:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id el6si1122565wib.0.2015.03.12.08.52.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 08:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesp10 with SMTP id p10so17320423wes.11
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 08:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=e1gttgQFOCvYDIz0f2VNwhBeiDdpOU6cM6gfz/qEIos=;
        b=oeTOblf09fu+E1YJ6eqUuu4qtfMYz7ocRZZmMzKSj0n6JGDKm9ESA9rWDNZoCdVyE9
         J+uL9a7H+tTBIS3myADRwaWLoH/+WHwHuAfNmMX8zxjcQFZ0DCS9OBV4V+y/tT/Wo9Ox
         rTj5FMaO3ocfZo9Ut8O1bZqPUW0hoGw/ohHTnX5Bx/KUSMdaM2jEUnosVBQXwPIkq6hp
         LDj2G7HkeMaYvmbWZSMmebeaS7IS8tWeUF9sx9ZUR7whTY3+iQyAWFohl2K5km5S/Xw/
         2+4xaDpelWzuAfvtPn8M/N9dEEFjXOa0OZ+Ry+W61IAJqjuPOeaQHZQa+rt24l9eN1P/
         A65Q==
X-Received: by 10.194.221.100 with SMTP id qd4mr86811295wjc.113.1426175574430;
        Thu, 12 Mar 2015 08:52:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.143])
        by mx.google.com with ESMTPSA id xy2sm10640683wjc.14.2015.03.12.08.52.52
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 08:52:53 -0700 (PDT)
Date: Thu, 12 Mar 2015 18:52:50 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, gregkh@linuxfoundation.org,
	daniel.baluta@intel.com
Subject: [PATCH v2] iio: Add ABI documentation for proximity scan_elements
Message-ID: <20150312155250.GA20385@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch adds ABI documentation entries for in_proximity_en,
in_proximity_type, and in_proximity_index in the scan_elements directory.
At least one user for these is present, the AS3935 Franklin lightning sensor.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v2: Fix typos in commit subject/body.

 Documentation/ABI/testing/sysfs-bus-iio | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 9a1a5fc..fd026d9 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -999,6 +999,7 @@ What:		/sys/.../iio:deviceX/scan_elements/in_incli_y_en
 What:		/sys/.../iio:deviceX/scan_elements/in_pressureY_en
 What:		/sys/.../iio:deviceX/scan_elements/in_pressure_en
 What:		/sys/.../iio:deviceX/scan_elements/in_rot_quaternion_en
+What:		/sys/.../iio:deviceX/scan_elements/in_proximity_en
 KernelVersion:	2.6.37
 Contact:	linux-iio@vger.kernel.org
 Description:
@@ -1015,6 +1016,7 @@ What:		/sys/.../iio:deviceX/scan_elements/in_timestamp_type
 What:		/sys/.../iio:deviceX/scan_elements/in_pressureY_type
 What:		/sys/.../iio:deviceX/scan_elements/in_pressure_type
 What:		/sys/.../iio:deviceX/scan_elements/in_rot_quaternion_type
+What:		/sys/.../iio:deviceX/scan_elements/in_proximity_type
 KernelVersion:	2.6.37
 Contact:	linux-iio@vger.kernel.org
 Description:
@@ -1066,6 +1068,7 @@ What:		/sys/.../iio:deviceX/scan_elements/in_timestamp_index
 What:		/sys/.../iio:deviceX/scan_elements/in_pressureY_index
 What:		/sys/.../iio:deviceX/scan_elements/in_pressure_index
 What:		/sys/.../iio:deviceX/scan_elements/in_rot_quaternion_index
+What:		/sys/.../iio:deviceX/scan_elements/in_proximity_index
 KernelVersion:	2.6.37
 Contact:	linux-iio@vger.kernel.org
 Description:
-- 
1.9.1


