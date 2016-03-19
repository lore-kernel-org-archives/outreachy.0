X-GM-THRID: 6263795726367588352
X-Received: by 10.66.224.68 with SMTP id ra4mr15932019pac.45.1458403590585;
        Sat, 19 Mar 2016 09:06:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.240 with SMTP id y103ls1710105qge.59.gmail; Sat, 19
 Mar 2016 09:06:29 -0700 (PDT)
X-Received: by 10.13.238.130 with SMTP id x124mr16376029ywe.53.1458403589768;
        Sat, 19 Mar 2016 09:06:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si2888283pfa.2.2016.03.19.09.06.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n5so22040438pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dlzlWwhDyoA4SzhZJhJ/twmxOIWG6L35xtQft9lAaCk=;
        b=iThKjEL7YH6CFkR7YcHxzbdVpc9+ZXO8tlNbvDrh2d1t4dkBVuclvOCqq+dW56Ghus
         yWtruq2KVRlN5jEWMa2uMUOhKgPVGlvcLdDKg83upo0dUyLjQq+SizDYBueHvXDuxSoF
         xvJi934rVtMbTFN1FINjI4OlRudDO7gUERnNOrtu/9nMe7Yz7zaaaq1pjWlgVmbXpf/h
         pfYYfbeR/ZVIygbSVjqw1Jvf0qophqjRjF2Or5v+VPzBqIDpNlZB/mnEsMbSd/TUSZWY
         BumMAMzfFzoWzcLpwgLTux28/ZNnr2oviifVzyO8U0icD84Q7gbs5MhwZRka9a7gDk8Q
         n4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dlzlWwhDyoA4SzhZJhJ/twmxOIWG6L35xtQft9lAaCk=;
        b=E5ft/Km0BH0Deqy4oBytcSEa5shW3itbKojzskchoCBnJaHoOVvhwxFmfcQEOzISuO
         ViBZRMsX4fYzinE+iLZQRnSrSaQWPLHnz2RrFw4v9fFuK3IhyefahZ4m6qZEUgrN34Yh
         R77KMWMHw6giONf6u+MY4wEumv/5Vmvv/KmF+1TYBzDgul25ec46BCyqJAn6v7BXfaVJ
         PbeNDXKApbjsQGbk/2ulvMYOOttsRihOcMP1mv21IJxtiugHOZKZzvpdR3KTTpHPkpWe
         jfpp3rHYa9EOzsGvwk8ZNvd1ObGSMG3LmY/7iUEaZV9oK5rOPB1Q51qI164K4PQBh1Zf
         JZvQ==
X-Gm-Message-State: AD7BkJKNSFdJb7WC8LBc2b4iL5+Kep3Zr0hK9smCxTX00nMXw8v0IZhpMWRsn3Haik81NA==
X-Received: by 10.98.76.194 with SMTP id e63mr32711245pfj.89.1458403589590;
        Sat, 19 Mar 2016 09:06:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id zu10sm29016237pab.31.2016.03.19.09.06.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:06:29 -0700 (PDT)
Date: Sat, 19 Mar 2016 14:37:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: rtl8188eu: hal_intf: Remove NULL comparision.
Message-ID: <08dbf910fd604fdfd258b82d2ca8e53621f9c6f8.1458376695.git.bankarsandhya512@gmail.com>
References: <cover.1458376695.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparision.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/hal_intf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c b/drivers/staging/rtl8188eu/hal/hal_intf.c
index 85c17ef..fb7bacb 100644
--- a/drivers/staging/rtl8188eu/hal/hal_intf.c
+++ b/drivers/staging/rtl8188eu/hal/hal_intf.c
@@ -186,7 +186,7 @@ s32 rtw_hal_mgnt_xmit(struct adapter *adapt, struct xmit_frame *pmgntframe)
 
 s32 rtw_hal_init_xmit_priv(struct adapter *adapt)
 {
-	if (adapt->HalFunc.init_xmit_priv != NULL)
+	if (adapt->HalFunc.init_xmit_priv)
 		return adapt->HalFunc.init_xmit_priv(adapt);
 	return _FAIL;
 }
-- 
1.8.3.4


