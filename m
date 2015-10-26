X-GM-THRID: 6210088605629546496
X-Received: by 10.66.97.33 with SMTP id dx1mr18788089pab.9.1445899087001;
        Mon, 26 Oct 2015 15:38:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.68 with SMTP id h4ls972053iga.19.canary; Mon, 26 Oct 2015
 15:38:06 -0700 (PDT)
X-Received: by 10.67.7.35 with SMTP id cz3mr31301417pad.40.1445899086680;
        Mon, 26 Oct 2015 15:38:06 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si3800565pac.2.2015.10.26.15.38.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id la5so7586240pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Tpk46nw14gL/hVngSDozOj7dFXrEjjYDDkbFsX5q0Y4=;
        b=YFewalddnasMKgJ6X2CiyZ0/Dk1zYYsCf/O1+0fZBo7rIH4ToDtOqAa2yb5FROb592
         ZZaw+TwcvtsDWuYP2cLCNuEF3DYyemr1MKLR0LSdXCqN3qptMWZvSrSGfbjpvjXmQ0v8
         Yd+7znSbaIQYHlGUWF+ZfHh0XHZUINlfEHKg1dHyxtWZODpfnqwmn7xuVlfAMao2Rlyf
         srLFQIR9KaUlM1K2+cYLpxHQ65dshFJ5bFQs+TmyPVB5KNTaVou2Fd402WhOSn/26ZIN
         zPqktEJ9CBWAXmwLWFyO5eyYVPYMFzu6smYp5puULEl8iQ9UhUzmUuhGEDldvDEya/5Z
         fGSw==
X-Received: by 10.68.125.225 with SMTP id mt1mr24183260pbb.168.1445899086432;
        Mon, 26 Oct 2015 15:38:06 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ff5sm13915931pbd.26.2015.10.26.15.38.05
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:38:05 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:08:10 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 6/8] Staging: rdma ipath: 'explict' misspelled
Message-ID: <50b99466202ec6a288a5dfc9bfd0bc3f26f35f07.1445898782.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix: CHECK: 'explict' may be misspelled - perhaps 'explicit'?

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


