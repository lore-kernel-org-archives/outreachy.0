X-GM-THRID: 6749323707377778688
X-Received: by 2002:a17:90a:9406:: with SMTP id r6mr10877184pjo.0.1572396014684;
        Tue, 29 Oct 2019 17:40:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:322b:: with SMTP id k40ls361759pjb.3.canary-gmail;
 Tue, 29 Oct 2019 17:40:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvoxBgbEwZeYNNp+VbseK2Go7c+0D3P/vAHl8tpd2tWHtyIufB/jGfdFn6nnUocxj9/ryX
X-Received: by 2002:a17:902:7786:: with SMTP id o6mr1580149pll.109.1572396013240;
        Tue, 29 Oct 2019 17:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572396013; cv=none;
        d=google.com; s=arc-20160816;
        b=meMLwWJY+Jx7vmlnCyUaEQJ853qPZyg1vQ9yUtHQx9ejdoVmXxVcekDaFnBipZpyVs
         l6s+pperMy+7mPceyZV2I14T7fibNDBLGhoHBLSwpbewqefJiJvUGZm8V642JXuiPo++
         P7ucXYNOdLiYi59T6P0I8h5cPO4wX3B2v0wNMDGE25dOaJefDIslyfOaPh+3xX8JrPCH
         ZUCMcibognzg7jKnS/63XPolc1Cf3AT3GjC/8GRqqp4veCn08xUY2kf4u4vBMC6tbDtx
         bD87NNWG9utUZo4QttxZdAps3qdtOufX9LNsPbMXF9G3HXLkstlZrR4C6AZkD/n4qLwz
         ex/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+BZrTz/5NVkLdak5J8oJo40dMzMeheNlqku1lS9ZDNo=;
        b=lRn6fYlW2upqu97KNmHErnoTHuARGatj6GdS+zHFrOTqpkPEZelmsQpdz7OF/L6c88
         KnjITVOYeoWL1nuf7Eu+04LjWx6BP/S+9PJJpynvZ5AyZSlfGsV+yDh1+b2gHGUhM558
         CGuP3gzJTrtrQd7tTxiXoJCE6WWL0GvgvM1lOyg2RyAFtnCWqggW2fUV36zK6yb/Nk6P
         7JWsxj+aOffj53gsA1D55vDwdqXbu1EiSPIHGyXa0Jg3/bwo0uz+Et9UaVAHnKqPRxcE
         4qIWnN9OJpyDkzi//jGN85cqK0hKGyyeOiBV0m60ZY2XF9YNtcr2+f9vBZJvz9d1ikCT
         Ffcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L2X5pyS9;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id f17si20432pgk.3.2019.10.29.17.40.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:40:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L2X5pyS9;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id y129so526230vsc.6
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 17:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=+BZrTz/5NVkLdak5J8oJo40dMzMeheNlqku1lS9ZDNo=;
        b=L2X5pyS9VQ4Z/PkQCPegaksIDVpWtVe+L1pLaV7DMV6Q/ET7Wa6tV+LAHqY6nUSuSg
         d+UD+qFYyC3l1gK4pvZbj7qliieaUIrzB4YK+YFZ+XMCYwlLcOGAPScwhyw4j6qX9s7W
         an8cTiY1W3s6CFNrYV2Ar7zCubNVWHQIYzIYPxcrtVIvF2qdnU8kpoR9KgaWAilZN4pQ
         t3jWJy1zR8sQxVWERXGyBaj4gmaOdWkGFRYadDKZTI/in7qtxtEZ+yn/UsfC4ThbXDQc
         Y6sjtjZPz5brfLEjwi23vPU/c71F/FdIuNrAfv2Q+h8bY0aV75SmRweVcA2AG8PIjWFK
         TA7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=+BZrTz/5NVkLdak5J8oJo40dMzMeheNlqku1lS9ZDNo=;
        b=W7wPWJzrSZ+Fcqe5G4tY29sqkMe3U5APya2q5a4MSj+CBjxgoPqHDsQCbd945/eQbo
         mC+oZ4TazhhrcHDjPjXWr3/jC06c8vdz7NUe/7iRAUekdRstW8rFuv7zNzReMHdD0hme
         p8AWlzuq/FSbI9Vl0Ij/LbZD1qi56NekzN6PMuWnkyeqPwq+nwwKMIkarW7/s0u1BZRd
         cAlQd3k7AErhlea5zr8g6fg8Dw5TPsasEIgUhRH2OG3ZZrUTXfx7E3fdoJeF+BSkJqC1
         FhWnowiiNvschDVvG0U0sEq6/2NAvFyDZvOZHTIwqp5X74EnYHzkzO9ySMEB8Yr4Eqgm
         oW2g==
X-Gm-Message-State: APjAAAVMbc/y/0F4HEMAHGH0So66CfKXzluSn0j4+Wz1wU8Nx0LHwF5r
	JcEmIWBOIecPol4dreywAz4=
X-Received: by 2002:a67:fd7b:: with SMTP id h27mr3702949vsa.42.1572396012967;
        Tue, 29 Oct 2019 17:40:12 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id o62sm333889vko.28.2019.10.29.17.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 17:40:12 -0700 (PDT)
Date: Tue, 29 Oct 2019 19:40:09 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v4 1/2] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572395770.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572395770.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572395770.git.jarias.linux@gmail.com>

Fix line over 80 characters by wrapping arguments in function call.

Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..0c2f3b2d4326 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv,
+				  ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


