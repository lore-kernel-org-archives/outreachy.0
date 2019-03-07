X-GM-THRID: 6665747871131762688
X-Received: by 2002:a6b:6917:: with SMTP id e23mr8590704ioc.8.1551990370611;
        Thu, 07 Mar 2019 12:26:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:5917:: with SMTP id n23ls2727412iob.1.gmail; Thu, 07 Mar
 2019 12:26:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqxU4IVRuyg1yq1EAWo14AoySkHze9veP1d113SDXIY0fLZA6n9b1NozlsycWboQtL8lfpSE
X-Received: by 2002:a6b:6b09:: with SMTP id g9mr8543269ioc.22.1551990369780;
        Thu, 07 Mar 2019 12:26:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990369; cv=none;
        d=google.com; s=arc-20160816;
        b=J6oI6KcuwhD3c4iV6wgJwtpVKPDOc6trPauf/EAhV3/Jr5MsTjHr342Xg4PtI34Fc1
         YUhUv0I5eKcA+DnMme5B+eKyJ1JvPVe/wPtuJ49aADs3kp/6NlLoAyYrbgZtO9kmLOML
         1gY/yyeyT+Q3kMxwrfLO8vNP3EPJDzf6n49Pi70orXeq5Swi4IIhK9uFNHI7GmuWEx7v
         4oj+v8hL4M59RZez6DjGhATITLmbB2ZHqJhcKNxxkru3XydHNWBVvyXGGWazFT6KQTpx
         Is4RugXxQyWtnToQbxGo1dfxgPXSCDn/u+3qwKpV3eP7QSN8gP1KG1RBVTaRcoV4P2So
         AT5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=qA6Obn25hQwbi4+iIVj8CsHW2ws8JK4goNEMm9hdRKU=;
        b=io+f7lL7cWAfYaREkF3/4o9tZ2EOTaSJS2ViJLNDUljURSqgv//ly6F12Ez9+35vwZ
         TSJGu5Kg081+V+Z8D9E150KYbheg7ekEUI0Kep5HcmxmjW/nDnFMv0SC2Y0R+oU56ieI
         bCpM9x6+aaoqaSqVMRTiZvVsglBFzZS3+eg+WXM85Wn0pw7X0tv28yzQqwV90nxBMdRb
         qFnTcBBwr35w9LJkMt01ovobIikTmOSgg6RL9l3/B3fkdJ0vaW5fsmi60yuQN3cTTV3I
         4XAg5AFOEFUpccRVNpCgXa23aHSNmUkq8CSiHE/jvzQcxGnKwhmnrsyUHrOESJ95ojKQ
         fh/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bhThDnP9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v12si363411itb.1.2019.03.07.12.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:26:09 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bhThDnP9;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id 98so15331600oty.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 12:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=qA6Obn25hQwbi4+iIVj8CsHW2ws8JK4goNEMm9hdRKU=;
        b=bhThDnP9AzjszSDvE+PJDNGVyrHHUqXcTvLYfuorFWl0cc6C6F5IlpqasxEhw9tAuU
         rwA6caB83GYf23QiaMdFrgDH38P5wxL3N2UAsmO1WaRtQfB3/NbdFTIpgb8rx7NNSQLa
         SLRu7CfCKQ7qxIrt8yx0B1udCBX3jp8Oba/Q6SkHINz6fvn9zvshqSHsoaL+9kE2NMZm
         oJIbjji99tbzUA7glTMEUMOZ6HTG30E2krqmt4SN9FQ5dF0WH18EDISvN5Q/uhA7PGuO
         +5ZGADPR4ffIjomeWBWhNa9+VwP7RiBoGysVbKdAm6AxmJ4JeXUTDpLewSGhmr/Yq82g
         jFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=qA6Obn25hQwbi4+iIVj8CsHW2ws8JK4goNEMm9hdRKU=;
        b=ATrt/sZmYB76rDxmoX4c/MhWbAK/fEE1YHXtV5/p1K674NZ0PdnAg/kv0ZK2z4OwFx
         wd4OxReGmMYvCVRylQmxHqKImhrcYdmXOglRKKjwOM1sPlnXdjBKGUTXZZEKsgSoKmmE
         sWNCHHalwsHc0fJg8+MBwh4n9okouTZVE3pjeIdQ1RDrDmr/JEjoJIaMPSLZWeRQy7hm
         hS6/s3UjC278VlZfDr2Rj6GefHFwOEHJN4CmDR0LW1eiGURStyx1BWaFgiw+3gLkuwhn
         IqUa/zyW32iQycPdZLNAeZ86lJ3vL3vZ1uoUbUGi4nBnH/imw6Ef37mIFRam5wTxFj2g
         vuyQ==
X-Gm-Message-State: APjAAAVPmUzV1FdO6dsBd+T6ZRCf6lrI6Htj2P/S/scBBMd9WUPy1jsi
	BPkIvg5q5rSrw9Vw6hSzrzNSrP1YnR5H3w==
X-Received: by 2002:a9d:6206:: with SMTP id g6mr9171751otj.338.1551990369460;
        Thu, 07 Mar 2019 12:26:09 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id z6sm2118328otq.68.2019.03.07.12.26.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 12:26:08 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/2] Staging: vt6655: Remove an unused function prototype
Date: Thu,  7 Mar 2019 14:25:59 -0600
Message-Id: <c47dace2c45a34fa786dff616debda9f70563a3f.1551990063.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551990063.git.madhumithabiw@gmail.com>
References: <cover.1551990063.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551990063.git.madhumithabiw@gmail.com>
References: <cover.1551990063.git.madhumithabiw@gmail.com>

Remove an unused function prototype, as the function definition is never
used in kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 59538ac09fc5..c7888c4e96f2 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -876,8 +876,6 @@ do {								\
 #define MACvSetRFLE_LatchBase(iobase)                                 \
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits);
 bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 		      unsigned char byTestBits);
 
-- 
2.17.1


