X-GM-THRID: 6948530391534796800
X-Received: by 2002:a05:622a:1115:: with SMTP id e21mr4500269qty.192.1617830812524;
        Wed, 07 Apr 2021 14:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls1996143qkc.3.gmail; Wed, 07
 Apr 2021 14:26:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPkHICdx+cXQQ358rb8LxGEqVduDccbpPphjRMy82wQji168Uzq7+2od3OxF1bbMFtbxSW
X-Received: by 2002:a37:a48c:: with SMTP id n134mr5385998qke.490.1617830811698;
        Wed, 07 Apr 2021 14:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830811; cv=none;
        d=google.com; s=arc-20160816;
        b=qBqT5oOF/5AVBfd+JPkiwE3SDU+Iq9CikXvIyMhRfcKaWUbn/zM1TSAHQiMBXZASEk
         UyhPekTLnQvqI7aq+wIpV4WCvWZI+48H/5hdzJAFO3TvP0W4MYIItN0aLQ8+HgcwtC52
         bwAvhoxQhdWvMpIcNcVU6OslAT+jjr8q6fUV70KDCwkR76n/ZgoS+ywbyNAzfwOD0J64
         Yx2/Upb8eWFhAWpo5RMbpTKMxR0mjwCyq/JFc7tFiZ3d1axd4d1LrhmsZA5yNzNtDGPN
         E1xLWIWtZga0h+wJzZZ+Cmxsw/CjR3kRoqkCMDGakjdMoJVJrzJbURuwQryy7qXWYJjJ
         YNcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=w687QRj+3vzLNcIexXuiAxefuJuht3rChjaWPOnpEVOTYAbdFJK9E7XpWVScFcl1ih
         ccYhOxEJvOP962vwLB1IGqLdmBHduDtD56lSLIVZ/euKPNItaKB7FBmxR0r1HXZ2KdSl
         6zUzC3cKD8ga60Jxs7uDFEPicQLeZYVa+tubHfgZbzUMIzEnRc+sl79Nt3Lqn5OiYmHA
         xeo0qfBVLBDN1rRUnBBOTi6NiYj7kkqDMt9qnGJdfzskw20C68I/1T+IQcYUINq4oHyf
         QIUlO7QG9tKqwp1EDIJzv3H8QEV02sQl9BexozZT5JW8dZQWOHYeOVWjLQzIiN14G0+6
         Jh7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVZAyFvq;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id r24si2803071qtp.1.2021.04.07.14.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IVZAyFvq;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x732.google.com with SMTP id x11so87390qkp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 14:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=IVZAyFvqO9O89xj9O1O9ykqVptDVd7tedXBblPm+epR23LJBte2B7EJMkHJmCnRKyS
         IpfaJUustIJhnXc9lLq6WwH5rJjr3ikQ8v7H7Vu3sZ451VnC3kKidUhvXuUx//A4wjj8
         61ol6UAc4npaKWK0CTZvdTC9PKCDDbamF8WAhlHTuF5xZ9AHnuk7FpaL6fJ7vmZtB1wQ
         NNM8HVMcLPOyAJZXg+0eDPq8dVMgFx3bJ1lvW7bRe6iSnwfmh0n+nDhN7o0H+Q9QIc5Z
         ONUz8EUYwtq0dA1uDgy2jF6D1HT3Nowpj1T2d698XEYMNNIHPg7ejV8k/gCEz4xrlHQA
         kx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6fSIQirtWShuMIqpJMly6hnk0nfAVM8QytarwMk1/LU=;
        b=Rug8zZbG0bfFZglyFu1CvyLbq6nz8O+IKfWN6yQp4Nj6wFnb3mfZi3xFjiUPjGrBAP
         LdbpqQ0/kDlOfRd3CPT6biGjJXjlS8rADdAvKSR9XSXmKKuCO7D9BqmDv56mp5E87NGt
         k7yhWTpNHSKWwgN325n+Bv/jec8+r5WnbLcpG8RThvh/fBaoqmHAxpbaf8WgDZ0y1PCt
         MhmtkgVxXM9iv1jYu28fJdsqqpHgXvzMxgW4cbzMfukDgU3Sbx7VmQBlBFGrYwma/YFX
         yYmNDB3eyPAc21BMY4yukfvcIB6YQiGU5fvT/4JcdC+beAnY9Q2il1FC6KTInAXlDXA3
         qu7A==
X-Gm-Message-State: AOAM531IpUFS8j16NpiR9g3aO+ioFqn4JnsO8wPI335ZKi1r6ULTIVmx
	cgwpGigPJIduY+fJS0NG2Yg=
X-Received: by 2002:a37:63d1:: with SMTP id x200mr5270774qkb.179.1617830811526;
        Wed, 07 Apr 2021 14:26:51 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:91d8:678f:6a0a:466d])
        by smtp.gmail.com with ESMTPSA id i25sm18917141qka.38.2021.04.07.14.26.50
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 07 Apr 2021 14:26:51 -0700 (PDT)
Date: Wed, 7 Apr 2021 18:26:48 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, alinesantanacordeiro@gmail.com
Subject: [PATCH 2/2] staging: media: hantro: Align line break to the open
 parenthesis
Message-ID: <8209d15ab3a8391b74939cb942daffc556d72942.1617829497.git.alinesantanacordeiro@gmail.com>
References: <cover.1617829497.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617829497.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
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


