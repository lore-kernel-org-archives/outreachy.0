X-GM-THRID: 6949235064632770560
X-Received: by 2002:a37:db11:: with SMTP id e17mr3639900qki.421.1617994873054;
        Fri, 09 Apr 2021 12:01:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:606:: with SMTP id z6ls998200qta.0.gmail; Fri, 09
 Apr 2021 12:01:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPvuWAOGggRutItGfeYkFYBnoX/HowKhSha6k3crumlNx9D6IqCxWprprKxHxDaJUFczm9
X-Received: by 2002:a05:622a:149:: with SMTP id v9mr13501211qtw.172.1617994872005;
        Fri, 09 Apr 2021 12:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617994872; cv=none;
        d=google.com; s=arc-20160816;
        b=MVxLVfZu1empz4X2BA1aN5fM2GLmPUobAoyNxRjKfBWrVEjDgLs11xhkZv6J8KPkZ/
         d2W0mXgPo63fTlVy10j+fgPb+RhrIqP2DVG4zVyeNdbNMViAgkyghpkWVrUHK6QOcAax
         dOt1xwTH7JEvLacAD9u2pbuUUdfSRAD2rEkI0Y8a1Su955DwOwOraGR4CtE7YvB0R1Ae
         ngtwOqBSjU+fQHMBH52dosWglPP7oIjH00T0If+AVJn39i9AzJ1vcM2tRIcrkarBiIEj
         T2VqHQA8DBlWkr/IbdheiPd0f+vEIZdOl/iBrqwoH4X522O8I6UpDXYRyLtm4hJh/7lY
         YM0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dggCkVFWKXm7BbwuV1M/eeJV+LFnVGWYUCSH1BrxITE=;
        b=GDIENMAg6w1DvHkkcuZJYHVkrIIjQPG7suFg+6X1VWLLi4wJ76NK7JRogzNKLp8nGF
         xV//vX+kNmiJxMafMFqul8BbzND5Km+Z1u8GpUAqdqhAY/9O2KdeShKWhpJ9LkhNw2mn
         vSFuH5yWsS4dusL4DgGb/uamsICBPcxryu8wUOloTaYTf/TsX7u5u6sRUMOjQxzzut3n
         +2u1F0UE3jUlpc0MKAfHmqHlx5WRSBHu0OcZUTdK5HJ7Jz38DPP8iAkmpFwFLUuThCzV
         2ecHdQ8Ivq4J14Ekxa409UlHIIJVBAGuv5rbms3maTJc6/LFjyIL3sZCY+GVn8wJMTXH
         hLKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eoD/75Lr";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id d3si126117qki.3.2021.04.09.12.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 12:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="eoD/75Lr";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id c3so6894456qkc.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 12:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dggCkVFWKXm7BbwuV1M/eeJV+LFnVGWYUCSH1BrxITE=;
        b=eoD/75Lry9hYJW+NtaMx1kuHbs6Y9pTzAWqGmRHkW2kF6YA2vILYwTZkysqyIKsT8+
         TnZeYAmb0U9yvdQvjX09FuGZA0Lz2YEO34j8q5Ikks1lrkPX89+lo8w6ifWmcJo7x7Fj
         AJDqq5W98PpPeuXUds4KKh7guTwZPgA28JaFWCsCIH9XSeuI3bMLgZB0fRAjqgmXWGR8
         TdalXAUNp71Ck+dq6p9xpCorY1yXqMs1OfRx88gRqTPUGvopovi0czH2Y3tiRSSlhGhd
         zjEhQfdyOvasgd6MmcNrPR84DxyYufy25Z1I8aN3qNisWuZdK1oke4VNVNMzAdcpDXKC
         Vyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dggCkVFWKXm7BbwuV1M/eeJV+LFnVGWYUCSH1BrxITE=;
        b=YubQlTQuBvTOWqV3vQ2oRXkQIzYWw/aS46AKthgFsLtHS3pXevsEC7A6QQNfPJYe55
         jrmB07G2T7LxMT1PhR3JEOuYdlStoXmUM8vCtovw5My/jTJk8NRKZcEvphBAxKfrQBqj
         s5RH5fvTYlRoC7InWr9FAU/ZktFqwZ3RfTlTSY+lgdtZx39MnFCCt45s/ASyVVepwahS
         jv8U90JBVL43iAS9fdK1WTz41OTbh9kFm42zl7MqyScQcqBrve3ms0ztJ3vg+6EMuNKP
         Y7lS0c4OAZXduEgY6rwhPzYyfri5rARGurnoXDFGlG2n8FPsxXdOzA8pp+i0vG+jTVXf
         53dg==
X-Gm-Message-State: AOAM531JEx7oHjEmwPCVtTEF/4z3LvIA9AcsH7vlVR3Jp+KFoVQBW/Pn
	hoeOxjghaEgJXuwspN+rYiE=
X-Received: by 2002:a05:620a:244f:: with SMTP id h15mr8950992qkn.235.1617994871845;
        Fri, 09 Apr 2021 12:01:11 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id w78sm2409960qkb.11.2021.04.09.12.01.10
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Fri, 09 Apr 2021 12:01:11 -0700 (PDT)
Date: Fri, 9 Apr 2021 16:01:08 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH 2/2] staging: media: omap4iss: Align line
 break to the open parenthesis in file iss_video.c
Message-ID: <30cadc4bf072dc592cc82fba96a40685e25787dd.1617994571.git.alinesantanacordeiro@gmail.com>
References: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/omap4iss/iss_video.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index 66975a3..a2cef7c 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -399,7 +399,7 @@ static void iss_video_buf_queue(struct vb2_buffer *vb)
 
 		if (start)
 			omap4iss_pipeline_set_stream(pipe,
-						ISS_PIPELINE_STREAM_SINGLESHOT);
+						     ISS_PIPELINE_STREAM_SINGLESHOT);
 	}
 }
 
@@ -957,7 +957,7 @@ iss_video_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
 		unsigned long flags;
 
 		ret = omap4iss_pipeline_set_stream(pipe,
-					      ISS_PIPELINE_STREAM_CONTINUOUS);
+						   ISS_PIPELINE_STREAM_CONTINUOUS);
 		if (ret < 0)
 			goto err_omap4iss_set_stream;
 		spin_lock_irqsave(&video->qlock, flags);
-- 
2.7.4


