X-GM-THRID: 6886892993455849472
X-Received: by 2002:adf:a551:: with SMTP id j17mr4344528wrb.217.1603479728276;
        Fri, 23 Oct 2020 12:02:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4ac3:: with SMTP id y3ls3284613wrs.2.gmail; Fri, 23 Oct
 2020 12:02:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMfSF6rSHpOABZtTECYg0wGCi4x3kUdjD4W2roTiOCibCyy9dVxdDWg+mtEY1aQS3aCSoO
X-Received: by 2002:adf:e447:: with SMTP id t7mr4061493wrm.384.1603479726318;
        Fri, 23 Oct 2020 12:02:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603479726; cv=none;
        d=google.com; s=arc-20160816;
        b=O0S02MInRpQVhQHS1dkl3O0YtrZfnfCfgPdgGQJvmPDU1mwkMBFD4ki4zlaUG0cOx0
         5b2DMQOgxeLAphoU1pR2V3ySksDk+yffc3oaoAqRMn/3T9NmMXe5Mqd7BB8BW/pfXHvj
         s6VJJa+dbNn6Vfsb0X7AgzS6Ivo4pG9QtKEhSsHObPqI3iVUz5nfp6iuDjkYqsVnhxoN
         az00BIE7ulrM2cIukcrvi5wBgsiSqtM+uBo/TuzUQ/MscyoV6JtGfwWSRx3nBT0qMQt0
         nVpOSfzhrxRYLr5o9iuzz+PpAGsS7TsDUHDkQk9SVts3CHkYtoWah3KTFlUSkgCwszWB
         gDQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=qlsMOKXM/uvAxT1SrbRPjtwFfgH27iIs9VjOn8nGroI=;
        b=mtdfykzHCz/fSUHV3cwdV+6btgWbfJLxJ5Y3zNQwQsGcGsf0hehYKGnJO/hKzPA4fQ
         7P+l+W7KHllR105irnwH/nrT/jrAdFCEX25rrons0PdYJfea7IB8U90dIqcUE8XjGjVv
         /BnN6mtPyHYU5nbQFAKaixC4EtRHDNhSmTe4DBfOBrv61qmrwjdLjSxJAsRUdR1yOh9v
         nV9Rp/WxoNUGdf+F6bXtdxFMq/hR54KZnQ7DxrRTgXRixrsvT4aLg9z+9BlDLHM2wioK
         ZKDBdADYQq8nrFOuP1jSHsQV/deX/rlCtyzj4/Sn1it3615GQ8aP9DQFC11pRG17M3ZT
         dgUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H5Rb+JNW;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id 14si87007wmf.4.2020.10.23.12.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 12:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H5Rb+JNW;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id m16so2667770ljo.6
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 12:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=qlsMOKXM/uvAxT1SrbRPjtwFfgH27iIs9VjOn8nGroI=;
        b=H5Rb+JNWW9lNhL+QGWiM2O/hx2JAH4KG+qD5jQa+tOyBIOGLDo3VLvAZ6tb/XDPl6K
         2kSuelIXAYdaOcLD+6geUmSW5CNSgKmuz45nxn9ciGnI8wpM9HkSOyz4VrTw5dKUreYw
         3rgT3gVvFk9fkaA4O7QaVhwdz/zt7/RdqcXqPprAQoTq6zao0XsTvz7zQnUN5Lf6GVTj
         EWSGu3d0Hm+an/bYI/pjBgG/xWPzwUwyuFXediFzmUzFLCdkuDZmyw2lUqlcXa0Hqeh2
         MEt+RIO0BmPaeVAc+HBgmmJ9/MW58mZYjHSyvMHtmjknPgzmcqHjH1/n/jA6MTh0ToNR
         76vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=qlsMOKXM/uvAxT1SrbRPjtwFfgH27iIs9VjOn8nGroI=;
        b=dnegQdtYzVDdW85HRIUOwlyV6lrNxha1Uo5ZqMLTSc2YrREw4TJI8Kqqy3v1FNYA8B
         Fe7d/zO+zuAX/8v0e2cgedUd8crLaAEz2ZhlpzATL56c3HTiPSS0egaLZiR70kN6uIjN
         szSoh2CgBRihLvtAiyohGrQdtFp7AR+eYkkpdyNK6EIvWb1FSBLK4IHdrwXLiQMnEp8t
         bkw98Bjzqi/9Qt6Gc4VDK44OJD7N5CCbXysYmg98IqJQT0hpncRdssGnCD3PuIqStMsj
         SBNlFAau9tC+mlt+o0/K56+mCQEuFvitMTNUmqquGyhrLIgP9QZqifvYtrTqmrZ0s+8n
         hTiQ==
X-Gm-Message-State: AOAM533gtDykh8Hrc2vClO8UMQG5CyT9hv86jyYrfFM3d8fh77ykfj90
	maDaf2Fng8Q4//2LV2njpxvqr6iR9wN1xkEN
X-Received: by 2002:a2e:905:: with SMTP id 5mr1332793ljj.136.1603479725775;
        Fri, 23 Oct 2020 12:02:05 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id x131sm214266lff.175.2020.10.23.12.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 12:02:05 -0700 (PDT)
Message-ID: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: replace kmalloc/memset with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Date: Fri, 23 Oct 2020 12:01:47 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v2:
	- correct the subject line
	- correct the commit message

 drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index e0d79daca24a..c9959bb4ab63 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
 	struct rtllib_txb *txb;
 	int i;
 
-	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
-		      gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct rtllib_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = cpu_to_le16(txb_size);
 
-- 
2.25.1



