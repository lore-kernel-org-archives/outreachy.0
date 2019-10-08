X-GM-THRID: 6745542225820647424
X-Received: by 2002:a02:c550:: with SMTP id g16mr52254jaj.94.1570568938402;
        Tue, 08 Oct 2019 14:08:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3f8a:: with SMTP id m132ls863809ioa.13.gmail; Tue, 08
 Oct 2019 14:08:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyt1FLQP6Dk/VfQBxQoi/3AWFqKsJcHl82isdNZW90f3JL4UgCyChVh9vx4lwEGKJmnWiVr
X-Received: by 2002:a05:6602:2206:: with SMTP id n6mr226216ion.272.1570568936871;
        Tue, 08 Oct 2019 14:08:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570568936; cv=none;
        d=google.com; s=arc-20160816;
        b=rGAmD6ldleFpFKGUF3C7BEbCdmSLuqpieP4tnv7scAPWnFoUIyEtz6oqAdaNzWOPhb
         neS4c2AzUpfCRWIvInXPSBvLwvZoOO9J+BfnlIRShv366qTeVMwciB+EbV9FdsVqJwfm
         Uur+FSDdkv/PI1H9O5oZDK0EBEthls1qEPxcA7WTS3mgh84nbe9MoPZyPgzTaMnyFCXn
         3sSM47jiNrrWRyd73EN1DaR9866sMwTLy+AJlLXdu32IRoUNTXa0rjhNtqD8zzMsOQKi
         XhJBsUPta+QO4v7pSOCIPJ2DnHjRze8C6F2T2Hoaimx4pYhbKXFhGk0NCV1jRFNXetVb
         Lt/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=IGjtplkW3wJUmPHRGbSwi/gxYLSCznu11M9gIcET1C1a9j0vGg8m5kUNs5h4qsdlqx
         R20ZIuWV3hRFe9+e//qqdi7NDuHRCQAZbuVoWPxXmmEAX6oH1tqAEOjAsts9PQIYQcAA
         ag76LkSd0c2cslcPWfyxIx4/fQARJy0RNwUXNrAYrP/Ea3XDHvogtta3A/8Kq/lsTspN
         t2ZPZbA2vII3thdNfDQeNCotwcoDkO4SxJEpiGjn2s4rbpp3vBwynKUOu79w4+asYE42
         U3fiplVNGi2SwXkJgDQ4oKolg4qVqGQHMa2DvhrNYqpL+IdBWzraZhOhshAHzT3+feGN
         NaAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVv1S03p;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id i8si9958ilq.4.2019.10.08.14.08.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NVv1S03p;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa44.google.com with SMTP id d66so76609vka.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 14:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=NVv1S03puIxclQsYUtQmJhp0HARyTaNM6ApKYF1IgOquGZv6VnEsRG1qR7Y6ZbRVdk
         6A6dKKpbJfbieJ4YmwPe2A0sup/B8amK9N+ZvVIhazP9LNJHWRxBUTqnEaPSGBnm9OC2
         0nXsRed2xmE3uhYW+AwIKp4J3vCDjC1/Ug1a167teHLel4boPlUAA/d4UEsCNqfsVEEZ
         sibCREFnQXJ40YVlmzItwh4fkfByEJ1KR+s7NO2WR4UzOeb/nbjXHFzyAZyuh8+QPs31
         58YqmpwYxR/j3J2DurUtsA/AmEOngW60zR8RWCqjSLdbWmk6GETUp0TI3y8VmVIi2qOx
         /UNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=Rqn9Dyz+FjGbrPJU1spqIHxsTGcestXLjfcUFzH+aBE=;
        b=Rv8as1CYmaoGfxtFijrnO8HP3nmaWMPEHu4Whw0AEU/lM0h1Qc9Ht1+ADgYfkTbVpa
         Ik5RCHJiTf3tF4WCFCJDfNa2Jcyh3yIczEx7K1kl2cWFl5q62D8r5NsSqMTRkB1mplNs
         //ekGVNbkl6Rke8FYyOfsHPzi41XaRYmNNxw77niW5hzTGlSeDuZa+wYrSyHsPFWh5Wv
         TwCDLxLNm6bEPqYmyiEEWyCFWCLcZo2pyTx8PxWmgWDf1ZcE9XR45W542V7mWzU9lbf3
         AiAcsuZfPyn8sbyZjLnYMwcSP1obb+EttuW8jn4R5pfKolZDVSHVHQVcVrCMK1KisyH8
         9dHw==
X-Gm-Message-State: APjAAAXsn+fZXNylv02THrub4RQUzcDKtNz4WcPZxV4VfuvA0d8qDeXL
	aR3jHG9rL9avqU4i1D3/rMVoO+yiILLriQ==
X-Received: by 2002:a1f:1605:: with SMTP id 5mr265795vkw.16.1570568936255;
        Tue, 08 Oct 2019 14:08:56 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id u6sm42955vsq.28.2019.10.08.14.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 14:08:55 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:08:53 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <20191008210850.ldgx5n3sahpdauvu@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Break last two function call arguments into two separate lines.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 6d18d23acdc0..43af76b9fa49 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter *padapter)
 	#ifdef DBG_EXPIRATION_CHK
 	if (phead != plist) {
 		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n"
-			, FUNC_NDEV_ARG(padapter->pnetdev), pstapriv->auth_list_cnt);
+			, FUNC_NDEV_ARG(padapter->pnetdev)
+			, pstapriv->auth_list_cnt);
 	}
 	#endif
 	while (phead != plist) {
-- 
2.20.1


