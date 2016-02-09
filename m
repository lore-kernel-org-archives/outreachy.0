X-GM-THRID: 6249277436220932096
X-Received: by 10.66.102.68 with SMTP id fm4mr33015222pab.3.1455023287509;
        Tue, 09 Feb 2016 05:08:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.77.108 with SMTP id r12ls789024igw.36.gmail; Tue, 09 Feb
 2016 05:08:07 -0800 (PST)
X-Received: by 10.107.163.208 with SMTP id m199mr34302782ioe.30.1455023287118;
        Tue, 09 Feb 2016 05:08:07 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id y131si2074427ywc.0.2016.02.09.05.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 05:08:07 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b35so139139666qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 05:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=1hYfuonDOYboqQqRopgHmOesH/l7gN6NvLn6XE+Wy/8=;
        b=rrSjJlrdxB81EucCnGfUkBosChetTs+u8kyO9An1A/NEmKPDBaYwA9BHyG3DHkK/W8
         DfwoPDnmMBvGW03qw/QPbjygvT20rBChxhwac4zimo11C7uGA4gqYDcP8oElCzuZWEPk
         TU65EfSKV30OcU9hcSHZh2smbSuv60hYDnlSgdxWSxNzpxpmdsiXvniE0/ruvdIj1hF6
         9vUXttWkPohWWj0y12qz6ewrxXKnlBcFhasy88XM1EJlOMwFxiR5z5Pexo3ATgXJOK61
         P/bHOzk+9Qi1IWRnR7QzHvhLvEcrMmrtgAAEA/fjU0scs3l0FA4fL1CCeZDFVcveyub3
         wxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=1hYfuonDOYboqQqRopgHmOesH/l7gN6NvLn6XE+Wy/8=;
        b=K/VAnlubYKKFhvgqX6OzYeLaFKId6H0xolRmnZagiNHwNw0uEGSxHJglfrU/2uWPiR
         f6oHwLnSrbWPBWewDDNK5ZIn8Pkji42I/sCCMa0Hr5obXl0fg0NhZRiCwG801+HQR6pa
         Ad8ZlJ0PL80Vz55IxnyR0iGDhMWgeZoW3rid+qfk3wFknZ4OwTMl1fAJmi9DWwCcNuBo
         013kHhQCDL8HiNmNIgyPqFRyJSEf66BOnsRyaHXiv+zVlSEmlfQf0qOcaPVT+jdC1miA
         zKsavwlK1Y5tqiVS1bRY48a3yMhGeb/D/KlrAIEq4f5xZPPuKV/Djekg+jGTnEq+od1N
         UVWA==
X-Gm-Message-State: AG10YOQMRsckJZQOCqmD601/16qPeXG+5eFu/N8JE+kSHt3noF0BQGFKVX2YNoJFHHu5ZQ==
X-Received: by 10.140.30.102 with SMTP id c93mr41007822qgc.80.1455023286953;
        Tue, 09 Feb 2016 05:08:06 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id o60sm15668882qge.34.2016.02.09.05.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 05:08:06 -0800 (PST)
Date: Tue, 9 Feb 2016 13:07:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: Remove unnecessary pointer cast
Message-ID: <20160209180729.GA4850@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary pointer cast. Issue found using the following Coccinelle semantic patch.

@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index e602026..96e5c6d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3652,7 +3652,7 @@ static unsigned int on_action_spct(struct adapter *padapter,
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 *pframe = precv_frame->rx_data;
-	u8 *frame_body = (u8 *)(pframe + sizeof(struct rtw_ieee80211_hdr_3addr));
+	u8 *frame_body = pframe + sizeof(struct rtw_ieee80211_hdr_3addr);
 	u8 category;
 	u8 action;
 
-- 
2.5.0


