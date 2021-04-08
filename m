X-GM-THRID: 6948745075073482752
X-Received: by 2002:a05:6512:320a:: with SMTP id d10mr5873366lfe.587.1617880788814;
        Thu, 08 Apr 2021 04:19:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls4628430lfv.1.gmail; Thu,
 08 Apr 2021 04:19:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwVv2vuRI8TegwtsVF02zzmsPQ4iYs3ABBt6DEVTBnznEq6AqASG1bfVuLWLz35kApOIjf5
X-Received: by 2002:a19:8085:: with SMTP id b127mr2239275lfd.147.1617880787116;
        Thu, 08 Apr 2021 04:19:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617880787; cv=none;
        d=google.com; s=arc-20160816;
        b=BD0o+bMdQfwAxMHkC1rtnkA+637xEO5jN15OAjMMqvE/Vyo0nPqtu2nJyoIIPUcQue
         wfT4499QklgT1hLHC4FOzi0UuZ9BpKBxTctMeL204MU3gGb41tOXbpZCxjiVKt54FP7F
         D+bgSRanRZ2aQQxvLrUzcrxiPmH9xcYIvpVQMNEp3vuW/aF897NUazJdN9iwBD4f6PhR
         zSBMCmIqqVIrm1IKQkIvkczZZAeoaXudTXy4AapwKYrCfQ3A0R3DvtMPnt1ta5H4GSai
         kWvS5S1DZT2DkynGqSqZiBHNYBQT5ZGqu96tB8WX3gWgbpk2NPdeGZiubd+mA9k5iJ5I
         3zvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hkn4MUpfGU3cF0CCSTZFoBdiPCp83n9PcmuKuUkPS9E=;
        b=sb0pWAX9uVlFjyAx3A38aahajQWIrMSZzeWz9RVjhHHubyqZhp/JonTZV0geDl8lAL
         1ruqezo2nZeUd3jMpokU/u8kqn6nUMR1zUOVhlmj4BE9CrNVLfUxgxzHYtoWofmrPGBl
         mDX3lSD5IF5arsx9Xlw3Vv0WZLee6mqI92jthwCNfmtNmpo62082X2Pkqft4uBJH5VOK
         D8FeoCqUQCwwfja0wAA/X1L8qjd3gYQtOd1G++FtY9M19LnUVCi+4AQeGiWmReZnvEdh
         2WprB+9eJaQuHuWQxzayfG1fA5tkfkZJwOott9OmFSW5kUav8i4cXmcKvld97mjUI770
         fFVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2M6nv2w;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id v26si2244687lfo.2.2021.04.08.04.19.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 04:19:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2M6nv2w;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x635.google.com with SMTP id r9so2392693ejj.3
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 04:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hkn4MUpfGU3cF0CCSTZFoBdiPCp83n9PcmuKuUkPS9E=;
        b=N2M6nv2wl/Zxo7trE9VjGl86Q5S1Qz0c65tLoTF9ngg7tstK8l4dfxeMrWZHuKMDIi
         RBCb4ygKaWK58WwNLqmIkt7HuzYgL4jRKSk6FTN1vO/9hcsH3NX64bq/jIjJXa1CuU+L
         DxnFTfD1WYpo1KuFYYcM4aLjfwtd750YkhdEOyw99iR/w8tGzECVGiCru88ahAhyoefv
         9FbJkwpvk34XG44I8L+N117ffcLzMSpbEMh7CGYybP2LIy5NkuqIuCLUAxTsWZx8fuJW
         z5w/Ic5+y+4UtaOcimag2O/1iQU7uSLTRjjJIiiPTb1Q7oWa0Z+c71wWxTOoeciW533w
         4vzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hkn4MUpfGU3cF0CCSTZFoBdiPCp83n9PcmuKuUkPS9E=;
        b=QCahJOj3Hipjnhsxj2HH5ow2Ba3Kh9jhTmmCI+UK7k8DZ+qDRnmhI96z7jPEiI/iLX
         EVchBD42A+IW5jn4myGeiOvViUH/xCkfxbEB+KLaQJvBcXPd8qyE3erNtVL5nScLqpzL
         VeQMDveKQaWbiscYOR2kWKK3AQ5ACnBOr9KFRUWDQRQTyIU424hFxpZ5EYgOhNgey8KS
         WoSXHgbwqCxmTrtqOTAI5eLz2q6noHVehQQ4phQy58okL0GorUmwcefS62hRmSya83bi
         nUxhqGBdxCjT3Pa4ZWefBneY9KjOimBwSo4k8RyscCsYpawhqYjc8LTvduxaiCAVU+0J
         J67Q==
X-Gm-Message-State: AOAM531N/2VABdPaDFsXQWZHGoSPGRo2S4OAK+Wc26Q74ZyHGbAnotWb
	afI9Mfg2jr6WUTeOx1MC3zA=
X-Received: by 2002:a17:906:7194:: with SMTP id h20mr8808463ejk.432.1617880786798;
        Thu, 08 Apr 2021 04:19:46 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id bf14sm8678588edb.67.2021.04.08.04.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 04:19:46 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: Change the type and use of a variable
Date: Thu,  8 Apr 2021 13:19:42 +0200
Message-Id: <20210408111942.19411-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool. Shorten the controlling
expression of an 'if' statement.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 5450d20b44a6..c03ae33b0aa6 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -203,7 +203,7 @@ struct pwrctrl_priv {
 	u8 LpsIdleCount;
 	u8 power_mgnt;
 	u8 org_power_mgnt;
-	u8 fw_current_in_ps_mode;
+	bool fw_current_in_ps_mode;
 	unsigned long	DelayLPSLastTimeStamp;
 	s32		pnp_current_pwr_state;
 	u8 pnp_bstop_trx;
-- 
2.30.2


