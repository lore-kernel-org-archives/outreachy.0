X-GM-THRID: 6210088605629546496
X-Received: by 10.182.24.170 with SMTP id v10mr32034336obf.17.1445936540204;
        Tue, 27 Oct 2015 02:02:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.82.69 with SMTP id g5ls1042888igy.40.canary; Tue, 27 Oct
 2015 02:02:19 -0700 (PDT)
X-Received: by 10.50.43.170 with SMTP id x10mr19789062igl.8.1445936539929;
        Tue, 27 Oct 2015 02:02:19 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si3979486pbc.1.2015.10.27.02.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id la5so23582771pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ghJxMK2EY3x6vMlAbh9zSyaVqIGSJYOfBSYxn4hhTA8=;
        b=nYoYD4eZnVZ9YWeXfrufzH3QuPHun0ku9UAbBCwNGb2SdQ060eKm9B1DadzcDWsY+r
         ZMhZNI76C7P8xl1XTVPpvOgH7ESLxS6FrMIp59LAUFeemL1iptqqrF82GkdYUI623DEU
         HOg1WwkmDLZhY8Zrd4z3QDCCcG/jED71fTD4tDRZc9uZUaL47z3mj7ROJPQlwUOxy4k+
         +eLmqD+gYVdyWd/9L4h2Zcrltb6hPbrT3Rh42K7fLdu5yMDP+WBOYNfAx4voHw4tz+gw
         xzApxjJPDUYLaClzFD2qjxP0vz8FQI2DWQQ0GFlKx7pe0JFXdFnqQfCokuwclNnUUFtC
         iKyQ==
X-Received: by 10.68.138.233 with SMTP id qt9mr27639371pbb.39.1445936539842;
        Tue, 27 Oct 2015 02:02:19 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t9sm38347082pbs.17.2015.10.27.02.02.19
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:02:19 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:32:23 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 6/8] Staging: rdma ipath: 'explict' misspelled
Message-ID: <50b99466202ec6a288a5dfc9bfd0bc3f26f35f07.1445936144.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix: CHECK: 'explict' may be misspelled - perhaps 'explicit'?

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index 567869a..24dd8b6 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -209,7 +209,7 @@ typedef enum _ipath_ureg {
  * open to get implementation-specific info, and info specific to this
  * instance.
  *
- * This struct must have explict pad fields where type sizes
+ * This struct must have explicit pad fields where type sizes
  * may result in different alignments between 32 and 64 bit
  * programs, since the 64 bit * bit kernel requires the user code
  * to have matching offsets
-- 
1.9.1


