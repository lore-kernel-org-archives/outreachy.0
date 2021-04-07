X-GM-THRID: 6948342597010063360
X-Received: by 2002:a2e:809a:: with SMTP id i26mr1638914ljg.357.1617789856800;
        Wed, 07 Apr 2021 03:04:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:589:: with SMTP id 131ls367171ljf.9.gmail; Wed, 07 Apr
 2021 03:04:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+PzJhM6jizZQFM5/OZlRLx5T4E3THjDqQC3W2B29x4Ct5X8iKUIpSZmpp4Cp+OztYsmgI
X-Received: by 2002:a2e:964e:: with SMTP id z14mr1692987ljh.333.1617789855070;
        Wed, 07 Apr 2021 03:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617789855; cv=none;
        d=google.com; s=arc-20160816;
        b=iJK26H5LDGPZBA6yKUUg0ovkjjgYq7zfPPCGyQqPOv8G94PDzPDBFQSHn5YIcKXe71
         fMx1iocDF7iUenTu6dnCKeUnhTTWRBOyp33pRoZOPtYWVR+w46bC6mGgZip8IpRLwBKI
         E3BSe8leXLNLcDgYtmVw7YAh4C9fw7DM3yXjHWVV1oOWUfBUvM+vkZC1LtiyaDNuAZHH
         s7xyqPVmH8yioQw3CH+eJq4h2QwSWdRgOrwhBROwbUrtjwo6SiTItxb5N9AlLTsiIKrO
         1je28j8OKUQ7ccI/qxD6HgTZ/P9jOxBkbzh1tGs243E4M6NfBYSxb27i4Fdi1TXeUIDz
         FIdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=44ZqeD5EPkyiyFJAkLWDYZXBNtCAIXuuyBZhNmXgs0M=;
        b=M0QGVo/eeKTdD5quFu9qdxxFQTVt53okLIsAPh9xcK8BWbOXnvGDPPA2FPOcfJdkLa
         EOsudk31G1F4HinrrbTcyhgliAYJ+DUri8+Psu4sQOhEqafeN6qL8zSjbAEYPpNlsDAP
         RZvVpNpEedR95ajZVChMrHFjpXF/GKLOzQD/JjO/NMKrG5SB6MtuR3AtWsY9uRYzXs08
         o4/rVF8zYZQwoAwTT+AmvmQLgVBHEu/2oSlUh+j3N0BXI4Q1aggLF67wTQ0kgl0BYyMW
         76wBM91fKHoYSGmzs+u0ZHOhXBjZL7ZXZ5SSjJxNPJGTdElB7lnt3TbcKhKHrhLBd+7M
         bCkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u/qSxrao";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id q26si1754442ljj.4.2021.04.07.03.04.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u/qSxrao";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id w18so20188401edc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 03:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=44ZqeD5EPkyiyFJAkLWDYZXBNtCAIXuuyBZhNmXgs0M=;
        b=u/qSxrao7mOSvvfEmGSW2fzH0XEfHO8maFw5c9HCl34YysuTze6lqPLTjRnRTvJ3me
         RfeTYTn0WukHHg9JeTEtw6cCmzAfr+l2qh9Q5siNCsPO5I5r0GHTPXtZvqLNQmU6L1d1
         wKJV/ADf9TZ28i+Y8tdjLy68CMO3m3/WgOK/kh0MtfBUwbHAjHC94ZtH325G3FzYiMO5
         cXRJ+UeqwkTirPwow9jl4Jp8tiM45Ow24x3s+5tsur1cXD+1HXlnsayU50aAWNDX0+OV
         LsYOYcQzPL0//hgaTNPNA4xDXIr9OXhDzqwMppSwnLF8SByTteK6Kq1UWvHjSLtyMuOr
         b3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=44ZqeD5EPkyiyFJAkLWDYZXBNtCAIXuuyBZhNmXgs0M=;
        b=RS1CZKA7pzrICdmLAIehwV7ou9Wsftz4BpUjQMryTQVBPEyVuy9qNzapUlZi/MUycx
         0/raVAR72lCGuPzZiIu+awDh/3gBixKjWgOU/FG4c0+FRCuMaxgrLApn0F00kI8j87Np
         a77Xc+G98xnfZlBWzDP0xtct2mmdPhQ39zgqq/6kjhEJ0KX/eAaJYXB9JrZvwxB4WG54
         ZUBluIRyjU/m5kgv4p+OKtnM2YsoD8Hv4XY5PuXTjkOwLEhznc2rmJQlOa6Taa04LthQ
         zM3MubyUAihgYp7dDX+fkysTp1L/3yEQiyEXi07stj3ov3h9HXGH9bLVQGhYOKyprP43
         DHNw==
X-Gm-Message-State: AOAM532dEowmtGyDiUDqAHpWzBkrhjcqfAD0NelfB5VRJAHdV5eOPJn7
	Te+DYblonuyTKnmL3KU481CykPowIpIn3mps
X-Received: by 2002:a05:6402:b26:: with SMTP id bo6mr3559011edb.162.1617789854662;
        Wed, 07 Apr 2021 03:04:14 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id g22sm12427533ejm.69.2021.04.07.03.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 03:04:14 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v4] staging: rtl8723bs: hal: Remove camelcase
Date: Wed,  7 Apr 2021 12:04:10 +0200
Message-Id: <20210407100410.8058-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove camelcase. Issue detected by checkpatch.pl. The symbols aren't
used in other files, so this change doesn't break the driver's code.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes since v3: the previous patch cannot anymore be applied to the current
staging-testing.
Changes since v2: forgot to cc some recipients (again); no changes to
the code.
Changes since v1: forgot to cc some recipients; no changes to the code.

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


