X-GM-THRID: 6206282778545225728
X-Received: by 10.129.132.1 with SMTP id u1mr13292658ywf.58.1445012814341;
        Fri, 16 Oct 2015 09:26:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.1 with SMTP id v1ls1488358qge.71.gmail; Fri, 16 Oct
 2015 09:26:53 -0700 (PDT)
X-Received: by 10.31.3.23 with SMTP id 23mr5426821vkd.13.1445012813767;
        Fri, 16 Oct 2015 09:26:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si2015464pbc.1.2015.10.16.09.26.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:26:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id cn9so9926499pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pFHm/F9jSdeQT59+Y5xmMcIcOpBcnkz7hTu9p4Vq8bI=;
        b=kuan8aycGzVWsl1sYx5G7dlq0A2KcSzKfbrcjzhB6UUCOSA76MPRfR+SIHoVywfEct
         LCv/isuvTa1JQiC18Pkq5MXY3o077s2Ykbaclch1VlF1W3Zz3RC5tbtO0YoHl2CEAIRT
         5L9WOwXoJuypLXBzWB2L00eipy7P9JgqbxhVOv9N/XLdfNoEp0oyv/eWTlL/pG7FOB5a
         b9Arhfrb6ZuABn7oa4w4sCntbwgSZXU4cpgs86XpJ6ReQk2rVUODNTDP8qx4CB9VJ1mU
         t5KOYBthSiBAda9N0nmdhxXYchmGOym5GWdI9UArWX9nYCgWmNQDY/UuTLaRc7ha55qY
         Tw0Q==
X-Received: by 10.66.90.233 with SMTP id bz9mr17393426pab.14.1445012813638;
        Fri, 16 Oct 2015 09:26:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id yq2sm22082469pbb.39.2015.10.16.09.26.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 09:26:53 -0700 (PDT)
Date: Fri, 16 Oct 2015 09:26:52 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: r8723au: replace explicit NULL comparisons with !
Message-ID: <20151016162645.GA17124@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace explicit NULL comparisons with ! operator to simplify code.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 65b209a..59bb3da 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -919,8 +919,8 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 			break;
 		}
 
-		if ((p == NULL) || (ie_len == 0))
-				break;
+		if (!p || !ie_len)
+			break;
 	}
 
 	/* wmm */
-- 
2.1.4


