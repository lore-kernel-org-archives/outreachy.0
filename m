X-GM-THRID: 6667148493451165696
X-Received: by 2002:a02:2501:: with SMTP id g1mr19458547jag.25.1552316501814;
        Mon, 11 Mar 2019 08:01:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a783:: with SMTP id e3ls1341733jaj.1.gmail; Mon, 11 Mar
 2019 08:01:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLNMUu/X7WwZUoqh24GAWEsr1FwgGDZpe1lUPRwif+glKb4KWTonagw6w4WasS7THpA5iW
X-Received: by 2002:a02:4086:: with SMTP id n128mr19463767jaa.19.1552316500967;
        Mon, 11 Mar 2019 08:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316500; cv=none;
        d=google.com; s=arc-20160816;
        b=QCD3NhVcEX/TLziDkGlLdnuFhhOlxaIhsjatzIfqs0Q9UpE3C8z1bRTmISai99AG4/
         KqV8DvSs3sLmt95ivkC62AZyeNtYTP7YnIcMu79+X/ymSvva7P27MHi0BV+/GYPeaexV
         DC4rETgKOrZqLLjfRaRgF8CNeXR1MFbgrvxWW/n+t/mV/80zyt6yoMcRsvXn1Ep5C9j3
         lzDafSyhbWbGb4hDKoiWMIRzU9JQZJMBq7TPsBJJGVOFpimkcViLG2DoJzdr9q4fWG3Z
         ZaKlAZdr/5+uKqxBROCZbW6+kIuzqZma3wA9Sp6K2HgOvVO5HosRasoIH8dqG++qVknf
         +YHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/NkQkOIBX8HBHNBrYrtiO90z6Z4zVvzOAwhJn+upaG0=;
        b=x1wu6LjnFrer+bWzPTb1kIbUCPrsKvDK3htCqy59afeZACyhlkgRvx7h8Cm0GGeXgh
         KpEqotaUqN/CpLkLqMg1+Pvt690wfsCu2UjIq5RXX+IaCLGByhKSw01E1wbufcFtrfUm
         Nxp2ExujyzIl6RdUBxSkyyYI1F07orRIRROi97ypPWev15OA3mJ2931trJDn7FcIvUD7
         SIZC3HDhiYFCtuImetR44Urgcpxut9qyjVDo3S86ggGgjUi05vp7Jtv2J87F7QZxb2mC
         U0UoY3vyWuZNjH+EO9FfspXCK/+BtocVB7C3RpEPEyIrOOd/ZOmf1NKwIma8R8qquOIy
         CiqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUhFWber;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b80si937691itc.2.2019.03.11.08.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tUhFWber;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id l11so4227751pgq.10
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/NkQkOIBX8HBHNBrYrtiO90z6Z4zVvzOAwhJn+upaG0=;
        b=tUhFWber1nl0d34Arok9xeIjXwA7oQRGjacbukabeam1jEpWX/MqBa+GT8OY8KzizO
         CjZ4D6jWIFewu/B2cvyRIJC3F4ueAWj9ztykHKEvLuFAIA+jmo7I4v9vAEX1293qp1ji
         yy77FSj6WtGrMNtTH8klquwoqMqCnrOYePbi9ySt/VrOIqOehZXKz1sRdkAW140Rrp05
         Ab6CJ04czqDn+3aw5YFoy40yp6wVgDXTcu/N8t/3MpScd8OAhS7P1/3/eitRyr1vfKZi
         k8PN6hXuVc+Op+SYilaMrG95fMwFhlwxBcr6P5GfHnVuLo5KIJ+Q55w80KRm9V5PDxl7
         DdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/NkQkOIBX8HBHNBrYrtiO90z6Z4zVvzOAwhJn+upaG0=;
        b=D8ZdP+dGmuhVWMdFZMw8j5EuOYrSKEKYjXMleesBxwjAh4700NoTKSRz8jj1G5BMH5
         5jkNWhXp+wf++BYRPA0CsrVr5zSYbJYIzEQHaveqOXkXuxHxrU2hDDp+elLJmX8RQQWP
         w/zqKFXGm9i2e7Edn3+1H9FPr59Hair5ghy32IlvbYsoVj98lG/Dw9skxkEjVHtln2JI
         1uH74X7uy/onAVZquXm3dbMyF1HlEgVPjVr1hy96D52qTp8RXD0L/p1pNHhBItNZVLWp
         FU8wPH1PXGC2l0hIhmvsy+8kQIzPEYgWXsQEhDz0hFcFw8HkfxvKNfs4kaFtPwSvlTuj
         R84Q==
X-Gm-Message-State: APjAAAX3EQDxC5AB4v4mjjvZ1P4GxLIstm+PsIsVSZJeuIV+DCF1Z1CJ
	vMS4MoHL9MIxkKDyyfHgEAA=
X-Received: by 2002:a63:e14e:: with SMTP id h14mr29528267pgk.184.1552316499208;
        Mon, 11 Mar 2019 08:01:39 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id v186sm9725851pfv.184.2019.03.11.08.01.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:38 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 4/5] Staging: most: sound: Replace '--help--' in Kconfig file
Date: Mon, 11 Mar 2019 08:01:07 -0700
Message-Id: <20190311150108.4717-5-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
References: <20190311150108.4717-1-etsai042@gmail.com>

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/sound/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/sound/Kconfig b/drivers/staging/most/sound/Kconfig
index 115262a58a42..5614a999b54e 100644
--- a/drivers/staging/most/sound/Kconfig
+++ b/drivers/staging/most/sound/Kconfig
@@ -6,7 +6,7 @@ config MOST_SOUND
 	tristate "Sound"
 	depends on SND
 	select SND_PCM
-	---help---
+	help
 	  Say Y here if you want to commumicate via ALSA/sound devices.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


