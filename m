X-GM-THRID: 6749323707377778688
X-Received: by 2002:a92:6504:: with SMTP id z4mr13488571ilb.282.1571449435999;
        Fri, 18 Oct 2019 18:43:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b492:: with SMTP id d140ls75288iof.14.gmail; Fri, 18 Oct
 2019 18:43:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxm7pdwslkLIYJODgwUai0lEmAx4GLtBq1h2i1UAUX56QIC2ieyIhimsPeehx6LWPZJUYbK
X-Received: by 2002:a5e:8e05:: with SMTP id a5mr8174860ion.125.1571449434753;
        Fri, 18 Oct 2019 18:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571449434; cv=none;
        d=google.com; s=arc-20160816;
        b=ulSJQSLdfDhC5mnaXHkr1SyQD8BXB9DpUPtoAi1KyydMkiVGjxF4eN4eab9B8W8N+1
         GVTijBekqhv2cC/TBSu/fivJR/jBsZrk3dI04211uSfR0tWEDc7K6g6NmY8uYDa+9vxx
         zvjeRVpqLoN3oyUfT3qmw6H6pnduxlFzCX2SDLwzpVAluVuJW7wDbRC8A7ZMGSLjpybJ
         DCwl4WJuxwKoAfPiU/Pa/kdo2rQJ70ilngkkiIAxkZxNAf82V3WtxZQ9orag4XYgYb5d
         O7Sh6XuFjtNZDVBLOoEVlEhv+3fVk+PGNpRS/CsWVJ7fn2Al9NeZxDVQdvi/4lprYWQC
         +ABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JAoB5l6xZ5VljuesA3oaCfTnXRPIIZeNTUiDaRX0IDk=;
        b=wNdEG8bStMMRlfzvM4rt7hh9PhUBOo7tgAcvsDAwHaLgk+I73U22sx02esEztt1dZF
         EUHS/EdDjqnXD9461xlj1fCpXRtSyhBaHpb1W/LsIMC7YFb1X5oFVqvBtoYmb9uEp1kB
         g3CWkGX/IWnyRvLHK985ymWi8tLQOow0NNRXHtG5BpqdMfACT+MS4+QbnKtQu7YK6BZp
         RWjiUIQ5R/bxNuH5cjum4tjWtV0a+7yHeOxfMNbciitsml5fGgN87XztoBZJ5nhf7T+O
         HcsjEVHCGeXd+z64OeClDjU/cQMUOt8FkD+H7CdjxOtWpxTkjpyga3lDm3ltKOq3H9Y8
         KwtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vM3ZiIaN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id f11si409113iok.4.2019.10.18.18.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 18:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vM3ZiIaN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id w2so7119379qkf.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 18:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=JAoB5l6xZ5VljuesA3oaCfTnXRPIIZeNTUiDaRX0IDk=;
        b=vM3ZiIaNK3iqHg8n6N4OBvSypkVifMaJAf8EORRQ/ucYhAgUnYlTlB/FC0gdRMucxb
         wfIqi+xtvApbiPMmGUHlJG8t7ja5js1R/jHl1i2bqr2lVqmdZc2TdmqYgZ7B80kyEyOB
         fr1UHLbu7jUxeevTyAEC3Hf2q+XWI4VrOToEIYiJk3AS5eMBeMxsU1In+SNd4jp04sB7
         Mbzi3sqrCorxtV4LIh7EnB3GGnwwawSrabNosICfxtT2fkPgYQ19Ubl01D6vfOfhjWbr
         rok3910qjJ32kkcVNW/loO5zRlIBiL4Rxml9b6pcos2udegsOed7HroHKKTZfA1mgNRw
         2qgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=JAoB5l6xZ5VljuesA3oaCfTnXRPIIZeNTUiDaRX0IDk=;
        b=XSt0GBkZoOb/2vkV/9rXoK8zMNiAA8XE3PSI/kEBWGFcHRU97pCN1Fy/KN5NF8iYIv
         gzy0fp8Rl89S7olvdZS1OcECDijok70GMVvVqtp6EDf+HGDMYB7XgH15L5NPZe2BWQuf
         q1yFLL4FsjlYqW8QNcGHcHbrIRlZcQvxw4xVpdFNzQ3Nr9f/0jNlCb5ALCljX2e7dNIb
         rZn8ko69RLoYZApUN2zdPzzYEti8tCeaygSmEnxME2zDqeW5tuWYWfb8vp3PWNzCLa1r
         Mzo9AfFyw3uEmznMBlXPyM7dautffVH8xKBF0XsRy5R+gMpo+V3hfnNBdSHfGzjgtclp
         yrEA==
X-Gm-Message-State: APjAAAWAv7vvoCGMNUGREgf9rxyZq7LvY2Z9Gbu+4CKoPUIMWhiBoynO
	Gst8CI/qT5dvCghNm3YPXy0=
X-Received: by 2002:a37:7846:: with SMTP id t67mr12011612qkc.63.1571449434219;
        Fri, 18 Oct 2019 18:43:54 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-28-46-160.dynamic.etb.net.co. [186.28.46.160])
        by smtp.gmail.com with ESMTPSA id z8sm3513475qkf.37.2019.10.18.18.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 18:43:53 -0700 (PDT)
Date: Fri, 18 Oct 2019 20:43:51 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8723bs: Simplify boolean expression
Message-ID: <b81b53b19032b5abf6c0675d8e3ec27233cbe1b7.1571448899.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571448899.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571448899.git.jarias.linux@gmail.com>

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
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


