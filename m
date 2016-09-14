X-GM-THRID: 6330303746353922048
X-Received: by 10.36.213.138 with SMTP id a132mr7138687itg.10.1473888711419;
        Wed, 14 Sep 2016 14:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.231 with SMTP id c94ls1976843otb.45.gmail; Wed, 14 Sep
 2016 14:31:51 -0700 (PDT)
X-Received: by 10.157.9.206 with SMTP id 14mr1176310otz.0.1473888711038;
        Wed, 14 Sep 2016 14:31:51 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si1625303pfx.2.2016.09.14.14.31.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so1276247pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0/weqdjxPSzgJjTL0YuJ/+O631BHK81RsXyh7DcB+8Q=;
        b=VHuQIk2LF25P2bq/S0LWRuOI9LM+ub0A4O0pwPqlux27JjkhksDW/sIV73hdCmDtJ4
         XTEMgYVDwkW8cVlSYfbEyig54klUCPNStEg4RXPLM+PT/3qSU8Wm2VVktasJvmNVoZFg
         ChBcnPVAlwo8E+XHKL+BCpEi+fxLnASU4RcFY/nN/W5pau/QR3feUwyJzfW8iv8dga0R
         4tlTV/SS4lKZuCYyCxlA0todiOj8P5V/g8z4XYvWO1Y3p+AVrx4xaBdvbwxHgfbla0tG
         wve7DkpH9+cFZnjuaKw4wJhC1d2fd5O0uLLwxzBLjIdqz5PiU9OWbQ1HpALkh2lUP2kR
         Q4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0/weqdjxPSzgJjTL0YuJ/+O631BHK81RsXyh7DcB+8Q=;
        b=UlDCZjgK696Jtg1p0LXsjlpc5m5EybJ2YmpXDvrkToKe3GJDV+7hSlbN4OF9gqyBAj
         Sxde5oWHkzcE4O/q4CXeDTjzZ1Q0R1JdCFMCyWfn/sYxIH8c5tgZ78B7064VByg7cTwo
         DH3Ma7HovjzfixXG/Nw4wyETkI4j68kOhCKXHjrSwj/lhNqRR/gxWcQ7yBEuyC9RJXjT
         E2LlYp3T+bfJoPRHPafCLg9YfGWGkLq/1VAxK0GotMSXkaqg+ysLI3Jm1bZZQjRYJWkX
         wWCKEuKlxbx2X98WjOVsgbN/GWCMcSVX5e0g/dMxbRQS1nMIEk4orWlgmf9sQwtOR+6k
         F/DQ==
X-Gm-Message-State: AE9vXwOdWIIN4o5i9Z+d2vuLIZqPEFApKgFfREwn/7we9otC5g34AfkuVnr3LzTuB4RG2w==
X-Received: by 10.98.150.10 with SMTP id c10mr8519378pfe.73.1473888710622;
        Wed, 14 Sep 2016 14:31:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:49 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 6/6] staging: xgifb: fix alignment for if arguments
Date: Thu, 15 Sep 2016 03:00:43 +0530
Message-Id: <35059e3a8fc71def1989e2b7efc323d95c8800a1.1473888417.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>
In-Reply-To: <cover.1473888416.git.gs051095@gmail.com>
References: <cover.1473888416.git.gs051095@gmail.com>

Line up multi-line if-test arguments for better
readability.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 8488612..068f422 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
 		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
-				!(pVBInfo->VBInfo & SetInSlaveMode)) {
+			!(pVBInfo->VBInfo & SetInSlaveMode)) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -4132,8 +4132,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetHiVision))) {
 				temp |= 0x0001;
 				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
-						!(pVBInfo->TVInfo
-								& TVSimuMode))
+					!(pVBInfo->TVInfo & TVSimuMode))
 					temp &= (~0x0001);
 			}
 		}
-- 
2.9.2


