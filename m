X-GM-THRID: 8786362236928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f986eb1fdb53e3e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.201.10 with SMTP id jw10mr9960153wjc.3.1426588625926;
        Tue, 17 Mar 2015 03:37:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.169 with SMTP id x9ls18483lal.92.gmail; Tue, 17 Mar
 2015 03:37:05 -0700 (PDT)
X-Received: by 10.112.25.7 with SMTP id y7mr9759709lbf.21.1426588625194;
        Tue, 17 Mar 2015 03:37:05 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i8si100420wif.1.2015.03.17.03.37.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 03:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id cc7so4739243wgb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 03:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=z3h/BqQ3+DL5W+bD3MBYOIrRkFfXXEn5Rt7s3Wsr3Uk=;
        b=NgDbocK0gGUYG99EQaR0BW0deXFIA5ZY9V7gbv6VS+/j507SnSc+nmff4iBUtOWHGi
         usfI0CzTU5e3lIAdA43ec5QSfIUqWXaQ4yqvxpK/7cu7hZOkTTPL5Rrd8fdeBRos6KYu
         7A+TQEQONJHQEASYzMHz8YjYU0bQc7phDK1nhonyOP1nom4HjN3ZtAaaVi0XUmPYP5zA
         kOBivNq6NAggLT4cV4N8GYTuGC7goom2tJ88OjcAoh/xJWV/xchvihcNIBj5BGbZnLXH
         9tIQ4paYAan8GMV/beM+fppe0CCoFG6CJDxbnTrQDnGV+9pwt3+Qqq3v8TDgvYnqTkD0
         Kd1g==
X-Received: by 10.180.19.73 with SMTP id c9mr152622177wie.10.1426588625100;
        Tue, 17 Mar 2015 03:37:05 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.114])
        by mx.google.com with ESMTPSA id yr10sm19358957wjc.0.2015.03.17.03.37.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 03:37:04 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 6BB89C1F80; Tue, 17 Mar 2015 13:37:00 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	jic23@kernel.org,
	daniel.baluta@intel.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] iio: Add ABI documentation for out_voltage scan_elements
Date: Tue, 17 Mar 2015 13:36:49 +0300
Message-Id: <1426588609-24683-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch adds ABI documentation entries for out_voltageY_en,
out_voltageY_type, and out_voltageY_index.
At least one user for these is preset:
AD8366 SPI Dual-Digital VGA.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index fd026d9..bbb0bfd 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -994,6 +994,7 @@ What:		/sys/.../iio:deviceX/scan_elements/in_timestamp_en
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_supply_en
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_en
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY-voltageZ_en
+What:		/sys/.../iio:deviceX/scan_elements/out_voltageY_en
 What:		/sys/.../iio:deviceX/scan_elements/in_incli_x_en
 What:		/sys/.../iio:deviceX/scan_elements/in_incli_y_en
 What:		/sys/.../iio:deviceX/scan_elements/in_pressureY_en
@@ -1011,6 +1012,7 @@ What:		/sys/.../iio:deviceX/scan_elements/in_magn_type
 What:		/sys/.../iio:deviceX/scan_elements/in_incli_type
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_type
 What:		/sys/.../iio:deviceX/scan_elements/in_voltage_type
+What:		/sys/.../iio:deviceX/scan_elements/out_voltageY_type
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_supply_type
 What:		/sys/.../iio:deviceX/scan_elements/in_timestamp_type
 What:		/sys/.../iio:deviceX/scan_elements/in_pressureY_type
@@ -1049,6 +1051,7 @@ Description:
 
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_index
 What:		/sys/.../iio:deviceX/scan_elements/in_voltageY_supply_index
+What:		/sys/.../iio:deviceX/scan_elements/out_voltageY_index
 What:		/sys/.../iio:deviceX/scan_elements/in_accel_x_index
 What:		/sys/.../iio:deviceX/scan_elements/in_accel_y_index
 What:		/sys/.../iio:deviceX/scan_elements/in_accel_z_index
-- 
1.9.1


