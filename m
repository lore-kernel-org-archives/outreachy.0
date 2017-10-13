X-GM-THRID: 6476496903716470784
X-Received: by 10.31.110.142 with SMTP id j136mr1281545vkc.8.1507926942106;
        Fri, 13 Oct 2017 13:35:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.22.18 with SMTP id k18ls2076138uae.15.gmail; Fri, 13 Oct
 2017 13:35:41 -0700 (PDT)
X-Received: by 10.31.82.195 with SMTP id g186mr1247613vkb.43.1507926941166;
        Fri, 13 Oct 2017 13:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507926941; cv=none;
        d=google.com; s=arc-20160816;
        b=qwKrqopTjrbpMfeTiQycRXCTNGFTB0a98q0E9yy2GVw8aQ5ZHO+x3jy6COSO9OJymN
         TpZI0n+J5Fs7bJ5YfL7Y+019BpzbmRi8RjQLSCjcelZ0UX83ttyXIlwRx1YmKkWubCvw
         yoQmbaBc9ZJGOpcCCEmEVE66h/XcXfSdqUk+a6CZAktNvpqMZvzzVIybfFOKJYl2CNfG
         P2oPHTWc5XV3tPwZ1GXh50DxWEvyT79ueRvZyId3e2Qt62c8INGmcoH89pPI8SQUUrK+
         AITGm5C4ECOFvi1EpzF3rkxtGfDnV9YADxQnQ5SOJReI3V0BuPW/fYNREq6FqBnU0Vnc
         RDYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=oyL5uFhHHPez6B1S4XVwcVUgi+kFXfeMO5Hp4V2vKbs=;
        b=dOrngUbq49pHbybIHvI03JMkpm0+zz0JOMe3skW/4aJO+6tKqlZf+p67koMz1CweTj
         rlyb7sc6aErc580+s0Wyk0HmfrcGlKPE85AZr3SVIeH9iCLHfzdqSDG/NLBBueTLFVxc
         KCiNgwSY1zRXDDQhhIEtUgYZDpQ5yGlK8DZWNtGwAGInCKxLxy8zOdjhLgETok/eOi6o
         CdlkVMeELJXd4XYNkgfVJi9ugS/ndgXwYrI1X+kT2ontGpxqJVnnYPqLC4Wobf2oEcvR
         7wAFAl5UsxIgKX9bR7RHnEuwbNoBdKQd8sSo+pJal0P/QR7i75yvWWl5lZR+PFu2y7jH
         kGbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKhHwdin;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q64si77857vkg.3.2017.10.13.13.35.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 13:35:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKhHwdin;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b192so2060022pga.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 13:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oyL5uFhHHPez6B1S4XVwcVUgi+kFXfeMO5Hp4V2vKbs=;
        b=EKhHwdinwWBieaChPqbaZ1YVvWJqP/S/KuBDv4ya5dseWZHSXLX+0VwUDwTg433b/k
         FVeoN5kbqZfCUzRS2Kq/fIV7ea1IgpcwGIPGx8TmUGyWTaIepe+hHxc1OirMbscas4jN
         rUe3Mrjf71r3sCp6l+bmEdoIjGnTJb8GjF8we9MvPcaN2QnKHtjDsfbvIIcZpDtoYWFM
         grwfr4c0Gv7Zwk8cMQBRYXO1dc6FOERXCJu6E2qYiMOXUIm2nhMDfp0pUCAW2WD13xkI
         uzZ/SXxkpfzPwtEQWf2AM0C+ipm4/eScBxNi+90pF9G2l3pxLDBuNjqiEDdKfiJGjEvf
         eUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oyL5uFhHHPez6B1S4XVwcVUgi+kFXfeMO5Hp4V2vKbs=;
        b=c5KX7u4BJPjqF2OCpx72alDjsVOBo76q76eF1uzTCt1VeC/i9+6hfSRZDE/WxnHeXg
         WV1QLqkYR8S+M59P3tV5vHvFTbTJhzkIWHiETvy8PaUo7ZUvNwFemaCtmN3y+A59Ny0s
         9jUN1jfPix0cxtpjNXyIuEO9S4SYrbbpYFXI4VgNdnUyU09+/BxvWXOCK0CVKApPiFpV
         TmnR7PgOAphxuJyZXvXSMlQDaDbQYOGFHKwyr5xrp8EmBMmfv9exKpziz5o3AuhpLtEn
         NqO/pp7jZJ5Zcmv0Bw39SK8q7Wr3uc1T/0kR3nrpZqbWo7t338wHPazRU2IVnEzsz9j4
         C3AA==
X-Gm-Message-State: AMCzsaWyayxR9AyieZhfEcmGCqpRGslO016K9o/46cQevLciYvHBOyZS
	MpbB3LPanz/SM08GMfgupwjoMg==
X-Google-Smtp-Source: AOwi7QDypcGRm9SNxsMsG9zEz+GkS45ADFeyI5b3z/kjtoXblHFccwG8VmKyIHKY6+51DnQZAvuAVA==
X-Received: by 10.99.4.133 with SMTP id 127mr2219476pge.72.1507926940621;
        Fri, 13 Oct 2017 13:35:40 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.79])
        by smtp.gmail.com with ESMTPSA id s86sm3807397pfi.74.2017.10.13.13.35.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Oct 2017 13:35:39 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	samuel@sortiz.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH] Staging: irda: Remove trailing whitespace errors
Date: Sat, 14 Oct 2017 02:05:35 +0530
Message-Id: <1507926935-3552-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove trailing whitespace checkpatch errors.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/irda/drivers/esi-sir.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/irda/drivers/esi-sir.c b/drivers/staging/irda/drivers/esi-sir.c
index 019a3e8..eb7aa64 100644
--- a/drivers/staging/irda/drivers/esi-sir.c
+++ b/drivers/staging/irda/drivers/esi-sir.c
@@ -1,5 +1,5 @@
 /*********************************************************************
- *                
+ *
  * Filename:      esi.c
  * Version:       1.6
  * Description:   Driver for the Extended Systems JetEye PC dongle
@@ -8,25 +8,25 @@
  * Created at:    Sat Feb 21 18:54:38 1998
  * Modified at:   Sun Oct 27 22:01:04 2002
  * Modified by:   Martin Diehl <mad@mdiehl.de>
- * 
+ *
  *     Copyright (c) 1999 Dag Brattli, <dagb@cs.uit.no>,
  *     Copyright (c) 1998 Thomas Davis, <ratbert@radiks.net>,
  *     Copyright (c) 2002 Martin Diehl, <mad@mdiehl.de>,
  *     All Rights Reserved.
- *     
- *     This program is free software; you can redistribute it and/or 
- *     modify it under the terms of the GNU General Public License as 
- *     published by the Free Software Foundation; either version 2 of 
+ *
+ *     This program is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of
  *     the License, or (at your option) any later version.
- * 
+ *
  *     This program is distributed in the hope that it will be useful,
  *     but WITHOUT ANY WARRANTY; without even the implied warranty of
  *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  *     GNU General Public License for more details.
- * 
- *     You should have received a copy of the GNU General Public License 
+ *
+ *     You should have received a copy of the GNU General Public License
  *     along with this program; if not, see <http://www.gnu.org/licenses/>.
- *     
+ *
  ********************************************************************/
 
 #include <linux/module.h>
@@ -97,7 +97,7 @@ static int esi_change_speed(struct sir_dev *dev, unsigned speed)
 {
 	int ret = 0;
 	int dtr, rts;
-	
+
 	switch (speed) {
 	case 19200:
 		dtr = TRUE;
-- 
2.7.4


