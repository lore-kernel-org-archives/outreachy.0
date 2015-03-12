X-GM-THRID: 7892013940736
X-Received: by 10.112.189.227 with SMTP id gl3mr6546596lbc.2.1426172154921;
        Thu, 12 Mar 2015 07:55:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.4.38 with SMTP id cb6ls252276lad.97.gmail; Thu, 12 Mar
 2015 07:55:54 -0700 (PDT)
X-Received: by 10.112.41.131 with SMTP id f3mr6547256lbl.20.1426172154344;
        Thu, 12 Mar 2015 07:55:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id ew13si564305wid.0.2015.03.12.07.55.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 07:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id h11so20972444wiw.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5VMC0MaCtJ9ANrFNeLh/ST5iVvDMfcEo6DDD/fsIbm4=;
        b=nOzewxVt+IJr/mhtKXUgC3fuBdO1xFQEk+EbgFPfg0yLNkryseV97dtqTF4osMgVQq
         +1BnEezo6M+5fKlgm+qFwGrj8MoPvPaSQWZFo+NbCLPwrDbj1nbPMfsmdXG4ZI0GwfCR
         SsWNOLJi90I4Hz5QmgSPJeUqajaJjGeaKm24dXK5QURtla5eyswQavPN+14+KrLDh7h2
         95wNscx2QsxwkQ7rkX4QhCclFPkZs2bvmRnasPgNFkfPoyAg21F6EAWAwqPFD/xHJgxo
         nbypbrk0OSjfHiR3YYcqYBjXSZoVk1GRHWjVRL9niZJdHTiAm3mVhIWGYdWFaehi6wGW
         e9sg==
X-Received: by 10.180.206.101 with SMTP id ln5mr22452643wic.55.1426172154237;
        Thu, 12 Mar 2015 07:55:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([95.187.130.112])
        by mx.google.com with ESMTPSA id k1sm10420770wjn.9.2015.03.12.07.55.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 07:55:53 -0700 (PDT)
Date: Thu, 12 Mar 2015 17:55:36 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: Add ABI documentation for proximity scan_emlements
Message-ID: <20150312145536.GA20026@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch adds ABI documentation entries for in_proximity_en,
in_proximity_type, and in_proximity_index in the scan_elements.
At lease one user for these is present, the AS3935 Franklin lightning sensor.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
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


