X-GM-THRID: 6665747871131762688
X-Received: by 2002:a62:47c6:: with SMTP id p67mr5712387pfi.24.1551990375256;
        Thu, 07 Mar 2019 12:26:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls3046119pfv.7.gmail; Thu, 07 Mar
 2019 12:26:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRBoxOZ7SEr0GGyPXASTNGnGwNLV4BLHP4r7Y+nYVg4JFibFQ1NklLTv+W+41gR4DBRYON
X-Received: by 2002:a62:e706:: with SMTP id s6mr5612247pfh.87.1551990374585;
        Thu, 07 Mar 2019 12:26:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990374; cv=none;
        d=google.com; s=arc-20160816;
        b=0bcewyF8UtveHyvPbRK4UkiQulj2CFcuWpXTG4ntD9d5LU+hAQpvu4NGj4JqzcUsJx
         LadZ8EjJEaVBHOFQB0JGDNbso3izE2uq/qYvPtaIkVEiMhURbJfvjFpAXC/YYcf2Rq5H
         OkgZBy7h3xC12U7qv4TbgFen4A2LStd0ZxHW8ECtFP9tQ/78QqknlOdPVX4ZG9c4vcUY
         dgb1ujngrqfvLMbkhtmEBqP9E8ndXf9u+AtV3GcVHke/XXX7Zw63+tY3zQaKoSNEsyjC
         tLB0JX738xnD8IasXgbpPuD0Z5PCSHAGqlFz45vAtiBUWlxl+fGbq2DK1u3mp1WGSeLl
         0VMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=mYifNLDt+DBNMs7P4COcVI5pk4whE18uNTswYQYXlfA=;
        b=Dh908w4motylsTzbDAHQgOeu0bHRhMU4nE5jIA/l7tuO4Cs5q3YK3tpop0eDuaCf1N
         7MxXxn+Pl/7gQsWddrOoK7g9ZLLUiYVVQLnYBASyEcmCgAd/NNKdJKRWQFE+RJnleRma
         5ueq8Tl1wuOU0OFbNjmtSVJTr1FBty1UhkyVeD+WiR9c3YjcN/DPWkLy92AhMcxwmW1V
         fPkQr5ny48F16KEtg8SHPbfSYfdy6CsmFghSKaXZGhku3UTL73f9rtcWBauodI+UO0Ba
         Enr/QLsZfNtuyy0RlTI6aE1aaxxnRvClZjSIo4avXElyDhxFK7msEu2zDco+W3ZB3Ovp
         1oew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEniNIWl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u20si504559pfj.3.2019.03.07.12.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:26:14 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEniNIWl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id g16so14000813oib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=mYifNLDt+DBNMs7P4COcVI5pk4whE18uNTswYQYXlfA=;
        b=PEniNIWlpxR10NNn9fQOJjIzbx+EJ1IiROdr9TUas3RI2rscKLbSQL6/a/iXlhYX1C
         rwZZblF5JR+Mu8/6lvS76wrReB0iWraRQr3pvGoBio2Z7e8YOIySDl3abvbZxLxTobx7
         4mlBDQu88WQjNgQFxXpkkY5ep25mD85fgNMhbZSn76ds+FG0RjqKv1t7Bv+wZ1tWncPL
         XIjdSlJzsZGM1PefEGVXTIGL3x8MbqLqsNUOUqa9QxHrLBLXnKHhq1ZW1jfZ+MctzAcw
         C2dMgL7HTxlHL4geINitIB+baftppVklLmtqVtSbNGq0sAJzUKTxMvK+abFKizyuAYR+
         Qgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=mYifNLDt+DBNMs7P4COcVI5pk4whE18uNTswYQYXlfA=;
        b=TmjqPvmvx/rQ3pcAXkjrRWLyCay+5GRjecuxWX02dL8GaPtGQXxTC9uKVAaxxK7ivz
         ulLOOhfUzjS0sB7/OPZtnx1V1z2Ri47xWxAiXK33rsH4ELiqNSOK77QF2VoVRyqy5XWA
         UrtK2T6UUpFXuhsfOygPxyJkh+32a6uGoT+9y6/KOG8qn0RZAQEJIeBXoANS+BjANMjl
         /dhlmufMr71eNmgu6ULDAhugWJoPKT9P3GvBbkK0x+c4L7vSX04DgpIJ6J0llVd+OwuF
         ju9dBHpFbnCq/OxsgI6XrXdJVm5aUEhHZHOc64rZ3+LQDSvZyA7b7zvvYLsJ6gcgF2jr
         ZBOg==
X-Gm-Message-State: APjAAAUg/xjMIr7jjPQ5M3jytqAgnvL8MsTz51CUEaFSbRBI6gFb+XnL
	zMGo9UrFrYatSAA1pThAZgc=
X-Received: by 2002:aca:3b56:: with SMTP id i83mr3778913oia.162.1551990374197;
        Thu, 07 Mar 2019 12:26:14 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q1sm2185687oth.42.2019.03.07.12.26.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:26:13 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/2] Staging: vt6655: Remove function definition
Date: Thu,  7 Mar 2019 14:26:00 -0600
Message-Id: <7941e458a9ad3a5154647aae58b2b93e428c0a90.1551990063.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551990063.git.madhumithabiw@gmail.com>
References: <cover.1551990063.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551990063.git.madhumithabiw@gmail.com>
References: <cover.1551990063.git.madhumithabiw@gmail.com>

Remove function definition as it is never called in kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 40a8f1ce837c..2f773fdf8d64 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -57,13 +57,6 @@
  * Return Value: true if all test bits On; otherwise false
  *
  */
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits)
-{
-	void __iomem *io_base = priv->PortOffset;
-
-	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
-}
 
 /*
  * Description:
-- 
2.17.1


