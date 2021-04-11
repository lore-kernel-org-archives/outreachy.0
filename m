X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:a58c:: with SMTP id m12mr3860076ljp.363.1618138582236;
        Sun, 11 Apr 2021 03:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc23:: with SMTP id b35ls561736ljf.7.gmail; Sun, 11 Apr
 2021 03:56:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIWLnsOkWcK3txAEvREvgGEeYXe8MODD3mKZgKvaw+cRtG5dCcOqjFZX+a18wIIuXUtHZS
X-Received: by 2002:a2e:b042:: with SMTP id d2mr7244784ljl.305.1618138580796;
        Sun, 11 Apr 2021 03:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618138580; cv=none;
        d=google.com; s=arc-20160816;
        b=RcgOJBFEzOGbE6n2Bz0YlPj8Whpy4h6/CWfHSL4rZ+FolmkOqXi8rOHzHGwr9hYIhU
         V2m++LPQ379YTgI2qXRJ/7wRLmME+Dt46w54K30oWpQR2BpSFnVOCjRdlQdSWhUzyTP/
         uJdO/W/5sTCWOtyIoJeS1WAbO5foHWMNGNfUHpKZwS5RpZX6yrw6ri/ro5PvS7s6iyoT
         yinONj4naocGTbIT9DMGB0c2wbWwo3ZsqHJY249Cf3H46nJjLwzg43IhAgUu7Hbs/H8C
         c0NsGS2SVF0b+xhcvdJP5uWBUZXSqn6lx6+bJuD43zibg4UTCSzWg2vwfOd8So5ZWgId
         C10g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qc4L7mpVhXQBQoYV5Tcy9Lej5AGDlHmGHEiah52/mIw=;
        b=oYSEvqKCyv7xnvhUW1LbEPeGs2VJFSKlkNGwdI5lTshemvN/KpQTYqX+ln+NQs6crL
         PupAd+X5jYDEDN6eKoyqD3CDSrSYFTQ0PaQY7+EHGeNArUlGuSvvEBDHoN8+CC9rIsUU
         SCgkVVB+rA+1OJb5MUYvjMCOcSmYEZI7wWVdrsagQWKC8TJQGSiYpcnTtu0WJYo97vHs
         Y9apVCCwbdc8yWVrsB+bsycuWSH2IzhRhFEWvI2Rb1zwTfBCDj0PseC+tdXIOcbXWMn3
         33L+J7zDEKRv96kadvVbXYuvEtbghvlJ4exgrhUbWTbUUgxR7BBHEX29kXrMHmnGksB9
         cPtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBsMRDor;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p18si483687lji.8.2021.04.11.03.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 03:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mBsMRDor;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id h10so11538702edt.13
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 03:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qc4L7mpVhXQBQoYV5Tcy9Lej5AGDlHmGHEiah52/mIw=;
        b=mBsMRDorAk089raaOhTUTUiHHHCe9k1DiZ3++uqwkN3GgtnEUhp88W2JSd2oZiXmin
         0RdtZ2cGEsrjoUBNAmf+AIQvC0EOLDs3bUY5DZuJduXTlNgfKcb7oIw5llBTKADMK+sG
         N9/1xbtHihljNMwZVB8lyCgZ4bqCyYLngCPZjN6MagvwRjIO6D0xBW8GNQJlgVumBc6O
         gXdE1l5vrZ+kL1QZ1cnjuh+5eUDDomrVls/cr24ratQC4Rty7a4YaDpu+qxsxs3BJ9iY
         XVci0CKIgjLmoZymtRGVbnt5Ojy45DhiY89h9GAyeWO6uQGMTdeBaM8uzMSooCe/0VYH
         Eo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qc4L7mpVhXQBQoYV5Tcy9Lej5AGDlHmGHEiah52/mIw=;
        b=dS9fQ9HNLW8GrbS6xuLrmo5DWo2o/0mvoNj+kLzSEhkqo3NNvbhGbohFdgDwvnXXhT
         jRi3OFQy0vjF0+MiIR3DaRdHn4pm4Ci4SDECqB6qryifbZ61M+4eZnTwsrFmlFZaswns
         uIojVAAxeZYj5njcsgu2/RYm6+RUiwLgSmaSR6hsSgTmBEyHYx8MJOD0y0HcZeHsV21g
         /8zFJpDrjquIiWWFUCsbt2rzj5eC8zyycZkV5LB3xByvTD5UP0BlayjY0DNziKK6m8fF
         5zBu9jkWNz56aKZbU+WzuGORGzpwyimYFmYoviPIPWEh80HTau4Mm2SbduYDZIguD3pM
         ic5g==
X-Gm-Message-State: AOAM530sHvs1Y6apPCsXBWJmD2NLUjZfkoi9ynlPRuiUdb7hPq2SLCJs
	czGXyICkxU7H7j6im2RQ3QQ=
X-Received: by 2002:aa7:d54c:: with SMTP id u12mr25795830edr.234.1618138580394;
        Sun, 11 Apr 2021 03:56:20 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id f10sm4369100edd.29.2021.04.11.03.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 03:56:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v4 3/4] staging: rtl8723bs: include: Change the type of a variable
Date: Sun, 11 Apr 2021 12:56:07 +0200
Message-Id: <20210411105608.12900-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210411105608.12900-1-fmdefrancesco@gmail.com>
References: <20210411105608.12900-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the type of fw_current_in_ps_mode from u8 to bool, because
it is used everywhere as a bool and, accordingly, it should be
declared as a bool.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

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


