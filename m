X-GM-THRID: 6947895612953067520
X-Received: by 2002:a05:6512:51c:: with SMTP id o28mr21840372lfb.237.1617714365600;
        Tue, 06 Apr 2021 06:06:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls3576146lji.6.gmail; Tue, 06 Apr
 2021 06:06:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy15GWhAQ0iRums2ClsD3jdp/p9ZddB200sEpurQ1iERDz/YOSXC76fKihH56iWjKJ7StN6
X-Received: by 2002:a2e:9b8c:: with SMTP id z12mr19673568lji.427.1617714360886;
        Tue, 06 Apr 2021 06:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617714360; cv=none;
        d=google.com; s=arc-20160816;
        b=fctMELttI4o3ttUJEqLe2q8PEFaMiWXu7di1rjjl5UwHnTaP6dfVAovALUFTwmxmrY
         XR8F9fxiLMgMhn793b33+eTEKdUmpSb16yF+V0b9ah/FVHIio92whnOGH/J3RpxoWIEY
         2LXa2nM5pW/lc8ifm1lYs1ALHh/YdO7vvQqrsQE90RvHqvXlTc1Ub+57GiUy2Pyq+9sR
         LjmA80rQxpG7MjILuVp7UzdExOCmnAaHnW8o+B1Y+35RZo23PkBIbazAq/LOUh+TcGp6
         LVYJ2Zm+o1OTpPW7090hpaNhc3r+QnCA4H8kKWHN01uP0plKasamNURtVHwki0ACl6fF
         ZfbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=qsJ7LH3amA3t0f5+pUcG8OoIWw12FhNeM8hY0mcOObaGtl8lvLaIoLdHlrheFJM726
         gVmu2u9u5ggJNEXyxKL9SrR8CoXx7SJlakOw5KT2vBGIb2LYBznhNUWK1ZwNP5gNRoqq
         5vd+ydCEA4z3hhMRVITQWqCxbHWrRv3w4VZ1nxxVXqn0eFVVJKoOmEFfc+TsX6pF9JFi
         QgsptpNESweDNWeUKHvJ6f92DzWYLvZF4cegR52hjLQosI10yRt77joGbhQT3coiG6Xn
         V9m3ywqOI0oNrZJm0TSnmzP8S6HBvnmLEV0v3OuJVTZHODz6JLrdLOOLSjwgeLjKj2IO
         VajA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvrRF0jR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id a10si1599873lfs.11.2021.04.06.06.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 06:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvrRF0jR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id u17so15542974ejk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 06:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=UvrRF0jRMWdyA5DUZeBThTmI4cjr5LtugXUAVt5KpC5Rvkz+dne/RZT6Zn1Z36EmNP
         D2VJMIUM1etZ0X4xqM1yaerIxfB0yxn5+jYDEihiHHH9w+BczKzHGWAMTqTepXP2RkRG
         s97EHzhXQvl5QpDiaFszmNGGhrFlgks8c0UkWNEbSGhmCVzC6RRT60F12xvTtoUkOdCO
         ORMhuLpJY56FdYrEX4CGIX+UBdxrcdUhfct8VmUWlsP2XQudzmOAYaM8WX4YbmJaGvxf
         fiHrFCnKt5ibFTBDCEwT0HZNXe8TKoXDh0YEUD9wy2JHr2GnJQn+Zw6k6RAwwtqaXD0P
         54dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GGmF2rdYBG/AzXYkXGuoMiHqRDGWNujv9sDGHDshI+4=;
        b=FGb/TddXIyqTyV29+6bbQR/G/9M+zQFxaiyWjiLDmdUEgHQJUpaX+anI6P9CMtW8lH
         3Gj3tEF+z7aAp7wbTV1iDqWk8HqFSozVtwXKDxe8737BdinKq+2QJOzpu1cmr97xBU+Z
         bdMdnFWUE814heBu3l3qLrShgDIt7rKr3ymfV/lIAfNsvV59J7Upb10zsosZSzSiCX6g
         6WfzdrF9PilY/9HudRNipi3CKZoEN0+zXTh7y6AMFpC+ib82C3qCchnBx6vRGf5jPec4
         kT/0VZ4uv8rnBA2YR00dNfAD+vJIFmQRm8J66KCyWZ5hDvUyZMBC57B7e9hhX2pkhWNN
         dAaw==
X-Gm-Message-State: AOAM530lluJvFuUWv1HS9NnNFUBD3bjKHtgomiHaehrDwmU5xtwtByYA
	09KuLWMcLTiLZWRI8XA/eZY=
X-Received: by 2002:a17:907:2bdd:: with SMTP id gv29mr33145501ejc.259.1617714360617;
        Tue, 06 Apr 2021 06:06:00 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id t14sm10967241ejc.121.2021.04.06.06.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 06:06:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove camelcase in Hal8723BReg.h
Date: Tue,  6 Apr 2021 15:05:56 +0200
Message-Id: <20210406130556.1417-1-fmdefrancesco@gmail.com>
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


