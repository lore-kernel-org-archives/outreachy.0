X-GM-THRID: 6391488728330665984
X-Received: by 10.200.51.164 with SMTP id c33mr18427qtb.85.1488252220359;
        Mon, 27 Feb 2017 19:23:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.68 with SMTP id y65ls103256iod.0.gmail; Mon, 27 Feb
 2017 19:23:39 -0800 (PST)
X-Received: by 10.99.111.143 with SMTP id k137mr41691pgc.1.1488252219662;
        Mon, 27 Feb 2017 19:23:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f7si70321pfk.5.2017.02.27.19.23.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 19:23:39 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::243 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x243.google.com with SMTP id y23so1759565pfk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 19:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V7KXv5qKeTQNn9Fs8mNaqsBfUONEdIh5gMASvb8Nb8w=;
        b=uXtvCryciZwn9UVl7pYu3mN92p4vA/uOOLNTbvy8ixYlDjH6ELdTHSWaJFvfZvBcU+
         yD0DtMg83rnz/wk3aEsJ8QsZLXndLZ1QgR7jTbNyv4w+mE1CpFJ3WtmuQslhhw4hllks
         mKcNTDi0m/Jb+KwYXHpIzMH0AyqbyqjvEFlnlBbLW3AXBB/H8xSOBg0GRmFBYhVS6NNh
         xu9ZqBkrpcqU2V5ORAmjrcUdTf2NWeI9Bz/FSTlJCwCp6TyXo9uJwKIy8GhC3WI7+CBx
         Rc4hh8nPj3Al3D6qEhMi8qkVM9EqWdBYpkU1QMMAceBJVJ9d2RLSkOLT3fbt9y0hItd7
         EE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V7KXv5qKeTQNn9Fs8mNaqsBfUONEdIh5gMASvb8Nb8w=;
        b=TAr1diS/qmRGVyWc+jvhnqLiQ+gJd+8P+j7P0zyU7aLKK1aQGY7AysKVBH7dgkb68X
         6ePoO0srnZoDlV2R2O5c7KGrXxrc40va3rG4x+hxjdBhFA+sh9QlFwD4uHZJFZ3EpodF
         sLbeZtp5ncWqLyyAiCD05Kgd7e5FHT1vIylYeMMI87E4xL3Wa/88gyJBEPfGjoFkYxu7
         maIOosyDJA6IXamVgXS3PjCIfI/7RTs0ipdx7ZACDjS0Ic4KTc8r8OTVNHwq61EM39IB
         JEUxBi9AjHdWT8PiCd83yDLpoi3kaH0B7bDmlBDuXxpPSPVjw3sVnvA0S5x6SDuH0sVY
         VKyw==
X-Gm-Message-State: AMke39kQlgpP4AcxlzpvXxRMNaX7m7XVn28dcenqtyKTMDOM4FG448b8Cn6ATxFscUbepAyU
X-Received: by 10.84.209.194 with SMTP id y60mr133229plh.115.1488252219471;
        Mon, 27 Feb 2017 19:23:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id y5sm438813pgy.28.2017.02.27.19.23.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 19:23:38 -0800 (PST)
Date: Mon, 27 Feb 2017 19:21:28 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 3/3] staging: iio: meter: Clean up #includes
Message-ID: <e3ddd60060761d6b581e4a9d54ff2a3b7daf8add.1488250885.git.kdunne@mail.ccsf.edu>
References: <cover.1488250884.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488250884.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.24 (2015-08-30)

Alphabetize and separate kernel and subsystem headers.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7753.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index f855c60..5ea3ea2 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -6,20 +6,21 @@
  * Licensed under the GPL-2 or later.
  */
 
-#include <linux/interrupt.h>
-#include <linux/irq.h>
 #include <linux/delay.h>
-#include <linux/mutex.h>
 #include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/spi/spi.h>
 #include <linux/slab.h>
 #include <linux/sysfs.h>
-#include <linux/list.h>
-#include <linux/module.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
+
 #include "meter.h"
 
 #define ADE7753_READ_REG(a)    a
-- 
2.7.4


