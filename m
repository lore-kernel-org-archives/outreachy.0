X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:b44f:: with SMTP id o15mr15019038ljm.19.1618129766093;
        Sun, 11 Apr 2021 01:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:2050:: with SMTP id t16ls537148ljo.4.gmail; Sun, 11
 Apr 2021 01:29:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJhGREv25r1IK59Eo+ds2kUVQ/C8wT/+OfGQFWozhoLg3rcPdjL6iGB1hu7RXUUJQq8tJO
X-Received: by 2002:a2e:988a:: with SMTP id b10mr14592847ljj.341.1618129764464;
        Sun, 11 Apr 2021 01:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618129764; cv=none;
        d=google.com; s=arc-20160816;
        b=uxjeLSCaekzfKdySKhaha92xJRb573uoYviYu8NVDasX1wiboLf1+HKdzz/OdCKGci
         CGO3vr0FbzKK0ro5p8n+ZvLZn93A7ZI1A0AYJ5JWiL/PlnKUkYzzXr0HP5roYRg5w/lz
         X43nXco7ds93XwX9YHHSePkZ+Z1LuvCcAhREfMYgy2bKsSjQWzKz9p6t6iRm2r1mcUUZ
         SMatMpQkmeKvjqFvW+Y5OpGBCuCYZqOjJcalXfWlcuL4kd2ka5kmndeteoLrNjdh4aVn
         nLVRMmyXZdERnwnwnHqQIrW8FNv9USPgaqRUbPeRe3dsUf2rQlG41Oi1T/FW06jltFDO
         19eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ctk7dRosetR2M8O8IdMtpC+jlxdgFJPjI6tvTIw5feY=;
        b=cNPFdu0+ntdLyGe9LJN9MTo+cPGTWzHbRAEBMWFXTebdDFIxCJINJDxS4KTtxrHrVC
         jm/nHLgeH2BU0d9bUhUmMywIZO4AFTRlz3DqU/c0NLbIsTO3T0MUC6Zij0f14iRsj09L
         XTbFK0mqcmTO4kYb6aYXqnJtbWbsxlzSnpUqaU92xjWBFR3oT6fhE3j+8+/D8bnaUP4+
         eUvlKAEfjTuRMDjOIMlJxqI8z3K7MrNlQ5+sQRZ9EcFSldK9BLLJ6ZRaHfTw18FDLMoe
         hbVcYdchn31hEdU580BNPlGKoq81le0j3hCIFy2dql8D+NOHmitigitGxv/3TZIq7xOE
         14cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tmhaHz7Z;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id q9si502831ljm.3.2021.04.11.01.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 01:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tmhaHz7Z;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id s15so11359048edd.4
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 01:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ctk7dRosetR2M8O8IdMtpC+jlxdgFJPjI6tvTIw5feY=;
        b=tmhaHz7ZqgVIZJz0lOxCaKh4MNrtGA7X4zjXijxQZ8nExXRMiBGlm1WX5UHGAfmztr
         kyjxSoDB249xrmC83NgCFZpGLEnAKHA7fmbGPeiX0JI/IfatapP0cwoWwFZ9HAcXILLT
         E3Z9TeiJ+3wnVWG9+rJonCe6Sy1kKgu0xylwyis3gIGrQkFP1EfAM3wAhjpenUnq4BYc
         aJnHflQwY36hz8Apt6OKzWbV4XvrlC67XAetbNBqNGiq0jbL/+ZWCPV4R/ICUW8vmEIH
         VNPk2ymc1nEsTDBR478l4Qobi8gmXnWvta9B688UfNnf3J5JUYXgpXFuGE2skR+gBWRQ
         9e6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ctk7dRosetR2M8O8IdMtpC+jlxdgFJPjI6tvTIw5feY=;
        b=OqsQh11Vq2Z4ST4BRJfTGujy3O6wmZDcLJbJzWvgYn51PoBswX4l2OnwwnUKETJ/dm
         GAhFRGw/XQ+thoIMagGs0LNM9xNZcHzz4CuOJE0bUDNesXcxJmvhWqmB89W9hiJpejGh
         em7KfJRg0Gvg/n1Wj1qvQaOTycHm5eVyd+ZKwS+wVLAbxteGLDQP0es3yyxJeWHLrsaN
         kQ8W84TLIkrPl3RMbxX1RAh2AyTvZlMn1Zty0gMMFUwz0WJxVZMf2QtkX4AvT/spPSH8
         Fz7xeGuiAQru5nbbmljgkTRYn+6jcndG+G5lvMnc3UpRcj4bwvkMEsIqCddSczuwmVFT
         dt5Q==
X-Gm-Message-State: AOAM530fy03hK7DZ1gTYj9g2sIJMtOgHmFAfLeQ9jAT06aQL27OzYeso
	hRdmmftwYM6dBlLTHoeVvhMpyEe74InuyEMu
X-Received: by 2002:aa7:cf03:: with SMTP id a3mr24457347edy.142.1618129764057;
        Sun, 11 Apr 2021 01:29:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id hp12sm3682541ejc.46.2021.04.11.01.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 01:29:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8723bs: core: Change a controlling expression
Date: Sun, 11 Apr 2021 10:29:08 +0200
Message-Id: <20210411082908.31876-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411082908.31876-1-fmdefrancesco@gmail.com>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change a controlling expression within an 'if' statement: don't compare
with 'true'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 32079e0f71d5..600366cb1aeb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (pwrpriv->dtim != dtim)
 		pwrpriv->dtim = dtim;
 
-	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
+	if ((pwrpriv->fw_current_in_ps_mode) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
 		u8 ps_mode = pwrpriv->pwr_mode;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
-- 
2.31.1


