X-GM-THRID: 6949457058068430848
X-Received: by 2002:adf:9567:: with SMTP id 94mr11438924wrs.401.1618139113067;
        Sun, 11 Apr 2021 04:05:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls6456406wmk.0.canary-gmail;
 Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJznkqq3EnyrqHwkdgR0S1ryi/MnysimOfqQ5JOnQRokBPTpIHoG1TAaGKV578ssWTeKJdr+
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr21724539wml.103.1618139111802;
        Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618139111; cv=none;
        d=google.com; s=arc-20160816;
        b=TsBN8e/Xmim8F7Nb/YhCjKzELjmT22I8PJtSM3/QilrunRa0OQyxpl487HNeDKOsPy
         3q0BsoxmYee39CCwVkm+2l5e1FV+N/sDgEYhmbjxa4Lpsv0Kg538urtnIMnCMDul6GGc
         +vnwQ8ZoUc2MKevrI0DtUadpxFX4XfxeOC8hBunGj+5xcmDWrU9VyCIFRbR8mxOQEOaK
         Dcb5lmtM8QrYqSwnMvyOQ95ULf3EoDqHvrLCsNM9sJNCzvsDJO2MQiU2uAxmUALWuqRd
         +XO0dqEGGsuSU2h1N8Vp8Hbaf60NxPqNHfBfegDeCxHw+mKpliwA3CZzNNueF5S3kJGV
         asmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JgR0CTRBES+JH0dRGw9EL1OLGpfiMEzltNQasd/GpYw=;
        b=JHADfqr8uNGSgpoJYByDwH5WpNUct0l7EDNhdPWYJPxxpLtkaiJ6liFgAkztgHq3Ka
         ydSkxFj1qi0liPYwVhcGrg9atKCwVCmTqf1cf3kduxUHlm91c83ShGZbkjpy0prOT/9V
         5A9VI7lN4d0SaLcfTPx6xUew+StFm33PH338LCn7Ky2gh7IyCndK9FPF/11Q55YLTSBQ
         f83f0E7GxWudHyL+KFBfPrMx7e6rN1ViR7rMd799Wohadu+Sx3ePYYlL8ZsOXUQEbRxC
         fFA8KaeXam5u+dSKb7yYAjQwL0nxunyqZM3gd//auu1NMyyGB6IjY+TJ6seq75TfxOuD
         nQZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bq50PP13;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id c6si125937wmr.2.2021.04.11.04.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bq50PP13;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id e7so11570502edu.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JgR0CTRBES+JH0dRGw9EL1OLGpfiMEzltNQasd/GpYw=;
        b=bq50PP137k3dGNY82HD9qOr1dABMX2TLzu7PaqFCvQm3BiGKf43yCJm1mGwllVPfdm
         V/rTTLeMRC6oLG9J+0oagsRBQdQ7I8EiCH6FJw+7OL7zEz3VPrgZN8lmZp+dNyTqHYjT
         6MPCJnbrD1HV50Ei4uzNHYk6YQ57qlUpCLFiAaVwzsayyXnIv/kqbHNldgxPVr1tPCbP
         Q8tQh7EWRKYvLsAjUDfOoAue+pow/JylzmfCghh5yxTL4MtXdM2ZnKrpohpzj9sN5MuE
         PfdaKDCqxS/wCGIkqgEDsQIQDQUaSc0hQ7WiuPhpsMjT84Jnq0az2N3gmNapwptqpe9m
         AR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JgR0CTRBES+JH0dRGw9EL1OLGpfiMEzltNQasd/GpYw=;
        b=fLL8SMbcM0N3C9paj3X2G3z9+2sSqHmvxdjtX4N/TRGfeVM4mK9SxiMw+B2O/Hmx97
         fz/xivKhEE2zVsQlQafM/kEF1lNbsui1GG7ayyN8tquBAMDJi4gxb+7vcN8CvjSaRdzw
         lZ9mzpOn2INl7fgrAAodc6XgcZOljIX0GmHoK9/tVuP9xcQIBt92SJczYg6jZPLQazRG
         Yt8duw7/q9I2RnEqucljFAUx73fA/qLllgw9rdxpYhIuQHpKy/mZNxCmdSHAibRLZfyx
         CmaojeRbghL8XSPW/HSAcTRD/yddimBQ6QCyGSzOMqfOrOt5sEGAfPLXskTnNQeN34x+
         dVvQ==
X-Gm-Message-State: AOAM5323YNRQGj8fbV/luWw0p01mGdaMiN6Me37zW+f82C7BHqWl8OnB
	tDECd+dMbXHe9GUuS2tiD4s=
X-Received: by 2002:aa7:d2da:: with SMTP id k26mr11928787edr.156.1618139111532;
        Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id i2sm4577202edy.72.2021.04.11.04.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v5 4/4] staging: rtl8723bs: Change controlling expressions
Date: Sun, 11 Apr 2021 13:04:58 +0200
Message-Id: <20210411110458.15955-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411110458.15955-1-fmdefrancesco@gmail.com>
References: <20210411110458.15955-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change controlling expressions within 'if' statements: don't compare
with 'true'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v4: Write patch version number in 2/4.
Changes from v3: Move changes of controlling expressions in patch 4/4.
Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 32079e0f71d5..0297fbad7bce 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 	if (pwrpriv->dtim != dtim)
 		pwrpriv->dtim = dtim;
 
-	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
+	if (pwrpriv->fw_current_in_ps_mode && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
 		u8 ps_mode = pwrpriv->pwr_mode;
 
 		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 96fe172ced8d..8dc4dd8c6d4c 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -348,7 +348,7 @@ void rtw_hal_dm_watchdog(struct adapter *padapter)
 
 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
 {
-	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode == true) {
+	if (adapter_to_pwrctl(padapter)->fw_current_in_ps_mode) {
 		if (padapter->HalFunc.hal_dm_watchdog_in_lps)
 			padapter->HalFunc.hal_dm_watchdog_in_lps(padapter); /* this function caller is in interrupt context */
 	}
-- 
2.31.1


