X-GM-THRID: 6440502427589279744
X-Received: by 10.129.73.23 with SMTP id w23mr8499288ywa.30.1499546325030;
        Sat, 08 Jul 2017 13:38:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.23.135 with SMTP id 129ls15372649iox.0.gmail; Sat, 08 Jul
 2017 13:38:44 -0700 (PDT)
X-Received: by 10.98.10.153 with SMTP id 25mr5404327pfk.37.1499546324314;
        Sat, 08 Jul 2017 13:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499546324; cv=none;
        d=google.com; s=arc-20160816;
        b=EpaHHnz/o4HbQNRpIfwe7TfIZkTwCarKBLfHyoTDcmY6Wt6poshSf6eYls8PJemq4I
         sddg56sk0yTKkImwlFC3tm+PS6LKKGGRxrsdG1VhfMCTHE6udjbQtN/5Q9k0MendjCjy
         2QkxPhHqKS2xs+3s+O76bLbjWDJBVWUeeHmc5W/h38GBzEv9hHZbWVi01kg6kMEV+IUp
         SBnxJ8A/HqXrumU0P/KfNS0QUB5a5YhMOGA2fxUOlLFgbeUC1Z3/Gg/xGs7fDh+XxLZo
         XdTzXk3UXU6cf1EhWxlFM/ksZUPbmh22iV4g/mZkHUv8bOrG+jXm7yw56nx2KoB2RdHs
         zquQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=OLCMyhBKq9Hte6EU4+nb6/3iVMqMEmm2aYr3ukIlG08=;
        b=pF4KQiLJ/Irb3S3P9sKZ8T6pjimyKnxLWdX5SCu9gfrMcQPb2zKQN5fZUqxvxd6WmA
         7gvOWDDgECd1LVU0JJ60t/DqTSPkQIc2Qsz/it8aXEwd/Xp3DKJ/21IV8F9Seeq+y/OT
         AAHZkalhLLmfhJ0U3RlUrivjn+TLjnlFfPPGw0qjrJqSrod3Nf4nRp9gxJfWDHaD+2yX
         xFBv0yDvEgP/YTRh5e1/32n0EkNMVvONu4tA2CBt2bfwPEbWO2A26601910kLTv/mQ3a
         1y1Urw7ABXT9L9MMmox+7ufCDfiiiEzwoGMddCzhO8MKr27cyoVbstsweJ4+EU6H5+lz
         BgiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.b=rPAH1ky6;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id n20si1593890pfh.14.2017.07.08.13.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jul 2017 13:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.b=rPAH1ky6;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id c24so9169665pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Jul 2017 13:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OLCMyhBKq9Hte6EU4+nb6/3iVMqMEmm2aYr3ukIlG08=;
        b=rPAH1ky6xEq1LiRaTRpbuokM+CmZqwwd103JdocjubPnGXLOPPfiz0qXdYgdT6L2tX
         AFlhOh9e2MIqhhEJhmXmPVuVJ8AteA6jXnDDt43dOEYvVrQF6baBg7rAaehd8zylrSyG
         6hEkRzb82oNglz/WHHvkAwdOPbVo3GmIfJYN4lROUyFrEkkFMMwnbThKt49qtwVFgHGW
         2LypuxIci/mE649odvsUixHoNSKODpo1TxH1rZSkutlOmPM0u+113+gFUWu0EJE9xrra
         LICbt8MLrrYsUT/xTcE5pt/QboxPsje2tN6r0FJ4TSnjEp/T39CwolmL2ItR0qEoz7vt
         w/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OLCMyhBKq9Hte6EU4+nb6/3iVMqMEmm2aYr3ukIlG08=;
        b=uZkwI3dxX+Ii4SqdbiyjO5zYJHGfwinFh96ShD2fP1Tm6K3/UfJwnp+r7i6flgTDbU
         7I8D7HNCjPLZ1Tz26NmFSJ1Wiwj3zfstOEgXqVu4FsBRbiYSNbTGUCJmp6uDBaCFcWge
         7C92Bdl2Z09AteqhRwUqGrbA/FUmTI4+/+zZzMwllztleBd1nxRWG+tKD9CtiTMBdEJ+
         dQqRmgwdeEAuX9qJlXW/mV0aKFvQsIEK02X5bo2fBJO5twHxf9YpuG5VKrWNG7SAGOZ0
         +odWObQpVhIUWehT/XFGf5Y0toPuTQZuUc/Irn7ndlrD98AgMthi1RzK2gbO3J2IMrnS
         nKIQ==
X-Gm-Message-State: AIVw113d6eBu7z6eUVjXsHAAkCmiEybu3GIMw8qjfQboSg4WvjkNo2Zv
	ngdh2mjL6nWrb6X6
X-Received: by 10.98.166.91 with SMTP id t88mr38295373pfe.153.1499546323975;
        Sat, 08 Jul 2017 13:38:43 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([103.236.115.202])
        by smtp.googlemail.com with ESMTPSA id p186sm10908863pga.32.2017.07.08.13.38.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Jul 2017 13:38:43 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH] staging: rtl8723bs: Place constant at the right.
Date: Sun,  9 Jul 2017 02:08:26 +0530
Message-Id: <1499546306-4085-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Move constant to the right of a relational operator.
This coding style is more common for the kernel code.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 3c5cb78..01f78d1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -55,7 +55,7 @@ void rtw_btcoex_ConnectNotify(struct adapter *padapter, u8 action)
 
 void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
 {
-	if ((RT_MEDIA_CONNECT == mediaStatus)
+	if ((mediaStatus == RT_MEDIA_CONNECT)
 		&& (check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE) == true)) {
 		rtw_hal_set_hwreg(padapter, HW_VAR_DL_RSVD_PAGE, NULL);
 	}
-- 
2.7.4


