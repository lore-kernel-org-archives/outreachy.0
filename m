X-GM-THRID: 6210088605629546496
X-Received: by 10.140.151.198 with SMTP id 189mr31967027qhx.11.1445899006884;
        Mon, 26 Oct 2015 15:36:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls4192931qgx.34.gmail; Mon, 26 Oct
 2015 15:36:46 -0700 (PDT)
X-Received: by 10.129.101.196 with SMTP id z187mr31212707ywb.41.1445899006305;
        Mon, 26 Oct 2015 15:36:46 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si3749936pbc.1.2015.10.26.15.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so200498539pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=c9VgpeMJEIEkceHLdG7rIyU8WWLKQv18JfnPhlgkDgM=;
        b=Xzdz9MJ/8T72AEQoJFmBNtlMNLPL/z0SYbnyr6fxUDMAykckURwbBfJ/LOM2ovxdZK
         0ibOYWMBb9jvAnVVrL7lTnjfXuyizHAl0j3arxuenzJMn5R5t6HgfDY/lpvXXjTZF5CI
         LCIY24WGOenwJ3C2T25UmPhmJiPn0eHQASr7gIiATTi+BJAUfVQAn518mw/uCbqmH7EM
         gLUyadrF4xyMZnhYppx/k1MSZSG3DxGkrHOsQOpcSWhNpcYLXiTi+RxDYRKjPnKRUEce
         /RTDnHqDJy3W2gfJnfuIvBcfN88f/3FpYPFYovseCk/JqdZeB2wcA2aYd2pfQPHHlSS0
         tVYQ==
X-Received: by 10.68.69.15 with SMTP id a15mr44366088pbu.62.1445899006171;
        Mon, 26 Oct 2015 15:36:46 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c3sm35789324pbu.24.2015.10.26.15.36.45
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:36:45 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:06:49 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 2/8] Staging: rdma ipath: __aligned(size) is preferred over
 __attribute__((aligned(size)))
Message-ID: <08b191d4542768000f629b6700a9954ea9b4b0cf.1445898781.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


