X-GM-THRID: 6802949681377705984
X-Received: by 2002:aca:c6d1:: with SMTP id w200mr6009510oif.43.1584095366997;
        Fri, 13 Mar 2020 03:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls2662634otj.8.gmail; Fri, 13 Mar
 2020 03:29:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtAbw46HLEDjYE7qVDhjLMbR8AkLYLnwXYKYLGESiVbqxSsssK1EXyMRgLeB7s6x7UujrH0
X-Received: by 2002:a9d:7359:: with SMTP id l25mr10572174otk.18.1584095365916;
        Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584095365; cv=none;
        d=google.com; s=arc-20160816;
        b=IxVd8a6gU9P9U/h3k5iSG1Dxzy+t36VqRHEbMyMnUs6pFRGeoe/jI0PexUwkY/TjK7
         Ce2RQKfx27QxAOT8VqMh8gcy06TOtpaDrSuIQ6ILoyudb3/28Z9Z5RR8Uif1ffhsjbSi
         EU36i6Q56OZUlSTuqrEvwVQPAQ5IuyZptzhCLmQMpcdQYIT7p4j/1sdz3vwHRNPbuGf1
         DsYK4k9AAwgHGE/EK2MFhBw6EaXfxw5yPLcBnnTmWT0JXMptwfm5bOegBtX5GOW4oU+9
         sXeY9/obMda/bgQgeIvJzR+rOXoEiYNrQwv61Vw0fYGl5yOo7H5aJF4urChIIBhE0z3o
         aAWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=kqXMRjosvrMwbkpWYYUMv/eKp41LgZaQN2jfs/TMCUU=;
        b=D/oBcLJUQVbR4fae8O4E3wjo271Md86FSDdVGM9J2bURmFddnYQev6axJ5yNwdtXMd
         CZ2qHIsdabXxf8DFYbz7d9qJ6EEL6cfeOD6EL8vreoMPeUttm99pBTFg6H4eeaR2J9tc
         F/Zvh+qSoAsHSL+Kt+wlpOw7ypY4omx3FAv8E+5oR2I2t9H305RHTdhnIf/gQPpf7HQr
         k5IeHJ7pTiCUhFMIcx4oa7BTIZVLHMHPjYFuURi+H1dNtjTC8w+WWMEDka/NoRqRXpop
         SqF+pEVN2YlVzxArx1JjVnKovMwaN1iSHcyEBQqFaPpqr5ApEpjvCp3bV5TrOKEcFTeQ
         alJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWbg2LKq;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b1si298095ots.2.2020.03.13.03.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWbg2LKq;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g6so4052914plt.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=kqXMRjosvrMwbkpWYYUMv/eKp41LgZaQN2jfs/TMCUU=;
        b=EWbg2LKqIyxcTZt54OZrlCbltZOHFk7QAr/BjENsjZfWl63N37tNSXyfPxxA0hTRu3
         or4rZWujQhztrFqJsYFJUd8k74Q1F4Tqhf2S3hd6rGIxw40W28bThPpt6NfqCcHbHQWA
         4FXoQ7Pd1UOft3mx57iVigFUPwH0cIsV5yat2JaHnEto1jFCq+jPPaepNxUksBrEPIid
         vY9b4GzJoo4MUSaptYYtogEF/CGnjXQOAaYUFXQZCP0VmpL2vY5j+nwNFN0guSeNqH7Z
         D+3voASXKTB12c7Rt0W6n1c5MEXIcUb0v8hC0Y4iv+tApge+jorRS2kNNs5Gpg95KcqX
         CtFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=kqXMRjosvrMwbkpWYYUMv/eKp41LgZaQN2jfs/TMCUU=;
        b=WgzrukXHKpCfzKu++RwYGS6dHcKhjf2HIzGopIyHox1nO11nQT51IPhI2XeDfOCs8D
         j2yIeLT/1RC8FxPFfKL+9UtBN89tejj4oQLd0IZQo5mXWRJ6yFLah3omVaiegK2Ek8JV
         3/BEAsLs84MaliFjFhqOaB4dyVW2FfBRRXGQIak+Q42flfJMdgQ6RDZTJLxC31TTLqoW
         GN8+rmwGv7cWnBkVmWGKr/61jUMFbX3UKLuGwTp/dGLKomhXOfm9wS1JEAyscWCAz2Sx
         HbxyKPnM0GP0YWeO8/nBKhzvC8EBl+m1OV+sZi6S1mYeywabz2maK+AfAXd6rUZfC27S
         sPdw==
X-Gm-Message-State: ANhLgQ34Io03VBvo7VJqaUe6qog49BsxUf5ZOJ1vIzc7XupdUh5/MEfG
	3h7DYwkmTteIg70a44F8Vow=
X-Received: by 2002:a17:902:7592:: with SMTP id j18mr12588240pll.180.1584095365090;
        Fri, 13 Mar 2020 03:29:25 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
        by smtp.gmail.com with ESMTPSA id u24sm55719326pgo.83.2020.03.13.03.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 03:29:24 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl,
	shreeya.patel23498@gmail.com,
	Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme: Remove unnecessary conditions
Date: Fri, 13 Mar 2020 15:59:12 +0530
Message-Id: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary if and else conditions since both are leading to the
initialization of "phtpriv->ampdu_enable" with the same value.
Also, remove the unnecessary else-if condition since it does nothing.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2
  - Remove unnecessary comments
  - Remove unnecessary else-if condition which does nothing.

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 71fcb466019a..d7a58af76ea0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* maybe needs check if ap supports rx ampdu. */
 	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
-		if (pregistrypriv->wifi_spec == 1) {
-			/* remove this part because testbed AP should disable RX AMPDU */
-			/* phtpriv->ampdu_enable = false; */
-			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
-		}
-	} else if (pregistrypriv->ampdu_enable == 2) {
-		/* remove this part because testbed AP should disable RX AMPDU */
-		/* phtpriv->ampdu_enable = true; */
+		phtpriv->ampdu_enable = true;
 	}
 
 	/* check Max Rx A-MPDU Size */
-- 
2.17.1


