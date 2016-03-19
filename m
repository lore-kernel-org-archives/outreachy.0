X-GM-THRID: 6263794151847886848
X-Received: by 10.140.156.139 with SMTP id c133mr16288636qhc.4.1458409772609;
        Sat, 19 Mar 2016 10:49:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.115.101 with SMTP id jn5ls114687igb.16.canary; Sat, 19 Mar
 2016 10:49:32 -0700 (PDT)
X-Received: by 10.50.143.101 with SMTP id sd5mr4486023igb.4.1458409772299;
        Sat, 19 Mar 2016 10:49:32 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si2926839pfa.2.2016.03.19.10.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so22805619pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 10:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VPfKHAKUJmTmlDlGjVYZO2GLk+NU0J2ztgxElen0Vik=;
        b=hnM3yzXJzTZ9lUq4coWc20iZcdnhjldK+J5IQKlmucEVfhAEjJpGSxObJ3xF881lpB
         a7tC1kJci/Z4vYRUuXNQLzyiCimB6jLi750dx2I0n1Jwx4e0NWd1lYEn/xHb6je/6zdi
         vqX7b9TdZ7ndnjZ47rzmbHR2hb94/VoOUyFAFbMi7f/qJ3kCZtq43eWzbv7cXegJSsJ7
         L3zRhrLHeCAhxMnV9RylJnXSdlmHpOR/lrP5itkJfKe0wf92vAq6O2z7mqXtTxCuzc7k
         IamcWoZ3drrN/kn3g0mvm2VPLM+r+baOrfVXWXIILbLJzpde6L19wusUF5ZnyPwJH85F
         3Mwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VPfKHAKUJmTmlDlGjVYZO2GLk+NU0J2ztgxElen0Vik=;
        b=Vba4fTsJk/mLpordlpiaB+9PljWH5Q8kBQlwdw2ph74CS4f9m1KKur4psfTaOsmOK4
         E2tibukqjOJVl4zQR2DwkfW+4DbJb67UcCaGsyXE2/OSi+fMa1rxfy6Hf8jOQEiPS8cM
         QDZKqwDtDReYFT2vdlMpTU9KCTqE9hpd90jt2IkS+7t9Hv2pE5nVIwRLW1g6Jt+x7Ep3
         vMm/OxkMrxm341skJaW7QNfcJxpiZqJeRxkC8ANSsFRYq1PVWEIUBSCKCQSlTZlpEYNr
         92lZxg2JwEKR1Cif69YgFy86kUj84Z/lVnsaALiNY7s1vDSQijdqUWXaJTykujc8D0+F
         yvFw==
X-Gm-Message-State: AD7BkJLYY51apxwjyv8DpVCEJzEn3tcgTEcK1Ey9RALPrNMHFqtB+1cChKHvMauezqplrg==
X-Received: by 10.98.71.70 with SMTP id u67mr32697589pfa.85.1458409772136;
        Sat, 19 Mar 2016 10:49:32 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id q72sm29384646pfa.70.2016.03.19.10.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 10:49:31 -0700 (PDT)
Date: Sat, 19 Mar 2016 16:20:25 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/4] Staging: rtl8188eu: usb_halinit: Use !x instead of x
 == NULL.
Message-ID: <9ec6b4713b94eefc2a360ad0b1258ae198b819fc.1458382380.git.bankarsandhya512@gmail.com>
References: <cover.1458382380.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458382380.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 07a61b8..e25c38b 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -2083,7 +2083,7 @@ void rtl8188eu_set_hal_ops(struct adapter *adapt)
 
 
 	adapt->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
-	if (adapt->HalData == NULL)
+	if (!adapt->HalData)
 		DBG_88E("cant not alloc memory for HAL DATA\n");
 
 	halfunc->hal_power_on = rtl8188eu_InitPowerOn;
-- 
1.8.3.4


