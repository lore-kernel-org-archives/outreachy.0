X-GM-THRID: 6261362945154875392
X-Received: by 10.129.83.85 with SMTP id h82mr13344728ywb.18.1457837287992;
        Sat, 12 Mar 2016 18:48:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.134 with SMTP id g128ls1654635ioe.45.gmail; Sat, 12
 Mar 2016 18:48:07 -0800 (PST)
X-Received: by 10.67.13.228 with SMTP id fb4mr13086942pad.39.1457837287718;
        Sat, 12 Mar 2016 18:48:07 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id i133si885626ywe.7.2016.03.12.18.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 18:48:07 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id w104so128925489qge.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 18:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fzlCSZ1iYMVpfJXEeqp2IE++WReSyKRl91RR9LAzgGY=;
        b=z8XD0GYSut1Ht09JXjHzHuXTE743nb/llj85rIvdBWIDuFAsSBrlSlcBe25m23ATCe
         5ae0wi8uPO3gzHgdAj7yr6ecQ62qnY+sS3ii41OzWlguMWz+qnOoNGMEFg+CbMq1L83a
         XEeil2sPWQQU+QwdvjgFBRKntB2Hf1JS043lgQ384GFO1v+as9h0pVru24Hmgpcv9Hug
         RsWaJpXH3YlND4AndP6BrmwvtIct8vhwPsFCsRdpgRwMM41Nnu1sTLqz9bcBG7k5HZkh
         iZs2mcr7b/gVVJ1LWi6BdPIbMg648FwjH+NhONm0cjNg3/o+uWKoIea/4yVh640bS7Bq
         BAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fzlCSZ1iYMVpfJXEeqp2IE++WReSyKRl91RR9LAzgGY=;
        b=cTQt2Mwvlwo/tKT93y1/l8ETv6dUHod6ffvYTxgauJRU91tIxXe6oHZrxEL4I5VxIu
         ug14OmQl1cwJB2eglFeFrzNjOFHKACFXyO99wEDr2fCs6G0niu92c+Vf9Nky1JORXlJh
         UKTFiQZRbweWHeqyB7s5kDotv4o+0zCzeCDuALV06CnBWdsMtpPf3enu6n0XT26MS3zA
         MZY4RjzxAogmujSW1y/Mzzx68UXCW6nF0wWpVRhu+nB64fJ2Yuz5XD4KTQbUYzg4K4/S
         pgsb0WomDD3FpRYVrcclqp/os9XWLFZCrv7OzdKnlHHa27NdY+ddyQI5+jIkWehz8Pqe
         atrQ==
X-Gm-Message-State: AD7BkJJytF065c5G7awawBodpYndNY/0X3yVxkEVQToA1dJtYS592usS3UBkNBLlIgV7cg==
X-Received: by 10.140.228.68 with SMTP id y65mr22791211qhb.78.1457837287410;
        Sat, 12 Mar 2016 18:48:07 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id a66sm7348191qkb.20.2016.03.12.18.48.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 18:48:06 -0800 (PST)
Date: Sat, 12 Mar 2016 23:48:03 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH 1/2] staging: dgnc: fixed dgnc_Major_Serial_Registered
 camelcase in dgnc_driver.h
Message-ID: <59c34c35f901f6d0c101ffde622513f4bdc58492.1457835868.git.juliana.orod@gmail.com>
References: <cover.1457835868.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457835868.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch issue:

CHECK: Avoid CamelCase: <dgnc_Major_Serial_Registered>
+       bool            dgnc_Major_Serial_Registered;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index ce7cd9b..98ff648 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -210,7 +210,7 @@ struct dgnc_board {
 	struct tty_driver	PrintDriver;
 	char		PrintName[200];
 
-	bool		dgnc_Major_Serial_Registered;
+	bool		dgnc_major_serial_registered;
 	bool		dgnc_Major_TransparentPrint_Registered;
 
 	uint		dgnc_Serial_Major;
-- 
2.7.2


