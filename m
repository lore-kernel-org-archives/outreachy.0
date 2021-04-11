X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:6512:b14:: with SMTP id w20mr16125256lfu.528.1618138584243;
        Sun, 11 Apr 2021 03:56:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls302288lfa.0.gmail; Sun, 11 Apr
 2021 03:56:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDE5N/CeMGwsVYASd4sse9sdEhgLNNaGXuOd/Hy8Skz7wl87IV4WD9rTEiHbdrIB/5TXLY
X-Received: by 2002:ac2:4a72:: with SMTP id q18mr7441006lfp.80.1618138582754;
        Sun, 11 Apr 2021 03:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618138582; cv=none;
        d=google.com; s=arc-20160816;
        b=cUSuUQ2byja3FmJXMSuk6ZGYS+d7Jhdncn21u8AaFqFnhMamhOy9bitzvfrf1b4RIw
         oBohZ7DOeLF8Whr1Gz9QQ0wSxI78aZkZpNd5aqA3wouROodi9WFCawCr66Sr9hzgLbHE
         VwPCDd8uYHiejvaNktZ06lkdmj59ZMVXmxApln1rC6xbyYrbZydo1ak3W4KLKf+ZErwc
         2zr/kSpLrGaa1zdM6qnnsY9RwGeJg6Hdxm9cQ1T+oiViGtkvHTxovdD8TsddABQ3yVZQ
         MlzSaqDBfk+z2Mue4mj4rO2EJwtZdxcttXHXdkdOc3oMH3rrBEpNbbe6bqsh54+Pe7yq
         M6CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q1npjWd8vdjVzI836QvD79nNpNz24IQNsqdLifo9GH0=;
        b=AAX7Aetzc+KFbotmUoCemwHn2uowBLsto21W2cJU3cRSjhkL1OvD1YTjvJdQtLWNWK
         RR3U1LaaGIUODRdhAkSNub4AlY+sW/Xd8NsVuA+cXcrGVWECF+XqsLygRI+AjAjwAGEp
         EvrgMJ/WXg94ZR5nAXrmTa4GfF5HScqN1wUxVeno51/iwusj8eTtjIad1AZagK+a6rGm
         HgQmka8MGfxT/9FLgIvfYmHF/bMtsncg5cbqvQkBtpbKXPa9HUJs277OR/96Y7etpRTB
         PbEmJx8H3oggelUne4gvhf56IsQw0n0mUFBAk/LE6wSJFkpdanvNIbIp4VUeXGaIa2xl
         1RMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f6xP84EI;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id p5si523237lfd.4.2021.04.11.03.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f6xP84EI;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id x4so11605171edd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 03:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q1npjWd8vdjVzI836QvD79nNpNz24IQNsqdLifo9GH0=;
        b=f6xP84EIdrHfCpLbq2zehKVLF0fdPl/MmFhD3LPidsCDsrKXRqKIf/XUvdY6D7ZfqS
         4WaNFTuqcO5IqI2pWyISAYeoRe5IHVptcbp9RvkbU8mGfvMlkwGx8Lx2m2w16j4MMUxZ
         00gYkTcZ9YpTHk21ms9NUgm06UQt30BQYx39wisUHCOhw4uWJYIitpNy03Y/mps5ChIZ
         PFpKTuMcKpAmDDU90O1rh2tL+3JnM101kmSNjzGR3sXPC2YTONnjvMHI1boQ+ruk/dYq
         r8u2ZMLJvTEc4FTwlMJrR+kXcB5aSxE5cNxVvSMb5DtbvZE93omU1jhU6k57CdSfszDd
         YtdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q1npjWd8vdjVzI836QvD79nNpNz24IQNsqdLifo9GH0=;
        b=GlHzzGUXKjC7A+2mI0qUGBxQtF2lyiH5TUimjZ8S04hIjr2MidnMu+rQg25z7DrIPJ
         M52t7d6czOBrXwSE2UEaJMBMPJFpnSZR6iALkvTnLBlLps7xvYmRILP7HvFRjT1MS29W
         NQjq+RkzvnD7Q3EqW3a4T3+uDaBXEOMfG1bSB7WjLTeAtOlUGN8WWMBER5QnRjHcXdXY
         w9iAO2HgTf0/hLLP4Gu3ouWYfqqWja7cPpVlIjcYTh21z/0wEgSUjPYXriDEqc9TH3DL
         anIVBVPfzGoFxrjCscnwYuMi1spfe6pJulRSlxZY344QaHfbHsHYwcn3kPTdi3W4+mhb
         NtPg==
X-Gm-Message-State: AOAM532fe5aeKRWTmYL4o0+bazntM5Mkx6cXMPQU2d6wfwsashdQYRxe
	WR5UNXRg9WJsk91N1qOJSOo=
X-Received: by 2002:a05:6402:51c6:: with SMTP id r6mr24567953edd.278.1618138582343;
        Sun, 11 Apr 2021 03:56:22 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id f10sm4369100edd.29.2021.04.11.03.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 03:56:21 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v4 4/4] staging: rtl8723bs: Change controlling expressions
Date: Sun, 11 Apr 2021 12:56:08 +0200
Message-Id: <20210411105608.12900-5-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411105608.12900-1-fmdefrancesco@gmail.com>
References: <20210411105608.12900-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change controlling expressions within 'if' statements: don't compare
with 'true'.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

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


