X-GM-THRID: 6667995620579475456
X-Received: by 2002:ac8:28b7:: with SMTP id i52mr25267772qti.8.1552513712427;
        Wed, 13 Mar 2019 14:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls1511348qka.5.gmail; Wed, 13
 Mar 2019 14:48:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzmL36xGEnrcRR+Tf243Cw4Q2sKEnaUdrlmhRL4+fvKepOPqm4U+5iaSQb/4EE7lanZIDeB
X-Received: by 2002:a37:7f07:: with SMTP id a7mr575206qkd.24.1552513711721;
        Wed, 13 Mar 2019 14:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552513711; cv=none;
        d=google.com; s=arc-20160816;
        b=FUWho9qeNJoFGs8EjRkqsvAtGBPtDiMNm1brmugI1FA9jv6o/iCdgzNrp+WJ2Ye+6I
         YqQsc1l76i8QY7NIcKXC9bAMRAQ6ttxbnOH9/SCABlxitNniyF3R1JTFcryT2gu22MDB
         caXHZRNfX74jqoX88jGuswUuv6sW1+AQyrNNOEUCZs4lPtWSmYYTX/31nJwYzgpzO2Hp
         0uwYWAhDmAD5ni8dg8+wugpBgPjG3PsbRBdvv+xFHNHhLEngc8jXPn2exb56rmUrIp+Y
         wsR5/me3yH09hriwlg2se5mNQBj/Xk0TPflqrfwphp+xMPFtIs7nZPHPLpj1h46AxfVS
         sx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ISywHpMSgp/Thi8t1aOV6ISxNJe2CATFelx2ZDmTbIc=;
        b=hx4X8bInfW0OB4th42CpkyCrHG/Or4haX/GVd9skWLTVC8sdTNL4nuymdmJnpnZrdJ
         FzvhcxIvqRHN8lonpFk+c9Su/AIEWHcJoFJHIivway+vFakGopfSotjMAkynooPiP+jT
         iqc9umllmSw1pYLoMJDwbkxQBgS1Ha/DEfnXmKLZZUPbcVUzgogK4UYWU/8zRDBLQ7gQ
         4GwaIqkVqpfQWDO+mVbgvqGKMXN1CFv+9GgdrFHtG6wyxkZyLC6UXqSPfXV8AOH84PMO
         VVI7YQwg9OrE/UL8pLBBOqmFAULKKwMDdbMq7j3WpTNgMRzNTy9Sf2bmr19RLK8VoRBp
         frMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AZdihZKE;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id e12si379588qtg.5.2019.03.13.14.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 14:48:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AZdihZKE;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd44.google.com with SMTP id n11so3269094ioh.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 14:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ISywHpMSgp/Thi8t1aOV6ISxNJe2CATFelx2ZDmTbIc=;
        b=AZdihZKEa6QqthjbK6TgnEnSZpD+jfxKp3TtZFJBkBTvq4+fBKTkHsJU81LJfEOHDE
         91A286uCP8TpZ304MrHFerZvxwtMErP3eF638hKlNDM7HaVjy9P+7HIBmpRWkKU2vM2T
         YMlopE3355faW3DOclJYrYAp4Y/bMksjN3qWZz65kiNSD6SRS6FGMSVXA7j1l+ABa+az
         D6Hs3NP6m77nfhanqL2Hi5wYEpjg6pZIOhbFR4XB53boeAR93CJ2NRYUH7Arz5T7WQha
         Fqj34TiIraaWHRqDoak+jR6F1h7EO5u2Bro6XYDymu4CrP1qRS9QQxZinnHPkNgVsCVm
         AXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ISywHpMSgp/Thi8t1aOV6ISxNJe2CATFelx2ZDmTbIc=;
        b=qOSwHISeJrz8FSwDysXkoeyeG9ve2iaTlEAAQEr6XUGDAKTc2xfju+aezPIzskTf6X
         AfemUBZoO1Lw8n8G/StJeCMzPj+ycRFsavlIXwPT9OVwAocPQfl62bWj4By1ziqHtv/e
         +imXpKCb49QMI34AqK081H+BmOmWrgo0GmwgkvsiY/+O4fSLIx9ktjrTPVjjLiLCQbIJ
         F//faTZnQggzmMKZK2kMu5t1VS6R7b5y+6K2vWNc0aqizRrcVZa+efV3qr+gCXb1/dc0
         5899q1bsY1YE1k7weOQrcZ2yQI87BAfiSoCCK79TxlGJ1V3BsKo69+8Ieib7N5gGZXFZ
         oPKw==
X-Gm-Message-State: APjAAAXogZQw6UGR8OaEmZuRK+BH0Kr5FC1hPXF9SK99NKOcb+eeo4hf
	fpbjNnkzAQ5b9oyk2FzeXSxdNGaq10ds
X-Received: by 2002:a6b:5913:: with SMTP id n19mr20383125iob.62.1552513711033;
        Wed, 13 Mar 2019 14:48:31 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:3918:abee:3577:8b72])
        by smtp.gmail.com with ESMTPSA id y3sm123587itb.2.2019.03.13.14.48.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 14:48:30 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: line over 80 character limit
Date: Wed, 13 Mar 2019 17:48:25 -0400
Message-Id: <20190313214825.7089-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Align Macro and function to prevent them from going over
the 80 character a line limit for readability.
WARNING: line over 80 characters

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 992ebaa1071f..7a36e82bef57 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -517,7 +517,7 @@ struct hfa384x_tx_frame {
 	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
+#define	HFA384x_TX_SET(v, m, s)        ((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
 
 #define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
 #define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
@@ -1369,8 +1369,8 @@ struct hfa384x {
 void hfa384x_create(struct hfa384x *hw, struct usb_device *usb);
 void hfa384x_destroy(struct hfa384x *hw);
 
-int
-hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime, int genesis);
+int hfa384x_corereset(struct hfa384x *hw, int holdtime, int settletime,
+		       int genesis);
 int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
-- 
2.17.1


