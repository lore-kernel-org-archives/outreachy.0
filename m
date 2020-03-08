X-GM-THRID: 6801914668251086848
X-Received: by 2002:a17:902:61:: with SMTP id 88mr12623000pla.313.1583694170945;
        Sun, 08 Mar 2020 12:02:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls3297782pls.6.gmail; Sun, 08
 Mar 2020 12:02:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvNp+wnV+Z4uTKz1w0xJBuGQisbG41ocxfSouXOMqFM/WoGbkokJM/XkUrWb7kLJU30opRB
X-Received: by 2002:a17:902:8bc3:: with SMTP id r3mr12834643plo.220.1583694169680;
        Sun, 08 Mar 2020 12:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583694169; cv=none;
        d=google.com; s=arc-20160816;
        b=aaTxyuhQukMdCRgvIFNAX62g/KVXELGT6X4kK8DSZguty7cSi0UApqgI24SxCrl67s
         MfI7MZ66U1hoSGDiMGi1WNC7wput5lipGG5CTFm966SNxi8nxNLryg/hYSqx/VT4OF3e
         xD8X+hdhiYoef38qGDWdwx0u9HUEQnwRxHygASTQh0dpXLRdY+JBT0u2ZG6mglkxYG8E
         H5qc9kXuR86Zz7mkSIK58gzk9GUmtsBvitP2qTbh/d9Rpe/gZR5D7cf8ymDBFFXgDsdB
         IEvlWFw8DbdTQUp0eypUNy1fNmJjwX3CWmyskRrOQSFjD9XxGc+rfJjcLIuWP97B+Idq
         OiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=FKbc/sXSEPPEqBp/KjqVRXdVIz5wxdl7bjtkoAxS7dzuihYmfnLH5ziqjd7//NNi8P
         QR09KzErfx6qw8g00sPMl84oOct1d8wVPz7gYVVidRKWhOx7ycEfPXcx4W6Rc5s62Rts
         DYi4zrutkxchMYtE6z1vJbMI51XoE71Eoos4znpRWw8lSGPjdYS1NsFOJcS/LVW5J4GB
         n9TpT/vuNFZuVDecGrEm8/4aeTk+yAeqQzU58boN1gOJyF04nxv9fvMFHGJyV5isBNgZ
         WiEZZ+rdl8eUUMW/dqG/rmxJMFf19pa9M/oJnkxKSah1OOX7x6dP3BaEiRw4W83QNC9K
         MNTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PcxpdtbD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j12si628408pfr.2.2020.03.08.12.02.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PcxpdtbD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id 39so282593pjo.1
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 12:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=PcxpdtbDGBZDXQI8HE10/39LqJMOiA8wy7VjnQjjFzd5u4gCjSdgU67KJcudSfrm/v
         180NhFJfDzEc+0SE6loyn/yKvmPzEfEafAoVG3ndzCEOZCMD4Dth4kliuqRRwwiX9cFx
         pw0+00BKwiNgnNhm/NLVsxLTw3uV7B+KDpDRq10grxBOX7gB+LBiMNOTaIQBDOl1yh9h
         WNRogoiTfVBOpb2DgJ+xFwjjpMBBZSLIt3HKiRxEamePKN9qcb1XKUidq04H7HzRIkMX
         ieA5huVV0jA2TtDuNQX0vMOgjxZceiZ++I2oJ7f6gIjUBsmUZZyA4PI+3urSGltCQv7R
         M5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=l6xan8gGLmO3iAJKjqyhUjQQWlLuhw0mQ78sdlu7BdFx1KVMBbqeCEM8UYgWp7Vpiw
         TsLQviETkDFh72PoId2c0bgHsvGKfBJPyv2yC14NPTazTdicYIMioh3WULqyop5T+teL
         gB5z2NRxQOTK1NR+y5HKC+JLO96I7s+lbpMgGusnt7gKyz30/FuPn9rbvSo/eExkbeRy
         4ddYbwLB56AeRchZlRux3nC9MgF3/kafMbVqF3QS51OkGT1pYMyAnbpVuCFk8BEN/UUo
         ri5+eKrXs0dLVjcL1yO0HB1pu3mtOjMHt2JCv1ZE8+cJnhrOt/GXiJJ0QH1TyFOjh/Ks
         PnXw==
X-Gm-Message-State: ANhLgQ0v0YcnC1u/opKQRQj40UBARoNLS75TaXY8FACZcQCqvVN1A9nE
	el60YM1drRaxaQwWDvCSWPF6BzyC
X-Received: by 2002:a17:90a:2509:: with SMTP id j9mr4529039pje.122.1583694169343;
        Sun, 08 Mar 2020 12:02:49 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id b3sm15866743pjo.30.2020.03.08.12.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 12:02:48 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: alignment should match open parenthesis
Date: Mon,  9 Mar 2020 00:32:42 +0530
Message-Id: <20200308190242.6062-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Align code to the open parenthesis to fix the alignment issue.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/vt6655/card.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 25867cb9d13d..337266add6b2 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -63,6 +63,6 @@ bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
 bool CARDbSetBeaconPeriod(struct vnt_private *priv,
-			   unsigned short wBeaconInterval);
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


