X-GM-THRID: 6801914668251086848
X-Received: by 2002:a63:3d44:: with SMTP id k65mr17762428pga.349.1583773776942;
        Mon, 09 Mar 2020 10:09:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls3648495pfn.2.gmail; Mon, 09 Mar
 2020 10:09:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vveFWOsXZD1WmOum/tUmwUk3PexrTwj8bZZ9821eLXkdYDdtWzlvkSzCB2FKYikInoBPaL+
X-Received: by 2002:a63:5709:: with SMTP id l9mr16079998pgb.1.1583773775578;
        Mon, 09 Mar 2020 10:09:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583773775; cv=none;
        d=google.com; s=arc-20160816;
        b=jvck6PoXvsWmn3Oqn5/d6Lb/L9WVx6fWMPiX2gvuGQcYoXojnI9Tb0dOEzuUGRWq5p
         P1BV1G9WOlmCG2B9ve9e51uHKTF5BRHzn2y/kutmSiD/mC5e2OUzKmnqQ2c3z++4NCfT
         8x3oEdNkNGKKoEXgu6aU4ovhp2BIKliWacIzeCl2rEuIx8VGVfjuBKkxhLR21wvFRbXD
         e8R1v9Ju1D5ESJZh7eF2zr+X35VfM3YdCozoUFgJ6TmWtf8jcJJmmkYaL6HLKlljNgsc
         +PU3NLSIWIWglgBsiboBSxqNG9Gfr//Cri2bjWCY33gkkThcz6BT5qF/WDq4/nxOZa5Q
         LoIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=u4dyVB/BrE+D8EWp/l1JDjHcvEK2MQ7jq/tXmyBmrNQ1to1tZVZMxnBgNVZp6nWWuI
         /H9rLMjbP9bffMtnSbkhzZkAegkut9t6XKFeF8XJvaGbs5xjRCCJ1cv2eMiAGg1muRQB
         pKpS4GLTO44kUaeHU5cX3QMcLeNo1SLdwTiX3cVRoogslpgQxyivLrmQ7sjcCeVKY8DG
         Q9SLeBA88ncU/bokljPEND8DhX6rOFKSzC/k52OBcLlb9jaokOWm9vae2Sm6mN2zCJBP
         hLcfc8v+r74DQ7iRwynigeakFrRdox29ama/j4/uu14D5fRf7xPIc76RifPR8uxh91gZ
         sqPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OEk25yG2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l12si554234plt.5.2020.03.09.10.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:09:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OEk25yG2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h8so4986518pgs.9
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 10:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=OEk25yG22JyvsqoV9EbsRXfoM/LRmHLxZOnSE5uvoQWBSJ3fAtt0OCME2Yj+JiiQa6
         wK0T7uuEDqZe+N7nqx7TEmF+MuvinCSdIebK8hH5SZChN0rT7bDrbKpHEKBRANBDGQi3
         EqZJITDWH3ERMfOWf7qQQwKpkc+LuJjIBZizcIkm49Uz3zSxezgw3DqGrYkTjs8QBLkZ
         ecpjllhQzH4MRM0slZVnaoctJuzpHsZgHoUWzi6gVHu3zMjYy/M7dAhlC5LTx+T4kD4q
         JOiGkNUwJTDv82lwCEJhhSF7gS5q+RnCwo1fSP9Ad9cL0pw9AFqJpN746IzZ0B6qB2p3
         l53A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=od9O6JrmQzCUMTD+nFe9898lOTTunFH3NX3nyWyO7Nk=;
        b=DAsta415XzpkPINOXGm3pqlgdNwdha4dIDDYaDWBj8CwNvDSsn7e81ILvx1qeiqFxI
         xh0TtJmQcnJc5aHCZfHIk7VTeB3MjiKvdb6V4RMrfVcxKv+5zmhf7KfWS0/miagfqw3O
         5qzpeFsStPeDefrGUnRlRMhsePjG8EZycBQv9YSdpGeJSv6IRDZMdnxY8zsDv6va6GjS
         MXXR6w1qtkDZ6kCvMs4ODQsWjgdVHOK622MDaEyoXjYM3sSESM2MOqFUVFAknWQQioz7
         0nQvtcfi9LPUZST1ktWOTKVVpTyNDrsUWBtqajBnEK25om8BaQvipQwapvMHfk7EN7Eg
         QQ4Q==
X-Gm-Message-State: ANhLgQ26Mo6Q2LlgVrZ56DnBpUxYoUNVOWlIAw0X/xS6cm7XTWHVp4Th
	1xABXbwHZwIuhCf9FAnpl9I=
X-Received: by 2002:aa7:9699:: with SMTP id f25mr5515235pfk.86.1583773775102;
        Mon, 09 Mar 2020 10:09:35 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id d6sm110775pjz.39.2020.03.09.10.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 10:09:33 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: alignment should match open parenthesis
Date: Mon,  9 Mar 2020 22:39:27 +0530
Message-Id: <20200309170927.6171-1-payalskshirsagar1234@gmail.com>
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


