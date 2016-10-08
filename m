X-GM-THRID: 6339102117474598912
X-Received: by 10.13.193.132 with SMTP id c126mr5748717ywd.145.1475937226904;
        Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls7438358otb.4.gmail; Sat, 08 Oct 2016
 07:33:46 -0700 (PDT)
X-Received: by 10.129.179.130 with SMTP id r124mr5964633ywh.27.1475937226621;
        Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si6725780par.0.2016.10.08.07.33.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so4226859pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1UXpCWnzZ6k6/82tJkiz4vG4Bq2SUmkzTASbNNgrKjg=;
        b=JUUdOJ8jkvOSb0Y6pF6lp6tuSlzfKmMY+zNPZirtR3dGZYjP40LWBmgn2ipXADtMog
         /aIXSPJnVJfhwzzOzFcEQi/5rKbpibX9ezOVlRbVTSn+vsD3PomtyVOB9w//CrTxxfVW
         ykZe4MfGtMSpRzOPWccoZU0Ifq94DOHtkemoVo75aocLmwgdUXs8rAvZg9OfymMsrM8d
         cbEiMtlTKNsSx0kfBdGTgmIiIYnX02+Ex68sWWrjdhrN8EVKOIMsr/fR4x9jWuFnG08b
         nmVKfE5Artnb5uG3VFhejQYiwDL/P0UF6aYLSJUbklc6KJVN29wLPVOnuodcs+cE2jnh
         KX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1UXpCWnzZ6k6/82tJkiz4vG4Bq2SUmkzTASbNNgrKjg=;
        b=Kz3NoWIHUnRcB8Ja17wIBNde8hCeSQ80ZEHFjxZdHSv7vvu3J1z0AsMe2DWgY3Cm9D
         4WTP9ZjOXNxLHdudWUOFe5goDs4OhX/uyyE1tl+Ch3dSBevfGleWvRlBjv3/hy2ACufU
         npuQAMQtGm6aicVej50nuNKEVymgFt1RWP6YfPA2gbUd8a0SaWL+jldAwElr1n84UtxT
         ngR5SjwknMl7AVw+rVjg7c+zysUVG12tQ+3V5PgiTN+CyW72SNB/0zL3vzXUsV64QVLr
         tSZ/GH0v2Jlj07fVpe7rat37DfLjAMnrg8l1n8Ulj0ppmG72JD9+Nf3DQiqesjV0oH9V
         9+Aw==
X-Gm-Message-State: AA6/9RlwyqEw6Zv5rgQU7FsI8uP5UJyKLfuh4E5mpsCg1NNZWKTHp7+U6D8KlOALMG10eg==
X-Received: by 10.66.21.137 with SMTP id v9mr17190735pae.100.1475937226441;
        Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id id6sm38880528pad.28.2016.10.08.07.33.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 07:33:46 -0700 (PDT)
Date: Sat, 8 Oct 2016 20:03:43 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: rvarsha016@gmail.com
Subject: [PATCH] Staging: vt6655: Replace byVT3253InitTab_RFMD with
 BYVT3253INITTAB_RFMD
Message-ID: <20161008143343.GA12126@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue of CamelCase by replacing byVT3253InitTab_RFMD with BYVT3253INITTAB_RFMD.

Avoid CamelCase: <byVT3253InitTab_RFMD>

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index aa57cfa..b66b854 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -68,7 +68,7 @@
 /*---------------------  Static Variables  --------------------------*/
 
 #define CB_VT3253_INIT_FOR_RFMD 446
-static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
+static const unsigned char BYVT3253INITTAB_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
 	{0x00, 0x30},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -2022,8 +2022,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		if (byLocalID <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
 				bResult &= BBbWriteEmbedded(priv,
-					byVT3253InitTab_RFMD[ii][0],
-					byVT3253InitTab_RFMD[ii][1]);
+					BYVT3253INITTAB_RFMD[ii][0],
+					BYVT3253INITTAB_RFMD[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-- 
2.7.4


