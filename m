X-GM-THRID: 6744898801865064448
X-Received: by 2002:a25:3b45:: with SMTP id i66mr10067733yba.365.1570419129349;
        Sun, 06 Oct 2019 20:32:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4303:: with SMTP id q3ls2275228ywa.1.gmail; Sun, 06 Oct
 2019 20:32:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyndO7cintP5na74PCbomTZIKr1SX2lYdcsW+XPGRkheNcGFkuWowK4lbuQwntT/g/M/MVu
X-Received: by 2002:a81:c1:: with SMTP id 184mr19527594ywa.175.1570419128137;
        Sun, 06 Oct 2019 20:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570419128; cv=none;
        d=google.com; s=arc-20160816;
        b=k+Qgl56vS2sAgVtd7dHm7Sm9eMGsd5LAvI8MhGON22CnLK4IncC9ih0VOzgUkFmhJr
         Mnc0+7VB3OH/nyrgn39sXJb9mqVObUvfrAbk3TUWJ4mWFymqMKd08tRfCaGm9hgup3w/
         yNNoVK/Com7TKd6s7g+5nLqvIrRLg/iYCcogmR37h7Y+dL16n0aR4s8PXzF/CAOr/FhX
         1SIF9RWYMHIpg/8vct9xJGxHdZ1yViqNxAcy0mpX0/dltw36FTTIExVi9VKqv+4scMwk
         S6YFAnApPImEfVe0Kml8WTgK+b7a4+6zlGABKPH4kwsfvNrKxRxTJH2vNMuRA9G0RTwW
         aPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=THRUKUzX8hzAjwXB57IC4HUD9pgdEWH9ZbF+if0IrRs=;
        b=LsZfTVlNDhq8IbuKtbDKhVx3VOd6dTh6ocL/CN9z6vCXN51hmE4JE2uZ40+ky4AFXC
         XGyqiQSlZsWGEIeU0x826xwSUnG4fLfkAdWKLUUWt8S+bAyuiuOgI2GNL2IU8cpZzlWK
         r2unXe/PaxrqW6ajsCH98QD9GrjpYBwAGO6Bvuxa8b9eYyMkSz0x3dYGLF3H2uEtiR0E
         HgYTA7R9TUM95Xerm9lhRchee6h6Am5lLwIPHWRD/2O1LoyJRKqftVgU1+0XaccV1rzK
         yPM1MBmtceLE/eSX/zJleN4qKknravYclPpyl6fb2aFfrMmjaJaYwRX/spW7IGj67l1c
         iqmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ddakZof/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id j136si321752ybj.3.2019.10.06.20.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 20:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ddakZof/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id z14so7931562vsz.13
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 20:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=THRUKUzX8hzAjwXB57IC4HUD9pgdEWH9ZbF+if0IrRs=;
        b=ddakZof/kranXtlub1Z5PSoUbVNayjAlYaPHTkpg6EJy1pQN83kzeMNhEhAe650vt9
         7t4oSfg4G2hZeND+I3eM1AVnpifKVAAtePC6dRPvnutO1DVElt/RFqmwKHN4OgONrPuR
         N/hWjrfamhdw57T6avIHTHwcekeMypy86mNUDWhaGOwPxfEAV0T5Zyo/ecnOQ35BbNDh
         BKYa71NAe+gX6tkVij5tFDkgRyAsNSNm6dirIxzBWKv/mYI+dN1V0b883GockyuOLecE
         IwjIL2kMtGnWwQ8nWNi6G36dB51lBTCIh+Dy8+CX/rZ6JCFf9gYupN9J31TvmEm19tvH
         /q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=THRUKUzX8hzAjwXB57IC4HUD9pgdEWH9ZbF+if0IrRs=;
        b=giuF/BLXV32is48p6wuxW6pBGtAWcedr9U6TDs9ZfLnXPoyniWXToW74zneoq34uTw
         36g8pBmwtYXzwSJDVHtjYtwQU1cZQc60GY18/TOBmmlbWnELVvs/SI9A6nBNLZ2wOET8
         JkZaMVqJPmjprXDfuupo4VQGkn9C0JrdOSMZbp3uWXoe6qicx9uiljUTRIMP/6r8hgET
         xNJjx//C7+qiYJofstYnGKDSya9DpVHpSkcC3XThCfjGj2KiC+JTP1zn1H3NfpDexG6j
         PdKzq9QUr8g0t+YmzPBOmOC5DzrCz5wjFYlFIzox2ZGgHpoth9555FTCHW11vhr2ZyvY
         c2Nw==
X-Gm-Message-State: APjAAAUTiePRdzAVnUCkidV/U4N+dIHkYTfMsIEtJiPMrSUtpTxV0ZUo
	LDJRzaoMMm/EW1AxwrlG0iHrG124md0Zww==
X-Received: by 2002:a67:e891:: with SMTP id x17mr12918955vsn.98.1570419127835;
        Sun, 06 Oct 2019 20:32:07 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id 72sm3435134uau.6.2019.10.06.20.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 20:32:07 -0700 (PDT)
Date: Sun, 6 Oct 2019 22:32:05 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Switch constant place in test
Message-ID: <20191007033202.45czxuochtylkddf@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Switch constant place as it should be on the right side of the test.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index bda25e13e935..6f7a63f53d4f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2981,7 +2981,7 @@ int rtw_xmit_thread(void *context)
 	do {
 		err = rtw_hal_xmit_thread_handler(padapter);
 		flush_signals_thread();
-	} while (_SUCCESS == err);
+	} while (err == _SUCCESS);
 
 	complete(&padapter->xmitpriv.terminate_xmitthread_comp);
 
-- 
2.20.1


