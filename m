X-GM-THRID: 6948788358969556992
X-Received: by 2002:ab0:458e:: with SMTP id u14mr2585331uau.40.1617971065924;
        Fri, 09 Apr 2021 05:24:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3486:: with SMTP id c6ls816955uar.6.gmail; Fri, 09 Apr
 2021 05:24:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzf6y9uE6e469OWSxt//s3stHTgnM0o3d2iN9jIjoH1AN5z4ZUXhUz1k3UQHsbmLN/tZBLk
X-Received: by 2002:ab0:a82:: with SMTP id d2mr9950476uak.108.1617971064988;
        Fri, 09 Apr 2021 05:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617971064; cv=none;
        d=google.com; s=arc-20160816;
        b=WYq+PN5HLAvf+z4REpgtrzQ64NAdY55PjKybbIY1TjJqphpJbStzDEAopP++6noeJw
         +ZrjAR2SGmhBA9BaFdxMiycx4XGgTs6xozhMCaXoJRuFTilKW8YeeMwCQqF72aaTsGhJ
         DPjIks36Obcd6Z6AG9Qjk5zq4Mj0XsXobUh1GzyJ2oSNx1u5bbB2sm6MOfZuAioDHNWs
         ua7Nfpk5OWN62HWztaPl4QAAn4b7OYTtzh3rRIZq/vGXBBM7bNGRzsjkPliE1qJQ/S/I
         hQA3bU3NNjyrhyvU6ze1WEHI35Ll9jKLQuGxwp035m4iOvt3vNIVEMcjQMi5wFhqJDbl
         K6tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jyczLaaY0sNtj0e3TtnM4UT/9174zU+EdBPCktijCsc=;
        b=Ro+yV4BWLLfCzyuQhbejz2bYfHxAGDRutTQssKe+TWFiJkyWbGPLZjfHwf52n08pL8
         2HgEKBvOHet6DTgGpb3C2QUEaZSfbe6k3iPbwhaVug7qteg7kNvsUfNFNUnZSyVbBkam
         kLu4iFbzVGZOxY0zXPJZnYObasPJ0Z/rg4A6+Fiz/kzohDXN1afVHrPtlefU0muaAVuw
         EFYaruv4XXlvGP0HTz0Cx7GQFAdSjEuWIlSVBNaSA3W5SjwE1zCpdxJ5MYYJInQ+AwYb
         K1bDuzaTBAVmc6RyeOTJEqahJMNOMsDgN+jqBd8JU1hh5xNrpwymqblOrYtiAu/9b4Uu
         qcNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j5jCXHvd;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id u22si164308vsn.0.2021.04.09.05.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 05:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j5jCXHvd;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id c3so5551750qkc.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 05:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jyczLaaY0sNtj0e3TtnM4UT/9174zU+EdBPCktijCsc=;
        b=j5jCXHvdsR1dteY87/+g0UH9fhghNuLew4SUu5z4F6sFpuzDFvptdCQpIU5c+KJX2Z
         qz5j9KB1mWjOUdmD94iF0YNnvm27HsS96Xw1zm4ZhEyqBQXBqo1Ia0K2XImX6uwK/tf6
         THbpTjVdybP32fy6WU7ZhCIR1crEFcsW9oH8iXwSempQK127T6M17XwaUbwbMn/zdHAg
         Nsdoyus5WHesDPHiZ+ikmIqvJdmnpAih8wluIGB+R9iuR2UlWZ4CTS9rW9XbevQ03DYd
         GSbWWaLxehaFXPFnr+LMiDB3ziIvaes6doson4vO38jZ13TPCTvGcM57JRonbh4Q9x/V
         Bikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jyczLaaY0sNtj0e3TtnM4UT/9174zU+EdBPCktijCsc=;
        b=ghay0jo7P3h2Kkp5QIZXJxtqKhPauW7/4/NgfL9GSwTnXDmI6PUpoXwxIyT/mUdG3N
         Xu3dh/Bfq5X3JBKxZkRE/AFDSlveApkOMuKnQQTf5cVP/NshpJoJGFBTw2SgW47KvyRo
         4PqLIxDPOpKeK7VLSXUykHqls+S0lLITmG3rovmyzIZM5h9Vs4R2v3ByHGXs0RE5BBbT
         CkcZ185DHysX8eS94lKwJkjOG+FJH8g7bZSoAClNfljNH27iBYx13b/RBBWR9YFRX8CE
         UmIv/LIRyEx2zUYiW/q/6LWKVR610xJl0MzE7+VFZLsMl5yVzt4atQabFyBq38FXrSBp
         gSvg==
X-Gm-Message-State: AOAM533FGKxceemkvCa0AidrUl2/Tc+GBnr43of2cztMe3G3mBr9lHDx
	84V+CWSprLMROi1DNYgCv4U=
X-Received: by 2002:a37:a58f:: with SMTP id o137mr13175093qke.482.1617971064712;
        Fri, 09 Apr 2021 05:24:24 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:8056:1dc0:5a27:acd7])
        by smtp.gmail.com with ESMTPSA id x24sm1657962qtm.95.2021.04.09.05.24.23
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 09 Apr 2021 05:24:24 -0700 (PDT)
Date: Fri, 9 Apr 2021 09:24:21 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH 1/2 v3] staging: media: hantro: Align line
 break to the open parenthesis in file hantro_hw.h
Message-ID: <03fb1d7b8066fd6fb6086fff18cf29b9afd9ac17.1617970550.git.alinesantanacordeiro@gmail.com>
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
 
 drivers/staging/media/hantro/hantro_hw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e46..a650b9c 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
 void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
-	const struct v4l2_ctrl_mpeg2_quantization *ctrl);
+				  const struct v4l2_ctrl_mpeg2_quantization *ctrl);
 int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
 
-- 
2.7.4


