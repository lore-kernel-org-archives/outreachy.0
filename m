X-GM-THRID: 6339156207314403328
X-Received: by 10.129.25.211 with SMTP id 202mr6132401ywz.8.1475949819407;
        Sat, 08 Oct 2016 11:03:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls7029738otj.7.gmail; Sat, 08 Oct
 2016 11:03:39 -0700 (PDT)
X-Received: by 10.200.38.232 with SMTP id 37mr3617115qtp.14.1475949819102;
        Sat, 08 Oct 2016 11:03:39 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 80si3136860pfw.0.2016.10.08.11.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so3109859pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6pIy4+PjbF4mY6abMXkVrd3asy9fUWVq0UzvSaZfAAA=;
        b=oDutZlddBTTD8yOuPK+RLT0acn2mV4JGtfwlaBOCXmNJzfCm0ExVM5rCPDofx2J7rl
         fF7WpwXTMXCeg0Wn/c45I2mvd7Rk4wyVPa3LGtntHE2Ka5XNg7VCJrL0RMGDXO2azHo/
         Gp6XHVe25arY/4y/EOJoaVcp2uJ00QDjeVOfHvtTPjU0c8kNID0209iYQI06a5eJOeAl
         9VtzdjnQXINqMg8CfxuytMwKEydqQyIhR+GcUm9up17GpYgTRgB3NkYgcYE1+4N39QMr
         Nf3aLNaItZ4SZThlILsJuSCARP77o7A1Y4rOiM2I3t9G6rKOBlBUMlvGwba4BYabPOBa
         R/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6pIy4+PjbF4mY6abMXkVrd3asy9fUWVq0UzvSaZfAAA=;
        b=bWCEgR/To98FhbMIih0QxUxCCilKZMfIH5mMbsXFqBvaYFRaAJ6rA2+5qZgCqXIj0E
         43gXT+MXfftYdavdA8njmkpdaQTljACCP3zO7WjCPM6ByM/FU2pKBWRg4PjVtBvaQwcJ
         DgjbzOUilQshDA19L95D/1IiwhlGdd72GrE7L8NoLt5KvcYKyvC0WvyY3f1uHsJjPOd7
         oIlajiKXM4q2Nw1YPSn5NbYNL09laqxqxuN8yuMEkWop97HN7izhgpX79ftKKm2nurRV
         k/INfjcOw71Djmo3WU6wXhYg1THfp3RGl205iR5jks9nPiC8lfLFdNB89bD5facxqXcY
         tV8g==
X-Gm-Message-State: AA6/9Rk3IlxV90I3Tk14OzykThwTM75ro3m3sgJxDpDDjZL3fNGjwIsc43oq5ikAFY/CrQ==
X-Received: by 10.98.71.204 with SMTP id p73mr38738813pfi.121.1475949818896;
        Sat, 08 Oct 2016 11:03:38 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([103.62.68.129])
        by smtp.gmail.com with ESMTPSA id t18sm22777954pfk.29.2016.10.08.11.03.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:03:38 -0700 (PDT)
Date: Sat, 8 Oct 2016 23:33:35 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: rvarsha016@gmail.com
Subject: [PATCH] Staging: vt6655: Replace byVT3253InitTab_RFMD with
 byvt3253inittab_rfmd
Message-ID: <20161008180335.GA5425@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the patchcheck issue of CamelCase.This
is done by replacing byVT3253InitTab_RFMD with
 byvt3253inittab_rfmd.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index e739ecc..ff96c5e 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -68,7 +68,7 @@
 /*---------------------  Static Variables  --------------------------*/
 
 #define CB_VT3253_INIT_FOR_RFMD 446
-static const unsigned char byVT3253InitTab_RFMD[CB_VT3253_INIT_FOR_RFMD][2] = {
+static const unsigned char byvt3253inittab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] = {
 	{0x00, 0x30},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -2022,8 +2022,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		if (byLocalID <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
 				bResult &= BBbWriteEmbedded(priv,
-					byVT3253InitTab_RFMD[ii][0],
-					byVT3253InitTab_RFMD[ii][1]);
+					byvt3253inittab_rfmd[ii][0],
+					byvt3253inittab_rfmd[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-- 
2.7.4


