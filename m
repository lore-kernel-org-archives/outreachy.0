X-GM-THRID: 6669714716866117632
X-Received: by 2002:ac8:22e9:: with SMTP id g38mr10214442qta.47.1552913970003;
        Mon, 18 Mar 2019 05:59:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aa9d:: with SMTP id f29ls6697255qvb.4.gmail; Mon, 18 Mar
 2019 05:59:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvlRXGdYyKP4usB6Dqf5oN6+DQNgxWB0nJxsNnpLv0HaekmqiVxxYHrJDzRCndEcrZ9zlD
X-Received: by 2002:a0c:d112:: with SMTP id a18mr5080297qvh.35.1552913969358;
        Mon, 18 Mar 2019 05:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552913969; cv=none;
        d=google.com; s=arc-20160816;
        b=UNrXJR+h3RXJOWfpdQ1i0mLt4MWjLZEojLsyiiQHplYN/F+mNQZNXiSXWdZosFI+Zg
         DTwjxBtyDwjPN4QGrbAO5zMMPATEG3Zoh2nc3rnweDip7YQpNgxcqsV4TVoOloI7Ht74
         VtPyMn7oKZ6BYkVJvHzTUt4nAvmMsZiIowwYpcxKxJTx6U6otOtxCv/p/MfOkQwmqzlh
         anoSZbt6CqBT/GlYU/F2DhfjWHnNCtGTeHDEfyhPIi9zJDxrG6HPWRdbjOtcfgp6kqx6
         RP3teqgaPMYuy9831X79/fG92mqRWH3GnZl5HTBWYVw/k0X4+NMdxG9Ue1ngw3424ZTU
         998w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bWJ/h/CWPqKWX9rWVhxXf0XihQbfdk1oci+W/sRxR5E=;
        b=ERHjSHsoH3KvqzDK2j+LCIO/y5vFlKXhU3lsj4hJoR3U0WllDZBKEiER4i5kBEFqqZ
         tDVwr7J84YBiAcV1+KRnmmGNwzuMsqWEQWunKrxicaoMjaPNr7j+UqxrdQ+yU2SpUg4y
         IrugTNdbbi07i2I0wGnyRXY7g/RS5eRHLDH5ImLMC6P4u8LDY1j0BvkV2T0yFw2yuAqk
         KqvmWPFaFgeGTkgMVsa94YH14teoFTMrhM3poeBhw7G0xIUYqsMLDx2/NJhH7+kg9FEO
         1sxO8BAhPCfGS5dvAWO1m+CtSEzzMQLC8WEYF3BmGjO9BCNjgIjybbSTNYGEZCXPoH7C
         QgmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rk1OZA4I;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id e12si357072qtg.5.2019.03.18.05.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rk1OZA4I;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id j5so11224075pfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 05:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bWJ/h/CWPqKWX9rWVhxXf0XihQbfdk1oci+W/sRxR5E=;
        b=rk1OZA4I7lDtElrJKzxJXR45zNDHct8bZcf5R+kIYyXyDPZ6sEROZexV74phFArH8z
         0NBNppgWrAhVhe4N4lHT1krt3+HcGqXkeylhqgCn/JrDxO+Oa21i8BP31YJMv4W96ufw
         TWtuaIJ8pDl82drXugIHgRRwwhpld1OK6enKq4382W+1Rv8wsapVN1ktVLlDTasx2EWk
         49ZS3HIgUgssNs4I95pk5X9LccJlgEP/+CcMvDb7A6zVm4D+TPfHhaGE4LkOUVfK0Mcq
         xKR1bWJl/Oa2uhJismplpKKudjyezqCi2oQWp+kT1YBYxNSXXpNbZSixsxxJ1X3wq1GT
         VwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bWJ/h/CWPqKWX9rWVhxXf0XihQbfdk1oci+W/sRxR5E=;
        b=HUJEOksNx1KvyI28MzXQ0NA6vsPg4+AZbsIpSoMXvynrO77qeL+sr5wA0+7GoFNHJQ
         DNluqlnSQd3bjqk3UE/NJi1SJ2MaZcNvd/ivPm+sdcM/nBaCwSurD/7pWvjPlcvANzwM
         UbBOja/pBlkVajvukLK2wOlGrol0h3w5gfBLny6qth/WQy/rxt7XRiAMFLTnpF5tktix
         mwSt1tyhfXFJQgm81M55zh+9xWQ2WPISn73/rAsJPOl9IgV+OyHeu/KSuyu7RVaqe1jP
         m+jJLzLrYyXuD7Dxk62k8M7S7/sFIbTZERcrPShwPkFZt0vI5feuxbSGFPbLjBItNSTw
         WvVA==
X-Gm-Message-State: APjAAAWnzQYq3PpTcoWLbDoEqvYhAbKkBV6K/cAa2mApIZYhWk0z0kU7
	e5CQZsWHBRxB6BD5d/IUSAH7FpFBJGo=
X-Received: by 2002:a17:902:123:: with SMTP id 32mr6393609plb.187.1552913969092;
        Mon, 18 Mar 2019 05:59:29 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id z6sm45571797pgo.31.2019.03.18.05.59.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:59:28 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_mlme.c: Fix unbalanced braces around else.
Date: Mon, 18 Mar 2019 18:29:18 +0530
Message-Id: <20190318125918.13149-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix unbalanced braces after else statement.
Issue found by checkpatch.pl semantic patch results for rtw_mlme.c

CHECK: Unbalanced braces around else statement.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index ca0cf8a86671..cbee02a86d22 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1111,9 +1111,9 @@ static u8 search_max_mac_id(struct adapter *padapter)
 				break;
 		}
 		mac_id = aid + 1;
-	} else
+	} else {
 #endif
-	{/* adhoc  id =  31~2 */
+/* adhoc  id =  31~2 */
 		for (mac_id = NUM_STA-1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
 			if (pmlmeinfo->FW_sta_info[mac_id].status == 1)
 				break;
-- 
2.17.1


