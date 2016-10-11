X-GM-THRID: 6340117790372921344
X-Received: by 10.31.136.15 with SMTP id k15mr654225vkd.39.1476173705941;
        Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls1042408ota.0.gmail; Tue, 11 Oct
 2016 01:15:05 -0700 (PDT)
X-Received: by 10.200.50.52 with SMTP id x49mr683499qta.45.1476173705489;
        Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p70si315822vkd.0.2016.10.11.01.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id b75so2290045lfg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dXvKr3MYo40YCjs7tOKKBGgaXsxIXuD3Tc4HTbJceSY=;
        b=hAo4fENKfxxVMUTe1CWrmG8NT0EZogDCjWrOraXxPfmAyovB8Gk1EgLOUiPnGPvNDP
         O0ml3H/+0z05r2S5JXF9eZ1blI2wBABiuryEZ4pH/av7kqkemMEWOG5VamBQzr8O7mtT
         xz30BDe3N6DOcUYpNFiOYTGa+7thWwVjunVz88IXmncl+8ocLFGXCK9TOnhTgShTDTiv
         FDeBBgAp6TilQsRWLrMg8Ge8EiPVXalb9Xigz/dTgWnjQMCpnErLd2ovrGd7MneXwfXe
         FOQ5WcH2o9NxRuGYCRt6vDlBivL/Af1r5f/fMDkCsBqqUWkl3ciTNQkdu2+nPteZVha3
         Jvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dXvKr3MYo40YCjs7tOKKBGgaXsxIXuD3Tc4HTbJceSY=;
        b=LyRLp3ZR4xLNboec3ZqDPNJBPwB7g5ERnDHbtNr8jK8dpZsmbkMfJfYd53jAVpNcIP
         E4jeHRvp6m7N1me14cvpoFW8NPf9O+C3A68FNKaqN7e+YoIR7LTLzMxPPvV6uuS3XLH9
         g2Std25JRykZPJoBuqbhp4VYmbG7SV0Z/DvsyhrVyL7nfeWBROijGghpaFvk04YJMay4
         GKxH1TZUnl9JqTPrRLmEGsWvlFgQKHb2XadIH+4XWWQrxpoy/z5VXJ2CQc9z6xyuttYJ
         MZdAlf1gKa2UJfvWHAS9AKqj8yUFm27sPhEol2naIEUP35bwlnbfZWgWp18TRzS9Ldyr
         yWog==
X-Gm-Message-State: AA6/9RlZfvGTrfgija9xVfv0DksQtodBtyNFsc+DN0IoQXzqX4w6zgxwWwKd9PiCVxWDxQ==
X-Received: by 10.194.172.41 with SMTP id az9mr3175467wjc.105.1476173705063;
        Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id va3sm4334075wjb.18.2016.10.11.01.15.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 01:15:04 -0700 (PDT)
Date: Tue, 11 Oct 2016 11:15:03 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: lirc: Use unsigned int instead unsigned
Message-ID: <20161011081503.GA12264@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a WARNING: Prefer 'unsigned int' to bare use of
'unsigned', found by checkpatch.pl. By fixing this the types of the
parameters become more explicit.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/media/lirc/lirc_zilog.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
index 3551aed..34aac3e 100644
--- a/drivers/staging/media/lirc/lirc_zilog.c
+++ b/drivers/staging/media/lirc/lirc_zilog.c
@@ -1157,8 +1157,8 @@ static ssize_t write(struct file *filep, const char __user *buf, size_t n,
 
 		/* Send the code */
 		if (ret == 0) {
-			ret = send_code(tx, (unsigned)command >> 16,
-					    (unsigned)command & 0xFFFF);
+			ret = send_code(tx, (unsigned int)command >> 16,
+					    (unsigned int)command & 0xFFFF);
 			if (ret == -EPROTO) {
 				mutex_unlock(&ir->ir_lock);
 				mutex_unlock(&tx->client_lock);
-- 
2.7.4


