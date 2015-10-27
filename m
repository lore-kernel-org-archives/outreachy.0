X-GM-THRID: 6210088605629546496
X-Received: by 10.69.26.231 with SMTP id jb7mr19649165pbd.9.1445936463923;
        Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.101 with SMTP id e98ls1858221iod.28.gmail; Tue, 27 Oct
 2015 02:01:03 -0700 (PDT)
X-Received: by 10.68.209.129 with SMTP id mm1mr19672207pbc.5.1445936463648;
        Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si4048846pac.2.2015.10.27.02.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so226237630pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mpC6kkaSPclRkiKq/PWWulVB65pdWEjc5+3tDq25H5c=;
        b=sn0SamlyRStx+ZvzoweIMZtjsM2wlsXUcWZn2a+IbRXW6qBo4Iv6q9oabqT58ofCOD
         +hRD5UaVjy12lsWmsVDY7jcop4INPRBVSlgOqki0kz92zoznzMwPaMtvjKDF6CtccBtG
         A55fHVQ+OjM3S6mgiDlVsx4ngM/ZiFkQ40nsyH/dpU3oOQNlQGgL83mUTEm3aQ19AsKE
         RArbpO7SoY0dF+3hS3/rnGLjU9wQFUE4N9DSkeL5sUEFq/rt7cQxO5DdMZ2E4XFOjGDy
         /CfkrV4mYGRbfJpRamuxZ4jIVScfc+7+HQsr6x9WU0Z8cQ0mVBD8lMgC0y/5fcbYgMrd
         tEEA==
X-Received: by 10.68.211.132 with SMTP id nc4mr27750816pbc.16.1445936463559;
        Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ir4sm38302820pbb.93.2015.10.27.02.01.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:01:03 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:31:06 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 3/8] Staging : rdma ipath: spaces preferred around that '<<'
Message-ID: <e7077e1d1c8bc59b7ebfa8151fa4788b38daf74b.1445936144.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that '<<'

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index df2a211..3f9b4bc 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -365,7 +365,7 @@ struct ipath_base_info {
  */
 #define IPATH_USER_SWMINOR 6
 
-#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR<<16) | IPATH_USER_SWMINOR)
+#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR << 16) | IPATH_USER_SWMINOR)
 
 #define IPATH_KERN_TYPE 0
 
@@ -380,7 +380,7 @@ struct ipath_base_info {
  * spi_sw_version field of ipath_base_info, so the user code can in turn
  * check for compatibility with the kernel.
 */
-#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE<<31) | IPATH_USER_SWVERSION)
+#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE << 31) | IPATH_USER_SWVERSION)
 
 /*
  * This structure is passed to ipath_userinit() to tell the driver where
-- 
1.9.1


