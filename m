X-GM-THRID: 6672713878442344448
X-Received: by 2002:a6b:7115:: with SMTP id q21mr1313957iog.25.1553612267747;
        Tue, 26 Mar 2019 07:57:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:33ca:: with SMTP id k193ls5253867itk.3.canary-gmail;
 Tue, 26 Mar 2019 07:57:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxz+Dj/NaoJnbCJGT41K6gCTA/zDB3nMfM6Vgv8Uf075bSi8PYZ2TgSD2Jq6kMTKnH2Zaqb
X-Received: by 2002:a24:2584:: with SMTP id g126mr78298itg.23.1553612266912;
        Tue, 26 Mar 2019 07:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553612266; cv=none;
        d=google.com; s=arc-20160816;
        b=EGiZnAheg+4Ps8cqqqQPJwWaG/co+AemVPRnMDTm2F8OzNaoEUg0KqhItc9dJrr8qC
         ZEyNkCWy5X2gCTEZFLgb5eNEkbsUeZfrCZH+aMHOY+pfORGMksKYKz5y7dxnFb6ESHGY
         /WFyOtOg67v2eRGzTxX7FgzJm/KyC+JBy5+mAR0sXR6pX9WatnQ7bTTZj1SLxW1LJjNS
         R3JbcBjj8sufJZwcz607FQBBm0deZI50jd4MC+8KzV2h5eBDW8VPH1HdcYaPFnW1IIue
         MPQTf1bOlG64qO3XOhs6vSmpXHqDaCWsqLehLPukNhWBxDhmgZbGw8tAEVZO5bTA6V5R
         EilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=NlheF7s6YbOJupowKrXoJuNA98G14NAioaziz0HsJLY=;
        b=fGAHxKZ2eDLGblcxu0bafDE+GTjnVw7ckLGvwQ0yErd1+V1yS/fyu8T20I4QPZHLIX
         U/MyT+4nHLaL4h98rkhNftTutfLrxiGMnmm1FwX0gbjFUkm+QcbyB1P5EW3Fo6otI5DG
         gfltSGgoxHy+z/cWZuUJrO5WHI/TYbenwTkK4Eu+1zW2iSk71ag3Bgk7YDmSbNHmUoul
         zMqXWKxGlD0nBzFDV1COlfdqbr47H+1AXUInD4hVPDQU7u7oN/hPHgHxDvfkj1+1DuhP
         IVIZy0GqqUOkGsc5j+/AfnZGg8O6B8P1b94634FCgEtNWUZuT/Lsui+eAcnG0JSekHyd
         Nq4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOh52bod;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j2si1101685iop.0.2019.03.26.07.57.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 07:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOh52bod;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id e80so11742064ote.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 07:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NlheF7s6YbOJupowKrXoJuNA98G14NAioaziz0HsJLY=;
        b=kOh52bodAuAK04kQUoh1UdHr5WhJhjWUzXyxt6FR/brA6QDLlzirVecfAqaWf6aMWL
         KRU6m2Ozy9QhQv8we+I2OdC1Cr0a7K/MZ9+NehxkPE9050EEO2F6DUfCGI19k1ZD8ApF
         JoUVzi+IqTttu43INBxhzgoGo/8CFLb5T5zuWRoQrdfAAUXCKTiEPZc/zYxUNyh+PAkH
         cPMUdxiyzwFe4AcYPsO8bEAos2seReOuRDH+5THMHSaqQxz05ohvLp4xR41MzyOC7k5w
         Jg+vYD1qBl8ghr6nsWE4DAWvPCrFgdr9wmZ4nGU6WMNfnJ8W+alp1OPwriXjGAFdn1uS
         hOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NlheF7s6YbOJupowKrXoJuNA98G14NAioaziz0HsJLY=;
        b=rnXe7cduPmJ7eWsefTHMeEe+aK16I7abWGX5op1zO4N+a1S84UenDo/6CUOSeQl1iN
         dLUqzQ4Cm4I6A7JATT2SK+Cjh2KLtDXRyZ2nrOiW3Ly+/yTxbJdkQHnm8NIgdEOqooHe
         Uhp1D1TJv6iG7SN0qzPZMv5KQ3L62u7+loS64RaS0i85oQ3GOdyYMGKzu5LATsm1K/YY
         jR8zccx0zJHlM22B9nbo7zmZxdeyGczaZuOmAptNmGynBB6w20OZrd1OoFmPWKDAIgId
         vupxTgaY2d89sqEMe8+sTzunl69agg4ocG7g/G0R7p6lZmst31YqROFmVweNmh7OaaW1
         nX3Q==
X-Gm-Message-State: APjAAAWbORUbt6gej7TXdBmzb37yADARfuVbECazSrWb/tdy8p2ZuNyJ
	dqbPeRPXA+t5TkdyhXM4TLg=
X-Received: by 2002:a9d:6355:: with SMTP id y21mr23624613otk.6.1553612266537;
        Tue, 26 Mar 2019 07:57:46 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:b0f8:55ad:6392:ebe5])
        by smtp.gmail.com with ESMTPSA id a131sm1679306oif.23.2019.03.26.07.57.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Mar 2019 07:57:45 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8188eu: Get rid of custom macro, DBG_88E in kmalloc
Date: Tue, 26 Mar 2019 09:57:42 -0500
Message-Id: <20190326145742.8248-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Get rid of custom macro, DBG_88E for printing message in kmalloc
in order to maintain Linux kernel coding style based on which kernel
does not print failure warning.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Change in v2:

- Missed email address

 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index e4f2af2974ed..eedf2cd831d1 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -232,7 +232,6 @@ static int usbctrl_vendorreq(struct adapter *adapt, u8 request, u16 value, u16 i
 	pIo_buf = kmalloc(MAX_USB_IO_CTL_SIZE, GFP_ATOMIC);
 
 	if (!pIo_buf) {
-		DBG_88E("[%s] pIo_buf == NULL\n", __func__);
 		status = -ENOMEM;
 		goto release_mutex;
 	}
-- 
2.17.1


