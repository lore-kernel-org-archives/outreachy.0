X-GM-THRID: 6330303746353922048
X-Received: by 10.157.35.244 with SMTP id t107mr7407874otb.2.1473966531641;
        Thu, 15 Sep 2016 12:08:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.72 with SMTP id p8ls3958788otd.48.gmail; Thu, 15 Sep
 2016 12:08:51 -0700 (PDT)
X-Received: by 10.129.105.6 with SMTP id e6mr7335737ywc.8.1473966531206;
        Thu, 15 Sep 2016 12:08:51 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1482195pab.2.2016.09.15.12.08.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so2560807pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=7ssVgO11KbWpAcZxm8iH0vppEiPsX/ASVQyMZjHwE/o=;
        b=lLHsnIRDmcaIxuv0QojaQjgKymCPAfTJ7qgIb/pZZdXpDxoEnL80xAuR8JVp7P1gCX
         DSL3VDVs4ee5W6+37aszLJXw5w2AyQSXJSyY3CBcBuJplU1qdzdHnuFvZ56zU8RsyVTm
         xKdSoBqdW8VDY3sDQlFZbGbEwsOqZNGek56j2r3MnUqvlvJxgEIB9WbJPfd+neqXux4Z
         cPnrtjzokKq56vPTAM8g5a6izSCCRUkl7iRN/VHvGAMx8MYBBoyNpiNpCecZrTZxl3dT
         Qykjji7gi1lwh25lwOfyBNVWZGgEVKF1k+JGKKcf7GhT3IZ7DRI2CSlDvTYzda6LLLfQ
         mfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=7ssVgO11KbWpAcZxm8iH0vppEiPsX/ASVQyMZjHwE/o=;
        b=Zk8sjHZHA7erDPxhIHPSuiNf8fqVMvE6zqffx9mabHFMdgQZzjYhhzswvHRPtcJaRR
         9RuZIfuYIjxUReiFSttHyzOFH+DyKR1TmolB/iEDXVbxOf6qgEO6w5lZ2L19dP5miO/z
         /CVl+EUuCv0EVhyJDKavL0KMh6BCvkM2m6jKBcXUD6QiZw5YSnqI0pvr9+CuyONy4ICy
         BsNn5E2JLu8B3NFfLsKSC4dksMzEoGyR3Rs5Ojw612sO2zxQUomNvgty+1GRr5QX3/C2
         Wv+3j+q3e61YkwXF8HgXjzKJfdHso2eFBtFkIxzFvhVWCwikG4s/uTPWaglpfiVbw4/e
         /iGg==
X-Gm-Message-State: AE9vXwOl3tb9kINBA06PH7x3anHQ1S1krg0eJ3RddXrRqYnTthkYmX3o18rRydsJqNqOBQ==
X-Received: by 10.98.138.69 with SMTP id y66mr16922786pfd.89.1473966530906;
        Thu, 15 Sep 2016 12:08:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id vy9sm6795538pab.22.2016.09.15.12.08.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 12:08:50 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v5 6/6] staging: xgifb: fix alignment for if arguments
Date: Fri, 16 Sep 2016 00:37:14 +0530
Message-Id: <d453bd80146bb2310779fd6d76c73073d258b039.1473965827.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>
In-Reply-To: <cover.1473965826.git.gs051095@gmail.com>
References: <cover.1473965826.git.gs051095@gmail.com>

Reduce indentation of multi-line if-test arguments for better readability.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 8488612..d8010c5 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
 		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
-				!(pVBInfo->VBInfo & SetInSlaveMode)) {
+		    !(pVBInfo->VBInfo & SetInSlaveMode)) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
-- 
2.9.2


