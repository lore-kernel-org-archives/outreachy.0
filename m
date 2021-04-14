X-GM-THRID: 6951125438736367616
X-Received: by 2002:a17:90a:8813:: with SMTP id s19mr140966pjn.94.1618435010140;
        Wed, 14 Apr 2021 14:16:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls1529867pgl.10.gmail; Wed, 14 Apr
 2021 14:16:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0pPaq4451B+yTDY1Yw438yFvxEt1oFYtrdXpNsADpvXj1kN7K7UKfNtanDeFPLsXLedgn
X-Received: by 2002:aa7:88d4:0:b029:24e:93bf:f472 with SMTP id k20-20020aa788d40000b029024e93bff472mr13902845pff.8.1618435008941;
        Wed, 14 Apr 2021 14:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618435008; cv=none;
        d=google.com; s=arc-20160816;
        b=b70F+FZ0JwLwtI1nW8t/g57UcU0o47EioofjcSuuWh7prE8M2TgIyquCuta7HM4wgB
         9w2a/smASUfSz/jVno2t/g6atCsDXHHJ6uuhWjxcwF63UH23Qadkc5UCpyud2vaX5JEo
         f9ZrWjW7BQIHp7BwJ+6KsXACImY66WY6mNP6QtX91KZMuidzwbAaDU7gk1g5pA2xHM79
         pJoTnHUlxS4VIzRY6oZ6HMpqHEIXmuxe61eqyvZlv2qVlHs8iHROcnZ3MEd/RX07zbYv
         yLdqUzZgwtYZkK2nnkLElKqBOShwGsteo1xlMyoHeIWuSY4uA7i6hsZhHtilNMZ3hc9P
         u4gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qiUQ4NVtXEH1CMflbOKif0hCwSbNTklspxOUaeby/iQ=;
        b=Xt8r8/HSNmotoKtk2S7oqe4uUzmdedfPs/kzdUv/Z+hpqz5R6HSVgjFPYw38Ty0sMj
         4x7bppMbZ5FWrEj7d6X+2AOd8eXXlHrzqH+HcBoKPVoFi/8fioz+huWcYHrZMwCB9Hqc
         RipTw8ByH1kA/zdspoHvPzHtWv4cvdgr5bbATd6yrQpyUm19Q4kYBhnYzYl3NxwcZf1g
         Xij6mGjwZcUvrNKuB57KmsFUpSkhJhcDRN2y8uD+0kLHDbdXHhRtxQJZrjaMeXLvjcic
         i0tyBR0uoRNCHEY0wui6eVm1yPVsQddeINxzlni0YPOGaYscs868V1S/1zEfIXaxNDJF
         4kgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDZRHMMx;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id v22si36222pjn.0.2021.04.14.14.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 14:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDZRHMMx;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72a.google.com with SMTP id 18so6196105qkl.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 14:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qiUQ4NVtXEH1CMflbOKif0hCwSbNTklspxOUaeby/iQ=;
        b=hDZRHMMxFK7R2NrkgQhxSwAoIwQkVRrJ8o1YsOmNBoNOlWPn4Gc+iCi4VO1OmgFjqm
         vYip6OP0wJWs6AQ16eMu4fvR1l6ocmvy4z1CxiW+JXLucIiCMsyCoK9Hw/1waUbr0nTw
         ZHMR34cT5Rs6ponUKKVF2wEOTDPO2KMs09kdM+RjBiD6hfTr9hBYgY+LZRo25gIJCoOw
         kxuH+2C9OT5paQUr4dH4M3aXHC8FwGkQ2bxiF5dAyPQof2haGWO0OQcxM1ZJDwOG0yPw
         ZqnXxMPo4JjBvyXyaix4jkF/Ow1r4k/Zo8BWNDBW4DYwO8R/KIviTJ33D38Js3XTUPZI
         /DpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qiUQ4NVtXEH1CMflbOKif0hCwSbNTklspxOUaeby/iQ=;
        b=EqYflZ3WtZM/aj3oxN+EC0XGbe6crHU+GurqKvQ5PnEr3ziRkch2NJC8T9kcfe2YDL
         /pq/FT29gU42kd8nlt1gJBqYjy71SwQ6jovKXVFpvMqVBMsQskfEv4n/IRkD/tlJLWDm
         NImQamhD8vr8oxqD/6DAToKNXYJPhEe6tQynhv4pwa7GNyT7/OPB3QdOnJaj1yJvGuq2
         Qv0lg35e16l72FOosucrunM5wCf0HIw6CnPyAaZA1ZMHxcMxedj6jZVPiFZYYZVBReoX
         CQTsZQXZyNoP7PC4hND3DmBiJo4HdPPymDKcFceqhndXhKatyMZNaGn6uE5lGABh3TJp
         oicw==
X-Gm-Message-State: AOAM530bl2fUGoP/u1bQ50Gj299NTMGRSRuJ1LHqizE0NP+9JHFNPUfT
	YtKFaI6b9XShbvNVFcG91o3SI4bXjfo97vk9
X-Received: by 2002:a05:620a:15b7:: with SMTP id f23mr388045qkk.58.1618435008068;
        Wed, 14 Apr 2021 14:16:48 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id d10sm304801qtn.34.2021.04.14.14.16.47
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 14:16:47 -0700 (PDT)
Date: Wed, 14 Apr 2021 18:16:45 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: media: atomisp: pci: Format comments according
 to coding-style in file atomisp_acc.c
Message-ID: <42bf11b7e2b9645075b0a48c682366ecf9754443.1618434875.git.alinesantanacordeiro@gmail.com>
References: <cover.1618434875.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618434875.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Format all comments according to the coding-style.
Issue detected by checkpatch.pl.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_acc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index 5e5faa4..9a17518 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -464,9 +464,11 @@ int atomisp_acc_load_extensions(struct atomisp_sub_device *asd)
 			continue;
 
 		for (i = 0; i < ARRAY_SIZE(acc_flag_to_pipe); i++) {
-			/* QoS (ACC pipe) acceleration stages are currently
-			 * allowed only in continuous mode. Skip them for
-			 * all other modes. */
+			/*
+			 * QoS (ACC pipe) acceleration stages are
+			 * currently allowed only in continuous mode.
+			 * Skip them for all other modes.
+			 */
 			if (!continuous &&
 			    acc_flag_to_pipe[i].flag ==
 			    ATOMISP_ACC_FW_LOAD_FL_ACC)
-- 
2.7.4


