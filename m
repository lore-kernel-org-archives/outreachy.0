X-GM-THRID: 6948342597010063360
X-Received: by 2002:a05:6402:1587:: with SMTP id c7mr3233813edv.147.1617787079808;
        Wed, 07 Apr 2021 02:17:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:22c9:: with SMTP id q9ls818244eja.11.gmail; Wed, 07
 Apr 2021 02:17:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw8Ts2d5ByT2Ole/+zFPHsj6zPSJ2ht4Dun53CimdEzixuj88s0cE4TqrlbUaSDInIqvW0t
X-Received: by 2002:a17:906:2da9:: with SMTP id g9mr2543958eji.100.1617787078424;
        Wed, 07 Apr 2021 02:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617787078; cv=none;
        d=google.com; s=arc-20160816;
        b=Vzpz9fvTn1yoMKAzQr5sJxwEYBrqYehLmxs+eC+0wsdt7RmJAhNoZOAYk+noEVi3oM
         KqRZeY3jHjHrrq840fb+6z8NKGR+1v2MyvE1N4dhHx2AZ1kcFRW2swaZCm4Tx/XDKIn3
         uE986BGOscWQuqxuPWgFB0gwHF5xpfUhrtplIoj4FPa+ibR+t/Qeirc25/s/4Hc11okQ
         GlX0WkHkoAPTBUT+8svT2F616GxcMhQj15ugkQDFoY9OeCsXTBOnLE35TuvNoVvlDQuy
         bnQJ/0oA3H2yjxoLHlikN62LpvCENKuAb8LhivRPnTJDTBE0mO2OqAbrkwoTgHk+mYHL
         Cy1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NtBGPqIcRzSYJupveHRk1jBF1Lk0E+DkUti3vbu6sww=;
        b=x8jSBLUEoRLI650uibg/J8kHZyLJnw1thDvIH1J3ghxX+owuO79Le/ZWkjLIzqctpf
         aY04B2cOfb4lUudUHKwVYGPVcDqLSXCBnD9mwx9yaFlyeGUZfrb6NeDZjDZWni9O7aSd
         KWRIjreMaA3cp5JBfNv8peKbZW6fEp9aADRZJC7BuAXmgy/SZ78/rngpnlS8GplcWCwQ
         WM6YmEg+BHmFZ3iaaDNSn1rG6JjKTY/Eu34OxB/b4z6TxSnJa0DrxgPHYDcePmu9eUb8
         UisRGvTuW32xXAnCbDL1f1FUsvE1gU6cSbMFBMGPoHn8XxbUiE/HqUHoXckQXe6q3fP/
         F+EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPzTVz99;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id b26si979895edy.4.2021.04.07.02.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tPzTVz99;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x635.google.com with SMTP id w3so26467323ejc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 02:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NtBGPqIcRzSYJupveHRk1jBF1Lk0E+DkUti3vbu6sww=;
        b=tPzTVz99DZJ88IjcY+fdMaT9gQB1AAa7bwbEjzVEHU6IyS1Q/khV1yBs8XBbIEZdrU
         jiHrntMKe7kjXWl4J1MDiksCpiOwde8uUl5h3gn1JXYx5E6v6Ujc6ALqRvHv1cFYulgw
         FUF+QIxU8NCnlj8po+DhO3mi7/L6rE215q2AR3EcC4YnqnhF1m39AhQXpF5cDj786q7B
         RhSpYcOALl4PDkNHBM81Nva9gR+NlBTWFsqsjaayWPFSU9JWeOvGhSN4x3K0U/ccwtev
         Xpc/6MSzl+YB5vTB8zuRuF4xs3g23cmaYsGYAoRnfkHH8MX/DEu7mfVw38vmkhTBzBdU
         W4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NtBGPqIcRzSYJupveHRk1jBF1Lk0E+DkUti3vbu6sww=;
        b=X2QetzynhgkvS+TLXhMxvo7I2Oa19QolpevdTFUeJei9VuPDpM9CaTmyntci8QMdF8
         vbYPRMDF7/zqpGe1beMkGoq/lH7IhQ7RpbC98uSt5oPW4TngwiOgcom61sWaogAuARs5
         yf9w47tmDy2FH39yNkDcAfiUEqs+bB/Xfq4e0iJI+C+DLw0PHqta6MKZkVngSe0ettxX
         0bmLRC+BkwqQCE4zu3zTt27NM25bHrtBOvvMit9+YcFP+OdrLAHJzdvJas8xPcsfRNUB
         PppoMBNO5Aaj8MXDq2AiQxOvu77R7te9b9JRI4BUBcPtdvA4c6NvEYQIVeIAyZRa1ft6
         qqzA==
X-Gm-Message-State: AOAM531ARIUAjNk9OzsI5e/jkzyDIQllEIyg0LYQ+3XYAgMbzAV00iC0
	YPQv+5FTcc+2KkF3qtoFUZA=
X-Received: by 2002:a17:906:468b:: with SMTP id a11mr2590895ejr.190.1617787078207;
        Wed, 07 Apr 2021 02:17:58 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id f9sm15248458eds.41.2021.04.07.02.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 02:17:56 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove camelcase
Date: Wed,  7 Apr 2021 11:17:52 +0200
Message-Id: <20210407091752.27350-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase. Issue detected by checkpatch.pl. The symbols aren't
used in other files, so this change doesn't break the driver's code.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

This is a necessary v2 patch because v1 cannot anymore apply to the current staging/testing tree

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index b9aca99478db..616d20106392 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -112,7 +112,7 @@
 #define REG_RSVD3_8723B					0x0168
 #define REG_C2HEVT_MSG_NORMAL_8723B	0x01A0
 #define REG_C2HEVT_CMD_SEQ_88XX		0x01A1
-#define REG_C2hEVT_CMD_CONTENT_88XX	0x01A2
+#define REG_C2HEVT_CMD_CONTENT_88XX	0x01A2
 #define REG_C2HEVT_CMD_LEN_88XX		0x01AE
 #define REG_C2HEVT_CLEAR_8723B			0x01AF
 #define REG_MCUTST_1_8723B				0x01C0
@@ -429,13 +429,13 @@
 #define	IMR_RXFOVW_8723B		BIT8	/*  Receive FIFO Overflow */
 
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
 
 /*        8195 (RCR) Receive Configuration Register	(Offset 0x608, 32 bits) */
 #define	RCR_TCPOFLD_EN			BIT25	/*  Enable TCP checksum offload */
-- 
2.30.2


