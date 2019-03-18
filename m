X-GM-THRID: 6669707520918945792
X-Received: by 2002:a24:794c:: with SMTP id z73mr10354755itc.0.1552912295080;
        Mon, 18 Mar 2019 05:31:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls6325549iof.0.gmail; Mon, 18
 Mar 2019 05:31:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4EFCXqXktUP11vwuIY1fBAZLGoYwsSsrrA0xN/d2Mg11+qi1VPf0gvMrmKkI5GOGHC+dR
X-Received: by 2002:a6b:f717:: with SMTP id k23mr11634379iog.28.1552912294192;
        Mon, 18 Mar 2019 05:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552912294; cv=none;
        d=google.com; s=arc-20160816;
        b=k5S0S6ce4cb+GWRK9hHvs8V26g/3ZCpTY1xoqXPVNK9f8mMtIYv3Pf8MXZVkgvCfVt
         gCfe+bfTq1/Uc8ArNdDJW8bQ6BKemfT0Q6TTAFGa2/YEZ515sRy7d1fpilXXoHFhWHNg
         Ryr16FtNhwmyHe14blFeYGx2T0oIpUk8QXfLGYCRhNBe3xGaKRl1En0pL20s6Ht8jo+P
         P/2IN35rvNR/or0pLS+3bn6SBq3ZOFIK1V55CIhDRqpaGijPCcMbysMohZIt0tnTmPsi
         WZtKJfJRVv529hZykqm/7JADKy7OH7eqWaAVXhhbDCLE+dH5rniyhxwIyC+oSgw3crSi
         r3iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JevyDMfQs+TdUZ4bh8MSwHkRqk1l2rnozmiOjY8NSEs=;
        b=aRP6tXZ/pDM/Ps1o5SbdKuQUkD9RZmPJl3YcLB2gYoLVvifxcDWjHP3LVXfwtBOzlB
         NAs9gSs4V1KibHbwZLv+5A5WWfBkI4ALtxdFW2hcNIYcl0k0ue3yXbE35t5FRNacPLu/
         OqjE20EVMzaOscsj7sEnsPgJuBFUqO0yto+xuNtMVSpGH3JGlusflv6y1pv2oA31wqUh
         a6u75u8QTUq6DSKlBPztFjqrwJIqsWcb57uc67pNkyVdeSvR8abBV9TtO6r+b0AVf/Tq
         6VBV6/GaE//OlpQPmlCViYV6yUL4A2JSW7hxrJ4Toj3V1EuPckyLt7I4nsncxLANPrjI
         zpXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3793Ua4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 185si921962itw.4.2019.03.18.05.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3793Ua4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id v21so11140261pfm.12
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 05:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JevyDMfQs+TdUZ4bh8MSwHkRqk1l2rnozmiOjY8NSEs=;
        b=Q3793Ua4VrcxP+HR70QLtdxN5x5rYgHZ96tpdm0HwAbjvTdViRQ4BE9mVJ7zE1fndq
         DK6Er85Oy8njLhvIEe+FdfyO/PjvsUAF3ojgMsGEFDRgEN9t1C8PRTBprlfb2UKCJJtH
         P5wayiGLdiv2MlhJUAU8+jty7ETA8N6X/bibnauN9vi04zHrkt3peLt2dK+ZJxT2DwKg
         eDdgUiZf4gvn2QH6XlfnlutxW473zhjuqu/SWDYNmba6rTtWdC6rjM8ojqXd9/SMYSiJ
         68O9XZNIWTieIdl8cgWf5POZyPeKHL1nbPi+FwoHjDd2h5AIcYS95nTlUFXnbL5E7HXi
         h+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JevyDMfQs+TdUZ4bh8MSwHkRqk1l2rnozmiOjY8NSEs=;
        b=nvAf/G9fsH6apzyNbg7zKFJ+XuD2ngnZGKC2nwNkZ5jci1R58mI16njMCT4ZUl552P
         vmhGyuumwDb9yU79EniGv02AdX3kzLBiVxdjkYVDV1IN1gQb4M/2/rUCesrkbQZnK3Nu
         vwltPKzYsWq4xkrKk1eRtFxrf8DV51dFFI25BK3GVW64IB5iA1ij8GtxWZuF46AgrCrP
         TKUkSp4yTbfe8EOwGpLgjsxpCvfZnz7c9LntNYeYd6mYm0CmogpdSUG64POwlReBMTz6
         MtoxpuI4xCm3gfP4v6+5KJ+xWuLdcbAHZsx2/URaAKuGS2DzDAqvg2CkoAJBlFwaIHQN
         dREQ==
X-Gm-Message-State: APjAAAXUrf6gYMG6lg2CdriJjAMuaAvzHCea+uJIcnEmbfhQDjsRdd8S
	lxYLkv+p2Bl6ShKRRCX9fIM=
X-Received: by 2002:a17:902:28a7:: with SMTP id f36mr19633549plb.169.1552912293871;
        Mon, 18 Mar 2019 05:31:33 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id l79sm22122179pfb.102.2019.03.18.05.31.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:31:32 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_pwrctrl.c: Fix a comparision warning.
Date: Mon, 18 Mar 2019 18:01:21 +0530
Message-Id: <20190318123121.11548-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace the constant at the right side of comparision.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

WARNING:Comparision should place the constant on the right side of the
test.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 6a846d08d449..7b16632048b7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -374,7 +374,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 	}
 
 	if (pwrpriv->pwr_mode == ps_mode) {
-		if (PS_MODE_ACTIVE == ps_mode)
+		if (ps_mode == PS_MODE_ACTIVE)
 			return;
 
 		if ((pwrpriv->smart_ps == smart_ps) &&
-- 
2.17.1


