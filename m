X-GM-THRID: 6466273176803344384
X-Received: by 10.55.116.66 with SMTP id p63mr14008422qkc.61.1505546545518;
        Sat, 16 Sep 2017 00:22:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.233.1 with SMTP id f1ls2273001ith.11.gmail; Sat, 16 Sep
 2017 00:22:24 -0700 (PDT)
X-Received: by 10.129.163.200 with SMTP id a191mr16965686ywh.163.1505546544736;
        Sat, 16 Sep 2017 00:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505546544; cv=none;
        d=google.com; s=arc-20160816;
        b=fLiv4PVRzi7MaC4y1bqQnChGFnPL8dk8ozWlUNLpRzZCbaWK8/FBwDKmsWWV/aEYAE
         mJscWLd83S7JDxU71Ws/6X8UMV6yZdD9llieXdEZb00MhR+TI+JtNUYZYQGomKbtHJAD
         CYqjj286W/3Uh3bphmoU648JhE7RgmOY0hKMP6CQRShMLkiREi3S4KCjbdgQ1epNkr9V
         HwAbl/UjUusRIoKxmnAqj+sgh2WLitvoh7huDs8XLXu8hbDCfRPC6FLyCEVToKWRu3uw
         RAemeYjLsAJgLH2iKRPnJ3na+A1WYtC75WkZMO4olYt7YjbNOZxtbrZK/kVHl6lW1Wnv
         tz1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=tVn7iW4A/KdDCA+6qK3eMwQrMlZ7YOJBBhU0hLtfMS8=;
        b=V1djyFRltKYgnKmhG7OXVNkSxhal5P+a8fpVqV1zMS5ddzgy9Q7ocy8F2nXthvUJq0
         1STiYSDITY2ZvgKo7J4YOZMg1rRNTUrCoOLPeVoB98ywFm5p0Ja1/6iQtFfH/Y6yqNjM
         DUrgl4Dlp97JaKgjeYGiy9jj3TeKaKy6POlkzC0gLQf7LIKvd0VMi6fS35KK+9h3FzYt
         AG0zra0lvNuaf7X7fq9Z2+fJzFgOoX9UVVhEHViwPxThx1oGZuj+P2orkx0jlrmHxxZi
         XDcDh1ojX1Tbtp5YYFd65SEn2q7g/bgiJbIJtRLZKEjhfM1GsytVqcC2v3lsfAGN7Nci
         xTag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujDHO4me;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 82si256480pfz.6.2017.09.16.00.22.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujDHO4me;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so2226350pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 00:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tVn7iW4A/KdDCA+6qK3eMwQrMlZ7YOJBBhU0hLtfMS8=;
        b=ujDHO4me0+jd8QKo/Xg0FxULY6suyQinxnKXdNZ8JH3NzHOkMCBXbQHdT1vdMaohN8
         dmaKUvRPgKMT42XYERdbspIDl7QFmE0oZNIT7I4slp0+ZzMQY0fw5zS4IZGam1h7n8Dz
         Ws8J31nHMxF7gKC4MELJtXxEjTC5OOqb+nSF5Q6xKmF0au8q+vGM1pgv1vYxc+PAWNfb
         EkQnTT7+ntNjqRe97iyrl0tD6WBeigYhS9fwUJ1suZ1ojkRR8lxZjSB4nsbhLov/s1Jk
         4qv4l4jU2DRnj0jvJaGfYh8+CWBMM++RK23e898QAu9XHpgcOHlJlKJHMPo4x9JREYCF
         494w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tVn7iW4A/KdDCA+6qK3eMwQrMlZ7YOJBBhU0hLtfMS8=;
        b=PIFGSH9DBTBf1JFF1Btz1J9j/yqMzMURWV38dVOvo8/er1rDNjljnBevizFEcwamji
         Z2DXk4fG7o/53rTh2goSDd5/4kwbG4FMmO+H0eWrZzsW9fv4V03TnroU9adWxXMWI0qs
         gJ4J843V3NUpow1VLp8W6u9F2dvjxBbwxhkC/okVAv/vg3WcHl4K4NApn6N+5VY/V9L/
         UIQhpERsMbLSrLZFRzqCSnnTT6WDYpFFd9knxYsWn8N2s/2EgJUbm1pzBo2MY2Ps8JEZ
         dHlbBXNkmYVEdrff851qltqqFaP55dq6ELXg5qOX726jvdoKLCyDrU43LmwXpa+hnfu4
         uVlA==
X-Gm-Message-State: AHPjjUgiq8SShrz2CysB3tjT6V537x1abTaK/MaBta5fXHsX3CPH3YRw
	JG5K1F92mcRDadIfxcw=
