X-GM-THRID: 6329385396003143680
X-Received: by 10.13.228.66 with SMTP id n63mr15738404ywe.57.1473674875605;
        Mon, 12 Sep 2016 03:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls3070133itl.2.gmail; Mon, 12 Sep
 2016 03:07:51 -0700 (PDT)
X-Received: by 10.66.14.166 with SMTP id q6mr14826167pac.48.1473674871517;
        Mon, 12 Sep 2016 03:07:51 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si1965277pab.1.2016.09.12.03.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 03:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x24so7882773pfa.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 03:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zzXftJoe6GLTb3zTElxCkL6EjcuS+4zVxfTmGhVDp1o=;
        b=zKYVaDC7SbJ0NFNFfdGc1KsQz0zuF8LDPQzoQPWPOpNk6hQaaljtyhe8HCmgDfnEGs
         dDlCdPh+Ig7Tfy/Kp3Fok5JIbnd7KcRLrV0xtO+bLkfSl56SZxr30v2sSkM9BkWa2H56
         hnBb3qv6JFh53Oe4IVlJxAXus470ddSCjkFlprKQATaf9cput2XQp9WjB1hidwORYIri
         L4AVf+ku+YOXSh+CeLEwybDSfoaD22w5xXfSyWiIKvPmMWintO1rZokbl68+rhI/yztM
         JL2hg2zPZMB7RyEfmsGFk36FjhOBamdbRytS2JpOsi5W5oMrMWk/wtC8IQiaMy66Wyw3
         qvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zzXftJoe6GLTb3zTElxCkL6EjcuS+4zVxfTmGhVDp1o=;
        b=XyqkkqAw8mZw3zR/XAw8uxfJ++l/QSd+edh6Mim9LqiHN7/+tu7mfPnBSu6VKrh1n1
         Nn96OTXeuS1E2tjehvq6eWKg3PXQ43CBjSUKHQVkceytsjVqRKhAaGS1VMznSvmepSBr
         ZLKCEFcfsh9OlXCVUm69REiEXbeEGykl4+c+21td41Zz2kGQGwlX9FewHi2nZQkGoKdk
         0klVlSheUBm7eoXROoRzJBdJHJAqvvjz2U6zUwN3Dy8mZkGBXoYXkxCMLANMsuaE80ul
         8CMW4JDZRS1ukWeshCWYyUyS+4ptx/DT+WkjPDu/Z2BD51sDWd6h9W1RyJrRMdV8ZXoC
         bW0A==
X-Gm-Message-State: AE9vXwMQkSZsJr6ImjCmPivY0AA/lGDq7cYG4OymHGnS9vruPFblidz6M7G3gpMDeorlUw==
X-Received: by 10.98.141.219 with SMTP id p88mr31565200pfk.153.1473674871207;
        Mon, 12 Sep 2016 03:07:51 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xx7sm23374045pac.3.2016.09.12.03.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 03:07:50 -0700 (PDT)
Date: Mon, 12 Sep 2016 15:37:37 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Remove unnecessary blank line
Message-ID: <20160912100728.GA4810@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
Blank lines aren't necessary before a close brace '}'

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index f4d9000..f6233ec 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -131,7 +131,6 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
 		reg_data =  _nbu2ss_readl(
 			(u32 *)IO_ADDRESS(USB_BASE_ADDRESS + i + 12));
 		dev_dbg(&udc->dev, " %08x\n", (int)reg_data);
-
 	}
 
 	spin_lock(&udc->lock);
-- 
2.7.4


