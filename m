X-GM-THRID: 6749323707377778688
X-Received: by 2002:a92:d34e:: with SMTP id a14mr737796ilh.289.1571607162144;
        Sun, 20 Oct 2019 14:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6803:: with SMTP id d3ls2241545ioc.2.gmail; Sun, 20 Oct
 2019 14:32:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7qWeWv3DXyOmQgP97Bjh6NuDVfOaczNzwJqYJBGnQqe2HmA6MGIia1VVLwshL1jb8NHBu
X-Received: by 2002:a5d:97d1:: with SMTP id k17mr9674360ios.233.1571607161056;
        Sun, 20 Oct 2019 14:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571607161; cv=none;
        d=google.com; s=arc-20160816;
        b=hA07VOGSRe+e+tlCqwKBbd6suO4Qj0Auz15YRIasqWL2I30YXTBM859SHLOOdhdWNn
         bs62cy8wd8Pcv2msTeCllHigR/Mp6mN23FJE6cA4/6jxJ1BfjKRmpgBwtpnfMd9IfTGl
         PqI1WRr55fOscARNChqIHjBYEroiv6nZihycgb+m3JgSsgLFdQtRHluwlnEn0WmGjf/I
         qCiwBAcKQd7yNcOVYT0Sw2aX/x/BrrqeFNCsjVRDWtSiya5QMyuNtULdqGESAQ7nsOvQ
         yc+9h18nfVNF/HaU7wp/EzPa1Z4eCR5cthUSBF+EewSqFS8Pl/qzyzTApxNMIvYS7ulS
         vxPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=Z/jaaSh56kBgX/Bmgi/MwU77OHBLqBkvFfk4fcOsYldOBnBXTL+SUXlKYkuirT4DeV
         Jdrtg/UIWN8M+BQF1jYwEEuJU9ZeDn4iyrYkdaYSp3rC7O/PR0hjCdOXCwXQJEIfKKOu
         wdlJOIn84T0hZZGYdNeaoOdfPJrmuNTwM+oL7WlISzDE3X+XVhw7jLaUw5BozCLBQEFF
         /MV2yXztUapOtb4i2+VrTGCXcM6CTsF2QrSHCZ7fm/QgixYOw5m8ILihtnfTTWvB9gz5
         /Adzqb9pGJAyCpRwGu8Oai6A18u+ogu2ufkrIB0M10+J5G6YiIjQ8ygxjh3CQsMI78G+
         2B+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qvv8anl6;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id n201si879656iod.3.2019.10.20.14.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 14:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qvv8anl6;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id s7so7596179vsl.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 14:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=qvv8anl6G2vXxfq043ob82kACyroB4rqomLx8ptwR87cWblNSvm+1zVpT4rU15//8e
         kQwx5hpCcoa2PsJCxDD/NSK2UpyAHCGpbrc0De2plStihrdJosTLcK80HMO1MzvfFfuN
         +46H7HFkPVSLupI5Dp36ZHFml58ybgqWAh02uwnSD7CJSz98PQXKZ0QQo8S5Q7q6C3Mt
         H/wYRCfMFCOS5Fhavk+Yc1XHfG9l7FA6TXUNFyO7NAYltSyl0OC5X+X97EocKNLrN/G3
         MEfVycd5bkPjBiKyWOQ33xTokVBQHwcW/Vn4z6NmPCTWtgkRJf8Rn+S5+bRCfx68AQ9O
         r34g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=k5ZucOXtV7fUBVyItIorB0SQMCkyP7ApL/vJt12prmYQffxlfxvxJpREI24OQ5/non
         MOVUlrJDlOfQsqhbgsm//4ERg+JtWIWmfVVizMA+iLqDr5Xe9Zw6GyEQAG3wQEYYo1Y1
         Wep+k5RbHPPIu3dUcxNg0I8WLFxJyMPFNQS+Ysi5hPsNojVc5lO/meCknDQIwMLMOjXA
         AAGfEWIrzdPR5CFA76X00VVLBa+W3EOpolUwKLLWcdzcsePanTrbV6n0/A/Qcb+33yr6
         1TUybVceLV3gnyMsMazQUyRvihWNE/OV9LC6Yf5ReM+W40NnahVinLinYIPl7a9rclyW
         lIBQ==
X-Gm-Message-State: APjAAAXl6g++A0bijXwKHSsyJoB2z/uBLhLW/WyQ+m6TMRJOGyG4ry8G
	Il8RGql60DCsklz3A0Q77Il6ay6t1jZxvw==
X-Received: by 2002:a67:f648:: with SMTP id u8mr11155797vso.78.1571607160569;
        Sun, 20 Oct 2019 14:32:40 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-28-46-160.dynamic.etb.net.co. [186.28.46.160])
        by smtp.gmail.com with ESMTPSA id f1sm2857748vsc.20.2019.10.20.14.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 14:32:40 -0700 (PDT)
Date: Sun, 20 Oct 2019 16:32:38 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: rtl8723bs: Simplify boolean expression
Message-ID: <0a0213c7b33298bf12fac9ce4f1e97058026b8b9.1571605959.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571605959.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571605959.git.jarias.linux@gmail.com>

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Remove the parentheses around the variable.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 0c2f3b2d4326..6f341d52afb6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -190,7 +190,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		ODM_CmnInfoUpdate(&pHalData->odmpriv,
 				  ODM_CMNINFO_BT_ENABLED,
-				  ((bBtDisabled == true)?false:true));
+				  !bBtDisabled);
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