X-Google-Smtp-Source: ADKCNb5xt92KyWj5Qcb/yjm+y1nipD24wWrWP2OzcnWLOm27yyecqVClnOSqrWK2kPVIqY+12RXbfA==
X-Received: by 10.98.72.196 with SMTP id q65mr26654186pfi.343.1505546544222;
        Sat, 16 Sep 2017 00:22:24 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id r90sm5701939pfb.183.2017.09.16.00.22.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 00:22:23 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging:r8188eu: fix unnecessary line continuations
Date: Sat, 16 Sep 2017 12:52:19 +0530
Message-Id: <1505546539-16383-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:
WARNING: Avoid unnecessary line continuations

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/pwrseq.h | 180 ++++++++++++++---------------
 1 file changed, 90 insertions(+), 90 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/pwrseq.h b/drivers/staging/rtl8188eu/include/pwrseq.h
index bd77a50..dbf164c 100644
--- a/drivers/staging/rtl8188eu/include/pwrseq.h
+++ b/drivers/staging/rtl8188eu/include/pwrseq.h
@@ -58,22 +58,22 @@
 	 * { offset, cut_msk, cmd, msk, value
 	 * },
 	 * comment here
-	 */								\
-	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)}, \
-	/* wait till 0x04[17] = 1    power ready*/	\
-	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0}, \
-	/* 0x02[1:0] = 0	reset BB*/				\
-	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
-	/*0x24[23] = 2b'01 schmit trigger */				\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
-	/* 0x04[15] = 0 disable HWPDN (control by DRV)*/		\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0}, \
-	/*0x04[12:11] = 2b'00 disable WL suspend*/			\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)}, \
-	/*0x04[8] = 1 polling until return 0*/				\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0}, \
-	/*wait till 0x04[8] = 0*/					\
-	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
+	 */
+	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), BIT(1)},
+	/* wait till 0x04[17] = 1    power ready*/
+	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0) | BIT(1), 0},
+	/* 0x02[1:0] = 0	reset BB*/
+	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
+	/*0x24[23] = 2b'01 schmit trigger */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
+	/* 0x04[15] = 0 disable HWPDN (control by DRV)*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4) | BIT(3), 0},
+	/*0x04[12:11] = 2b'00 disable WL suspend*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), BIT(0)},
+	/*0x04[8] = 1 polling until return 0*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(0), 0},
+	/*wait till 0x04[8] = 0*/
+	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
 	/*LDO normal mode*/
 
 #define RTL8188E_TRANS_ACT_TO_CARDEMU					\
@@ -81,14 +81,14 @@
 	 * { offset, cut_msk, cmd, msk, value
 	 * },
 	 * comments here
-	 */								\
-	{0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
-	/*0x1F[7:0] = 0 turn off RF*/					\
-	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
-	/*LDO Sleep mode*/						\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
-	/*0x04[9] = 1 turn off MAC by HW state machine*/		\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0}, \
+	 */
+	{0x001F, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
+	/*0x1F[7:0] = 0 turn off RF*/
+	{0x0023, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
+	/*LDO Sleep mode*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
+	/*0x04[9] = 1 turn off MAC by HW state machine*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(1), 0},
 	/*wait till 0x04[9] = 0 polling until return 0 to disable*/
 
 #define RTL8188E_TRANS_CARDEMU_TO_SUS					\
@@ -96,14 +96,14 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
-	/* 0x04[12:11] = 2b'01enable WL suspend */			\
-	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)}, \
-	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
-	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
-	/*Clear SIC_EN register 0x40[12] = 1'b0 */			\
-	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
+	 */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
+	/* 0x04[12:11] = 2b'01enable WL suspend */
+	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, BIT(7)},
+	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
+	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
+	/*Clear SIC_EN register 0x40[12] = 1'b0 */
+	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
 	/*Set USB suspend enable local register  0xfe10[4]=1 */
 
 #define RTL8188E_TRANS_SUS_TO_CARDEMU					\
@@ -111,8 +111,8 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
+	 */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
 	/*0x04[12:11] = 2b'01enable WL suspend*/
 
 #define RTL8188E_TRANS_CARDEMU_TO_CARDDIS				\
@@ -120,16 +120,16 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
-	/*0x24[23] = 2b'01 schmit trigger */				\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)}, \
-	/*0x04[12:11] = 2b'01 enable WL suspend*/			\
-	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, \
-	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */\
-	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
-	/*Clear SIC_EN register 0x40[12] = 1'b0 */			\
-	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)}, \
+	 */
+	{0x0026, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
+	/*0x24[23] = 2b'01 schmit trigger */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), BIT(3)},
+	/*0x04[12:11] = 2b'01 enable WL suspend*/
+	{0x0007, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0},
+	/* 0x04[31:30] = 2b'10 enable enable bandgap mbias in suspend */
+	{0x0041, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
+	/*Clear SIC_EN register 0x40[12] = 1'b0 */
+	{0xfe10, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), BIT(4)},
 	/*Set USB suspend enable local register  0xfe10[4]=1 */
 
 #define RTL8188E_TRANS_CARDDIS_TO_CARDEMU				\
