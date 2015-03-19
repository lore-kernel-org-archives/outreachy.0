X-GM-THRID: 9152848986112
X-Received: by 10.152.45.7 with SMTP id i7mr12357795lam.9.1426792979649;
        Thu, 19 Mar 2015 12:22:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.166 with SMTP id t6ls338975lat.83.gmail; Thu, 19 Mar
 2015 12:22:59 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr10333077lbb.19.1426792979037;
        Thu, 19 Mar 2015 12:22:59 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bz6si462672wib.3.2015.03.19.12.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id g7so126669760wib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fXaUf3d/Foy/6Hrm2PVkDJHTx9jSXStnh+yzb71oHJc=;
        b=g5RIOWwvCfi4QmyEcc1CMOnaSoVncuTWj51WKcunmdHsZBPgxi4vH+qAjohM4EUK5+
         hrMEQYvqxZv9pPR9PnHZiDTa6SE05Xiwx56AewKRNNFiH8EYRwfWYZAdNqwdebyPvXJy
         VgCg5R/WAIWWgGNvW9M3Lk2uN665TPM9w5t23ebU4MFYOepng21qENikTY6WTJ2o2ql+
         CtJnnQsjKq/5NIAaeklm9TKoHgw5AEN94BVTn8ukRhUyozJxHd+81qUR70xd2edxtD9v
         yIQEvEoUaO8nBtSrbTJOzxOyZskFNnIEe/ZSs1g2wH2tbAvdjW+aX2t6XYvXQ5m2VZH7
         o/Sg==
X-Received: by 10.194.23.39 with SMTP id j7mr158088591wjf.9.1426792978923;
        Thu, 19 Mar 2015 12:22:58 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dx11sm3194659wjb.23.2015.03.19.12.22.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:22:58 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:22:14 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: iio: Fix file header to match standards
Message-ID: <33076868233b232db046b01db6f9d6925cbe0579.1426790651.git.cristina.opriceana@gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790651.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix file header to match Linux Kernel style. Remove Free Software
Foundation reference to silence the checkpatch.pl warning.
Add driver description and correct spelling mistakes.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 44 ++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 3898690..d03833b 100644
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


