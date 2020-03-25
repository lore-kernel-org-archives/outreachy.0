X-GM-THRID: 6808145829540397056
X-Received: by 2002:ab0:6657:: with SMTP id b23mr2408624uaq.14.1585144975614;
        Wed, 25 Mar 2020 07:02:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls248145vsk.8.gmail; Wed, 25 Mar
 2020 07:02:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsS3A+FKWygkEy9RHbA75b5P32nSg4v8CryZ7pC/UGnlYP4BMJeRuNB01Mxc4xDPJ3zeGHO
X-Received: by 2002:a67:ecc1:: with SMTP id i1mr2479860vsp.145.1585144974237;
        Wed, 25 Mar 2020 07:02:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585144974; cv=none;
        d=google.com; s=arc-20160816;
        b=SqeZrBWHxi2J5z4C8uMUx3o9mZkb1OR6tUp3Mb2DBRFPl+i3UdBc0PWuViFeQIDzNE
         OhC9vB/EmMPBAhl+vfpqlUVGVbtCzn/xtFej7PNWun6WzhcwiFYwM4YNrvgLxB/+XuDo
         4wgcL2amdZQJTJIhlP7njCjifHMJU68bppXZgLSDShNgOeGmken0gKmkxbBaryURSAZQ
         THkaIfI7v+CytloiI3XsQS3bm3WfsqIAswiEQmvKj5Lmdbo+r0371Zxbfih/JvwQMXlB
         ai0g3+SYksfs8ifIuTB9G+6QdKo9lV6L55NZ9WvIy5g+Zc10cwTv1gur/T74oYRbno/O
         0Nrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=hPei7KKSdldCeCCsKO5OWNthcsFfdP9+OayFNsIx/2U=;
        b=f5gaDof4PY9BJo6QYa/N3TFLuH16G7SPh4qVgL8xsvjp8dKPOx2z1HLnQwcNKUoS+A
         JNtHnyCavdph05MAOHcp4FTfZs9+8h4YMD+IjwQq3CW+UcziTKOCkV2qDs5ZnoS9QXKZ
         k4Q1KZO0XGMAJf4LrC8k02YamhhFjcsFMV8ZZVXEZMnPmi67wcepoNOLjTyejSC/78Jd
         vWhIzyHjscahBFhLgSCKBEx08vZmMXZSMxV5n/0pCnvcNdSiBM6poAFory3H00CCLXx0
         gXGe0H77HBRMlFnoLwHxlOyOc6sd3L1cl02SuVdYNfB+9jzgFYdsonBQD7bPBbSW2nCN
         oBEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gk1sq/UJ";
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id i13si1653577vkk.5.2020.03.25.07.02.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:02:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Gk1sq/UJ";
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id m15so1047256pje.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hPei7KKSdldCeCCsKO5OWNthcsFfdP9+OayFNsIx/2U=;
        b=Gk1sq/UJs8brD9KtcK2Ggj9/1+LHC7Rc7ObOoo4MbaTZB28viRL5bKcXESZK6p3mDF
         wklCCsF7b2+0pmrix3I0KYDKDP2zp65JzLItfn7UHmfis8J2Yl090nnmqV/QFFs29IlM
         RIlcRH6Ucgf45velQiOnaAX5/8RqmIUqtxXsG0Lpqvf8nqT1/mL323xUo0Qli5SyvdNp
         crlJiEMzFhTeGWBlFRccYuUMnOb1Iyt1K9z7a+v+WgQnni/mI+QFl8Sg73Lp4EhlHZs3
         ZxTgOxJl/EFHRH3TLDPnnGjXfBOPGrI21dG3v8rYXpjSDaipdbHm1jmx7sk0xIS7/0qe
         29IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hPei7KKSdldCeCCsKO5OWNthcsFfdP9+OayFNsIx/2U=;
        b=j8z6GRLXuxpU4nWszwaUFwlWUJZCXVCJKAtb98oH4DCjxqcyJdxJObAn6hbpoG7lGR
         x29doFu3XSPiKN4hiWCtGS9MHOpydYm946QPZlyLsWmBRgSar5w8UG9jAKqqlz/Dfrhx
         DB7oXHN/8F6S4UnNAXsKy950AMyLblWUATpwFkCdeFY8RoMVjN48P34VYvAHsU+Is0M4
         q8AYvIEddBAgeYiVcVdfIeJYj/+HEP4Yg14AmushebkHiACsQnRAClJERxol7vNSfU2X
         wdlj8o+5qM9VvO+I2I1vFsqSIyoMQ2KXnOqqTp74JEXqryUbpkvMfjkBP35oMThanO1S
         yRFQ==
X-Gm-Message-State: ANhLgQ3q61zL+u2yS9AfLXqfd0sJpL9JJVzgzJE2EeO3vUcTe+iRA49U
	BL9t3vLzqhl+P+k9Lqkxy5IU72pn36A=
X-Received: by 2002:a17:902:b68b:: with SMTP id c11mr3254418pls.186.1585144972528;
        Wed, 25 Mar 2020 07:02:52 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id r186sm19048448pfc.181.2020.03.25.07.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:02:51 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:32:45 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary braces for single
 statements
Message-ID: <20200325140245.GA11949@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Clean up unnecessary braces around single statement blocks.
Issues reported by checkpatch.pl as:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index bdb6ff8aab7d..de7d15fdc936 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -43,9 +43,8 @@ Efuse_Read1ByteFromFakeContent(
 	u16 	Offset,
 	u8 *Value)
 {
-	if (Offset >= EFUSE_MAX_HW_SIZE) {
+	if (Offset >= EFUSE_MAX_HW_SIZE)
 		return false;
-	}
 	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
 	if (fakeEfuseBank == 0)
 		*Value = fakeEfuseContent[Offset];
@@ -65,14 +64,12 @@ Efuse_Write1ByteToFakeContent(
 	u16 	Offset,
 	u8 Value)
 {
-	if (Offset >= EFUSE_MAX_HW_SIZE) {
+	if (Offset >= EFUSE_MAX_HW_SIZE)
 		return false;
-	}
 	if (fakeEfuseBank == 0)
 		fakeEfuseContent[Offset] = Value;
-	else {
+	else
 		fakeBTEfuseContent[fakeEfuseBank-1][Offset] = Value;
-	}
 	return true;
 }
 
-- 
2.17.1


