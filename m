X-GM-THRID: 6666321608871772160
X-Received: by 2002:a1f:7d06:: with SMTP id y6mr14108318vkc.19.1552123950285;
        Sat, 09 Mar 2019 01:32:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5c94:: with SMTP id q142ls2009636vkb.1.gmail; Sat, 09
 Mar 2019 01:32:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqxQjAfwp6L/oKbUzZYpvZ6SEDHJRCARodEc/TxvW7NaawLTRF2XPlyWJ/C2zxRc3Z9z5SCJ
X-Received: by 2002:a1f:9750:: with SMTP id z77mr14124329vkd.5.1552123949669;
        Sat, 09 Mar 2019 01:32:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552123949; cv=none;
        d=google.com; s=arc-20160816;
        b=K82o0FrkfkbgnK4yP58SMH7wv9Zxf5PAK1lT2hWBDrcNtmy0Qp1gtBq8yx6dVZdrQt
         aeiZ5vwZwzItAPCNhnSKroZBuCPVVNyoTsfj/sEOXNhOi23iX77cETFbAq4X+1b3sK4D
         jJqiNh6KpLi7r7sHMaa9Pg6d46CtcwIiJE3W9CCJcHjj6wRBi4h4pbY+fyeeg8S7+iic
         vwm4jtPtLLRo928b8ezknLilhGlAIYRIN+zu18ehxcVjtcNCFHRjeyZ/maVvqxQND4Ej
         WZiaITDeI5EebY95Vk2RDuVkeyX4nqQ31NtKjWMFkc/IIJKfCrOVuJi2NOMDvV4l2CVZ
         qA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+aRoIpwQyqpQGur9AAzlp0nIbgU7NNjtW0tdvsZ9kS0=;
        b=aMUSEugrIkUayE/ycSxSlWJU9OAKA8DisU6gs4s3w83V+/W8426UjQbqWO2wgjevDI
         Ddzm5+P+Pe3vQS6MErad4lwWuoe5Ls9LI+lCo48MVv/OdNH9iMHR8g70uM8tpzaOlbx9
         TcWcSDNMxQfZA4Zmj5KtQL1xSLPVLfaYqW8/bllkt612AO7gR/j5FzDOYcvjejvxzGMe
         4xEdhiwGGLNX/JjSmE1kVBy6lvM+90SRWavvf+0KZcHnoshy2Vg8+zjKR6I+DUUztIRX
         AGIVnp2+HJKL/bEVy6JpKE99xGzbS4YL9ZeO1UTJVijHBzxDsbONLBg3TlX8S9Esznps
         vDjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ccJ9vLu0;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q85si821vke.5.2019.03.09.01.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:32:29 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ccJ9vLu0;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id h1so15976018pfo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 01:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+aRoIpwQyqpQGur9AAzlp0nIbgU7NNjtW0tdvsZ9kS0=;
        b=ccJ9vLu0cNiHCw8GaWKqVojilJIqHQC10F8ZkTKv8YAz5uB4hexZjKUyEjEPMGAGId
         90pGfvKd1jkmR2H0/uSBe3zaf/26bnx7Z7S5nYXNsU+9Zz3Wrv344go1BW3WwHercx5M
         sz8vP3u4p0Tom6R53glQhxJyRRjcI6O1agWBwJm5Vwoc4c3Boies/xZCHTubmcRfhl7x
         RPT09xzvNJtnnDhmxrfjtWAXBCKJ13UrgjJ8gKt0hpfzV3CP6wMhoodwjPJJUUezf03w
         WniEpNOBzeQjrOomlas3dEYxb3/3z6aiSrStAUlg+1kofOUeLZCZgCfGrXhFxtnMbf6R
         mqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+aRoIpwQyqpQGur9AAzlp0nIbgU7NNjtW0tdvsZ9kS0=;
        b=iqzoI98llVewmsV9WLrTXQvYVvJqTyWOkljINYOMQ7Hx3MOc/5bMCV2bSXCqNxgKqm
         qt/fz8TMUsFnCwsEqABwtX4xn5jpartOA6SUW7Z5CMXvMn+vmoZXZJJNZ5hUrAzT1oWh
         iUjPg5iaLm+ShfYFb5DNX4iK998q2PFPPz4eGiuPcbHZD7FY1CCBtvw6YylChvS6Wl+H
         FGQ4Z8K/PX238heMvPNvnvQTefkCj+SIfuL2SjuQi0WtSRnKUGdGPZUJWmvEWNawZdDs
         XKTUMmIZVz2Nr9G4T5hFv9tQoiSRa89WdCZgtlT+etmsKRKeT6R8cSM2UWcjydHEGeT+
         b11w==
X-Gm-Message-State: APjAAAWehBHXE/9OIFvrk+BgfhYqbnHXbCTvoGt0fqrMoP6QbJep44B4
	SHiYo15HU2RE3VVgChSrwpQ=
X-Received: by 2002:a63:6b47:: with SMTP id g68mr20422936pgc.220.1552123948137;
        Sat, 09 Mar 2019 01:32:28 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id h184sm506071pfc.78.2019.03.09.01.32.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:32:26 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: octeon-usb: remove unnecessary variable frame_number
Date: Sat,  9 Mar 2019 15:01:58 +0530
Message-Id: <20190309093158.35582-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary local variable "frame_number" and its assignments from function
cvmx_usb_get_frame_numbe. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 14982b6472a0..aeec16314e0d 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -2385,13 +2385,11 @@ static int cvmx_usb_close_pipe(struct octeon_hcd *usb,
  */
 static int cvmx_usb_get_frame_number(struct octeon_hcd *usb)
 {
-	int frame_number;
 	union cvmx_usbcx_hfnum usbc_hfnum;
 
 	usbc_hfnum.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HFNUM(usb->index));
-	frame_number = usbc_hfnum.s.frnum;
 
-	return frame_number;
+	return usbc_hfnum.s.frnum;
 }
 
 static void cvmx_usb_transfer_control(struct octeon_hcd *usb,
-- 
2.17.1


