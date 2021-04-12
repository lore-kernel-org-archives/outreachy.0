X-GM-THRID: 6950254542600536064
X-Received: by 2002:aca:2219:: with SMTP id b25mr18486728oic.112.1618232238344;
        Mon, 12 Apr 2021 05:57:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls3993144ots.0.gmail; Mon, 12
 Apr 2021 05:57:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJenoAIQIyRKTjPwjOIMO0REPmGt7h37xB/JXXd5G8utwO1OsbrI4zJ4L0RqXQcQOOaKY+
X-Received: by 2002:a9d:6e87:: with SMTP id a7mr23090603otr.298.1618232237346;
        Mon, 12 Apr 2021 05:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618232237; cv=none;
        d=google.com; s=arc-20160816;
        b=wqXE7QkJgI1AhQ6eQi6/zZhmpyjBoF6d2X+VD1Psky+VXAxouDiaBPJJ634A/WNGkX
         VgJuGNv93qmeGy+c6+8enwOk7wSqUTXTd5IkhVGcYuiYqKxE37LY5SCZwWjmFJGXDw2I
         Kg1uYJg25RtVTOdiOb9UyDdikrdbjxRh2Sd+7Rv0lnf+9ACHPkBK9Mof9IMCpOUli5FJ
         nKzWJQsyZlA6ErePvoo+rGBgcd/9ZVdI8GiJWhbhigSjZov2FC5lnumkdNT8NFi6FVf/
         H9UkTjEDxtmhCFqS8/78tfr1+yak+pW/r1CxBtCqH9T2DkNNiScjET+FfrRbhDZGk84B
         aBdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/U/PfNnIacHN6/B+3pGZEPy3lv6e1Ed7uOyTxH72DkA=;
        b=fiNg28PR+6Ey/f1/Mordn6j8pzrPfpmFoWJ4nOcfe0sbzuGqCpo0V7rMmCuEJWMYJS
         mQ+xLtgKUuIlW7Tdd//QitsErnTKgA+7KvuXSMgnjIGfCTNTUaekDX/V08MlCavk9EEX
         gAQUZJfGs/GKvX8mSrOfNUxJyp+bTViXT4LIN3C1JA1RNkNpJF0Lbxb6qV/Rsz2qaGi6
         AXbEgeDKYpHseUoAJUY4+2Mq/Ml5/9hsbisObeeLA5KOvajXtAoJijX+nqI8tGoJwKBW
         57e8eNCOVgHcfiS70LZgLazjHwo7KeINwgL5IzjLwMPnGNOcKO7d/nFYhieKPtOb7+y3
         E4sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bw/sEW0q";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id t124si274782oih.1.2021.04.12.05.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 05:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bw/sEW0q";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x733.google.com with SMTP id o17so4654502qkl.13
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 05:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/U/PfNnIacHN6/B+3pGZEPy3lv6e1Ed7uOyTxH72DkA=;
        b=bw/sEW0qGhzcmGaiOFtncmE1g+YPNHIpnr9u5Z425d5XKLGrKJpzIlcuWqu7yjjNcS
         L878OxiHnUV5TUGOODcRV571J/Himk2gMB8iVhbSh7opcZ8DUmX8BnY/F/AkG1aNUGwA
         nTloeAxdExDAnbC5jQLqIHSRWTgBQEg4wm71wj7V976c6k1o2YV9vofWTu0N9W+QhjZC
         YhAjARvHdvbPhiXRZpJGYGSy93O3KJ+aZ5cAH1GLANZroSMprUo574ngEfXMMrBK6IfK
         AdrM8sBnLZvnYZ9SpIKptUpJu2H0GzHP8QdpIAdJ4KGQfA30I/qDPAHiPK4Nke/5VQXS
         GTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/U/PfNnIacHN6/B+3pGZEPy3lv6e1Ed7uOyTxH72DkA=;
        b=aVA0Tf30Rcv3snAMss1Jja/uKcWI2/2epovMyLdbsluxD7hEZYwWxjA7UC5lPTEEWO
         Ha89irCyDFlLVCDX/KMB6o3YBMIy5p5QP8bYTkF73ih3KtL1Rqx8JKX7ARLTkdOYkXOp
         Eefiz5vAIQURLFNLGhauyWHxnwuRArEcWqPo/3AuXrSzPyHY2XX6NAniWCvBypZGM+eh
         IgfpK5cB2VdIKlE4sZmpTwsKnm2rxzhShUMz7oHe7dwj4oWVpblQEYQE7hF4ciDFLv9o
         FSOlri4bwbJP15fLnwPL48meW+XC+wnTxI5E6WO4ynFLLAfcx5Ux6KyVRkUNUmXl4xli
         FDsg==
X-Gm-Message-State: AOAM532pfZs32U/mIRWPgz8gQ728/amCNz1Hn8XdvfIxC+6KBLJ5tDny
	5fLT9XcP7n5OOvr8+NH3uCxHyR8fx8TEzAoe
X-Received: by 2002:a05:620a:1592:: with SMTP id d18mr4864123qkk.329.1618232236956;
        Mon, 12 Apr 2021 05:57:16 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:476a:dfcd:f18f:9ad5])
        by smtp.gmail.com with ESMTPSA id y29sm7745488qtm.13.2021.04.12.05.57.16
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 05:57:16 -0700 (PDT)
Date: Mon, 12 Apr 2021 09:57:14 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 2/4 v2] staging: media: omap4iss: Replace
 macro function by static inline function in file iss_ipipe.c
Message-ID: <d55b486bf3778576d1ecbec4ede5c992140eb0e9.1618231618.git.alinesantanacordeiro@gmail.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace macro function by static inline function.
Issue suggested by Julia.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---

Changes since v1:
 - Insert file path in commit message
 
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


