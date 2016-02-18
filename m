X-GM-THRID: 6252686947225960448
X-Received: by 10.28.6.14 with SMTP id 14mr628896wmg.6.1455817126810;
        Thu, 18 Feb 2016 09:38:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.87.207 with SMTP id l198ls176966wmb.38.canary; Thu, 18 Feb
 2016 09:38:46 -0800 (PST)
X-Received: by 10.194.172.40 with SMTP id az8mr1274649wjc.3.1455817126029;
        Thu, 18 Feb 2016 09:38:46 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id c143si216954wmd.1.2016.02.18.09.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id g62so39808945wme.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Sv8E5uyT6XPxN3A9LZEN4LD/TRztSr5tXZrPu6eshks=;
        b=n+YbIk43CVP5Bz1Qx3jVkvdIWlsH9MRP7VJC96FlhTNOi/CCnxjjE6nuxB9onVioMh
         oP/tdLrXgKa/ZjOy10S3+zAgwVMZwRMDJf1cToa0Kh2S3lo3JHsm8/0Fli+0ONnHKBh1
         569ynOkSmZsN8e6mCRLZKxxs5ta3wkonZ+SgTfKlvoDbVNyTd78sbei/LwN4O0CrNdKx
         E5h7i2P/CklcmnQT/vZ2PQyadqhDa9pocLCMQwrU7Lj9VIeIrldVv/PV3B4+GBWTWEGe
         7I6M3FmDEJMXF0ht1tkGwA+U1ESB+pKTd/HtS1erF7pnWIHzsLjjuvB/dNif5aQYY9Ri
         JtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Sv8E5uyT6XPxN3A9LZEN4LD/TRztSr5tXZrPu6eshks=;
        b=ZrlIHviy2FrAyo/wmOr5bfENRBL/m+j8jBvh/hj77HeXx3jZVrDXEOpRTVRI0aGO0S
         z7E4FiBLFwdIeBXbhtstkyNcsvDQ21qpCpiLJqPHxJXtmSobcqi1goW0umcEXWFJGBDg
         skee5RLd59sePEgCYTIJXzGmmtlINBaLxIXoQj+FAnIixtEB//ssC81SUNRejH34X3Ah
         zd1yCInT8H36BMPwgoEpqqU9N7WDN5nDYsKgr24lHEBwV7Yo37JUktNNrwLnBXzhScTY
         8HlkEewEh3NRxPLC9fB52lkz0bTt+alf8oaZKbJFydUbrJXEGoPNPyubZ7QmGkPVThoI
         IlZA==
X-Gm-Message-State: AG10YOS5m+y9x3fgZCJ+FyVy0rmd9KM5VfPBvAj9SW9XG8L7zMDTDsIFz3O2RMAeCo9XAQ==
X-Received: by 10.28.5.77 with SMTP id 74mr4969222wmf.62.1455817125623;
        Thu, 18 Feb 2016 09:38:45 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id bg1sm7564412wjc.27.2016.02.18.09.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 09:38:45 -0800 (PST)
Date: Thu, 18 Feb 2016 18:38:42 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Return zero pointer after failed kmalloc
Message-ID: <20160218173839.GA9157@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Return a ZERO_SIZE_PTR in the xlr_config_spill function if the
kmalloc returns an invalid value. This change prevents a possible
segmentation fault as the invalid pointer is fed into PTR_ALIGN macro.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 98e74d7..0015847 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -437,8 +437,10 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
 	base = priv->base_addr;
 	spill_size = size;
 	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
-	if (!spill)
+	if (!spill) {
 		pr_err("Unable to allocate memory for spill area!\n");
+		return ZERO_SIZE_PTR;
+	}
 
 	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
 	phys_addr = virt_to_phys(spill);
-- 
2.7.0


