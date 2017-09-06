X-GM-THRID: 6462776611954491392
X-Received: by 10.200.46.99 with SMTP id s32mr406369qta.50.1504735562484;
        Wed, 06 Sep 2017 15:06:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls144325ith.13.gmail; Wed, 06 Sep
 2017 15:06:01 -0700 (PDT)
X-Received: by 10.129.197.13 with SMTP id k13mr433846ywi.51.1504735561663;
        Wed, 06 Sep 2017 15:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504735561; cv=none;
        d=google.com; s=arc-20160816;
        b=OOLt7V+va0ELKNQ18W0ra5AVKbRYWgWNHEK6Hsg8oFHozypZYjtNVCZjdnr5IaEzuL
         pvhzoalu4XgKJ2ah3F0h5HCo5RWHkCNwrcFsHuUJu/XmwBn1bJNP/1ejMo0xKsDYSqEc
         4CFAhuxU0/zFeG1ZWJukC4n3rKHhKPcsdv/qgYVkFopuMGy5O9gXxB8nHPaP0l1KObpe
         oi4hha5MKn+B6b3RIFbEBMQvu9VQaa9DG15Z0FSqwad7tVxYkTdeFSASrEAihFBQ5bic
         AAgkIvi/Vqk57VB32NI/CAxRKxz9UKHVKkpv3z5x4m6koqgZLzDdUvh1ftJiwYniOZ9K
         O1lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=XeLgW+9jb6VdEkrnrKhuqHz9WrU5KYbAx2oanrDcmVA=;
        b=DVuVdq5Fu772fgsBwHoIlxJOzM3IAVRNqaZlCc5KmwsL7S9eHm9akXrklCpEcU8TiU
         lalr8JY3qAz49P4P7lZf/MyIQ9DUP1fAkG0HwIj+vlpuo/PzMUfZ4CDS30t6I10nRcuN
         Cydl8k/eR5xXiEmL+udhb2v6GMT8jfqFKo/1mdkaV7pffOmgmNDB+Y3l+x/JPdzrmcKZ
         uyWZmUOoJM7eVebcq6Cnm7MljwNDkzRQU7VCZRrIIXY9V1SoTYf0pRTkaRv88ZrSyIfh
         fDaYjEd6uZQCGHlEvawXk5GTyNmpOawi+zA2VQZdW/9XzDSw0iRoXoyUcs2QYFjGamWZ
         Gt2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcfaEfd/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q65si131809pfj.8.2017.09.06.15.06.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 15:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcfaEfd/;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g13so3281495pfm.2
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 15:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XeLgW+9jb6VdEkrnrKhuqHz9WrU5KYbAx2oanrDcmVA=;
        b=gcfaEfd/ov4ZlcICTneg6Wl0/cqq27ha7rrt++Pdo6FJyKG1j98lt8zjurXsOwvkSO
         x1svF6bD0+gkh85QB5e0O4bRQbFkmnrrsw5/GlAHF5/rmy9jKGtQPT9jvLecMP7EIs5q
         AVGCma+avS+JRvOJ/OI9k5Ax6uUi+w0D+416iDa6khnCDdKmg6yC9QeLfa5gYsg2GaX9
         dgWrEHZMMLZMzNf6KkgJXvFsqGErLtrPjCvoIUiD2IWT70rlGhUj/P2byAA3WTz4POwb
         RusRX+1r74pkV6AFtmNdiJurMu/Yxf7BaCmHaMhaSfaDSg8keknj+fGQMZt7zKSjmM/Q
         vhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XeLgW+9jb6VdEkrnrKhuqHz9WrU5KYbAx2oanrDcmVA=;
        b=J8PAt2hZNsk945v50YkKgOuNHNFFADLFlAm1MKm1ZA9r16t/4/LouZ+NKoKOnMVZ8g
         8RHhioa3VzlO6iOdGSh/3k7Klm6+mVQ5HSu7eLPzY9agqph+sexLEBEtLwDgcZfeXEtk
         5beoqfDXD27KIjJ4GjCjQuqk+aC4QHwNDCuTRWbm8KLkPE/GK5qqNmbnSXl4KrDcSk9e
         0rC0a+tiGsG6ZSSPSlU49T1oP+qo7CjaQcQL4pklxvxdaUK/OrAw3YT3RgFEjB7pqYB6
         ZNHihNR3o2JlZBWr9EBcSgy7FSKd+StlodY4ZhM8O3Gt3dh7krvJZPswxOTpVAV51jqM
         Xxrw==
X-Gm-Message-State: AHPjjUgpHgK4vqwMpMLrvpOvhE+I8DPJwHpSz5gSquVOTIoxeszZ7X5b
	Ko5oi1nmniBthLaR
X-Google-Smtp-Source: ADKCNb67kpljwOTetiJi4MUSz7UmNAAuDjQQUVo2dEIQaLj8OOeO87OFfAoCISmKCNpWcB6wM3Jeyw==
X-Received: by 10.84.209.236 with SMTP id y99mr666587plh.158.1504735561381;
        Wed, 06 Sep 2017 15:06:01 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.60.94])
        by smtp.gmail.com with ESMTPSA id p68sm13895pfj.56.2017.09.06.15.05.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Sep 2017 15:06:00 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v4] Staging: ccree: ssi_cipher.c: Remove unused variable.
Date: Thu,  7 Sep 2017 03:35:53 +0530
Message-Id: <1504735553-13753-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove local variable inflight_counter, as it is never used.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Change in v4:
 -There is no longer a need to make the comment more comprehensible, as I
  have deleted the variable associated with it. The v3 of this patch was
  not based on the original patch, hence v4.
 drivers/staging/ccree/ssi_cipher.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
index 8d31a93..1ff3c8a 100644
--- a/drivers/staging/ccree/ssi_cipher.c
+++ b/drivers/staging/ccree/ssi_cipher.c
@@ -697,13 +697,10 @@ static int ssi_blkcipher_complete(struct device *dev,
 				  void __iomem *cc_base)
 {
 	int completion_error = 0;
-	u32 inflight_counter;
 	struct ablkcipher_request *req = (struct ablkcipher_request *)areq;

 	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);

-	/*Set the inflight couter value to local variable*/
-	inflight_counter =  ctx_p->drvdata->inflight_counter;
 	/*Decrease the inflight counter*/
 	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
 		ctx_p->drvdata->inflight_counter--;
--
2.7.4


