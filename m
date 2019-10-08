X-GM-THRID: 6744906774126526464
X-Received: by 2002:a81:2e42:: with SMTP id u63mr395491ywu.400.1570571337525;
        Tue, 08 Oct 2019 14:48:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls64878ybe.8.gmail; Tue, 08 Oct
 2019 14:48:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwX8y9KT3YCGyTxyaEboUbPssVkw5Lb2K1dxOLb1jSmevrlcf9fQcPN0qgHyr4ydXvmGAnP
X-Received: by 2002:a25:2e45:: with SMTP id b5mr342127ybn.16.1570571336510;
        Tue, 08 Oct 2019 14:48:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570571336; cv=none;
        d=google.com; s=arc-20160816;
        b=TMA6pr7q7x0eOTc5PhDdVTsk4PGw9d7+DDZWE79+uHI2cCp/3lNa/n10wLtHqcFOCq
         5fRIG2qX5OMj0E6Yel85CqHn5Tz8qPF9Lm7QGNzAZ1a/1IAFSCkgRnVaB3NkUpGGaGIe
         y0bxrBWjcAwFO16oDjbdelr5zRCMiRcDZCcaPL1Yf/3xhdIbk6Fn1DRsd6ujuKtVeCjN
         WkV9U+En/ZsCB7oZVN06QqEBDW7yZjp7ElUUUIq9C8f9OW3lfMLtNCauXyYbdTysvCLb
         ZICbf6znfjNuK0BQ9TbtRbAqoMwAhbN6FVvf9KOzctsO9m4wuQbY3MmjfPTK9JY6wVM4
         wtmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uUFtcOvI0dhq5bhBb0WQwJg/g7Dd/48i0hd15kPuBXA=;
        b=LVTS9J3/lju4cJUJExDqyIijqiwe5MAc+WCpndNEdVIpj3AGIIBJb4oCHvr11WJsz7
         fILcS2lkD7FUreDENLF4UI5ELADMJ4asAXzlszpl4u5qNH9Iuu3a3wnW0krebUq10hSc
         NJH36LAL9SMYiGoYw3cDcfl3pqhO5mC27fN8iLgNVDMP5ll6lOuJh+HdgjpH1K4GEtej
         t7I8oSS1n3Pg5QyE5dRU15DTCk5xA4ZrJKMS1XwDs/r2x6HMu7Mvh97NHHGCxRxXr3LG
         XjXnWhB7lV6IQHMQVFmpWqgqesESy+Q/K1ZFFMzgfxG/vs0AbEkK4BJ5VjH8Ej2BV7mn
         QN7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FFI7XC9i;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id g203si33403ywc.5.2019.10.08.14.48.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:48:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FFI7XC9i;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vk1-xa42.google.com with SMTP id d66so99606vka.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Oct 2019 14:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=uUFtcOvI0dhq5bhBb0WQwJg/g7Dd/48i0hd15kPuBXA=;
        b=FFI7XC9is6VcKyk4bmmVICD40c/EctoRwXaUQy1ObNXAV0ImDJZZt8e1m/KYDCj1G+
         FrrPcNo97MvFNbIzP/0LiIuHUDYuqjhvpUAcLeNU7jCgbRDTNhxecaSmx+Rl5cZvFofj
         fyrkhTddDMijsG5XJ/UkAX15biqEXNv0oGiVdTNggtTqQd88UX7HdD6PO8BqFMpvGjZ3
         wMo7sMSpOb8Yc4nNziimSsCrjTf7ijyP7U5cV4mLVeiIxwoUQo+QAr1yTHanGDed34W1
         k8FZCPiSSbx0cWO3Ad7kC9y6hoUYUSCfkzU4AymTjiXR7F0Vl4gJogQVwbVcD0OdBGsz
         SGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=uUFtcOvI0dhq5bhBb0WQwJg/g7Dd/48i0hd15kPuBXA=;
        b=Hb6FzGVgwCA2IgtJ8itYqObLFUGGcL/fnF/H/1+17oEPKDnsuJdHL9nmjvLnm1DCJS
         xIYw4Ob/nXTqGRMsxAWS6ZBAe0D1q1YRnhJXggSeTa7q3zWsyWE96gYGMq5lSKez37//
         ozLTLGmcLe7cvgUUj5upaAqT2inKgXZtEH2/x4acSy/t7WJwDHR8tqf4htqso1pLgW9T
         H0Y0yW16XxrnrprWvO8x/ystqLJAjGMIlqpJ51XENNOTRvZIIDu+Z/Z4W0OeH6a241wQ
         a1xfcoInwobB3g7NW+0+quYRzGDsG2eBlQIdaFK54QJAsGxRKDPIj0mHIMH9LXPz2FtL
         j2Ig==
X-Gm-Message-State: APjAAAW2kheU0+3QpQf9NLJrI9QbzMD33pmvjL5Zn3v5zq65CXhtSh9D
	maQT/YQQLEPCHSB0s8Kjmi5FwrhZhOkLYw==
X-Received: by 2002:a05:6122:30f:: with SMTP id c15mr303031vko.41.1570571336218;
        Tue, 08 Oct 2019 14:48:56 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id y13sm53617vso.4.2019.10.08.14.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 14:48:56 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:48:53 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8723bs: Replace string with identifier
Message-ID: <20191008214851.p4w7cbpuldnwkne4@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Replace the hardcoded function name with its predefined identifier.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in v3:
  - Fixed another typo in the commit message.
Changes in v2:
  - Fixed a typo in the commit message.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 43d663c8486d..349f611d4db2 100644
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


