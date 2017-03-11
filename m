X-GM-THRID: 6395948698410418176
X-Received: by 10.25.24.65 with SMTP id o62mr3101368lfi.8.1489241368630;
        Sat, 11 Mar 2017 06:09:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.81 with SMTP id i17ls1249832ljd.41.gmail; Sat, 11 Mar
 2017 06:09:28 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr3955445ljb.2.1489241368054;
        Sat, 11 Mar 2017 06:09:28 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id l138si240712wmg.0.2017.03.11.06.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:09:28 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so3101629wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5T89HcfDs4N5g6/km66GHsv4zhinjgWP24DjXmsIbj0=;
        b=LObyEdn+KXbhxhIz9lLn0tDDqftcXizM35lYlIRM+HZ48gmA7mtmExfhig/wGv/0iC
         JK7pFvdtuAF020z/X123ApWRoe+OdpK81wwD1S6dWGVeMVKPW+OuyCAmBSDJSEWe9VRN
         XRW3KRfFscqHDJBTfwOGGji2svw0vIL+zYQtdKuHOGiOUwcmfrx13aqz4foX8r2ESabg
         iVA0ijUsf2WQpujjUICChQj/3TDVpnee6UEScOSdnQb/vSZqRxV5DGC4u4UCZq3aL4Uz
         8rBepLXQP2Tp7tdqm7KPCV1BtXIVMv0wIa8W9EEpm4ZSbMcRCBE0xqq/KfELsQZS3iza
         FRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5T89HcfDs4N5g6/km66GHsv4zhinjgWP24DjXmsIbj0=;
        b=snJagJWr3E2iA0ewpiARvkrOTltyWHbgD7qHK72wSjU4t91lHg8VECIn79qUyCixRD
         Z4S8hzz/Gfh3JvJ/cqz/h87F3G83Stq9WZAKdZGaw1/1iVDZvPndVcmEES/DwhlHwVvb
         R6j8QMm2/1uju+lfOZ+Jsgg5Jzowg8ELqxinef0B3k8wL6A6BZab94059smSMwvCVDGb
         lKgpQXvifKGjP7rge+kij+BBRNIvMmILwlW/2ZqGkeQa24HwxWIVPbr0n8Xxa1T/dyMU
         zoWJVYrHCmWc+8f5KZsqNCJUiTfBnbFU1G48YAxnx/R2XTAF7IwP6XfPZjy6MFyqPjNZ
         2i0w==
X-Gm-Message-State: AFeK/H3Ti6EZ/bjJCnlY9tsBk5x1pRHg2yiBQniWfRpy7ExtAn975gVxzGbauKRdGWNwwA==
X-Received: by 10.28.182.10 with SMTP id g10mr3382907wmf.123.1489241367906;
        Sat, 11 Mar 2017 06:09:27 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id d1sm17468801wrb.62.2017.03.11.06.09.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:09:26 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: Add blank line
Date: Sat, 11 Mar 2017 16:09:24 +0200
Message-Id: <20170311140924.18738-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Add blank line after a function to match the kernel coding style and
improve code readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 414ef21..667164c 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -1123,6 +1123,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
 
 	return 1;
 }
+
 /********************************************
  *
  *      Global spi HIF function table
-- 
2.9.3


