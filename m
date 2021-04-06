X-GM-THRID: 6947895612953067520
X-Received: by 2002:aa7:d687:: with SMTP id d7mr34714997edr.118.1617683007236;
        Mon, 05 Apr 2021 21:23:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls10316153edb.3.gmail; Mon,
 05 Apr 2021 21:23:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwo0t/4AdwaxJGk1zWNLCB3U4c9vcdGmGkUqDv3lfS/Gp2bKiPQ+3lLgZUBflX42LABeu2I
X-Received: by 2002:a05:6402:646:: with SMTP id u6mr35789774edx.250.1617683005860;
        Mon, 05 Apr 2021 21:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617683005; cv=none;
        d=google.com; s=arc-20160816;
        b=dS85Yp2fNuZCMa+4YxKe3duVLjRMiZgxmdOgJF4U03+A4/SgsR4fzIlrZZ16hcAd8X
         URuh2EZcfi/O+HxtIGXIlyRgPeSs1txXXKqYxGiM/Cgt6JtEyQX53i7xHd5/U5zS/7yF
         07uN66z4Z9GLrhFSJ/EJmhR8ajKWQsONZlqh8COONZQhFsTS291abe+g4auGHGZV0Tlz
         WemIhPU6WBU3tbAtYOsMpfUkYQQNHjlAwFdJ+UW6oHYZ/WyH62WI3k6mB+9ZPsfJMHz3
         D+d+cRHCLZlMZ+6Hsv2yYqX55WRWGozzXyzSkl+zqbLUwqQcYRn9F3QcuDjnj3kjQ7T7
         0XhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=kADbJ+gsz25uU6GiN2NKWDJfNdsExPLIJBgSD0myEyLGn9rLKSGZfSk0VBpo/IE2If
         NgFpz9wmU5Lbyj3F0shhJ15mkz9gm13Q1HrhFhPem0IOKEABppHL+KdYMbI+WG4nhC2k
         SIvLFKkflzbB9Z1Fg4po3MWvwPW2a45bLpgg6YxPHoc3zTnGvCnaL1Rcbqi1YyYMioW0
         dSK7MKZ1YP+6ORX3LgI8fhgViEm4KIPX9RYDZJOhiUjypaQxBWuB1zc8CbfjBwN6VJtQ
         MgWs39QoKrwReLoj7E5IBzED0QTBfm29PxHMkyKs6J7i1K91+mjVHm48XpK8J6ukyI5J
         dnbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPmGzo+1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id ck26si2616047edb.1.2021.04.05.21.23.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 21:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPmGzo+1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id m3so5021207edv.5
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 21:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=PPmGzo+179D9kLRMysY+yBRZ1TeB7HSSq+hLF1bacVvPmBfOb3WiaBRjtkZkfFL6W4
         9JFqhM3x9zVzl99zDay4yFLpavOECxgQ2wYfQb8f86gx98XrlwIprLiw76IX7idK5aIV
         e0fljL75RpH9IHgmP+6LCTevZac6chPtBBtrnXABH/+usNPtdiVrP/P73AnLv61jw7Ak
         txsEYJEOfaK+B6fe9I+E6GY3vTqExtzBJ+7fve8/64WNNWokn6oONF3IMrmtoDP2kWMu
         SsZhgwDdFvZ1Xl9qQ3GBt1igGz0gqxEZvbCUUouxk9KiLLC/adj45NL2zL1ctjDJ2FvM
         QMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=Eq9avgqQV/XTflHxojFwc0nzQnIFZC0WmkOW/nn6HmTicCk1eJ8PAMMqnLJxxlfljN
         EJRmguQU7NLEfwMP8xBavVf/uG1YOaFPDUly6ZcoWYl+Pb2HG94otbyaE9glsgz7/8oc
         enZ0V9VEboWpU54tc6f2k3eXfyzZ4Lh1snwpuSYRH3ikTN49p1ZHlK9xON0Lm0fJBfKf
         26CPGw+RX4rdKOndqII6Vq7IsvqHjH+UdA/rVxy30rrOLuGuzPb3cspYfDzAJiBwm67M
         xW9OKB3vnQ7coWIBx5F0wvnZeWdMJ+ddGy3ksI9LXlE1Y6yndCCi51VMC8RzwtHDLQM+
         2dIg==
X-Gm-Message-State: AOAM533l2aExtWlciuoEx5NkFcnldguUvDGqlSxcuR5+WqZL3z0+tJHE
	olD8JyiLeVUHnl3OftYi85U9kLMeQlx4udGn
X-Received: by 2002:a50:8711:: with SMTP id i17mr4350620edb.352.1617683005721;
        Mon, 05 Apr 2021 21:23:25 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id p22sm2466991eju.85.2021.04.05.21.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 21:23:25 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove camelcase in Hal8723BReg.h
Date: Tue,  6 Apr 2021 06:23:20 +0200
Message-Id: <20210406042320.11902-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
are not used anywhere else, therefore this patch does not break the driver.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index cc249e15b4bd..60c1f966c5de 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -110,7 +110,7 @@
 #define REG_RSVD3_8723B				0x0168
 #define REG_C2HEVT_MSG_NORMAL_8723B		0x01A0
 #define REG_C2HEVT_CMD_SEQ_88XX			0x01A1
-#define REG_C2hEVT_CMD_CONTENT_88XX		0x01A2
+#define REG_C2HEVT_CMD_CONTENT_88XX		0x01A2
 #define REG_C2HEVT_CMD_LEN_88XX			0x01AE
 #define REG_C2HEVT_CLEAR_8723B			0x01AF
 #define REG_MCUTST_1_8723B			0x01C0
@@ -424,13 +424,13 @@
 #define	IMR_RXFOVW_8723B		BIT8	/* Receive FIFO Overflow */
 
 /* 2 ACMHWCTRL 0x05C0 */
-#define	AcmHw_HwEn_8723B		BIT(0)
-#define	AcmHw_VoqEn_8723B		BIT(1)
-#define	AcmHw_ViqEn_8723B		BIT(2)
-#define	AcmHw_BeqEn_8723B		BIT(3)
-#define	AcmHw_VoqStatus_8723B		BIT(5)
-#define	AcmHw_ViqStatus_8723B		BIT(6)
-#define	AcmHw_BeqStatus_8723B		BIT(7)
+#define	ACMHW_HWEN_8723B		BIT(0)
+#define	ACMHW_VOQEN_8723B		BIT(1)
+#define	ACMHW_VIQEN_8723B		BIT(2)
+#define	ACMHW_BEQEN_8723B		BIT(3)
+#define	ACMHW_VOQSTATUS_8723B		BIT(5)
+#define	ACMHW_VIQSTATUS_8723B		BIT(6)
+#define	ACMHW_BEQSTATUS_8723B		BIT(7)
 
 /* 8195 (RCR) Receive Configuration Register	(Offset 0x608, 32 bits) */
 #define	RCR_TCPOFLD_EN			BIT25	/* Enable TCP checksum offload */
-- 
2.30.2


