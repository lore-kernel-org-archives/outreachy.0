X-GM-THRID: 6200058021520867328
X-Received: by 10.112.26.212 with SMTP id n20mr37513lbg.2.1443563499200;
        Tue, 29 Sep 2015 14:51:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.209.80 with SMTP id i77ls5602lfg.0.gmail; Tue, 29 Sep 2015
 14:51:38 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr28791lbc.23.1443563498563;
        Tue, 29 Sep 2015 14:51:38 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id fj10si807649wib.1.2015.09.29.14.51.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx3so35185826wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZimMm6OKsfV7Pg6G/cAtofkttaFKu1nkA2+ZU168dsM=;
        b=TmITIwvq++PRP43mNyVYYfhpqqZOBQBiREHbvjT5RYt8kbBshTyD40S/+YJrBKUGgJ
         cZ1us3So/odkkztxYWQkaAQGbD+SwEcBvOy6zan7nxVXNqRRTQfafowdIQcNJqY6Z2xc
         7HwfUb9tzi/RD6fvo4mLlrPpLKYjEcSCSm+MBsObXUdxu/UJbGZj6BsMI6/TjejbsG4Y
         e1dGGYm5eyhWrU6E1g0l/OU7A9Nj7W6ZsiigDMpc7s+XmPn2baQ8U8QA3KFfdJ4tKIKA
         9uqrZ/ixH20sYk0/kHlzaqQ7JOLQvGfGQDu9yZyhMEjDlIe+itcnLf5syTyBWvHSYAad
         V24A==
X-Received: by 10.194.77.4 with SMTP id o4mr347308wjw.4.1443563498448;
        Tue, 29 Sep 2015 14:51:38 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.234])
        by smtp.gmail.com with ESMTPSA id ej5sm25987155wjd.22.2015.09.29.14.51.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 14:51:37 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 2/2] staging:comedi: Fixed multiple file comment style
Date: Tue, 29 Sep 2015 14:50:18 -0700
Message-Id: <1443563418-42983-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed 'Block comments use * on subsequent lines' and 'Block comments use
a trailing */ on a separate line' Warnings

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/comedi/comedidev.h | 33 +++++++++++++++++----------------
 drivers/staging/comedi/comedilib.h | 30 +++++++++++++++---------------
 2 files changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
index 28a5d3a..c88f6e4 100644
--- a/drivers/staging/comedi/comedidev.h
+++ b/drivers/staging/comedi/comedidev.h
@@ -1,19 +1,19 @@
 /*
-    include/linux/comedidev.h
-    header file for kernel-only structures, variables, and constants
-
-    COMEDI - Linux Control and Measurement Device Interface
-    Copyright (C) 1997-2000 David A. Schleef <ds@schleef.org>
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
+ *    include/linux/comedidev.h
+ *   header file for kernel-only structures, variables, and constants
+ *
+ *   COMEDI - Linux Control and Measurement Device Interface
+ *   Copyright (C) 1997-2000 David A. Schleef <ds@schleef.org>
+ *
+ *   This program is free software; you can redistribute it and/or modify
+ *   it under the terms of the GNU General Public License as published by
+ *   the Free Software Foundation; either version 2 of the License, or
+ *   (at your option) any later version.
+ *
+ *   This program is distributed in the hope that it will be useful,
+ *   but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *   GNU General Public License for more details.
 */
 
 #ifndef _COMEDIDEV_H
@@ -264,7 +264,8 @@ struct comedi_device {
 	unsigned int detach_count;
 	/* hw_dev is passed to dma_alloc_coherent when allocating async buffers
 	 * for subdevices that have async_dma_dir set to something other than
-	 * DMA_NONE */
+	 * DMA_NONE
+	*/
 	struct device *hw_dev;
 
 	const char *board_name;
diff --git a/drivers/staging/comedi/comedilib.h b/drivers/staging/comedi/comedilib.h
index 56baf85..013446b 100644
--- a/drivers/staging/comedi/comedilib.h
+++ b/drivers/staging/comedi/comedilib.h
@@ -1,19 +1,19 @@
 /*
-    linux/include/comedilib.h
-    header file for kcomedilib
-
-    COMEDI - Linux Control and Measurement Device Interface
-    Copyright (C) 1998-2001 David A. Schleef <ds@schleef.org>
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
+ *   linux/include/comedilib.h
+ *   header file for kcomedilib
+ *
+ *   COMEDI - Linux Control and Measurement Device Interface
+ *   Copyright (C) 1998-2001 David A. Schleef <ds@schleef.org>
+ *
+ *   This program is free software; you can redistribute it and/or modify
+ *   it under the terms of the GNU General Public License as published by
+ *   the Free Software Foundation; either version 2 of the License, or
+ *   (at your option) any later version.
+ *
+ *   This program is distributed in the hope that it will be useful,
+ *   but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *   GNU General Public License for more details.
 */
 
 #ifndef _LINUX_COMEDILIB_H
-- 
1.9.1


