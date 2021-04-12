X-GM-THRID: 6950248211949813760
X-Received: by 2002:a62:2585:0:b029:1fb:bd86:2008 with SMTP id l127-20020a6225850000b02901fbbd862008mr24002767pfl.77.1618230764546;
        Mon, 12 Apr 2021 05:32:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls7172570pgw.1.gmail; Mon, 12 Apr
 2021 05:32:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxP9+KjyO9PCBDw96nKtCkSB3J78JuRnqt2a5wNuoC8E7QIxU1KUjsKOOPb+EMTi0ubQVjQ
X-Received: by 2002:a63:b00b:: with SMTP id h11mr25986648pgf.204.1618230763414;
        Mon, 12 Apr 2021 05:32:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618230763; cv=none;
        d=google.com; s=arc-20160816;
        b=IcO0TZuR5Vkmm9C1zzywrLjXYlQPBxINZr9C6lclip8Gtfep2FE2NzrmGy6OwSbHdh
         RuFKvkn/iIeY3Hu8NKfuhOTXsXUFfgRPnlqtaYlmtnk4N6aBCbmEeuCeZ/VaNBOHmtVS
         97dQZtXAcivbJ1tyYGKqxFMz1aunpJP+w2cFRQ/OPdFPSM2gwcSJTeoCO/KXpr3fc/f6
         x/eCSrZpSH7n/+wOVNOn5w8mt6Gp2ARAuCDipeNdIwvfRQrca/CxcRBfpSU8+T81afcm
         0LCxrlRXs354mwZQVpahgWkU/LrKygYupJG65jn1prbi+IBvB7ip3lhunBrhja2J/nO9
         fWyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=alZ/njDA6kDUiXsUqrZlj3PHW2OGA8s+7K/9VZo9fWw=;
        b=IsacqPGanTG0dmwSe09EX245nqAVRnn/uELfNkHxFIpXjlIjSTYW5W2OfBOEMAxmnK
         Bd97doPxv8WqvZWGGWjyPAH3e8WICiS39HPyibrU8Zo21UvlxpJhb0501gS53ZbxUvFy
         iQuGagpVlt7H5pkAqF/nnHJJ7LYMZyr4vBHQrmxGlSlNP8UqPezzj0wzVsfBudT+6pdM
         lykvaFpnuOhJtHhyr31wHdrGk7pCPBrHmWpv3O7fZFXhpYjx5jcBMjX9XG4j1rKK+8e/
         1O7MxsofRFpMFMfxzGz9UNd66XOXDL7ge65RZfrRwtOLFvG4lY3pUf0YNAXcfvgrDfuu
         3nsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IrB5OOVt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id z22si981242pfc.6.2021.04.12.05.32.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:32:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IrB5OOVt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x732.google.com with SMTP id c4so13028658qkg.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=alZ/njDA6kDUiXsUqrZlj3PHW2OGA8s+7K/9VZo9fWw=;
        b=IrB5OOVtvD+sK7NlIiEoVjBIDu7KE6eRZbHqC99ISyF78e8bvtg7Wew06Cd70O12dw
         7inwuWxyECY6katLBk3CE7xbmI9Z+Z5RoM3v+CLXB1Qh+KWQEUeZC1TzQm4opMCg9z2l
         zDq37qo2QVPPZov/OYT83cej5jSStyjWXwyKBB1l0/0QBheLuveOdcTvgIZdN1BP7UE6
         he09QLNRLTqYXbdUl4fsxCZVesJCHlDQBOCSUpQyzSmrLE0rtxHkVY8tRzk3n8bz2DJ/
         zvmuLrWWiCTCfeGXWhwEKQ7yiJFcjuZnH7TZe27wtZVr4kMd8UjVHNIdrKW9noxS//Cz
         EHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=alZ/njDA6kDUiXsUqrZlj3PHW2OGA8s+7K/9VZo9fWw=;
        b=tvWBtqRhDE7ND+vKefA0M/yXi+G5uHRkdQhIAi4fr9btN25OHSz9m5KNX1djOeRsS9
         an7hKbkdr+WqsoAyaQQliVU6MbDQCR//9DL5qwDp9lzpAQMTSo5U//YHZCfVS16m5RZ/
         Ye0e9zSG7rsUBmMcocRWsba1roNKOLZ5kDXmZ1ttyjRc939e5Ld8ZSKqQRK1UKeUaP6t
         Pfp3bJdlwI2IVcbi0EZ7F7EBWqoopfXmV6FJOohJezFOo7VemWBoDA407zndMcgbHon4
         6f+/GxuZ/styNn6vn6xbq9EVbtamC9Z/uZulSrw8lWeZukAvubv/kTeKGMHj4SILGDcb
         Dosg==
