X-GM-THRID: 6391852583766458368
X-Received: by 10.107.17.92 with SMTP id z89mr3158008ioi.3.1488219159171;
        Mon, 27 Feb 2017 10:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls776678iod.49.gmail; Mon, 27 Feb
 2017 10:12:38 -0800 (PST)
X-Received: by 10.36.238.5 with SMTP id b5mr4561407iti.25.1488219158659;
        Mon, 27 Feb 2017 10:12:38 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si3308779pfk.5.2017.02.27.10.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:12:38 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so2368265pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GelEaCmvepnsBwcOS31LN/kpdtLes8NFkYwG0hu2yyo=;
        b=Giyn9edzVU8bAMr4OkLo+chv71EdxZaeQ1skGz4QcZhBwzf838+Ul7fc2g4QTQFhPH
         lEKzdGRO2w6WNAhLpxVrtNLBObrJESRXMPmLOGfml3Mp/sJUcT3u6n8pyxnw+j+lysGB
         K3hhb97cqCcyBAAjL5QRu9OmNoN7Dj5gzdqjMogMyqVUbHs2Bp0b7OVMOlmZhY3bsnuJ
         mbDNOGELDkfDRgkiR9UQxwSThqQgBCsaxNWFF4IBNNtjvEMP9RkGd0CfFI74+a+ucChK
         /1TScCdUHS09sZP0GiP8qVeNcjh1DG4RtpGZdF9OIeOhC70340L6Acb4LfSnxvmAD+k/
         iMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GelEaCmvepnsBwcOS31LN/kpdtLes8NFkYwG0hu2yyo=;
        b=q345ezHTQ/CXAOucN7tYKb/zzS49mcNl1VKET4yZa0PLJRV/8SZwdUiMTdNgQYZy7O
         7sLLyNZyxFW95/owbkc/LQRNTCZOy5lIxPGlBWlFCqzG5xV7B6pYRUk6AlVv2QLhG91E
         m1dILNtfnCl1+ddqkufG4NhCkabo3YuPXTZLMCRfDEAicRWhLu3jhpgsUNr9WcYRZwS3
         iK/ajhT6CuFADwFolWiOS2iDdA07X6fC0lSf6KHyJ2ZzahE2NDP8QowRIdz7dg6kuC30
         s7lFsw9UkkHTxtBgamP+xQT1mTzliigNSe2yreeckYuWNEf218v7jPEYG/TFN7EwtAHp
         PdAg==
X-Gm-Message-State: AMke39n2RgVq6BO0If7PfkJNb+lYxWkUCTUkDq0h86ZO4vAKxKdZZW3++Bf+uC+FpsE8Ww==
X-Received: by 10.99.168.2 with SMTP id o2mr22058667pgf.159.1488219158474;
        Mon, 27 Feb 2017 10:12:38 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o18sm32095845pgn.36.2017.02.27.10.12.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 10:12:37 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: rtl8712: Remove unnecessary else after return
Date: Mon, 27 Feb 2017 23:44:26 +0530
Message-Id: <1488219268-3006-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 8836b31..3062167 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -411,8 +411,7 @@ static int netdev_open(struct net_device *pnetdev)
 			goto netdev_open_error;
 		if (!padapter->dvobjpriv.inirp_init)
 			goto netdev_open_error;
-		else
-			padapter->dvobjpriv.inirp_init(padapter);
+		padapter->dvobjpriv.inirp_init(padapter);
 		r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
 				  padapter->registrypriv.smart_ps);
 	}
-- 
2.7.4


