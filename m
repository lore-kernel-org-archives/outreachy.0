X-GM-THRID: 6263794151847886848
X-Received: by 10.140.181.198 with SMTP id c189mr16483512qha.24.1458409567037;
        Sat, 19 Mar 2016 10:46:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.105 with SMTP id s9ls651856igg.0.canary; Sat, 19 Mar
 2016 10:46:06 -0700 (PDT)
X-Received: by 10.50.50.137 with SMTP id c9mr4448056igo.3.1458409566580;
        Sat, 19 Mar 2016 10:46:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id sf5si2919028pac.1.2016.03.19.10.46.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id u190so22464361pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 10:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QfSmlwuhAi5LJGi3Ly2Kmv0EvSHkzHIbvIdHwLKtoVY=;
        b=vwq0fhvOxCuwRkcu5QPvjfckGsz8D+SFR8IBFb5aAumMJTMPhrG1VGDMXqMNd3EYjH
         gakUvvrdM6AutXBkt1bBUDr3ABe0jPghqKWV9IKpbXllt3uSJXVkJlTbVd7DVXyT+W6z
         UWOJiIhFWWnTVqCOolpBYCATQrTuK/cxy11gFh7/ceh+LgjYEOUT1IP7bWIcGuwV0LUM
         10Y58FT25eLWm+abPNkHrmOmB+Hf9J/AuQ2DT7lwe2lJC4sjmPuUHyUo4pc2jLw5FNll
         GmND8Pqy/qOFQu0u+FpOC1+DNFgz1UeSz25OLZzkPpeHFG3OiEOssz+cuBGlH7zb5tJN
         WgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QfSmlwuhAi5LJGi3Ly2Kmv0EvSHkzHIbvIdHwLKtoVY=;
        b=D9+T7ldp9LNzDGWsrSpf9H9oPpCREGz8QgQ1HaUwQxiRj9hKcADMgJgFE778vO51/L
         IdDRFq/JygnzdO53sMH4Vyx7N4a+yTDYshUNsHjHj+rrVTWEOSu/pdvyLpaZct0xX+va
         bRNgG0y1yXpHEGcBi6y2jiTUwwX2VeGTYQmM5Ts+uXSSFHPhELZ2ch4mFF2V2hNwo7q4
         42hGqJl0u8aFgnJ5No+vgKU95Gfrse0w5O07MGas8WXHOgU0wo44KTGC8mXXwd9vjdAU
         wBk/wlkqaQtR8vX6pqZJebdGCDXtexrRRXa/KmS7HfFBXcDZYIlpCrk7SXgP7xdH37b2
         t6KQ==
X-Gm-Message-State: AD7BkJLUF14qzX3JAzyOt+s+JCx3seeRmmmPvUYHtvuZb6N3FjNBA5DSazZkwuD8WC4b3g==
X-Received: by 10.98.10.20 with SMTP id s20mr32222179pfi.109.1458409566419;
        Sat, 19 Mar 2016 10:46:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id 82sm29353743pfb.64.2016.03.19.10.46.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 10:46:06 -0700 (PDT)
Date: Sat, 19 Mar 2016 16:16:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] Staging: rtl8188eu: hal_intf: Use x instead of x !=
 NULL.
Message-ID: <08dbf910fd604fdfd258b82d2ca8e53621f9c6f8.1458382380.git.bankarsandhya512@gmail.com>
References: <cover.1458382380.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458382380.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL.

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