X-Gm-Message-State: AOAM530v3mLhoq53jn9VVVxP/iveK79gjuCUsoMHVFEy19XCCVIbnGAD
	Ev1Cblx/0t5YXJS24hUru03HOCj26reKTLiF
X-Received: by 2002:a37:9c85:: with SMTP id f127mr7659821qke.283.1618230762320;
        Mon, 12 Apr 2021 05:32:42 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id v11sm7495148qtx.79.2021.04.12.05.32.41
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:32:42 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:32:39 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 2/4] Replace macro function by static
 inline function in file iss_ipipe.c
Message-ID: <3d3facd1c3eef996d7e824917c19282bd1e1f041.1618230425.git.alinesantanacordeiro@gmail.com>
References: <cover.1618230425.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618230425.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss_ipipe.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_ipipe.c b/drivers/staging/media/omap4iss/iss_ipipe.c
index 26be078..09c941c 100644
--- a/drivers/staging/media/omap4iss/iss_ipipe.c
+++ b/drivers/staging/media/omap4iss/iss_ipipe.c
@@ -38,9 +38,11 @@ static const unsigned int ipipe_fmts[] = {
  *
  * Also prints other debug information stored in the IPIPE module.
  */
-#define IPIPE_PRINT_REGISTER(iss, name)\
-	dev_dbg(iss->dev, "###IPIPE " #name "=0x%08x\n", \
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_##name))
+static inline ipipe_print_register(iss, name)
+{
+	dev_dbg(iss->dev, "###IPIPE " #name "=0x%08x\n",
+		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_##name));
+}
 
 static void ipipe_print_status(struct iss_ipipe_device *ipipe)
 {
@@ -48,16 +50,16 @@ static void ipipe_print_status(struct iss_ipipe_device *ipipe)
 
 	dev_dbg(iss->dev, "-------------IPIPE Register dump-------------\n");
 
-	IPIPE_PRINT_REGISTER(iss, SRC_EN);
-	IPIPE_PRINT_REGISTER(iss, SRC_MODE);
-	IPIPE_PRINT_REGISTER(iss, SRC_FMT);
-	IPIPE_PRINT_REGISTER(iss, SRC_COL);
-	IPIPE_PRINT_REGISTER(iss, SRC_VPS);
-	IPIPE_PRINT_REGISTER(iss, SRC_VSZ);
-	IPIPE_PRINT_REGISTER(iss, SRC_HPS);
-	IPIPE_PRINT_REGISTER(iss, SRC_HSZ);
-	IPIPE_PRINT_REGISTER(iss, GCK_MMR);
-	IPIPE_PRINT_REGISTER(iss, YUV_PHS);
+	ipipe_print_register(iss, SRC_EN);
+	ipipe_print_register(iss, SRC_MODE);
+	ipipe_print_register(iss, SRC_FMT);
+	ipipe_print_register(iss, SRC_COL);
+	ipipe_print_register(iss, SRC_VPS);
+	ipipe_print_register(iss, SRC_VSZ);
+	ipipe_print_register(iss, SRC_HPS);
+	ipipe_print_register(iss, SRC_HSZ);
+	ipipe_print_register(iss, GCK_MMR);
+	ipipe_print_register(iss, YUV_PHS);
 
 	dev_dbg(iss->dev, "-----------------------------------------------\n");
 }
-- 
2.7.4


