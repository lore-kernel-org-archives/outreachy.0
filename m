X-GM-THRID: 6670856968497790976
X-Received: by 2002:a81:4606:: with SMTP id t6mr3414075ywa.23.1553179921696;
        Thu, 21 Mar 2019 07:52:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4cc6:: with SMTP id z189ls2185317ywa.7.gmail; Thu, 21
 Mar 2019 07:52:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdkXM6fvBWuhdWIG8dY+r2g7DvObKYYhllDfkWMPdUIrMjGvw+i9jdJmsbLxSl2w5YmFz9
X-Received: by 2002:a81:4991:: with SMTP id w139mr3574822ywa.14.1553179920622;
        Thu, 21 Mar 2019 07:52:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553179920; cv=none;
        d=google.com; s=arc-20160816;
        b=RPSpr7ZGEGENS1R6TSRXPCYDMEnED1kz3E5jpmRcMorZe2dKzf/FLCwSKXSYcCnqd3
         orw8/tZjBnDSS6q0Vwz7oU0retYsaE4Zg/JfOJ5lcbDUzUlVGl4p076gcroz15rnCLXH
         tp8zvq+MtQojR+1xb+M45+gWxDfzCairgWKkIadgWMn12OGi+kyKCyngm37o/2lRsAHd
         VRlif+GqVSqoFoGzcGabVEfP0UMkp8cCfOfYpH9usoYN1YjEfIHccqzmBQp8Oi++9UIV
         NZgr6K6bLnN82XNf/QGoNVtVj9P3ZeeE08HZ5PyNtuzKVtaWrDTgOFgvyMZV71DEp/Ch
         lElg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0yhKPFbcqq59uER4+ifI5CxqwBYHyOCvnRaYPR8s+gc=;
        b=wBzFyoX4wLzoX96BRxMMRyyeKzpr4jfmJCM1TwerNXCJ9SXcQQM7eoUu9OUCpdjUQk
         fNjsiJiJ7+lCsAemd/CgKM83qCACiWDqzHNsd3vxwHF+DLEIvhd6TRmatie5H0vDKdT+
         SMedh+MlgGwjL06Fkr8T48yF3rjwX9bsHsZGzPhkm1JI5Yafr2ULuh2EeP3c57YyM4Lb
         7C9GophHdkklVZf7xvGk/0Kq+dc41akRnOGOMBHO588HxTHjfkdqT2n4kFZfuimarZMi
         Q8aCoalmd5jcQwx0vFvRacv6ip7KzcepZXk/2whtRV+2+CXMjhBxaInv7YtNGwgbnkDP
         UNKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DmwbasVw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i204si308176yba.5.2019.03.21.07.52.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 07:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DmwbasVw;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id 9so4200901pfj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0yhKPFbcqq59uER4+ifI5CxqwBYHyOCvnRaYPR8s+gc=;
        b=DmwbasVwYwJdG4onNzqEEpgytI+2cGF2gZO5vEvZjWi1js0zq1wubeXfVt3NYQuJtc
         wCey6YL3VY39C1R5TaOSJ8fij4H9cW8nwx3ZXvbyr4USy1mXz3rE/dHLjLHf7YeRy+1x
         akSVFYlIu7d1gXT2NMEqXLguoOT3qKxqSJuEw6gMZZajkNJXl9nGKfEPPPDF/ev3yCUa
         26C0rXRJgTOCje89LcbPNUY0IkxjhVUbrnMV88pUC4twWph+N3ZGnjpCXHd0anWQIV7Y
         glTIpIpCVVvFKtq4/HRalB/zh6o4WAUQ7vgeWw/0LWnY4Y8GQvFfMrXCNaMf3Gs+iFwY
         yIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0yhKPFbcqq59uER4+ifI5CxqwBYHyOCvnRaYPR8s+gc=;
        b=AbKw7ebHY8p8uyBwwIFkSvZ3/5sFqB6yiman7tzU/qyk3ZCjCmP27j8fDii55L9iTo
         R9TryVnBbdyRoxNNoG9K2rrnJleqTFFSvUs27lrczv2X9TyAJibTBlpEiFohXRJ/x46L
         GEJMEv8gc5GZK2C7ne/Co6b/egqv2ASh3cfK555w9Bnd8Rwk1SlDHWZJZhsRIuL9MuSn
         xGVBsSefQIXt3knLPXd7n8JzGKPzNOW2ZvstDe+wyyMVfoq+EZyBEO7TjPGVFtPg6wWd
         4LDYPahXCM7Wpevp7gFRU99Udkrdp604S6I+irCZthxK3hhUFy48mqHwu9VRfvp5CmYS
         FljQ==
X-Gm-Message-State: APjAAAVoyb9OAHlHfD4YqYq1wtxPWoIUuV4jTm4kkWgQkmeZ3yAjlpgq
	OvkldkgMrkfZ4c3XhjYCTRgB0bDC
X-Received: by 2002:a63:5b44:: with SMTP id l4mr3690762pgm.238.1553179920005;
        Thu, 21 Mar 2019 07:52:00 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id 13sm5861094pgq.66.2019.03.21.07.51.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 07:51:59 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 2/2] [Outreachy kernel] staging: rtl8712: rtl8712_efuse.h: alignment should match open parenthesis
Date: Thu, 21 Mar 2019 20:21:45 +0530
Message-Id: <1553179905-6509-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Align code to the open parenthesis to fix the alignment issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
index 41de101..4969d30 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.h
+++ b/drivers/staging/rtl8712/rtl8712_efuse.h
@@ -39,5 +39,5 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead,
 u8 r8712_efuse_map_read(struct _adapter *padapter, u16 addr,
 			u16 cnts, u8 *data);
 u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr,
-				u16 cnts, u8 *data);
+			 u16 cnts, u8 *data);
 #endif
-- 
2.7.4


