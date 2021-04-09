X-GM-THRID: 6948788378746748928
X-Received: by 2002:a17:90b:4a07:: with SMTP id kk7mr13533073pjb.165.1617971069266;
        Fri, 09 Apr 2021 05:24:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:c595:: with SMTP id p21ls4042616plx.6.gmail; Fri, 09
 Apr 2021 05:24:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxawRTqAsP/YgXMVVrKm3ymffWLIKm3/hfKVcZOEDf+Jnhlhwp6Cj5Oy1aD6Z291VfCRWsR
X-Received: by 2002:a17:902:d718:b029:e6:77c9:faeb with SMTP id w24-20020a170902d718b02900e677c9faebmr13274177ply.30.1617971068230;
        Fri, 09 Apr 2021 05:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617971068; cv=none;
        d=google.com; s=arc-20160816;
        b=uvQ7nBpJf3Ay06+exMNBejrWqYSM/sGY5ssOKPpic3EP2ARWQNhqqHKelwWYPEU1f2
         Svdg7RrjMCKeMuQJGekV7rolj2apFNp8Sxs0qt++WEUHI7/OJf3l29X5x3x6J5hWqM6W
         Pqw4DfMHaAlxr0Ih3ZPmWQTeM8f5kLCFR5h5QD1BNCIuGl2eZYELj/EelCCGEFKKdORT
         +RYTc/y5z3rxpRGn1YrBQZJIlRwNaG+oG9DUOZPyLqdEJJ6N5UtKiDnnJQqrRmCHWjfn
         THNG2LpurHnw9Zp8DUVcSK2DGk/5OymNKSZL3HkrL7GKqt4H7ob8PcJHFi7ExWFhWtjR
         ANYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FFyKVQiiCs5puSz3WES2iYZgay4qT5NEj+d2mqioyWY=;
        b=Ano+fal8VjmBA4koZlLZVVfceX2GmL9Ls/KolUQTfaoSSzAzMHbYOlrtouI4EJ41Jm
         ZT+8K6jhwDvdkZzpTTMQ8Tp4TvwHK+aDhVVV/rIxWWYAyI8doB6nvQjzcxaH6P6uRW//
         +3bUjdyumlGA9+huV8IANi+bTQlJZKP6+U8A3Y+bWWVbHX4vqjyIEICDzMeDocQGc2/W
         SFqeWGhmVQY3Jg+kduMY7g82oRV3e2OnnEHvqtQd5u+NVND3n6f4pUpYY+kRY5Ze8GF+
         2coxHAxBFCLZZfZx2+GJCSb3+IOVNsiwPyNiSM1Y03RqSWj73lHGPsxfEqBv8xXBac5s
         2Hfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z3neBw2Y;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id r2si169916pjd.1.2021.04.09.05.24.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 05:24:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z3neBw2Y;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72f.google.com with SMTP id b139so166109qkc.10
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 05:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FFyKVQiiCs5puSz3WES2iYZgay4qT5NEj+d2mqioyWY=;
        b=Z3neBw2YL7iaEMhoqCq7Li4M/YjKFuEfckanqHotLbExe4Q2djjXb2dGWlQqaW+c8r
         CWvZOzcCZy/G/+pXQwODwqD88jKLpOvotARANlWv4dzd4AI4RaW2K5cTrui/rm3MoQ7z
         KO1kHhuWblajOaR/KW1xCeGbAA6mk9OIdWNIfXBzm0q1R4t/16OJSUmA/fGdO+Bn9OqS
         kXkRLc1nxXJOgBllIlegiWn3VYcwu71Bam+eRczRJEB9Epojo0a4z+I+GAvAW7zzz9Nq
         jj1K/ZDHyp5OxRXgolrvGk+QuOI2m451xzAiaQ65vYZHzZo7D5yBbhbxqTgIj3EbyB04
         o1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FFyKVQiiCs5puSz3WES2iYZgay4qT5NEj+d2mqioyWY=;
        b=iO/ZBFSKsXheGs+xaUFScYveLieA+A7xJ57dlljv7hSBA6lXAMqXc4XOajddRgoLfO
         AZQupKtbc6NC/Tcv6hCVWO6vzbCEA2JeXVbgK9gd7LRc2tvt6HSWvdq5Z87UzX+vcYnL
         bLzTttRtSiO8orPwcdsHxMH1ukfbpte2GszPfkLf6dYD1Ch4rSl1os6bALDlxyOF/EOm
         i1Z/VDW6f3bU6qbUW8g4DpZuLpT5oKJpwhbI7XaNEGdSVic0LBpy3uQiRsM8l3PXL+IK
         h/ftyynOouVclCFhDrMXAElkO0V+v9EaDtXLkfo3KVtZdNGSwANQiKe9hw+RlM38wStK
         Rirw==
X-Gm-Message-State: AOAM533VJQJq+LN3iWzSlwWRQv2dEp2jhlIgcGC0RLxGBS5LwoiJVeAn
	FArOzZVzEZMqEa+8rvqf/k4=
X-Received: by 2002:a37:93c2:: with SMTP id v185mr5189190qkd.179.1617971067966;
        Fri, 09 Apr 2021 05:24:27 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:8056:1dc0:5a27:acd7])
        by smtp.gmail.com with ESMTPSA id k4sm1610193qke.13.2021.04.09.05.24.27
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 09 Apr 2021 05:24:27 -0700 (PDT)
Date: Fri, 9 Apr 2021 09:24:25 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH 2/2 v3] staging: media: hantro: Align line
 break to the open parenthesis in file hantro_mpeg2.c
Message-ID: <790e0b3def9e7bc747122c9b6f336b857cd05d11.1617970550.git.alinesantanacordeiro@gmail.com>
References: <cover.1617970550.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617970550.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
Changes since v2:
 - Rename the commit messages properly
 
 Changes since v1:
  - Send patchset without the cover-letter
   - Rename the commit messages wrongly in the email subject only
   
 drivers/staging/media/hantro/hantro_mpeg2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_mpeg2.c b/drivers/staging/media/hantro/hantro_mpeg2.c
index 1d334e6..53a99a9 100644
--- a/drivers/staging/media/hantro/hantro_mpeg2.c
+++ b/drivers/staging/media/hantro/hantro_mpeg2.c
@@ -19,7 +19,7 @@ static const u8 zigzag[64] = {
 };
 
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
-	const struct v4l2_ctrl_mpeg2_quantization *ctrl)
+				  const struct v4l2_ctrl_mpeg2_quantization *ctrl)
 {
 	int i, n;
 
-- 
2.7.4


