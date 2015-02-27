X-GM-THRID: 4313658163200
X-Received: by 10.42.96.67 with SMTP id i3mr11697045icn.7.1425016561001;
        Thu, 26 Feb 2015 21:56:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.85 with SMTP id m79ls489146qgd.44.gmail; Thu, 26 Feb
 2015 21:56:00 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr11592979yha.24.1425016560634;
        Thu, 26 Feb 2015 21:56:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id nt14si356645pab.2.2015.02.26.21.56.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 21:56:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so4045846pab.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 21:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YLgSrgvOAqYJvGPDJxYtd1qapUUMtkOH/Q4kFzydnDk=;
        b=s7jwaj0dRKaeKU0nKAC0KPaFn6MPjgIIPRG1injvxGfvSIANFhGlDP75azX7Mo2zf5
         lgd2zM69Jb6qVSPeFHf00Qb6wnpYdpzMlr+rFdvFbU8vH+cJDVCn4U5MOBsos8/LCsFm
         DtQoht/wyFxasAw6EBvBZA2JFfFojJiV31t1ZHbS4cbHmGx7GWBJOFFS5Lcc528ZURtf
         TQr5e0QvrOlCMg6g6jXc1HqP5L9psi8DzaE9lXNc0KoxQy2xwewGqatDZoAfzZ2IFoHt
         CiUbDmQiwG/Bw5PBmkbGd+QCr1lDG075ONVxItTODGs4jHu5QKycK/XO1NVCNjc63+dC
         aInw==
X-Received: by 10.68.68.202 with SMTP id y10mr21102400pbt.106.1425016560497;
        Thu, 26 Feb 2015 21:56:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id yf6sm2749923pab.26.2015.02.26.21.55.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 21:55:59 -0800 (PST)
Date: Fri, 27 Feb 2015 11:25:38 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Remove braces from single statement
 block
Message-ID: <20150227055538.GA5695@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove braces from single statement if condition
to follow kernel coding convention.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Added "Staging: rtl8188eu:" to message subject.

 drivers/staging/rtl8188eu/hal/fw.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index 3b28754..a71c542 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -154,9 +154,8 @@ static int _rtl88e_fw_free_to_go(struct adapter *adapt)
 			break;
 	} while (counter++ < POLLING_READY_TIMEOUT_COUNT);
 
-	if (counter >= POLLING_READY_TIMEOUT_COUNT) {
+	if (counter >= POLLING_READY_TIMEOUT_COUNT)
 		goto exit;
-	}
 
 	value32 = usb_read32(adapt, REG_MCUFWDL);
 	value32 |= MCUFWDL_RDY;
-- 
1.9.1


