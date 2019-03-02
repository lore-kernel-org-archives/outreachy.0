X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:4748:: with SMTP id t69mr6887030itb.10.1551551699422;
        Sat, 02 Mar 2019 10:34:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3495308ita.0.canary-gmail; Sat,
 02 Mar 2019 10:34:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbWjqnuDaEEzCL12afXZcJ6uFkKDnHtkagqAHgrSvGp9eB3oGPHdu+miRkCMNEt+460CxqR
X-Received: by 2002:a24:55c7:: with SMTP id e190mr6820561itb.30.1551551698571;
        Sat, 02 Mar 2019 10:34:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551698; cv=none;
        d=google.com; s=arc-20160816;
        b=hLpuqM3f0ScVI9ilda5ByDFq+bHeVmzx1ByCo+w5CFO0K6V6xZLCFT3o+VhTCBLth2
         1btcG54RF+JFu4ubOtOHqaqvjhvXLesczoZahN4FHcjriCQ4uE8y244/ZI7WSO6l3Y7g
         WR1Uz/2dLTz4xnHDr42nqxyzoMW5z44LB0MiLAGhZd6ptRfGx/tKB4AftRjRN5z7eTuW
         61eBKOlRY/TsZnopHFE6ts8Jh2AETDXTdQe1NpErkRvxBjZQRrdlb/lvspU5Yb9fDyyp
         C7ofSoZVkW9tte0Fi8DwZNsbBN8hrCGwCvXscAsp6he/TMb3de7OArjWzg2JrZkXi0MS
         8ZTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=MhzvgH/BKnvUcT9AGSlDAtsVJpfXEq2LRN2FsXruMutbFKK+au+iOFzsQc9Ddke3GR
         sPKZC/PTuwx31OAb/W1J+MtdM/XjF99w66zIrUiWvOoqNl1mteM4iVzUXt7tNKNzEX5p
         jx4JIWENq6RgfjJfqtcg/vZU+leMEb+b4P7fj8zETlV54X8Tp853JifBHq7a+5kif5di
         6Y/9Y/nOcQRZ+W6z7hGQAbQBPskfCpZ3lYR/eXxbsNe3MZ9tOljWC7GiGQNZMPwYyZB/
         Q2knGBm9kHCJ+5BHBv6H5oY023qKHBpvHJgOx1WQz5sWJtARbyaf2NOmo957VZfoK0Vj
         5RHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mRVFdgbk;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id n185si93998itn.3.2019.03.02.10.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:34:58 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mRVFdgbk;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id w66so815016oia.4
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=mRVFdgbkn/5kPWL0eAzkEHpmIyRGch3go3gqvAnIObADWFZwUzgcmGKo+FeGSExzH2
         w9ZtyRaQklQyFOVUyJ0gmmUK1ah4aJ1wvzdzzwU3DSY68KrxL+h+g8+hbhtqCJbhw+gK
         ijEFt/q5dDrNqIEutqT6qYOUgT+NFd8EVw6GEvpiv80mdxrUUOZge+5t+/I2oNBGq56h
         Q3G6MzzHt+6fA9pHYQ6cHzmFQWGe1wMch/8Gtceka4fDtoLjMxeC0w/mNCxljAUKVgaC
         huL2bbdJqXpchcVHqUvnjtL8DMPk8Qt7YEqgKyqHeA+UMVKHsBUcOdi3zQwfE84RdPaD
         tZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ZTmApvzseCl3GQhoiS9IAo+DipcRs+SppHulGhv77No=;
        b=pW2LvhsR4XHvMYgo4speRs6koQnDChgb9TbpnxPfXtPLAJj3zDZC1dqd4OAdPQaPfz
         aNKTFJ5hnr+mtrAJknSi3u/HgCUk6qXqYYNMB+PEnQG0Nq9zqKb+3z0OxoogHgNmVylk
         whXQuBIRKenmgTnqWIW9lZ/HssDYnbivrVdguTFTJPN+hDNIEcU2gIB/DqsRMfZFBzgd
         YRJnsWvmoOU1c82ANNAvofVBLTU8ufqDDR7GnzolqAiLu3SPDyPDhfP5yEx+lAh0eEk5
         suvq671bYvqQSRuguVs1v8vMXAHzPL1ysmnrrm9BQqjQafQNp/KZ3ZzUhUBnTqbvwzZ3
         gjwg==
X-Gm-Message-State: AHQUAuaymlKMdg+LSLu9FjsILchWGqk6NRJSUugJM7vlIOKL94Vgrpga
	56YXrncQJOXvTMH4gFMY4o4nWeKwnWs=
X-Received: by 2002:aca:fd4c:: with SMTP id b73mr7335608oii.33.1551551697897;
        Sat, 02 Mar 2019 10:34:57 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n76sm618386ota.51.2019.03.02.10.34.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:34:57 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/8] Staging: vt6655: Fix line over 80 character
Date: Sat,  2 Mar 2019 12:34:43 -0600
Message-Id: <d7f83bc88ed34a041fd7e98a33966e4ce540ca54.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix the warning
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index d71022aa3f86..6bbbbe1314d5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
-- 
2.17.1


