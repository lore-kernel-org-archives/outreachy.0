X-GM-THRID: 10151071318016
X-Received: by 10.112.73.33 with SMTP id i1mr5190508lbv.0.1427501010092;
        Fri, 27 Mar 2015 17:03:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.37 with SMTP id q5ls452892lag.40.gmail; Fri, 27 Mar
 2015 17:03:29 -0700 (PDT)
X-Received: by 10.112.73.33 with SMTP id i1mr5190499lbv.0.1427501009276;
        Fri, 27 Mar 2015 17:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id p4si242675wiz.0.2015.03.27.17.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 17:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id bg6so43702918wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 17:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=s62Xihi2lgw1eTWSnaFT7hSgfdkPm8oRJhm3t+ZExEM=;
        b=yXv35udTlD6EmJwGdwnoV4Hz9htK74iUdun7rMGTTji2ugOIamseZ3I9+KGQ9fcFfF
         1k68CQxDScGE94nOwlOnDvvsj8G2TdaHaLVQSBYAPwQPSakPEH4TpTYyJeYmt0BobupW
         fmTfr12iXwScIehdR7/fNKWjK696H0N/j6A3pq7ZWp8TAm/o8rOgVz5A3rqBlZqVUXCz
         FEcA4sOU6ZfGxO92ccA/Supq37VGxruCl0hpHC+JzkrCB98Ho3wdu1dGBUNwTlzteyoG
         pLkQguOCoq38vn9hgYlrfel7gg9bZoclT7hTuxfdYjWuXZLhBZUqbhIazW6T8A5Evnig
         kC5A==
X-Received: by 10.180.187.67 with SMTP id fq3mr1972810wic.59.1427501009168;
        Fri, 27 Mar 2015 17:03:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.58])
        by mx.google.com with ESMTPSA id d9sm4879443wib.20.2015.03.27.17.03.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 17:03:28 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 1DD29C1FC5; Sat, 28 Mar 2015 03:03:23 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	jic23@kernel.org,
	daniel.baluta@intel.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] iio: Add ABI documentation for in_rot offset value
Date: Sat, 28 Mar 2015 03:02:39 +0300
Message-Id: <1427500959-3404-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch adds ABI documentation entries for in_rot_offset.
At least one user for these is present that is the  HID Sensors Driver.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 5cabafb..4736a34 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -254,6 +254,7 @@ What:		/sys/bus/iio/devices/iio:deviceX/in_pressureY_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_pressure_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_humidityrelative_offset
 What:		/sys/bus/iio/devices/iio:deviceX/in_magn_offset
+What:		/sys/bus/iio/devices/iio:deviceX/in_rot_offset
 KernelVersion:	2.6.35
 Contact:	linux-iio@vger.kernel.org
 Description:
-- 
1.9.1


