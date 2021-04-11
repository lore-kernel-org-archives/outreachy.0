X-GM-THRID: 6949457058068430848
X-Received: by 2002:a19:2d5d:: with SMTP id t29mr13388487lft.243.1618139111355;
        Sun, 11 Apr 2021 04:05:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls563783ljf.7.gmail; Sun, 11 Apr
 2021 04:05:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzM7Bfv4NHZjsd6P9iCBsaCuYx9UVPX+Vp5DmvHrNv55dBBruPyMtAeqR19aJnd/vIzOTuk
X-Received: by 2002:a2e:bb9e:: with SMTP id y30mr1365672lje.177.1618139109944;
        Sun, 11 Apr 2021 04:05:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618139109; cv=none;
        d=google.com; s=arc-20160816;
        b=qxz+ZOmF8lN4KJlmY2Irb4lvnDaMpNLns/jeGG79g6FZOJLNFEgRvQX/1iVJz44QjC
         4xhfoETLRJX70f4+tbKkIGqKbUMY0JZ/0zSJpwQ1Qwqyhzt3aMTdDOfixg9Hh7dBfIdM
         nmkdqoTay32ak+NlI4Ea9K70A0eJMt3fV6RiLtCiSyAUVPEJryNK637MVCyl53YGHD0x
         qBm/qTyfqTNhARkc09f3OxQe7EZIfg31wbGK+RTJpejIkBqBc2zi+xyQLdS2aDO7pmSX
         ftE6vaSbPbk1DflAcYxlGho0GWzjYeTxqyNgJFpAkmB31Cvqq1PmfsOkI3pEUri+rhiG
         A2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gSsTwCvLzeHONfXXfMoWnkseUsAdTn25RtS0S0FESUU=;
        b=dYo0U/jU6joPCEBbTn2S7THrgFjAMAdNs5cJYWlUh+WHw9jU1Jf2aLZAEYBMrKoMzK
         fc/f5BpeFHcncQPbmTcRTG0MPCo7/xjipuKlv817VsP7xn8Dkl+2CPi0LBZNq3ArECb4
         b1sQxOQUGPPG6brcbv3Nedf+PtygQ4+pccvjgG2/kMT6MLKQNALWHoT3r1omehsC4vwd
         x8/pdVM2gepmGnEhrTw06X+kYAHOfSLKFclunoJR2cTQ6xTh7AVrs4s/howlRGPTc/vr
         9D32CwzPaslMw2H9o9STqIzbYC9RCNYdaZoSYTnpgP78dbKSwuEFvW7a6K6SU60uwWy+
         Q+zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JoTiuI7J;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id p18si484628lji.8.2021.04.11.04.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:05:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JoTiuI7J;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id r12so15542493ejr.5
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gSsTwCvLzeHONfXXfMoWnkseUsAdTn25RtS0S0FESUU=;
        b=JoTiuI7J03ZK/zUMWHy2lvYEQhqY54DyViQODpjueEd+YKS3Ap4bb0mssmR23Ad3aY
         LnhQH9VWzAqMLNgWf29dZzVA2TG+LDkOBYQUZ+rbLsV9B1WERIGhngQAvKo6qq1Klz8x
         arjoHTAk3dd5umVGPDM99Lfat3TFUEbjbCddTw4rzuR9jWOnB5zpae+Im9rMIRVDJcCI
         FPKMgqLcULeikw/A/9dlnnRMEcRs99Y5IjMM1WcDnno876IzEfeD8mnj58/fttOVERw8
         UAcgj0cBo4m+nk/0tFGPqkHSipQkUK+x9DmmoU41fKoNCaimWbZKVRai6DYbu6jIPFpW
         V02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gSsTwCvLzeHONfXXfMoWnkseUsAdTn25RtS0S0FESUU=;
        b=norlbcYL5FvsP1C28/S9gv0pumy4PwN6j0dGb8VyGZIRooB0woQmZk5ziCA8mBOssB
         TA9/HTdmz0N8tK52G6YE5uDtFOMxqXsdiDCrM+tPeV1/0uygNSyvh7YqTJU8WQ1feA0A
         CntDKgV2AmfuwcW/UKvnzfV6VVqOHdZdMBdISkE473fS7DtcrC+lcu9mzpWwx/eoZH7O
         O9dSkar6llDjsfm9EIfuAs0NrPj0oZSXK9UTkvaC6UR5pT28YGMqhVXGQSbcnVDCQjFV
         /ov/o8/j03Hmn9j+x+te4NILjh7V1vCe+YClbj173H2KZHX2wla5P+udNGkowTyoTwO8
         IEKQ==
X-Gm-Message-State: AOAM533hz3E3Ahmc7Yfo+7s364dng3ovO8EXZaC9SS6VCaHNtxUve7rD
	ALWXTOgiSjsGdZnaR2ll63k=
X-Received: by 2002:a17:906:3643:: with SMTP id r3mr22725051ejb.527.1618139109483;
        Sun, 11 Apr 2021 04:05:09 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id i2sm4577202edy.72.2021.04.11.04.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:05:09 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v5 3/4] staging: rtl8723bs: include: Change the type of a variable
Date: Sun, 11 Apr 2021 13:04:57 +0200
Message-Id: <20210411110458.15955-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411110458.15955-1-fmdefrancesco@gmail.com>
References: <20210411110458.15955-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v4: Write patch version number in 2/4.
Changes from v3: Move changes of controlling expressions in patch 4/4.
Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 0a48f1653be5..0767dbb84199 100644
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
2.31.1


