X-GM-THRID: 6673486345256566784
X-Received: by 2002:a25:6104:: with SMTP id v4mr484522ybb.68.1553792121232;
        Thu, 28 Mar 2019 09:55:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:570a:: with SMTP id l10ls3924860ywb.8.gmail; Thu, 28 Mar
 2019 09:55:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxL7kqKnpvZ9NYnvd6RCQHa62Y7wHvzEggv4X/M0wf9KNyobj6QgX4MKcG4cpnH+E92fdXe
X-Received: by 2002:a81:7acf:: with SMTP id v198mr2617951ywc.16.1553792120346;
        Thu, 28 Mar 2019 09:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553792120; cv=none;
        d=google.com; s=arc-20160816;
        b=J2DFnhH+OuvOkg0VZrHryk7HRA9YHe/DvEolEaJBQojuz17P5r/U+WwufI9hatfVna
         Og8rZ841uwgrAjXhqrx4qz7KXcbQi2PynEei7B5vRLygbQM6BAM4MEbiIcz7BSmBwGuy
         0/ErKIr8YfAgt1SfsFy2/wbczNcfIjJQckOSVksxey04rsf6IHZq98xlqGrDrwb88S8Y
         th5SvclthQLGJ+U5AQyEmP9y++YD5JI+GaVub+fFiCg19NvFOf5s8jILKvZUpU+d1SG5
         Jjt4pEfG6BNwS0UJgfZ3K1+o24vQ64LzIbl0OJisIdK2vnMVk7rBvweaoFelrlRlGOy5
         mAWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CTRLwhk3RpEjc0iSSN0Re493vfndWBF0mgSXk3PzbY4=;
        b=05zo1m9tMRrAJtM+M5xR4fASNcAccIe9AUNtQGMijvJBx1E9QkV4biC5gr9IhRv/Bm
         zeXz07h/UBpGK8a6Yy+bGANIPZMUTgrM6FVx6tmpJH6nexNXHVe/gWEuT9ye0rbpdjtR
         UX2oU9vNyIf543VqP4/A59ku5J8oMBy7bE3fv43o/pqsBk56DLnuDeGxpicxD81TeisK
         wwjdFEi+sKgPzcm8me5gAFMsE8HAeYbGs1MGMK8sdmfEypDkY/Kq6D6TBD2P7Uw6/dq8
         +yhgCReyqnvumV5JLAu4LtvW0AOgznwQEmnLW0jGIXYC232XoogU6TiZJxqS/OCiw3qy
         tUmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U3WIunNg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id v124si509374ybe.2.2019.03.28.09.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U3WIunNg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id 85so847970pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 09:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CTRLwhk3RpEjc0iSSN0Re493vfndWBF0mgSXk3PzbY4=;
        b=U3WIunNgCPhwZNGm45dxec0TivB6XpdIu7nMHssqC1JT2tt3b2Id3uyNOW/wJaB+pI
         9WMg+NqDnJXF5hgwuGfAsictzefn9lXHQDdvNJJdBFTsFgUHjaXfw6nviGn4k1oWpw6D
         8TnezxqO0E0ar4HraU98Ci2X9ZTCS0PwG8k/iXWw3eDQGKtSV0Z0SVKlZ1CGUySw5LFm
         pPyK3swRPMuFXRe47mj0PtTkYsK2Q3Wb6lN7oOYB/WszwuRjeivZcD1uxKgGLF/a9jmv
         4vV6k6fLmEetOkKo+42cSLj2cT4Ko1TTe1GHjqiY0XL0VuFf2vGkpRKSt2AsJCaXDNwc
         T9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CTRLwhk3RpEjc0iSSN0Re493vfndWBF0mgSXk3PzbY4=;
        b=RLZGsJ35qMa/CQEcvN3vesQLsGPPIcPfTZ4DX9ltUd/Un3lpkSumDZahHEm7r9XhWE
         OU2mErCDEmLaBGLtQFljP5yk/8LPgji2/bNN8DSFBdRiwsOoyQrz3usuKkd7vur7inzd
         cr1Fm/GjBJ4jlkIbtGT/NYGmddW2ah9XVFpSvP1tbJUZ21ZTNrxgsbmzPovLDOGZQNmi
         ns7MG78rSc+W6Kt9Yf85t7uPu4AuLzT1HdefqehEu74IYRoq87fSKCquGSfqPSeoCoO8
         w2UM2UMCxaCLB13TNzDY/0rfJESRTKsd088JjNau9Otxuu6KN2kSZJaXwLG1cqPCaKSZ
         6IfQ==
X-Gm-Message-State: APjAAAXklJkKdfrqqMsUcF3Ai9WEQdH4dgsQS7aNTZ2sWjiuI5VvfTvF
	WRALQ2m5CRKl4e979i2VPBE=
X-Received: by 2002:a63:c112:: with SMTP id w18mr13187835pgf.200.1553792120046;
        Thu, 28 Mar 2019 09:55:20 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id w3sm13159520pfn.179.2019.03.28.09.55.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:55:19 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: erofs: unzip_vle.c: Remove unnecessary parenthesis.
Date: Thu, 28 Mar 2019 22:25:08 +0530
Message-Id: <20190328165508.17702-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Reomove unnecessary parenthesis around the right hand
of the assignment using the below script.

@@
local idexpression id;
expression e;
@@

id =
-(
e
-)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/erofs/unzip_vle.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index 8715bc50e09c..03b9c0f256fe 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -870,7 +870,7 @@ static inline void z_erofs_vle_read_endio(struct bio *bio)
 		 * If mc has not gotten, it equals NULL,
 		 * however, page->mapping never be NULL if working properly.
 		 */
-		cachemngd = (page->mapping == mc);
+		cachemngd = page->mapping == mc;
 #endif
 
 		if (unlikely(err))
-- 
2.17.1


