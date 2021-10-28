X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:6000:184c:: with SMTP id c12mr4503876wri.127.1635417366254;
        Thu, 28 Oct 2021 03:36:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4e85:: with SMTP id e5ls3128177wru.1.gmail; Thu, 28 Oct
 2021 03:36:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaI1N0mtOPEH+7cI7JpiZ//dyo445+amS9TTzPE7HYK1CFiu591d+letqUNA00A74UnfGk
X-Received: by 2002:adf:d1eb:: with SMTP id g11mr4607570wrd.16.1635417364926;
        Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417364; cv=none;
        d=google.com; s=arc-20160816;
        b=sUvgDmW2UCK3t2sQt0iR6TtH4+GxO02P2GUv26slHwNofuvWz3JURBfzDjKXkbgvcb
         TRcL+rKXcmr7GAgD8h8Ut+s/mSepwvxtqxYjJD67uCCElHzipQoZ3CwwGUS7nY1wCdIL
         DZ2ydUYMMB4tkBFmN6aIrLHdxnff05EzllDsBUfZRB2bIMcULgxFkyXBrQnM2AmZlC7z
         siWXakN50aJj4CBXe12p3fmcg9Ix48Ggdb8ztyLxofnXfGIWaq01Vy0FZYMrEKVCG8ZY
         urvyk77/LIj6Z833UnZSaIzgFyWiIgW3pdEV2Gjqgdb9Ked6M65JDeYPYmfG10qYQkJb
         y+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4Qso+1ON4rmrX1jJtTceQDXho/IqTPAJlT6pz5AB0mo=;
        b=dkwzzExm4MNZOeS8KSdxq/zfbzHTUsc5KK2ayuH98Qr6ATkH63TCh6W3sOxx0k3HWI
         eVhD76QnDXvZC8pMPnrYhje5IRdC39wJ12JZ3fGodgFw0H24MY/3L5u1g6hNzumOcuCZ
         h6VCFuCVc3vCjL1Zzkd3Mc/i3N11Flp57mko+8ooOSdTfJNanwWTLdzNfI9IiP3NEwUn
         /toFkadEjsJEGik7oPHVjw7tZHFK89r5d4LChGrbRAmhKCQIdyCgDoVr4wVCLJoJQ2y0
         L8edIcJRU6Y7Pgyn3YZjauLgXzTE3rzuob9CI1f4reDWRCVCeLXp1EUujMWd2MM/787j
         GZUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JuDRzGWX;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id v5si30200wrv.4.2021.10.28.03.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=JuDRzGWX;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id 131-20020a1c0489000000b0032cca9883b5so7592025wme.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4Qso+1ON4rmrX1jJtTceQDXho/IqTPAJlT6pz5AB0mo=;
        b=JuDRzGWXJdwZnwyw9y3XuVYfdz9VmYyIut/q4Myqdp3crHDY9XEp/eNxGhslq4+exG
         4inLg7hkdi2hYEmQ0nicHhrvVC5TagslJf4PyfHnVkYeiYbyvO/sKmepIpC6EW6vrWyz
         iiwmEkT5J4MCTO5t83XOV8Ew1gr8w1Hi/IOh2GKNcWs6r+Gl6TecOn/w/psoQZoMVs9n
         7zvXFAzoPdxxUfqEMmsfk/VNe6u+hYhV7RlCcuUUOpW4ft6zogpfUspYUPAXh3MkAEsw
         x1BKCw6bmTyahZPmdz9P/ZMUdciHFLyenLHP4mOediicetow322D23uwFmDQ3E8x8hNz
         lpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4Qso+1ON4rmrX1jJtTceQDXho/IqTPAJlT6pz5AB0mo=;
        b=4u05eSTPX2wgRG6tZ+BqqwoUm4GPH2G5xmeO5dIg8onPtj0dbaVuQyYjrOVqsXz47Y
         5PYcOkp38aMCPa5lIAF4IiIOB+VgrvmGUcwLxiHW55oPEyWv1RDh5meMtQp5TogluCIW
         NQcixpV5ovfgxe0PMcy4GmtaT27hF6pmA2IwIT1aRfOI1NNaXd+TIh2/XaPKnEKOYifk
         SvmEZvYtMgMOBy8yxvbjvhOoxhPYvXSM+MNLLPXL5rZ86ureUh8vyX2aAVUiS0NIQSjb
         k0t9KsNqbDYJz5UwYki3cHEmslM3E1sTLnniQalxMqMHJgN/xK441sOdeNt99Qr0rCrs
         zOAQ==
X-Gm-Message-State: AOAM533ZO7egSjLTHztYlECCcL4IEgu0Wh6ZGYhr7XqbClEKm+XVg8Oz
	L/ySz0/9TlX3pLAr/ngDdulARdXGG2xXTSHq
X-Received: by 2002:a05:600c:ac1:: with SMTP id c1mr3464003wmr.99.1635417364756;
        Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:36:04 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 7/7] staging: vt6655: Update comment for `rf_write_wake_prog_syn`
Date: Thu, 28 Oct 2021 11:35:37 +0100
Message-Id: <353aa2ea26c64adc1d591a1fabdedd3d27cce3d5.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the function description to include the actual parameters.
Update the comment on the return type.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 7caac1b44a68..fb31ec70c019 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -669,11 +669,11 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  *
  * Parameters:
  *  In:
- *      iobase      - I/O base address
- *      channel     - channel number
- *      bySleepCnt  - SleepProgSyn count
+ *      priv        - Device Structure
+ *      rf_type     - RF type
+ *      channel     - Channel number
  *
- * Return Value: None.
+ * Return Value: true if succeeded; false if failed.
  *
  */
 bool rf_write_wake_prog_syn(struct vnt_private *priv, unsigned char rf_type,
-- 
2.30.2


