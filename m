X-GM-THRID: 6668314357810593792
X-Received: by 2002:a67:7c41:: with SMTP id x62mr11353810vsc.45.1552587924943;
        Thu, 14 Mar 2019 11:25:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls1200968vsc.2.gmail; Thu, 14 Mar
 2019 11:25:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwR3llnx8t37Quv5ppzZV0R+djIOkI85NeEgK57s14ZBz0y6N0MlheedhqD1WngEbjmgQ5o
X-Received: by 2002:a67:7617:: with SMTP id r23mr32363751vsc.2.1552587924166;
        Thu, 14 Mar 2019 11:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552587924; cv=none;
        d=google.com; s=arc-20160816;
        b=UD2iF1uujIx/iiIKw1NjVqRclL0ElAxx+g9LMPik+HkinvYfQCAbw1iueRLyu8bthA
         6q+BQ4YCvhum+ISPkLgjULVPulbXWSDMLcKXJLjU6JuvDQqNFIdt0HLaYVMlASdEz1es
         2beeqHVuJKzuqnrxJs4yvYUaySc54AGxr9rOkyhvwiw45PNEiVQssxENyMR3q1IQUzDv
         7Y+cnyJ1ckngm43sumEOiubXDQbc5G+J4+7Oqd5XZFBmGDFA7ILJLQ2yZXr/WUKOIbVs
         xUryPM4KI9XvA+pmxajRLEMY4I9gf9aTKauqJavXlpmKrqPuL0/NKrG4fAAXrHfAkV7O
         6N6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pjtvt6t4GWIrD7WZzTnjdgto7OW+KNwt5rojneEBkNA=;
        b=fkkU6R1/2oetmjzn3nkHH4MBBUnnCJ9GQZWP19qlkRYg9A7M9PCQoYY3U6Ufg+tZpz
         5jEf7PGwdITfSKuVFk4D9Za4p2Qdu2E5LbgRfoF/w2riVqCZ6meOVT8cMfBBCOASdbPr
         Qd3Gljbyg68p1tnHsWrWXVxEQkuxwdSpOjhP5S4yNiEisH9L59FkFO8lzE3Yg0DJG9BG
         rCWM4Ngm4Eoa8dYDfyrxUwcatn6pXnK/kuaBJR8QgKqfOQJ9WPC7M8ciiZ3G8VRuZvzi
         NEEFDLRCHbKLgT+uszQNYk+bSRtNAY3fXQWtQE3Vx6HSAg238mEOlJeCGeeEZCODY7qm
         F1BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Di1+DLp9;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q85si848208vke.5.2019.03.14.11.25.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 11:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Di1+DLp9;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id v21so4391787pfm.12
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 11:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pjtvt6t4GWIrD7WZzTnjdgto7OW+KNwt5rojneEBkNA=;
        b=Di1+DLp9UvHGP7Td9hMQrz1X1qXWh4XKctYlKe9pUktQihQhiQPgWwqn03wTl0hAOa
         NMt06qChTOiPHFOMLP1WMDYr9KipbyR0LwIT9rnrYe0sfGNTWCAJ4ZWwuSKuShtwYhOi
         bQOS+1y4CW9JO4VVWF8TB30R4M7HUo4/dNRfKmEPoESzj15S5EcCS1uqVzWuFd+hIgGp
         jPMZE+oBVpyoSBeUsnG2yvlgjupzMDzconkFyJQExQMGnZFAgBNAvLbhai6BDJYUNyBe
         S9CmpAmhL75MBVaa7CQuKG6G8XZKYaUxFdfMhl2vt6DsD1G7x/RLsGHCRCmcGaKWHyuo
         j/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pjtvt6t4GWIrD7WZzTnjdgto7OW+KNwt5rojneEBkNA=;
        b=Fy4K6VZ4rM/hSvJQ3COp1cQYmZJWx2xLSM2mSgd2eVtyZK90j5y1TdLm6Q7b0HnjMB
         T/3chXuCpT885LiaFgMhV4gPPr+fQYELObUgIm7QJy4/Hy+lhuE0T9y2zHZBJJ2hBWEX
         USImbowB+Ds//NLyA7OcLQpNeBgz/xJi+k+0YvJ1Zgb9fid1SyC5OO6IrpJvel8wnMGu
         HRybL9erD5TztpvFkG/pFM3TACBjaJ2hvgEFzCPQmtjwJlhQaA/KQj0m6CpG2TF06Fxf
         jnF0dlryEg+j50jzJblZO0JzcgwAig7/fFzHjGLVsrRKWb9zKUlKjuu2m6eN36X64ctZ
         Y70g==
X-Gm-Message-State: APjAAAVyeuNQSpG50SqhgLplN+XB8flmmQxga+8Aen9HS5eFpuL7K2+l
	0wyCVi3uEW48itM+siG+XLcbaQoYCY6kPg==
X-Received: by 2002:a62:e11a:: with SMTP id q26mr50108616pfh.187.1552587923231;
        Thu, 14 Mar 2019 11:25:23 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id m13sm32050300pff.175.2019.03.14.11.25.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 11:25:22 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: mt7621-mmc: delele extra blank lines
Date: Thu, 14 Mar 2019 11:25:14 -0700
Message-Id: <20190314182514.2161-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Delete extra blank lines to mute checkpatch.pl check:
CHECK: Please don't use multiple blank lines

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/mt7621-mmc/dbg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-mmc/dbg.c b/drivers/staging/mt7621-mmc/dbg.c
index c7c091fa1da0..6b59ac8b323a 100644
--- a/drivers/staging/mt7621-mmc/dbg.c
+++ b/drivers/staging/mt7621-mmc/dbg.c
@@ -50,7 +50,6 @@
 #include "mt6575_sd.h"
 #include <linux/seq_file.h>
 
-
 /* for debug zone */
 unsigned int sd_debug_zone[4] = {
 	0,
-- 
2.11.0


