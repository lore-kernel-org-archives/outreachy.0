X-GM-THRID: 761102598144
X-Received: by 10.181.13.236 with SMTP id fb12mr890692wid.1.1424368262181;
        Thu, 19 Feb 2015 09:51:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.24.165 with SMTP id v5ls347902wif.25.gmail; Thu, 19 Feb
 2015 09:51:01 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr884310wib.3.1424368261780;
        Thu, 19 Feb 2015 09:51:01 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id r6si4559509wix.0.2015.02.19.09.51.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 09:51:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id em10so49909651wid.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 09:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0jwR6UpsjxB5WHBAM2wwWfdEfwdNevJ+C7Saf4lwOm0=;
        b=0TWIKviNf/4k9EB3Vz45vdY6852ZHvaNltAu3Z7ZeK+H2xRhbHQZGanIzNkqGjSPSW
         aCdf9vKu2UUVikwzYnFWI2GkKlSNEu0Zh1oC8J3/+K2R50+C99b41cso3TQQLnAGVdgQ
         fezr+jZl3L8jHkfhgrr1uIqcjJInFQoLyBPgW1jzyPde9Xi1+iq8YpNXxljVVF0eIj7X
         IhtDFRnZQXFqI6uk4u/S7vltUDj4FPUE2tA3aZz7qPUbd+agauFddihAprcLkKYcV0RZ
         GguZWc4napvUo9PWxNbiSNSAnPIcK3S7X+NTTusNYQg7frm0R8XOig2Ai1ZAoFi+t2lO
         C8gQ==
X-Received: by 10.194.243.1 with SMTP id wu1mr11427802wjc.69.1424368261674;
        Thu, 19 Feb 2015 09:51:01 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id eb10sm35204737wib.13.2015.02.19.09.51.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 09:51:00 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: fbtft: Added blank line after declaration
Date: Thu, 19 Feb 2015 19:50:50 +0200
Message-Id: <1424368250-5322-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Missing a blank line after declaration
chackpatch.pl warning in fb_ili9320.c

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/fbtft/fb_ili9320.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fbtft/fb_ili9320.c b/drivers/staging/fbtft/fb_ili9320.c
index b26d893..880f548 100644
--- a/drivers/staging/fbtft/fb_ili9320.c
+++ b/drivers/staging/fbtft/fb_ili9320.c
@@ -47,6 +47,7 @@ static unsigned read_devicecode(struct fbtft_par *par)
 static int init_display(struct fbtft_par *par)
 {
 	unsigned devcode;
+
 	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
 
 	par->fbtftops.reset(par);
-- 
1.9.1


