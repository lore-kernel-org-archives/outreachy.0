X-GM-THRID: 6210088605629546496
X-Received: by 10.182.28.39 with SMTP id y7mr792494obg.30.1445936418288;
        Tue, 27 Oct 2015 02:00:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.201 with SMTP id d67ls3870842qgd.55.gmail; Tue, 27 Oct
 2015 02:00:17 -0700 (PDT)
X-Received: by 10.129.53.14 with SMTP id c14mr32791858ywa.16.1445936417799;
        Tue, 27 Oct 2015 02:00:17 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si3979486pbc.1.2015.10.27.02.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id la5so23582771pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+0P0U7huYyZeZLmUa9DsfImDE22dzpYN9kO66tQLuAU=;
        b=WMBl3rUaEyKLdYm0Gg25jWOC8b6y+ENVVVz0M9TryUJT0NtKGecpiAZhPG3i/T0Xgg
         CmQb7F+0bc56srvmRUfz1EJucSUhrrqVBqnAxi2ZWOfNdCXiFsL/K7mlL97FGAENiMKs
         kWy9xNWgC2E0CXe5v35S38K928B0XABa3VyXIIXHg5AnZf2ju1YI/x0xSNTUbpGOdnHR
         Q7fJY2zmrLxw/E3j0opUYiHzfMvvo3RUZ+79IvTSdVvriI2cqPjafZe+RUrNvJtHuci2
         slH1ZVL+4ypkwmKVsvgk7WYrqySJW1WOghPy4TsX4tVTDbtGUYDpRUu2PupZsPH26ri5
         QKiw==
X-Received: by 10.66.123.9 with SMTP id lw9mr25264959pab.119.1445936417659;
        Tue, 27 Oct 2015 02:00:17 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id eg5sm38468886pac.30.2015.10.27.02.00.16
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:00:17 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:30:21 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 2/8] Staging: rdma ipath: __aligned(size) is preferred over
 __attribute__((aligned(size)))
Message-ID: <08b191d4542768000f629b6700a9954ea9b4b0cf.1445936144.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index 812fb9b..df2a211 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -341,7 +341,7 @@ struct ipath_base_info {
 	__u64 spi_port_rcvhdr_base;
 	__u64 spi_port_rcvhdr_tailaddr;
 
-} __attribute__ ((aligned(8)));
+} __aligned(8);
 
 /*
  * This version number is given to the driver by the user code during
@@ -425,7 +425,7 @@ struct ipath_user_info {
 	 */
 	__u64 spu_base_info;
 
-} __attribute__ ((aligned(8)));
+} __aligned(8);
 
 /* User commands. */
 
-- 
1.9.1


