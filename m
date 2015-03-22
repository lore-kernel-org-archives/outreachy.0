X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr14742873lbw.4.1426984138186;
        Sat, 21 Mar 2015 17:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.229 with SMTP id l5ls586476wib.32.gmail; Sat, 21 Mar
 2015 17:28:57 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr14370725wjb.0.1426984137815;
        Sat, 21 Mar 2015 17:28:57 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id el6si211512wib.0.2015.03.21.17.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibdy8 with SMTP id dy8so17833412wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=k7cfKkJEO3HN604jYtE1eaNtRXpix+9u65ZEuEchBFg=;
        b=KfLfVEN1A7zTY1ffmlnGQHjF+eznoBFOAQbAujcWRqy22x0LPhvfEAZzaIqFqSoQzd
         KxzeA+TlKzOULmHTWPsVzlkmAIQ0S2KhIjpGcieMHFcmAtqsiP/7Sy5o9PACz51H0E2Q
         70fjr+Libexj3hmZnHgMal8T3D9A2wWfQOtbm9AiAoOkhOdiBdxqmdLI9IjEWqee83R+
         0DPM0oLXL9EP8gMUvDqBm+Woo8Kc014/8rLeg36OdnYTn1/6Ye9mlvFU6BDwi+ZVh4LJ
         Qfa024oTEBlSZcxHfVzDzScCTjJBDUGCFOKzAvQJcnh7m3FIVYw1I0g40+W8IWG1XN3V
         mKDw==
X-Received: by 10.194.211.104 with SMTP id nb8mr109776960wjc.51.1426984137733;
        Sat, 21 Mar 2015 17:28:57 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id hn8sm4407757wib.18.2015.03.21.17.28.56
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:28:57 -0700 (PDT)
Date: Sun, 22 Mar 2015 02:28:11 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: [PATCH v2 2/2] Staging: iio: Fix file header to match standards
Message-ID: <205e0f75fe744c57a2cda4c6ca723be6275a2db7.1426981797.git.cristina.opriceana@gmail.com>
References: <cover.1426981797.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426981797.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix file header to match Linux Kernel style. Remove Free Software
Foundation reference to silence the checkpatch.pl warning.
Add driver description and correct spelling mistakes.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_core.c | 44 ++++++++++++-------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_core.c b/drivers/staging/iio/magnetometer/hmc5843_core.c
index 7de19c2..9664ac7 100644
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


