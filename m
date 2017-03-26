X-GM-THRID: 6401822137494011904
X-Received: by 10.99.176.75 with SMTP id z11mr5964060pgo.97.1490540368400;
        Sun, 26 Mar 2017 07:59:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.171.68 with SMTP id u65ls1448212ioe.40.gmail; Sun, 26 Mar
 2017 07:59:27 -0700 (PDT)
X-Received: by 10.99.115.66 with SMTP id d2mr6489214pgn.144.1490540367627;
        Sun, 26 Mar 2017 07:59:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si1533639pfb.0.2017.03.26.07.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p189so5378577pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bbb4hXhVu1MmPL8FyU+4rFuSuRaLOHbEm82bigR2hxY=;
        b=Pfz8GZcI5RicE48Q2E0WjfsjcWvhI5aBdJt3x6+6Sq1dJfmo/nOFCBANJCVVoHmxo7
         w+60cXSfKNUNLZJ+yv6nnvGhyyNYFqf1fpvUgy9zzbGZF/821L7nrhO+mVnq+cNFAU+l
         /hGeY3Z3WTm/KpKRBJFw9+FSMHbSI8CyCDjMo8DKHislJgBd7BoUtiMc63j6OCi3LycJ
         +f3i30OOA/FsAnL11wM+LBqlEd71g/LPLBICZUwQzVPto7JnfrE48oPx/JVTFpqDCRv8
         PrZeuxRTuorKEM93TUi6IWItaqESrbnlaa5EHxC4gzWqg9mOY3h0Dxz+8/IVVL6hDGQq
         9k0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bbb4hXhVu1MmPL8FyU+4rFuSuRaLOHbEm82bigR2hxY=;
        b=iMgi2AmcbJV3XKTtQ/Uh30+xkv/yMtsb+llQhU7qTdw8cR7zXmCkOxXx+nVoueXnK+
         ToEbt+ayT3twGninJFxlsTlYjEi8tvasbJaqAljMYcyDeSlITBVT0JuthiOb8+b+JxPZ
         MmMRwsPKJ2OfelpERut3HMy5YtMl/WQFVP/r45xHnB62ceQxwemg2O57QMYU/zH463lg
         n7uUL3Ujjej8hx34YkhOwUViB6V6oVBMAoB3xny/pbygOBPL3DeSd6pPWo6W5pQ0iCY2
         pRN+a+MAs6/FRoGgHthip82YI1KjCsTJOg6pggD10J/k4XSM+PMly02QSeHcrq+fDPao
         hOYA==
X-Gm-Message-State: AFeK/H0jx3JEaxGa3oJ7LfNTpygqCG/JxMlBvntgTpo0wEf50yZxJ6O3dQWV7tem5FpDSg==
X-Received: by 10.84.230.230 with SMTP id e93mr23436386plk.187.1490540367453;
        Sun, 26 Mar 2017 07:59:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id m194sm15524209pga.62.2017.03.26.07.59.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:59:26 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] kernel: pid: Fix unsigned int to bare use of unsigned
Date: Sun, 26 Mar 2017 20:28:57 +0530
Message-Id: <1490540337-20847-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix up the checkpatch warning: Prefer 'unsigned int' to bare
use of 'unsigned'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index 8fc5b9e..4836f4c 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -122,7 +122,7 @@ static int pid_before(int base, int a, int b)
 	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
 	 * and that mapping orders 'a' and 'b' with respect to 'base'.
 	 */
-	return (unsigned)(a - base) < (unsigned)(b - base);
+	return (unsigned int)(a - base) < (unsigned int)(b - base);
 }
 
 /*
-- 
2.7.4


