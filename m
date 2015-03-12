X-GM-THRID: 7943588151296
X-Received: by 10.152.45.7 with SMTP id i7mr6586861lam.9.1426184767016;
        Thu, 12 Mar 2015 11:26:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.75 with SMTP id q11ls3594wiw.10.gmail; Thu, 12 Mar 2015
 11:26:05 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr3261145wix.4.1426184765121;
        Thu, 12 Mar 2015 11:26:05 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id sf8si599968wic.2.2015.03.12.11.26.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 11:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fb4so6284027wid.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 11:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cI0tCMkKLqPgRGGNcR4+AXSECmyC9fVhprFjvwqGD2Q=;
        b=yUdx9sEUrlcMtGhbDg59kzWJCMjk73bFglethWwRXx1TRlgD1IrubB2Wmoq1k/GOur
         MYOfMkayV28OmRWnXj1JTAaphMPLBZYYPZUFNjlW/oJCCoPyINUjB1p3ymKQMDLsZFoD
         ipfOmSYMDCppQy2UnER8BysB7IizmUga7KgiJyFwzW5/wh+9ZEwLyztzi7medOh1cdTy
         hrC/vbcxWC+sMF7628bQUM3WNA8PqPG+c7ZmTkEc1ptN38Eh1ZqibIskXu3mQ1o6DQRO
         sPxHxiUXB+ctJOsl4yDzv23+aNnJmpSbMI3Jhb8JOSCdYS6l4w7t3+khbZH5YUehpszr
         qI3g==
X-Received: by 10.181.5.43 with SMTP id cj11mr131141582wid.61.1426184765034;
        Thu, 12 Mar 2015 11:26:05 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.25])
        by mx.google.com with ESMTPSA id ge8sm11166450wjc.32.2015.03.12.11.26.02
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 11:26:03 -0700 (PDT)
Date: Thu, 12 Mar 2015 21:26:00 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, daniel.baluta@intel.com
Subject: [PATCH] iio : Add ABI documentation for thresh falling/rising value
 in accel
Message-ID: <20150312182600.GA23579@haneen-vb>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch adds ABI documentation entries for
in_accel_thresh_falling_value, and in_accel_thresh_rising_value in /events.
There is at least one user for these, lis3l02dq in accel.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 9a70c31..9a1a5fc 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -612,6 +612,8 @@ Description:
 		a given event type is enabled a future point (and not those for
 		whatever event was previously enabled).
 
+What:		/sys/.../events/in_accel_thresh_rising_value
+What:		/sys/.../events/in_accel_thresh_falling_value
 What:		/sys/.../events/in_accel_x_raw_thresh_rising_value
 What:		/sys/.../events/in_accel_x_raw_thresh_falling_value
 What:		/sys/.../events/in_accel_y_raw_thresh_rising_value
-- 
1.9.1


