X-GM-THRID: 6523988834576760832
X-Received: by 10.80.134.135 with SMTP id r7mr3480990eda.1.1518984519390;
        Sun, 18 Feb 2018 12:08:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.202.5 with SMTP id d5ls3275007edi.8.gmail; Sun, 18 Feb 2018
 12:08:37 -0800 (PST)
X-Google-Smtp-Source: AH8x227Gfz3SvuZwEu3RRh1O1GwH2I8d7yy8Vk+N4ejcziKoPvX86FFw07snLV1+oopJDhWR+yIe
X-Received: by 10.80.202.11 with SMTP id d11mr3519013edi.9.1518984517867;
        Sun, 18 Feb 2018 12:08:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518984517; cv=none;
        d=google.com; s=arc-20160816;
        b=TfbE/NrEAEYFkvMy1aGnTytfvk9qNWx+tuDpkKg1bpzQ3Jn8ymKhHYFQirXzC1GP90
         6DUqNPLOWVabmU6+0qXhjzpNglybThikdrw0b4CMrBWQXOwsJHQ2RSr/7Ew2XITLJELY
         rxPeiuSFDzzv4mM8O9R9YKQVS1S/Q2YUvcq7RSzwel92s4xzf6tugoX7Ep7oULjTqy0P
         ZLNBDLYp99KFH50din5l8HvNug+Fu747VmTtAGY/Sefo8dyEU0hDLNVdeGguNYReAzJS
         56t5J8u5G5pKbB1qozdzx1Kz0BEKE/b8XTfANTQ15/VJZFniRyhqrzcEPopiAKfoqO52
         zA3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=8eJfvwsC09CTJendrNGlczw0A8B7OEWiN3rNS6Xn56s=;
        b=wu4ZeaTMMreztASZ+GyNjCJ0MfDruAEl4DDI9O7PTfLIo5mP6SDVIFNzMI2jM8PJWh
         +EaAqB7lWgGgqaUePQnM1KE6tJ86ZTcZHnQcBmBINWyQha9gGhLhGDhVaPc0ykv7cJR6
         rLPZfSVWkVJLUtsxG69Iw0zbgUDxd0VH/59HI/oWJccMtO8jKYtaMG9sCyQbi5oY8APM
         GXouDaQQ3XKUzpSIJRbMcA3G8L5XSauzCTz0Lw5zuSiztHuQsIzLSTrAg1/GpDVdY1cc
         yXmFORkMitwBS9sTDbauevB4YkRs0cpi8OItLQlE7bfKsH0/yXL8zAZ6jih/UjXu1T0v
         FbeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jNVZ/7kM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id i30si92758edd.0.2018.02.18.12.08.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:08:37 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jNVZ/7kM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id j21so12600228wmh.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 12:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8eJfvwsC09CTJendrNGlczw0A8B7OEWiN3rNS6Xn56s=;
        b=jNVZ/7kMrtsvz61uV3HKMgUigNb/D48IAbZpzzt+UkWkA1lJIY6is2xPW9TGDuI+sZ
         aWf82hXKhHWuqPDSE0rGQtRwvjkllLTyYtJR08dj6xN885IHhnbweLIV1SjO1exvYLZP
         Thv/sF3rqbJQAGmfaav5BHXwNKtyqUS7tZxybM1DSs6dF8ej2PyzNxfyquRl2DL3OHXi
         mVFlvP2gk0HIoLetejQyTEIMpemZEwut+LvuxtNsKAeHvZPc4S6abHobZ48+k9/WLmRz
         J3b0jwqJAj3VOJtz04PmBWCXH+ZjI9aLz8NS/2laGkrw8gZNHf2t5w0WoHSVNF5ORgK9
         9edA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8eJfvwsC09CTJendrNGlczw0A8B7OEWiN3rNS6Xn56s=;
        b=sPrS5QPN2unmxlO1wE6ciS2hnj4e4rPf43BSkkRm8dr8fIKTIbih4y+IAOtLDVMP1n
         s3Sas2YM4tKaYIoGnBLsJaCpRzZaGJ53VUcCCruZKiZ033P208M4IUSI0OkrSUpavmIz
         KBqjXlvDSMpU6o/Ms+c3NMGnFT5/AFK32ByB4J5yvW1T8MQuuFZod9uiSBLOh0beamPK
         xMBke+sXS7M1wZ28o0oagLGDYqukLjpLkn49aShB5PuMEmGI+8XpMlHhGHlyvpsMpRwO
         1hAqjyaga210N1HsrP73uv0QdzKvrVBWaHFCRPGSVmh68b/dyFdFT5bNLSwjMnaADnYl
         W32g==
X-Gm-Message-State: APf1xPBsK2TMBeFXWXHu9WJ23w2u6NL5wb9YnzR18vwAr0GXo42qruoa
	VXCLP/5U4rm7ff9M7t3iwzcXNw==
X-Received: by 10.28.129.198 with SMTP id c189mr6923695wmd.65.1518984517528;
        Sun, 18 Feb 2018 12:08:37 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com ([31.154.102.92])
        by smtp.gmail.com with ESMTPSA id z78sm36201891wrc.53.2018.02.18.12.08.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 12:08:36 -0800 (PST)
Date: Sun, 18 Feb 2018 22:08:34 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: Replace function name in string with
 __func__
Message-ID: <20180218200830.GA8689@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace hard coded function name FillH2CCmd_88E with __func__
and break the line to avoid more then 80 characters line.
Issue found using checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
index 9b7ba9b..1ab2e55 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c
@@ -67,7 +67,8 @@ static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *p
 
 
 	if (!adapt->bFWReady) {
-		DBG_88E("FillH2CCmd_88E(): return H2C cmd because fw is not ready\n");
+		DBG_88E("%s(): return H2C cmd because fw is not ready\n",
+			__func__);
 		return ret;
 	}
 
-- 
2.7.4


