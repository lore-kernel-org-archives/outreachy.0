X-GM-THRID: 6255228217759629312
X-Received: by 10.50.150.98 with SMTP id uh2mr2685983igb.2.1456409025756;
        Thu, 25 Feb 2016 06:03:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls429061qgd.75.gmail; Thu, 25 Feb
 2016 06:03:45 -0800 (PST)
X-Received: by 10.129.158.2 with SMTP id v2mr41379182ywg.42.1456409025229;
        Thu, 25 Feb 2016 06:03:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x243.google.com (mail-ig0-x243.google.com. [2607:f8b0:4001:c05::243])
        by gmr-mx.google.com with ESMTPS id iq8si239364igb.0.2016.02.25.06.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:03:45 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) client-ip=2607:f8b0:4001:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x243.google.com with SMTP id xg9so1098960igb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hrf9bIiSnKmJ3ay3MgUCzJFTja4C/9HJ8F0rzsrVqLs=;
        b=iU2yCXDho26E3r8ufs7XX+CqnomYQWPCR4m5qEj8h3SrjsNNwSz4val8yZSAw/+Cqa
         B0aFHDtAERJnB4/w4+sHGCwYA0A0gQh6ZnAEnpw1z8Qysv/0yPNutRAZr9KfWQWEqhqj
         h16Ze5bwZA8v3oe8bKN7L4Xf8FL3Y9d7VmD1a4ColqYTZlu9TvSNaXyEHFNuf06u6O8G
         s6FFrkwWNPlWrgAsu0Oa6nC/bX5d0L34EOZ1SiylhTMYxxQUa8Eqi6F1ouTTA+F2giS7
         4vHZB2omWNo/Cau8yJVBrsDeui0FDpQXo57iQbSQqjfjH55lh9GvL7ENtFc9oUcrzYdw
         fTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hrf9bIiSnKmJ3ay3MgUCzJFTja4C/9HJ8F0rzsrVqLs=;
        b=i9Lk7iRq0moMk3i/XzOIBo8yCksTPsY+Jo9KNifnFF0JY7PdBA8wRFz7ls9I4uIVHw
         Jr5u2sU0rM5oGR5E9gnat/QFVdjsLDQHtr5rcHMFSYAmg8VUXdUmgNxXpgT+efs+/MzJ
         mazTvKFVK08ucGAEJDiCr3WIgMSxt4JA6dMKA883RrwdXD6T5zpgcj8VKROC6iLXSUJR
         uAKqwr1UWdSNF9CEVQLG8V8S49GUGOPU+ePCa1cF2LK1enAqylOvKscLL3SRABf3Ic8i
         Y99NujLBf5ys6M/yXaB/EDVgLyTKSHyl8OQeGtY1lpwUxtP2BUS1pznGFoQCIge35k7p
         S7Vw==
X-Gm-Message-State: AG10YOSj8tp1kV7/mRAMvd5cVSdfdlyRS6cC9xjVu1NxyIdvx9cRUX971KjQW59o9hM5vw==
X-Received: by 10.50.138.3 with SMTP id qm3mr2031676igb.46.1456409025033;
        Thu, 25 Feb 2016 06:03:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t2sm1307135igs.3.2016.02.25.06.03.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:03:44 -0800 (PST)
Date: Thu, 25 Feb 2016 14:02:56 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8723au: core: Remove CamelCase
Message-ID: <e89a5e29b70620dbd80342261fefee41eee3b9c7.1456426552.git.janani.rvchndrn@gmail.com>
References: <cover.1456426552.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456426552.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove CamelCase on the variable FunctionContext.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_security.c b/drivers/staging/rtl8723au/core/rtw_security.c
index 9d2a013..411d138 100644
--- a/drivers/staging/rtl8723au/core/rtw_security.c
+++ b/drivers/staging/rtl8723au/core/rtw_security.c
@@ -1617,9 +1617,9 @@ exit:
 	return res;
 }
 
-void rtw_use_tkipkey_handler23a(void *FunctionContext)
+void rtw_use_tkipkey_handler23a(void *function_context)
 {
-	struct rtw_adapter *padapter = FunctionContext;
+	struct rtw_adapter *padapter = function_context;
 
 	RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 		 "^^^%s ^^^\n", __func__);
-- 
2.5.0


