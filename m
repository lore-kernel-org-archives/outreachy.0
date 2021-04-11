X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:8118:: with SMTP id d24mr14014356ljg.133.1618129763960;
        Sun, 11 Apr 2021 01:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b0e:: with SMTP id u14ls139468lji.5.gmail; Sun, 11 Apr
 2021 01:29:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzj0xg7vKdFVlKv/CJAg52qAK+xxzUbbpxTnEfzQjHULmzAFUzV+4oZU+G/59plrgqPzkD5
X-Received: by 2002:a2e:a312:: with SMTP id l18mr14572627lje.106.1618129762287;
        Sun, 11 Apr 2021 01:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618129762; cv=none;
        d=google.com; s=arc-20160816;
        b=vv7bb9UIFhicvoNSpdwk5dEGN6YR8jpfM+gUkpqHR+Pw0tZ8rdZ3i21b8Lfu62rXd8
         fnyyY70uDmCjondAKqbMo02VDrLygVs4axdyFRC/cJ5FFILjLjus1Vva6I8V0L7Ir5Se
         IlspA06rr1TARpiXv3EEZ0Avu5Kh8EZR4XxdDBwhQpIq3SKMNqQLN8HibwBjNhtcxhu6
         VVwryP9tM7VrXEotQtlHd6DPoF/2x10e+GMO7Q6hvHUE/fPXT8epT/9NIuLZv1NVvIll
         YzGZQOpFKz0v33TuJ9Nrl8C/YfG4FcrW6NZNp9ynZbaVSzqv9nc61kEx8EF9uFdNR8YY
         qOwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=72TVdz9a5dPpG854x3X6drcOYv9ZRloX7LoA17BMc3E=;
        b=XDK2q6HoV/bpfXHeGZ6xsxgIjkZFJSPVsuUED9dgjK8iMo4IRdAiePis+AVZjDN61q
         jIC7lzUN7bMBUp5m4QDy58SYx8rkKprlAfd3/bLpsyMq5x+SWPGIgIhcKSv2IFQQMa9A
         7RVDeu9CTZJkEHCPSUm/qo6sCt+yjXy5lIZf9GCEcwDuu5vhr4FUPWA7Ds2TERyz0TP6
         QDorqZC1q9gb/spojovhjZ2PAyJRN/vU1kYFtbxlpt8DBPXo5AZkhvD+Ff0GqsH+1dFW
         8pkJHfryQfD5d/Ld0OJR556zPSt2uf0xhkRsqRc/Sdm/R99Cl9ZPl7P0cw7vXys/DTOa
         HjQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZ9AXibb;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id z2si455118ljm.0.2021.04.11.01.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 01:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZ9AXibb;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id bx20so10206765edb.12
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 01:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=72TVdz9a5dPpG854x3X6drcOYv9ZRloX7LoA17BMc3E=;
        b=nZ9AXibbwW7DMAcaH0yiehMHVmFFpyecFdA4OfmXykn6ehXJ1daGFOh0EYdVISralX
         pBOxWkg8NpIouMVIImOIcvIyuzwnK0V53bQJpHhz/X9QmAUvgXe9AXXgIOU22mcjfKLa
         x4H/qymCxedCmUbVw95mbrZ2YX1QR7FmxYOgjPdlAHwDS9D8z0Rlu3D5X+WfAEDDwcpb
         YaelfQ3m7P2QP3yppcfJpBaWXo9JJ5t/2Vfr+W31IK3EqSMf7yz6ApI96sUHBQZHRxLw
         VTsA5EqNcrHX3EvLx8QpvH4tuQh39TVQ38y9o5vlExmrTDKJSNdIRKR4lWi4CCSBZOF5
         j+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=72TVdz9a5dPpG854x3X6drcOYv9ZRloX7LoA17BMc3E=;
        b=Quz1vVsTQUlqsDNFHKLDBbBAQGX+iGfLbNSFmX5LmqK2xoZm7nl9uczy0oGU6B2sFy
         5xl7Q3eUF3ekYeikxtQJBkZSfLpZd9s7IHkdIazr0Pw9wPInBIQqVBQZetjTizh1Cf79
         qX7ed97lSMuuLKh7Qg8PhHhkL8UxIn5MP2cjiITwqTwAcRQdfDfD6i4AFlWnvS0dR9Yk
         ob7SxAaunYlj+ruxXXG6/LQZVwkNFbV26O/g2XboQAGqq4T79oDctE493idvCoxOuDfT
         /HgFDPywW7NzbpvcYBF1qZDY4x+85d57NE6tx2OtKGI64kj6ny4CvSoE1+UPdtEFuW2J
         VgnQ==
X-Gm-Message-State: AOAM530PFZKXGujq/P/wdEacB4N7mzDypLPAUpC9NBiNbxeYEYblTSuF
	kNu7DHlZ8VKA48LHymF77Bw=
X-Received: by 2002:a05:6402:440d:: with SMTP id y13mr24827489eda.316.1618129762062;
        Sun, 11 Apr 2021 01:29:22 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id hp12sm3682541ejc.46.2021.04.11.01.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 01:29:21 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 3/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sun, 11 Apr 2021 10:29:07 +0200
Message-Id: <20210411082908.31876-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411082908.31876-1-fmdefrancesco@gmail.com>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool. Shorten the controlling expression of an 
'if' statement.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.

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


