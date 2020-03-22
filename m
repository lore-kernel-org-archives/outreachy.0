X-GM-THRID: 6807040455722663936
X-Received: by 2002:a17:906:82d8:: with SMTP id a24mr16844048ejy.87.1584887610159;
        Sun, 22 Mar 2020 07:33:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls6412877edk.0.gmail; Sun, 22 Mar
 2020 07:33:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvsaMDdkSR8/Av/P3u9LXUtu19pbdqJjq71/qqzFA3/4cryYokV+g0aXNr5yLJbI1zNm4Cx
X-Received: by 2002:aa7:dbd8:: with SMTP id v24mr17717596edt.366.1584887608800;
        Sun, 22 Mar 2020 07:33:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584887608; cv=none;
        d=google.com; s=arc-20160816;
        b=fv2RQQnFXIIrJYoeSlPS3TifoUV8tBPsLRGibDcvow2zrnaodBRTihN0XrhBwBESOA
         sX1P6SLBcg0hQGmnAxcWNY5PCZTflz/RN2UnWpD9qpKpUoj8Qlbd2C5qi07OrzdKY0PW
         oLsFDqszpD3tonKkEzRufzYwgGuHNADk3VK5UBJhOOzLIkqQwkaAzDdQ8O1DxvyX9+kh
         AmQyaI2zopAntG+BlsKShWIOmMAO8fOkRSXL7Gsoe4RYSR1dAxJUPzUa4lIg9mfzQEWZ
         7xtBsS7Gp4AcdO1obOsu4bu9DnXT02O8goRQotQtz2Mfn7XJp3iHcf1aBDj+4bmZGt7Z
         M6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YuGC7EK3P4APzvgvITq61h7IZFZsS86F48F+iMACGyg=;
        b=AclLBDxtrSNmvXNZSqHGPNqIE1W5cA6IA+9kbCif6PSngqiJk2yl8Ohgdvus0NIHV/
         CPg+b2JhsjFklqC9UUWS2esjmSmns6VapVgaCXG7Mscqe4jlKlLXvHle/7WmHZxuKjUF
         k5EgDc/rd/gZe4P95WXuI1MHr3WhsV485PNygFAu2b07vIKjHGdVU+tTO8sxR6AyeyUM
         0pIEl9c+QY6Irypp9pcjvrVnEZPVhR+V2aSJXihDnrJMhVA1cUwYrTyusWFsm/otKIBQ
         K6VwDWowERpdXnHYmie/6au9cHAxBWSKDIV8aDK9JRVVF0vxr9FWDTElbth9jIUj6VdS
         jomw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKpGZOZQ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b6si94800edq.3.2020.03.22.07.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKpGZOZQ;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id a25so13381845wrd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 07:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YuGC7EK3P4APzvgvITq61h7IZFZsS86F48F+iMACGyg=;
        b=nKpGZOZQa/hI9WPCBv0+gMbWe+R/MNyUFXIyI9EG2S47oduTPKHbhQqEmW7DhmcePv
         2R4njF/xnACD7BGd2lUsOXuzYUAV0qzXNoJ28vbqHnnQwYqdsSWfnvAnogkfXu+RHbfT
         r+C/ghiHAE7XaSF15GvQw3YhgpUQdIsq356GZT9c0QgUK5+bxQ8JlqGRD1Ghcu1I14uf
         OQHZLU4sHhGWC6yxt9OwysOSPRs7l7+M/MrUcdORnGlIcWZuk5I6xHmEBc4fWwGMH6Qh
         YZAcqTDPuXbZN53UIyFQHSCELZps7fGzO2M6pkpgpZiXI/hG7OwOdoECShcq92Jj+Uls
         b3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YuGC7EK3P4APzvgvITq61h7IZFZsS86F48F+iMACGyg=;
        b=Mw9ZGRhGtdSAXBH/m2JVOZigL40nH5zJN0XASGhE1ctHL/8xv9jVBpsLPLSVvhX22+
         +aMTi4zwSNjbwfplxb+GTx/MrWefxYNf352scitX1Rs+vLW0rqY58ZV47yxGYV+pnE9/
         HJgzNipi/sNf7VLq6oxlCW+2qSpgIj3p6+BPhbRsAVyg3a65hMjFI1gCH7PaDXNgd7vJ
         9ToVKmcF11wtjYQ3Z4k4r1jQGkSC+D0OqlDpJgdEdaPBBq58h+Zepj0dfhMmbi/MDu2E
         ExCkCB6IfihAepFxx3YRKjrkgtRskw9yFh83IS3aGkXoc7E6VWanfpx+L0Z+z424ckp1
         QVUQ==
X-Gm-Message-State: ANhLgQ2wEj7wqirZkht4lAg/FO60C+WfRW9Y2ucF0DqF5zlPb8ivjPAq
	s7JG10v/Cl1CYW4ZXUYRy9BjDGpTp74=
X-Received: by 2002:adf:f58f:: with SMTP id f15mr24753913wro.16.1584887608355;
        Sun, 22 Mar 2020 07:33:28 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.132.208])
        by smtp.gmail.com with ESMTPSA id o133sm17367632wme.35.2020.03.22.07.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 07:33:27 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: speakup: Use pr_warn() defined in <linux/printk.h>.
Date: Sun, 22 Mar 2020 10:33:22 -0400
Message-Id: <20200322143322.29098-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Dropping a user-defined pr_warn() and using the kernel
message printing functions implemented in <linux/printk.h>.

Since both have the same functionality, using the standard
kernel functions is better.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/speakup/spk_priv.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
index ac6a74883af4..c75b40838794 100644
--- a/drivers/staging/speakup/spk_priv.h
+++ b/drivers/staging/speakup/spk_priv.h
@@ -11,13 +11,11 @@
 #ifndef _SPEAKUP_PRIVATE_H
 #define _SPEAKUP_PRIVATE_H

+#include <linux/printk.h>
+
 #include "spk_types.h"
 #include "spk_priv_keyinfo.h"

-#ifndef pr_warn
-#define pr_warn(fmt, arg...) printk(KERN_WARNING fmt, ##arg)
-#endif
-
 #define V_LAST_VAR { MAXVARS }
 #define SPACE 0x20
 #define SYNTH_CHECK 20030716 /* today's date ought to do for check value */
---
2.20.1


