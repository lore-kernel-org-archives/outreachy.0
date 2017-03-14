X-GM-THRID: 6396244306305220608
X-Received: by 10.129.1.197 with SMTP id 188mr18092326ywb.3.1489517019414;
        Tue, 14 Mar 2017 11:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.23.2 with SMTP id 2ls180134iox.29.gmail; Tue, 14 Mar 2017
 11:43:38 -0700 (PDT)
X-Received: by 10.107.173.70 with SMTP id w67mr363712ioe.69.1489517018404;
        Tue, 14 Mar 2017 11:43:38 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si3760399pfa.4.2017.03.14.11.43.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 11:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so20171249pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 11:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=98W4yPz5BYr/NRNmxgU+E4fVV8Dk7QM5tu6dI4vCZSg=;
        b=YaK+5dj8Z0bmHh2ensZ8pJilT0pBAKkIouyFHTkmxeRwaDYa513HHL34a8+mGeOI+5
         dViAQuB0Xm7AmWwkdTIOClHOg/zC0WDYVweCK4qI52D++ZwkizNv7kDKPIQKDmLpRAan
         ydR5Obq8UPsoqcYYWPZmMObl4I0sKgwLbyUz6GOr/b4ZCDLkXz6mpdMoS/rBThSvtmAB
         L8RrQjwFAosvPRQO4CoDv4UbGHki6MOJf1eLtLolDdzMtYSao6EOVEjoqlJgLPL1pLns
         wDMKwkfCkBPHj63WeC/nwgDSTgDBy/TPO7QpEeLJW1ZzvlYmSX7MXhwmBkDd1eYzg8SG
         zZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=98W4yPz5BYr/NRNmxgU+E4fVV8Dk7QM5tu6dI4vCZSg=;
        b=ilRPKTS5zUzrrL4jHCfq1kyMr5FXo2tIO/Sp8YApvqV1NVx41gw2j+ihbzhfiBjSSE
         7oIoeivzuPaEMuxAbDRljKSbSWA/6StaYHsX3JhLeSkvLrJnFPPey06AYAOl/feScfU3
         fy1FC2JGdsL65ULKViR7xKtY2oP+WnrDUStv+MSQIIP5i3+yB2ZvIOTiuqlvOjlCPGxh
         LfvwFfSHB2Hh4bMCYQYS+xfYmJf0WgEg+j7TqNrsUzURQ/+uluOTNUmgaoimoscQCjJK
         rYePlDYvilUseEBH6DGVimy5x/FPmv4taCkgZ1/SCnWdhze+dGt5JOEdnbpCMRKR2Ry8
         lBEg==
X-Gm-Message-State: AMke39l3RD5BlkUpXbGoPHQVeg2VvtKExZQw4nvPUZms4PeKa9Ht1aXunz4gk4gMjgs+og==
X-Received: by 10.84.253.15 with SMTP id z15mr58494954pll.142.1489517017912;
        Tue, 14 Mar 2017 11:43:37 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y184sm40177102pgd.45.2017.03.14.11.43.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 11:43:37 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: rtl8192u: Remove multiple assignments
Date: Wed, 15 Mar 2017 00:13:21 +0530
Message-Id: <1489517001-26765-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes multiple assignments by factorizing them.
This was done with Coccinelle for the if branch. For the else part
the change was done manually since Coccinelle only detects constants.
Braces were also added to the else part to remove the checkpatch
warning, "braces should be on all arms of if-else statements".

@@
identifier i1,i2;
constant c;
@@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
	- Fix odd commenting style.
Changes in v2:
	- Remove multiple assignments for else branch as well.
---
 drivers/staging/rtl8192u/r8192U_dm.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 5a07e7e..623d495 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -725,10 +725,15 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 	} else {
 		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 
-		if (tmpval >= 6) /* higher temperature */
-			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
-		else
-			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
+		if (tmpval >= 6) {
+			/* higher temperature */
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		} else {
+			/* max to +6dB */
+			tmpOFDMindex = 6 - tmpval;
+			tmpCCK20Mindex = 6 - tmpval;
+		}
 		tmpCCK40Mindex = 0;
 	}
 	/*DbgPrint("%ddb, tmpOFDMindex = %d, tmpCCK20Mindex = %d, tmpCCK40Mindex = %d",
-- 
2.7.4


