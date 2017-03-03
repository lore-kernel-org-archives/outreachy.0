X-GM-THRID: 6393386292161282048
X-Received: by 10.46.21.11 with SMTP id s11mr869401ljd.23.1488576245550;
        Fri, 03 Mar 2017 13:24:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls1137237ljd.21.gmail; Fri, 03 Mar
 2017 13:24:05 -0800 (PST)
X-Received: by 10.25.39.85 with SMTP id n82mr742695lfn.10.1488576244987;
        Fri, 03 Mar 2017 13:24:04 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id v70si344930wmf.0.2017.03.03.13.24.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 13:24:04 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id n11so4977449wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 13:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=J3YPXFptyYENePiREVPVKZhTn5lAQUn2CDHjclnlylY=;
        b=bGtJHzGnEiyPSXlUP0wPeK48/RCCx2bxB8TYJY3ViaNRB/AKl7CTWLku2z3AtucgiS
         pLeAUR3lnKq1bljtJcUjf2TN8uvwju0eS1rTJxI+AqeMTsip4Zo/E+m42LpRD2/mIZu8
         FsLdhSvCIhGvS1H/pwuGQDUEW5tngB6gfofA4AHe0ty9kPACSggskFKqHQZ5RcLUgENQ
         7YJwlo8pCVayCcm4LlhHjBUn5z4sHvOQ1nyieM8D7sOnm8irDTQZZ83fS1uAf5XMC7sm
         G2Q2jIwzmm9cWdN6cItMU+JQBAiek+QDF+ftQu3MaMmhAuNBbzyMW/Asb+G5Ef0zZ2AH
         JxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J3YPXFptyYENePiREVPVKZhTn5lAQUn2CDHjclnlylY=;
        b=K4Ba3rLvel7KrcAvlxwU0poN4FbFsprtgoTUIUFumCuoMARnYzbgQfaEALeVgeJavv
         McUzeFNa7Mk6lMrc9lGZoV4QR+BULjPewFGUv+wmKEC6GFd8j6uq9DAfiY2kb9qihRRD
         FVi45m7N0pNP+WqwpUIYk9wY7swbCRfl9A48xaKLF8ZU6U6usSqOrFy6OfdVKYB1V23s
         dD0V2Qo0/hqwdW9GhB2Z5Nms6feq7ZNKDajI2UB8keI//m7XWASBw6UVRYLcvVRUuilZ
         GPGXjc24NipBZt9J0JzOtB9q6rYDct5XKDRQd9s/gzMP+uCPXULU410RPUk+g/KmF06C
         VJZA==
X-Gm-Message-State: AMke39kFSrV/Q2MBfl5+Msn0JieoQvqn8rKwiFs70xn0LmFK+FMkZhaYweyFZFDx0ObEbw==
X-Received: by 10.28.166.133 with SMTP id p127mr4862096wme.62.1488576244771;
        Fri, 03 Mar 2017 13:24:04 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:ed0e:d7f7:5879:7539])
        by smtp.gmail.com with ESMTPSA id n9sm12714017wrn.40.2017.03.03.13.24.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 13:24:03 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Delete comparison to NULL
Date: Fri,  3 Mar 2017 23:24:01 +0200
Message-Id: <20170303212401.9431-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted the comparison to NULL to fix the checkpath.pl issue
CHECK: Comparison to NULL can be written 'virt_keyboard'.

There was no need to compare the variable to NULL because the if
structure checks if the variable is NULL anyway.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/fakekey.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
index d76da0a..294c74b 100644
--- a/drivers/staging/speakup/fakekey.c
+++ b/drivers/staging/speakup/fakekey.c
@@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
 
 void speakup_remove_virtual_keyboard(void)
 {
-	if (virt_keyboard != NULL) {
+	if (virt_keyboard) {
 		input_unregister_device(virt_keyboard);
 		virt_keyboard = NULL;
 	}
-- 
2.9.3


