X-GM-THRID: 6744906774126526464
X-Received: by 2002:a05:6214:144d:: with SMTP id b13mr25838697qvy.4.1570420985248;
        Sun, 06 Oct 2019 21:03:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:131b:: with SMTP id o27ls4521500qkj.12.gmail; Sun,
 06 Oct 2019 21:03:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyNgT5PLbEeZCC9kQSQjB/jwT5W8SgKYgqEOFxx2c3g2/iTEn86vIL+XdZHoKo3gOjvjQqX
X-Received: by 2002:a37:9ccc:: with SMTP id f195mr21639051qke.110.1570420984249;
        Sun, 06 Oct 2019 21:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570420984; cv=none;
        d=google.com; s=arc-20160816;
        b=VXeehSsq2DJnWHdBfFludP8goTwABGa7TcnHVaeWtz8sDc/e8CZFJHY69h77EtEHsw
         RGIDrFnvAFz4m2vGarNO4EkEPuri1dJzFJSe01kPg4Xpk8evkgb+9qe0gY1V0+bOPYLn
         qTzcVTwocHjH27XplmMLA1L6Yk3PCdtm0yuQLkaQSX6D5Up7sotq9vzUe7imxP6E9oSy
         Bd05Gr7Z7RQRmOXLvum2Lm4zzHkWqpCkXZl6ZRXqDG1aME+HnYVrmiyX5w165bIOwvvi
         roZRyLzs8bLDLpF3+hoEkXH/NuwAwwYsQlRqeVH5FwLfz55xWOwSt8UZ6M98V11TUyu+
         dBFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=B5saliNJfLuEj2KQ5OgFdRumZlPGYxu4u+obtpzpQ6E=;
        b=CWDpJvabAkhb/nXhNnCwJIUuC4/fzNdzBvaBvnP1knicS7aKuXmVMN9UuimKxL/fUt
         iCExJ/BaARCgLv1u+oUvbjLBSDXzE13q1rePQIByBYu5TvHqLJwA/x8MB3yKijnYJtVH
         3FBqVhP+xwMIbfg2tdLz6MHyzjwmNB7RNP/BU9vjwN74GHmJbF1cUfnKkYFnURDs/St1
         tyltV8hs8HJcrizF09VN+7eLDOTcww4uq24bU/RHKtHVI9y5P8AFUspg7M0E3xqCkWNO
         u4UnOIEyF8s0ip+9xCPoRfQDkSPoTt1P6JqDQbQTU+U2i+RKB//UNTyy+mbiL3pdSOLm
         vVnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iX9H7SSk;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id c78si975659qkb.7.2019.10.06.21.03.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 21:03:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iX9H7SSk;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id v19so8005973vsv.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 21:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=B5saliNJfLuEj2KQ5OgFdRumZlPGYxu4u+obtpzpQ6E=;
        b=iX9H7SSkJY9HxehG6bDGheVvJ9sjLn/PYa5Q5+2pxO74ULl2pZGzWPx6BS++TTsYPP
         qReIfI0uGKGczzQ9d7ovlUWCfFNEzlGO1LrozFUPswKzIDw6HxOK6Jm0xURQF7/Qro63
         XQ0JoELTqzwDFCAQW3tYtZYHFR7vtour6uGpqNrg019GXfz3lBoLyjH1ihFvFKhHJv/q
         iaG1vYTEhlsWfnIhoDjl85CQt/aSIdyEqsqb1YU02TgwdSbhPEPQTT9sZpS4dlEAV+ES
         YbgsENpeckOAZ8IbbeUl0IdIfEQLczaonmO1zT+7aE1+VyI+q/z7uskmiQxkn/4wfsJ4
         Jphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=B5saliNJfLuEj2KQ5OgFdRumZlPGYxu4u+obtpzpQ6E=;
        b=qAwVdg1qSMWVI7y5zXMJ027tj/tLXEDW1IYVhAi/fASzQDOA4M7xtWkFabnsQHx9E9
         u9sycm0uttufpx9F585CfLqzmGPN+GWfUdB1QuXL8T46tLyTxrDKqQ0dW5o1zibSMDk7
         K+5jQ2M/QMe/KRiELdOQlA0qnxrTq0rqfIzPTjJMIbEDpyZDk0xHEY3n1BlynEySWmHw
         zsNx9zX1m4HDOm7725acxoH7SC2xBXPseW3GvkhYat9zYd9JpDmVzdVtBk/bxPRoXoZW
         3HExkS9CssRHOEoTuQimFNPYsXZlf58HxvCeYJmlvtUzdY1wtBY9M7a3uUDRhvYNJ0ky
         q5cA==
X-Gm-Message-State: APjAAAUASNviq3j/C3xfvz628GUsDwkvmNn87AYCiUyBObQh8jCAcs2j
	nB+QffZBdSNRoXYJ5tjTKoBmau8FYbTzUg==
X-Received: by 2002:a67:7f57:: with SMTP id a84mr14569088vsd.112.1570420983991;
        Sun, 06 Oct 2019 21:03:03 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id b18sm2659454vsp.31.2019.10.06.21.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 21:03:03 -0700 (PDT)
Date: Sun, 6 Oct 2019 23:03:01 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Replace string with identifier
Message-ID: <20191007040259.uoafr2taqolezves@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Replace the hardcoded function name with the it's predefined identifier.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6f7a63f53d4f..fef9f1f9ba2c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 
 	if (!pxmitframe) {
 		drop_cnt++;
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
 		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
 		return -1;
 	}
@@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
 
 	if (res == _FAIL) {
-		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
+		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
 		#ifdef DBG_TX_DROP_FRAME
 		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
 		#endif
-- 
2.20.1


