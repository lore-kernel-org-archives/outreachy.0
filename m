X-GM-THRID: 6528739356252831744
X-Received: by 10.13.255.70 with SMTP id p67mr4446616ywf.138.1520090586896;
        Sat, 03 Mar 2018 07:23:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.203.78 with SMTP id n75ls668248ywd.41.gmail; Sat, 03 Mar
 2018 07:23:05 -0800 (PST)
X-Google-Smtp-Source: AG47ELs2W8ibXmRsxQvx7zXPeXIlrzct9mCu2ZRZH97N9RthNC0G3TSHpjMxGW/p0Yed6I1nQihB
X-Received: by 10.129.174.76 with SMTP id g12mr4492681ywk.194.1520090585558;
        Sat, 03 Mar 2018 07:23:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520090585; cv=none;
        d=google.com; s=arc-20160816;
        b=docTZvX8mdU3y7XMe0Rr5a6Z1y5u8aNR1zNuGNF6HGZRMJGf2u/WjT5pyddz7ad1GW
         EhfSoTe1JixNEx/s0sQp0+djK/bFKTaxcCqoGmKtfULW8zKtEtpk8atgusv3+846tjMR
         7wpuayGuNmtp9POgVC+59fAAj0kz0H0Jb9qjjHwKINLgB0wd/IyFCbZyIF0lvjkw1LHR
         FjgHWKx3RLz5diVe2AIsM6AmOQP+m1CrYdmpTUVCCSq9HoA4Brnd3mqB8zdKAOv+hs2T
         ESDY4C1ADkO2bE/Weq++JWuZgRm4Z9IjhysJtZpps6PoiKOQTCEp6RM3EeZXBK5i74td
         C0bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=hhqXJKT6aT4jNYUWlKPLKjWDeYxir3fADYx6e90HACg=;
        b=IRFMkD4DbnulV5ac88UCOFusffYjYV1e438t1cQ7scJ8qlVQjEIYazJUnH7SBbHocr
         fXHab7zNhu7Zycl+TpFtX9S8BNd6cE3Mbkz1Q9XW8nzZacCIB2HSqG+6S2k2s0gSG62m
         uEKQRl14pK61H1IYXI2V0ZtQTu23HYrwuiezwT5mibzO2Eg46ANsVHilCXDNaALWPTQ1
         Fn38upYjvOupTV/UOlba753cjIun5P0k24Wx0hboH1XDIFoh440uzDz39JJi5I0T1/4Z
         bdpYFTmXd4QoVHvKDkfMlWPrTdkJkGuJ90RohecqC+wa1FcZhjOTqcxaQCc+ku2e0gkI
         L95A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvQIKsUD;
       spf=pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rinklejain96@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rinklejain96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q128si530182ywc.4.2018.03.03.07.23.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:23:05 -0800 (PST)
Received-SPF: pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QvQIKsUD;
       spf=pass (google.com: domain of rinklejain96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rinklejain96@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id y186so5303060pfb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 07:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hhqXJKT6aT4jNYUWlKPLKjWDeYxir3fADYx6e90HACg=;
        b=QvQIKsUD28/6VsvguGAVrylXkqyzmYyzGhMGqwnXXCM8kQoNhBropDMzONn+CZ9Lp+
         CGWWarXg1HrbZO/Abgc/EVLfB9fIEREg4hr2YYGkRC2Z3nRpCX6Uw8Hl+6lbn+0JbY92
         3qfTbScIpUtnSCEQKfI2gFikvaohOVWkuU4rl4kB31RgoaNmFrbjVBcru7e7yx3YNk11
         EyTYClsuDMtap5+EZq+6hjf8WE8k6GJmZ2UxLPDGo+4NEMsZ0SBYMfEsKLDa23tws+Rl
         TPQyKnC3cX13XgCUfys4d/QJmZfEvKuuq0JLzmqbO0z9+3kpU4cXFt+U4yQEMujaaQaI
         dt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hhqXJKT6aT4jNYUWlKPLKjWDeYxir3fADYx6e90HACg=;
        b=uhJNL3tah6TYCRIlmvCzsIKl8iiTiegvIIQ8kiI9AKfvdUcLASg3wfVfnNb4L16f3A
         22VVeWvg3QplqKhw8nOcxRjUwvuCrI5tmqmtcmEEtgDQ8YBsZFWKnTaDyIm3IlMXQzVF
         vgMvrhtfDYHqISVEeZ/ih0cka5fRaGAFI5CWnT5d9220OxlVfho4xaGdgOaUh8ogOf4e
         5oSrv+F8dM8S7casUHRbSeqhIvZCFkPFzcPgVQXv1sET3rX/UTs87D3+5oFvN3vLx06c
         Haup8GBF9nlxZXiShmthtnFpsxHD9GX5V0Fl8eZlyWGXnE71Z0WukVo+XSU3VOXfAHcx
         1O8w==
X-Gm-Message-State: APf1xPA91D//Xu+JYkUfH69X4Se8FFkHMR6OSb7segNKyRMmFesEXnuS
	cXGo4RAyLW7eaU5NEvDdF8gUbY1b
X-Received: by 10.99.64.66 with SMTP id n63mr7665084pga.204.1520090584714;
        Sat, 03 Mar 2018 07:23:04 -0800 (PST)
Return-Path: <rinklejain96@gmail.com>
Received: from tic-tac ([117.226.225.122])
        by smtp.gmail.com with ESMTPSA id a6sm13644360pgq.56.2018.03.03.07.22.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Mar 2018 07:23:03 -0800 (PST)
Date: Sat, 3 Mar 2018 20:52:44 +0530
From: Rinkle Jain <rinklejain96@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Fix style violation for line ending in '('
Message-ID: <20180303152244.GA9913@tic-tac>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.2 (2017-12-15)

Replace line ending with '(' with function parameters to resolve
style issue found by checkpath.

Signed-off-by: Rinkle Jain <rinklejain96@gmail.com>
---
 drivers/staging/vt6655/baseband.h | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index b8ee33dcb352..432b348c81e1 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -47,11 +47,10 @@
 #define TOP_RATE_1M         0x00100000
 
 unsigned int
-BBuGetFrameTime(
-	unsigned char byPreambleType,
-	unsigned char byPktType,
-	unsigned int cbFrameLength,
-	unsigned short wRate
+BBuGetFrameTime(unsigned char byPreambleType,
+		unsigned char byPktType,
+		unsigned int cbFrameLength,
+		unsigned short wRate
 );
 
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
-- 
2.14.3


