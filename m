X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.118.203 with SMTP id ko11mr1466821lbb.15.1427049844843;
        Sun, 22 Mar 2015 11:44:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.229 with SMTP id et5ls647458wib.40.canary; Sun, 22 Mar
 2015 11:44:04 -0700 (PDT)
X-Received: by 10.180.182.201 with SMTP id eg9mr1345258wic.3.1427049844516;
        Sun, 22 Mar 2015 11:44:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id bz6si324788wib.3.2015.03.22.11.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id p45so121315674weo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=msAjmcIYPANtuzWK1WkVJ3i1QdecJk70e6ATlCy8EVI=;
        b=G0iMbz0+BfeyxylflBgZ4OdjKAXeQOYydbiIeKTfuGh0uOcdRi21z4KCRpITSl0+pT
         /GCBwa9TeCg0QlCFPtcFZkBDjWFZJKi+zpXyWgm3gbTQfNfNBTgC4hToHiucmxsR/mZT
         Wgte/v5PKdL1Xvc4w8OK14dGorLugFV/LY/xVPi4C2urcbmFLCdqDF/BkcGVpl9Sg85H
         gFOG9oZ7OmpwurJQ/zzgWNrsS1hG5gQmFPoLpVVLx2Utnzte655eYY9CdikOMAVXF3qX
         7Nw2yzkiSqsE2at9L1gWkWj/StVyjhGH8GVi8diglHOiCei1qNWfTMKKs/SXRguRQlqM
         16zw==
X-Received: by 10.180.77.110 with SMTP id r14mr12908103wiw.89.1427049844460;
        Sun, 22 Mar 2015 11:44:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id y14sm15930184wjr.39.2015.03.22.11.44.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 11:44:03 -0700 (PDT)
Date: Sun, 22 Mar 2015 20:43:16 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] Staging: iio: Fix file header to match standards
Message-ID: <6b51874958583782f119d63f5e6a387160e8a3a4.1427048820.git.cristina.opriceana@gmail.com>
References: <cover.1427048820.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427048820.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix file header to match Linux Kernel style. Remove Free Software
Foundation reference to silence the checkpatch.pl warning.
Add driver description and correct spelling mistakes.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 44 ++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 6f6e96d..fffca3a 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_core.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_core.c
@@ -1,25 +1,25 @@
-/*  Copyright (C) 2010 Texas Instruments
-    Author: Shubhrajyoti Datta <shubhrajyoti@ti.com>
-    Acknowledgement: Jonathan Cameron <jic23@kernel.org> for valuable inputs.
-
-    Support for HMC5883 and HMC5883L by Peter Meerwald <pmeerw@pmeerw.net>.
-
-    Split to multiple files by Josef Gajdusek <atx@atx.name> - 2014
-
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; either version 2 of the License, or
-    (at your option) any later version.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
-*/
+/*
+ * Device driver for the the HMC5843 multi-chip module designed
+ * for low field magnetic sensing.
+ *
+ * Copyright (C) 2010 Texas Instruments
+ *
+ * Author: Shubhrajyoti Datta <shubhrajyoti@ti.com>
+ * Acknowledgment: Jonathan Cameron <jic23@kernel.org> for valuable inputs.
+ * Support for HMC5883 and HMC5883L by Peter Meerwald <pmeerw@pmeerw.net>.
+ * Split to multiple files by Josef Gajdusek <atx@atx.name> - 2014
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */

 #include <linux/module.h>
 #include <linux/regmap.h>
-- 
1.9.1


