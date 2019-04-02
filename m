X-GM-THRID: 6675392771398828032
X-Received: by 2002:a5d:9a0d:: with SMTP id s13mr61029iol.26.1554235995828;
        Tue, 02 Apr 2019 13:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:d06:: with SMTP id 6ls1307764itx.5.gmail; Tue, 02 Apr
 2019 13:13:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRf514EM9jLlD3Mg325DNBPdgRvo3bOgHqN03NkobaJ3KKJb3ttCe0h9VTsS5aP0WGxllk
X-Received: by 2002:a24:97cf:: with SMTP id k198mr8752548ite.26.1554235994875;
        Tue, 02 Apr 2019 13:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554235994; cv=none;
        d=google.com; s=arc-20160816;
        b=FeEDfALF7TEdEeqacxClkKDkIYtwHbqKptgKBKxKZjIE/FXhhQ68jFZVBCwZDAsNEC
         CnmGYa0F+vyfi+5J3ybXtJ0XaXadby+iCRsj6M9dVPNzdat+jWTles9PwZggr6aejxSM
         N8GK153U7OyE/TMhiYwO60vqCsIODd2p27UMFVTkXqAKjBeDJgPP+tYSl/miFouwgZbp
         vBOuGTE1EtnNQQlI7hObT/U8bosqzf/Bk6dqDPbUsXf+qgntOYI+3+XZkdpilfTiqD/A
         0BWk2Co3GdhiwVW1jW7M5npxoamls1mOAH2xN/LkO/Lg0HPYUexMm/fA1tj77rcE3OD+
         rDWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=GFTzbYLUlv+T3uVCT+C1do1yfJA1IK9PHNj9AhmjqTk=;
        b=BmEf/CnetP+9VeYE/Yps/C6/FBQiixxfe/PuZuU1+svEi6no/xhziAXZk4JMAqExn9
         RtqTfFBenVciJteOJ6/omwcLj0x/qPTmX8VeGTlaJb8ONh/GcQ3Lnn3FJar1EtoMUpkB
         fddN0ElGZzIUPHT96bW1mJfZheMGOOn46uFX28o+NZGEYW3wCf3E1AaliVh2rpWaxz9C
         48fTWgcqwLRPGaF8xJ5hYHxGZqMNcF9NfJFnwCXP9nCVKLlxZuhTruZSttnNavybwGf2
         JhA60b0YdSS+MhHXdXnxV/ZvSGEgHIvrcYSvjkCBl8cM5XP5lf6HUctwXKgxkD8VeCtX
         ZyHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=iyRgPGiw;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-20.consmr.mail.sg3.yahoo.com (sonic314-20.consmr.mail.sg3.yahoo.com. [106.10.240.144])
        by gmr-mx.google.com with ESMTPS id f13si659102iok.3.2019.04.02.13.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 13:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) client-ip=106.10.240.144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=iyRgPGiw;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554235992; bh=GFTzbYLUlv+T3uVCT+C1do1yfJA1IK9PHNj9AhmjqTk=; h=From:To:Cc:Subject:Date:References:From:Subject; b=iyRgPGiwNgrZ+GCivsoqtPK85WOj5QTxFvRl2rP5bnF81KMJgoHltqygEyPoAmcfmPDaA7dVAK/bLu5UsxM15CGaTu4/5gLMiBPW88vuIqWXoD99nYHxwAiRCHWds3k1vuXTXkDQayPSSb0HHggDXpqHeHiU2I6u/DiuRd2mRGZbllcBAWCR4t+nmTpG42NBufwjoG4e4AeNR+9h6KT8t5Pft6WnZo2Tk5qbyTlXK0OpVQYy1lbjD3AeTqXtvxUaG4WLiFSnwuMFxAjGRiVuWSzxtPM+y/DYBQl5FFBA6uhRlnjqmdl9eX2HqeP5PQG/IuDBbVNiDLUk1wX2RSrzGg==
