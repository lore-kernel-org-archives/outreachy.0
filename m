X-GM-THRID: 6393675902317756416
X-Received: by 10.129.208.8 with SMTP id v8mr3344975ywi.81.1488643683356;
        Sat, 04 Mar 2017 08:08:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls12078149oti.43.gmail; Sat, 04 Mar
 2017 08:08:03 -0800 (PST)
X-Received: by 10.129.172.6 with SMTP id k6mr3366836ywh.52.1488643682980;
        Sat, 04 Mar 2017 08:08:02 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si569904pfa.6.2017.03.04.08.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so12867501pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3DkKDGVZRMPJ3dap54w3qrEuyEopmiGf+0CDcTrT6r8=;
        b=B98DWKaeEHMEGX15GVDELW1V5giAZsH8Qu2cb6sRTCPiLVm4jVsKQCByTy6nQHWDIe
         mn819p941kmODYoHCuJIHkMpfETJrZbPVEeIbe1GcU0poN5bN+TAr+clY4C4Q7P9stWH
         MqyklIKKzCr+ilmigdY3ukHiW40VpB3jugoFZgjKANutaELy8UJJ34HnNy/QPg0N++mu
         jYy41TDruRezYFUrZgHXvleJtrRHYE5yA4mWXzjVM00YWGLcBEVAFi4j/XkCB+i4i7lB
         JXea4rhVonGQP3cKaEpERI0hO916cuMFHcCbVcYQ7uVHzGq+1k0+FuOnHXsYD1KNDU8s
         +jjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3DkKDGVZRMPJ3dap54w3qrEuyEopmiGf+0CDcTrT6r8=;
        b=Kj/Nd7UxsHyVIF061cAF0CFtTjGLS4B8vkb1ZbYyd9Vu8Rj7QX6hBoAEo/lTaACAov
         3TSaEhZuIVF0Onl9RVw/9CMBQIqMXkpOg3hBMk0AJG++h736ZZvaK6nHeTstQrrv80MR
         ETXDB2i1OA10SSzag3zOYz3C+D7QNt0Tb95lQljXlCiaJgkCH0S4xBEDzsuXmMNs+FPe
         Pp6GoYUPhQY6BKech/Pn9VhBL+8BtaygUrFPpz282w6XoTxOGClNofZsdcy3DSkMNDW6
         zUAKieWC6tw3sqxAb8or/oqwXTx0qp2qWbNa4qyGBlf5Kl3vEjYXlW+A4I1V63v4xnNs
         44NQ==
X-Gm-Message-State: AMke39ny7J5+oW1+7Foe9xxVHGS/qDABN2SkTeC694hTUJMDdr+W97Ru1l+Jwx8j1GUgmw==
X-Received: by 10.84.215.23 with SMTP id k23mr12784468pli.58.1488643682768;
        Sat, 04 Mar 2017 08:08:02 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y67sm30048342pfa.96.2017.03.04.08.08.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:08:01 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH 2/3] staging: greybus: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 21:37:50 +0530
Message-Id: <1488643671-24758-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index ab0dbf5..9188fe0 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -34,7 +34,7 @@
 #include "greybus.h"
 #include "gbphy.h"
 
-#define GB_NUM_MINORS	16	/* 16 is is more than enough */
+#define GB_NUM_MINORS	16	/* 16 is more than enough */
 #define GB_NAME		"ttyGB"
 
 #define GB_UART_WRITE_FIFO_SIZE		PAGE_SIZE
-- 
2.7.4


