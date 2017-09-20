X-GM-THRID: 6467836648401928192
X-Received: by 10.46.46.10 with SMTP id u10mr479551lju.15.1505910571401;
        Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.17 with SMTP id u17ls121639ljd.9.gmail; Wed, 20 Sep 2017
 05:29:30 -0700 (PDT)
X-Received: by 10.46.25.66 with SMTP id p63mr480378lje.12.1505910570150;
        Wed, 20 Sep 2017 05:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505910570; cv=none;
        d=google.com; s=arc-20160816;
        b=PLhQE8BmjkcnfKNn4p4wQ13uJcl5mmVZXx2i2OjHDHfG2tRGjvK1/6fDjsNw7tSasT
         PfmJu5pwhVLf2UL1Yp/1DAcn9Asjm/zuoU/icAm8/t8ur4cnlsKv7gF20evq7sxbWuaR
         yKWO+iufQFLLIo/GNUfcO7IejYHpr1/VyOjr6lrgoCfYRFVh8Hg3YG1g64JwrxRWV+XQ
         fdrhJ4ymaH8BQEJ12aCpoc90FpMWNTYZiRHeTAnVbsE75MdYWE1Rzu/5ad0ilgCCh8V0
         INoEMzLTnb84jW+zHhf5Jh1sAKz9QmMukSxkgZiHciHOIhNxAJA6JRcufSCFAsgIMBMy
         Ivwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=nlNnQi8MaL90av/rr6TPzQqCqIw2m07hjheIWPqnnKM=;
        b=SYoVeOCBy+kmkfdODdU93NcSK6ZCpnXXRW3mScr7Ink1FjwsccyqShEwTr4KgijRQx
         a4slI9oU0nLqMgUz07NO7xb86WCai6khtB7wEKlRmuWeIcSW616lhpYuCkOGOTx2Wwwr
         pRZ/hJxJbFKgYDZD/MaKBFCqxLBjfxDAhrEJEEBvm9Cwwk/lDqTgFKdiBvK2z3kpfFa7
         OsqJ8SkR0FgYSzhIMuLy528eyA7D/ThEOLLWuMQ19lyDA/CF36P740yt6f4Xx88QbILQ
         Qk8+yN6S3xuVa2pneY0zjZiclcZTdqH61eDEK+NAX515WynUlwL/F8dNzyHeNJGEhumG
         rxeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCTI5VxJ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id m74si109984wma.0.2017.09.20.05.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:29:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCTI5VxJ;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id b9so1432194wra.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 05:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nlNnQi8MaL90av/rr6TPzQqCqIw2m07hjheIWPqnnKM=;
        b=jCTI5VxJdVgRAXRP0JNzZO2uLpqtWCC/iw8X+rR1RtH5cYBGtCY4IEq8DjhlHkHgTc
         35mjQRCxSTqA1yLG5rYJBwKpBznEJaWWj8w6y5SKZN70WZ/qIFm77RSkeGMURNabJHM0
         IPcpb5VSKqhBDFTHPSMYOkthE/mGVZS0d2EcPjxKZD7qI4kC5V42W9URTwqRULiNKIsw
         H0TzvpF1lcffY3rLlAXxLAcLzH59mA829bhnfih2OX6kZlehNXa1rkK43BgLnJTWGjtk
         ThwFwjuJbaTTvybrobxXLHHcRHcCON1QTphZfMIJwYDNCel7p/Sfzw4Niy/j3pnVOkuw
         C1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nlNnQi8MaL90av/rr6TPzQqCqIw2m07hjheIWPqnnKM=;
        b=JLVrkaCGTaflSj6JyNzIqTe3pW5U20hgRoDr/bXQqPWj0wi5nTcO2oTHgK2HcjTZFi
         hAe5Z96NT1SL67edRWykcGHzUF/trnrK0mu8eDVkxco/u+rz0JXHLS/1HONOSYokTijT
         km5uTrXn3yT/pZOyprcd7UZGyk0M3Bl/RzreMuQudVD5IRne7CfVR6jopBqvy3wWQ6Ij
         t5lfvt/eh72awke67AYIuGZ0yoIvEZYFaismsi4CQ4P0ZRHggPS9rMGlpKrPHFpERQia
         dB43Onk8oMUT/A57xsAjctU3aIfodsHYXx7KyNMLjWZrMAtsjvTf0jlLnLF7KL66zuVn
         Qinw==
X-Gm-Message-State: AHPjjUiIpCFiHSMosNuZWz4xJzl5lm5Mflog3xYzJJwkr+bT1TcHnBKp
	mb/ksHycVk2Bd7S4xJFJkhyPBwsE
X-Google-Smtp-Source: AOwi7QAXAhLaWwXFZQAmGIg3y+GNSXzDqDwxZjlUUaauwyZqm2oQ/h/eJ7Y6pW+98lPcxOdKbMFF9Q==
X-Received: by 10.223.173.242 with SMTP id w105mr2019155wrc.111.1505910569825;
        Wed, 20 Sep 2017 05:29:29 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id m128sm1394959wmf.0.2017.09.20.05.29.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 05:29:29 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] Staging: media: atomisp: Use unsigned int instead of unsigned
Date: Wed, 20 Sep 2017 05:28:46 -0700
Message-Id: <49c5e0ffe2e7461873e2991bc09b3b3dda3be6db.1505909511.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>

Fix the checkpatch.pl issue:
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index 05897b7..b7f22b7 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -155,7 +155,7 @@ static void atomisp_css2_hw_store(hrt_address addr,
 				  const void *from, uint32_t n)
 {
 	unsigned long flags;
-	unsigned i;
+	unsigned int i;
 	unsigned int _to = (unsigned int)addr;
 	const char *_from = (const char *)from;
 
@@ -168,7 +168,7 @@ static void atomisp_css2_hw_store(hrt_address addr,
 static void atomisp_css2_hw_load(hrt_address addr, void *to, uint32_t n)
 {
 	unsigned long flags;
-	unsigned i;
+	unsigned int i;
 	char *_to = (char *)to;
 	unsigned int _from = (unsigned int)addr;
 
@@ -4659,7 +4659,7 @@ int atomisp_css_dump_sp_raw_copy_linecount(bool reduced)
 int atomisp_css_dump_blob_infor(void)
 {
 	struct ia_css_blob_descr *bd = sh_css_blob_info;
-	unsigned i, nm = sh_css_num_binaries;
+	unsigned int i, nm = sh_css_num_binaries;
 
 	if (nm == 0)
 		return -EPERM;
-- 
2.7.4