X-YMail-OSG: H.XIKSYVM1lKGY8WxVB.TuLbMULGdtcpdDU2760EVBDAY_E34tLaAOvkhmmwRZs
 wzEkdx2_wl9iIxFv5CfK8HwV7nS3Z7r1YjgGzUkh4d8bXuFbn8xuGE3.mY6tZGtFl9ViSN0yM9wJ
 uvV3uz2Jdq5uTAmOZPmPHCSnkuS1G42ajz58XENB3Vp7QmScrZ.yQHocQ5IATKAYJefYaAT6ZaEJ
 SEzv6h5JHI6uuTUq87FRpA2C4s4M34vLQiDRvHEhw8D2TeAiMGPyk28hLymZar3RSgvX6pTpiFV6
 cZWTQRInr4MappOp3tbakPL8hf2KVPWrPrz_EHa3fUtTNQ9.35punv5mh4vahrPG9RnwUI1Y0hcm
 s5kdaeZ3dd00oPGlQYsQpInQgLTg7pvlx7dEBhvw1dSQ3BI.gYEFXjvp4Vyw7zc.2ZBJRkx0.k1a
 6JO6Bi314rWFVQYrxXjQMM0DFe5_yKRf3FkDjMmwJtipkdXp4UhGBSXZiHsZTECOKbAlXDetm0os
 zmpzF.qEwthuDQF79pmNL9tUGi06ftig.9KfreT.vM_6ZqU.DgcJdovGOVm_rK.FwI5_dLBMcqv9
 QEwtxzsGxjOVI8GMUhiATiBOIzAqmHQKzykJVnuPzBftR3dI2EFEAA1i5VuRsYLGGwLvnLfqZTQB
 mRFps.yQlUH5ZMqoHF6nZXAF3VEGhZu171nt_LAISMcErRqqJ18kHHOT_3_z1WgeG8Sq96qbf9hG
 .vn_DDRRum4pyr0MQU_1YzAMrK7CdAke9kpbJD..gjchBre7zXdMvhKF4j.BS.d5GXpfnUttz7Bw
 Tw4BnPBCy6Cq3YRIrYN5KQCZ0Cy2U702Be5XyKhUQaptB3b3KkqBvBmYEE_.eELCdXJLL.LvQlp7
 RGlNLGMsBTcOJLPTmbGUtxDA_qeC7gKsTKWRfr0E_AYhGOeXXK.7oIi2pZHYBMURBHxMeeztzZ5Z
 arlqrBbRnPep51BXirxu2WXWXlJzLcVkUAKx.kewDxHtNx4UBq52GQ0LCkH5WjDTzHxcPMuNAu1o
 Q3.aOXwLFMH1oilY1NIVIfvhUz0Niz_MQH4bFddcd0OL9aXqdtQxIFu0iYaLHqur6FkCwKJXD6Z4
 WNX9LouOhQN6_BBqaIOc_lr9gTFIjg4B8Zl8aStfGzwI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 20:13:12 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp401.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID a4580f33ff5a18b1b6b3fbe517e41c55;
          Tue, 02 Apr 2019 20:13:11 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: media: zoran: Remove print statement
Date: Wed,  3 Apr 2019 01:43:02 +0530
Message-Id: <20190402201302.3317-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20190402201302.3317-1-nishka.dasgupta.ref@yahoo.com>

Remove print statement following unsuccessful kmalloc. Issue found with
the following Coccinelle script:
@@
identifier e1, print;
char [] c;
@@
e1 = kmalloc(...);
if(!e1){
-print(...,c,...);
... when any
}

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/media/zoran/zoran_card.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index ea10523194e8..ea7102c56d6f 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1131,8 +1131,6 @@ static struct videocodec_master *zoran_setup_videocodec(struct zoran *zr,
 
 	m = kmalloc(sizeof(struct videocodec_master), GFP_KERNEL);
 	if (!m) {
-		dprintk(1, KERN_ERR "%s: %s - no memory\n",
-			ZR_DEVNAME(zr), __func__);
 		return m;
 	}
 
-- 
2.19.1