@@ -137,8 +137,8 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0}, \
+	 */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(3) | BIT(4), 0},
 	/*0x04[12:11] = 2b'01enable WL suspend*/
 
 #define RTL8188E_TRANS_CARDEMU_TO_PDN					\
@@ -146,10 +146,10 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
-	/* 0x04[16] = 0*/						\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)}, \
+	 */
+	{0x0006, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
+	/* 0x04[16] = 0*/
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), BIT(7)},
 	/* 0x04[15] = 1*/
 
 #define RTL8188E_TRANS_PDN_TO_CARDEMU					\
@@ -157,8 +157,8 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0}, \
+	 */
+	{0x0005, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(7), 0},
 	/* 0x04[15] = 0*/
 
 /* This is used by driver for LPSRadioOff Procedure, not for FW LPS Step */
@@ -167,25 +167,25 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/ \
-	{0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
-	/*Should be zero if no packet is transmitting*/			\
-	{0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
-	/*Should be zero if no packet is transmitting*/			\
-	{0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
-	/*Should be zero if no packet is transmitting*/			\
-	{0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0}, \
-	/*Should be zero if no packet is transmitting*/			\
-	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0}, \
-	/*CCK and OFDM are disabled,and clock are gated*/		\
-	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,	PWRSEQ_DELAY_US}, \
-	/*Delay 1us*/ \
-	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F}, \
-	/*Reset MAC TRX*/ \
-	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0}, \
-	/*check if removed later*/\
-	{0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)}, \
+	 */
+	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x7F},/*Tx Pause*/
+	{0x05F8, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
+	/*Should be zero if no packet is transmitting*/
+	{0x05F9, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
+	/*Should be zero if no packet is transmitting*/
+	{0x05FA, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
+	/*Should be zero if no packet is transmitting*/
+	{0x05FB, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, 0xFF, 0},
+	/*Should be zero if no packet is transmitting*/
+	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(0), 0},
+	/*CCK and OFDM are disabled,and clock are gated*/
+	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0,	PWRSEQ_DELAY_US},
+	/*Delay 1us*/
+	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x3F},
+	/*Reset MAC TRX*/
+	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), 0},
+	/*check if removed later*/
+	{0x0553, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(5), BIT(5)},
 	/*Respond TxOK to scheduler*/
 
 
@@ -194,24 +194,24 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
-	{0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84}, \
-	/*USB RPWM*/	\
-	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS}, \
-	/*Delay*/	\
-	{0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0}, \
-	/* 0x08[4] = 0 switch TSF to 40M */				\
-	{0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0}, \
-	/* Polling 0x109[7]=0  TSF in 40M */				\
-	{0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0}, \
-	/* 0x29[7:6] = 2b'00  enable BB clock */			\
-	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)}, \
-	/* 0x101[1] = 1 */						\
-	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF}, \
-	/* 0x100[7:0] = 0xFF enable WMAC TRX */				\
-	{0x0002, PWR_CUT_ALL_MSK, \
-	PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)}, \
-	/* 0x02[1:0] = 2b'11 enable BB macro */				\
+	 */
+	{0xFE58, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0x84},
+	/*USB RPWM*/
+	{0x0002, PWR_CUT_ALL_MSK, PWR_CMD_DELAY, 0, PWRSEQ_DELAY_MS},
+	/*Delay*/
+	{0x0008, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(4), 0},
+	/* 0x08[4] = 0 switch TSF to 40M */
+	{0x0109, PWR_CUT_ALL_MSK, PWR_CMD_POLLING, BIT(7), 0},
+	/* Polling 0x109[7]=0  TSF in 40M */
+	{0x0029, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(6) | BIT(7), 0},
+	/* 0x29[7:6] = 2b'00  enable BB clock */
+	{0x0101, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, BIT(1), BIT(1)},
+	/* 0x101[1] = 1 */
+	{0x0100, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0xFF},
+	/* 0x100[7:0] = 0xFF enable WMAC TRX */
+	{0x0002, PWR_CUT_ALL_MSK,
+	PWR_CMD_WRITE, BIT(1) | BIT(0), BIT(1) | BIT(0)},
+	/* 0x02[1:0] = 2b'11 enable BB macro */
 	{0x0522, PWR_CUT_ALL_MSK, PWR_CMD_WRITE, 0xFF, 0}, /*.	0x522 = 0*/
 
 #define RTL8188E_TRANS_END						\
@@ -219,7 +219,7 @@
 	 * { offset, cut_msk, cmd, msk,
 	 * value },
 	 * comments here
-	 */								\
+	 */
 	{0xFFFF, PWR_CUT_ALL_MSK, PWR_CMD_END, 0, 0},
 
 
-- 
2.7.4


