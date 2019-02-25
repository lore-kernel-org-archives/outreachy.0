X-GM-THRID: 6660473635314073600
X-Received: by 2002:a24:394f:: with SMTP id l76mr7842782ita.23.1551103349100;
        Mon, 25 Feb 2019 06:02:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:a91a:: with SMTP id c26ls3002372iod.0.gmail; Mon, 25 Feb
 2019 06:02:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRkOK1KKMd0FbQFWk2GCg7u+6L1tYyxr1RImNfDmFlJsuRvjrtEaCByEqpDgKTJolkWlQ2
X-Received: by 2002:a6b:7708:: with SMTP id n8mr8953889iom.36.1551103347854;
        Mon, 25 Feb 2019 06:02:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551103347; cv=none;
        d=google.com; s=arc-20160816;
        b=0HF17qrZ++HPHdotQpPrLbL1zbTNQbAsODFe1EELDQJEsQwp6Vk/rOCA10/9rCJuUG
         9bI2Fui6tzU7ZAHuHEUSpW43Umt9whYozLgLTWaupMrhSbnGBrVVd3ZIf1/hlCHHs1JK
         nL6Dn0btIP+7glvnILHEwowyUmGZVL5+qb6IJrEQTJ1ZSNlFG5AFe4iUZ1nWv8vC6QWL
         qOIjrSXgErr9Xq0F/pWcijt0h01pZQLSUnVvF30g1h3ejIhZ/G/tsJZ6z0hEOEpllm7H
         NZoPB/LVuxQecKEFct3Gj842BIBIZW8sZ3+3ubLD0X2nWHEg/WaD0eKQBnlvjiOKkZKL
         I7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=uUubThBnQPi6oxdAR2kApCXCItlWC1hsEeT/y+mLY+K8Pj5emDe+Qosv5CAwLMyaTm
         Q6QAhE43mYCLlO/fr7CBYr9c903oAtsGBoGqfJLTqKGQoy41CvbV5QyrYx6v8FKCDBL5
         grPkZPt0IKEeeNmoGfEnQuk9yLSDtVFIuC9vou69ubxSVfJ9Qg3lsBcJY7ZaT3H3wwAY
         RNfFKKN5BLi8TLlgAQkrZkE141/AEPQYMNlorgYLDOcAunK3/pdEmXZKzoDAU4Gqro0O
         NExldYmBD76yQAWwpMYmZIVsfN0s/Ex9GwhXtQ07D7dZK60w9/TyEszZTWtXEKiJGGu9
         5T9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FzqHe25c;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id y204si487750itb.0.2019.02.25.06.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FzqHe25c;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id u9so4536937pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=FzqHe25cqgFe1NEObK9QebjnDMHpfPeO/odmXNfjbFN1YahYVbtLXvp0NPhCWx3tMM
         3a3Gef9cJAHrFZwe/P2Gjt4txh/LKJEKtusWYQGLYiRi9jQXVoZGZmMD5JSXqvyk6/Nz
         GWI1V0WZcKppXllzTIeUqHAAnEWaN59+O+VaS925JdZ9KhOlVjDeP2S54XIpc2uEgPxZ
         e2H2JdAUgspTPPtopA8NzAAjpeNUhNV2iWLhFAoG30BzbPUOPq11gzJ+sY+QG1WNGQsF
         dU3Yv8G1+QgJjCmeY4r06VWEH/Yhv+sU8dP9tL+N9cmlStiYOqtRSSBS7xhT99Z8eUhJ
         ancA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EcN03wM/Y2dRHc1c1Mr/k5EDG9KY/SLV/ghxmLuB/yc=;
        b=mcil9TYGFKt7DIKhaXSRBkOGqi6m5zXv9qnfIPQpjFnpXL8VoFS051nXaV4wwzBYFi
         mBPpBT/8k/J7ML0SPfWZk5iks0/CSOPr8XAR1iI2tZrk2zNYM98+SsGfZ5UTOQs8AzUq
         rtWjn+MVv1hTgftXM4NU2kKOJBTVIaP9nW0REPaCAjREWq0mthYfJFe1exB/Y8drtMNZ
         Sc+Da1RizydZzN6HN+MZJtX+nN8m+8QSDTu01AVgSrcDNBgB+qw04NOEAAGNAiYxlTF4
         mdb9HBYuqiLsOZdnEo8gsbDHeRgNm2Pw9kOdnv1TjrDejoET+q7B/ajU1nEWule9+icS
         AJ/w==
X-Gm-Message-State: AHQUAuZs3RxL28Xu3iagHhl8KLtFPwIDRXOScitDyPDq8JCnAzEs7wGf
	sNzBoRa2VHhE0+0nSf+QuzfdshIyDIw=
X-Received: by 2002:aa7:8299:: with SMTP id s25mr13981279pfm.56.1551103347280;
        Mon, 25 Feb 2019 06:02:27 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t23sm6681139pfa.111.2019.02.25.06.02.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:26 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] Staging: fbtft: Extra blank line not required before '}'
Date: Mon, 25 Feb 2019 19:32:08 +0530
Message-Id: <20190225140209.5955-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225140209.5955-1-bhanusreemahesh@gmail.com>
References: <20190225140209.5955-1-bhanusreemahesh@gmail.com>

Remove unnecesessary extra blank line before the closing brace,
to solve the checkpatch.pl check:
CHECK: Extra blank line not required before closing brace '}'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index de3f431abc15..9d78ce6e819f 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -87,7 +87,6 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 			dev_err(dev,
 				"Failed to request %s GPIO:%d\n", name, ret);
 			return ret;
-
 		}
 		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
 			      __func__, name);
-- 
2.17.1


