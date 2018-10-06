X-GM-THRID: 6608897994052861952
X-Received: by 2002:a0c:b58e:: with SMTP id g14-v6mr11922963qve.45.1538848227763;
        Sat, 06 Oct 2018 10:50:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5c4:: with SMTP id o4-v6ls4261859qvf.4.gmail; Sat, 06
 Oct 2018 10:50:27 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60E7Ty1LJ9pJDFrkkNSQRmLFc75qWwPZgfNJQNjJVHWvKmGQ3Yt5F4OQcDWIc5xJ7fhD/mx
X-Received: by 2002:a0c:d2b5:: with SMTP id q50-v6mr12196243qvh.1.1538848227107;
        Sat, 06 Oct 2018 10:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848227; cv=none;
        d=google.com; s=arc-20160816;
        b=G4dq+Mzd3VtHsnNPrp9NutxyNpxVFBpCswczQofM2pT/0LKEl2tBZk1HjhnpheU3SD
         0KVYhpXDfnqLtqYMn8W5NEqL6by+WtKZQrVAHB9CuU50cm5RPin/A5r3kZalInKeqn0O
         zTUCFnmm68BdSwXaexDcWeldd5y+u4yxC5B166G/RSDWx9Mk9gNET9Sfm6bF5vwFvUG/
         knaw6qGxq+Z2RQVz1nUFQSualZL7gl5L0iK5xywObb0t1Ljab8lh2yjzT/BsaWqWBhME
         r8pidDkJzp0zt4WKNWQJ1GZ3FUYNYRpubFwEgG5M1IfPoOn7vanECBmc3u85d2XgE6UV
         GjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=67xlZTozbppO1tD/cUfJAcULLiIXVMCnS4Oc0loNZgQ=;
        b=RyV9+CecrCRec6Vq0KiQiw5Robhrjzs18LEG4H5d/DmG4y95406JqJclob+zCHOxdM
         wOfN0oYk504Orf4O9f4m1vu9mshDtrS3OxE5q8v1TXrQsjIDvk8fYIVp45aXtAqAsTl9
         0B2N2vDxFRKFJ0tA+DHpfQV0q2YgY4hzc043iD/CEkJYauKe5OrsOuDNCwon4ZrqBPJx
         UXBFQBnwu70Tgyve1jKNV9803zZJ7cDOvSGIxcYdfqnLJg8CGbl3RqhPUGP/dQuYl+27
         6pc7Z7asQpuD6AZ5sUrsbyWiDqmJjTEnqMH8QNDvhm+Rs3cVvXVli27o7t6HkQBDrUWB
         SCDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W6E9j6nQ;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id o5-v6si556716qkf.0.2018.10.06.10.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 10:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W6E9j6nQ;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id m77-v6so6510959pfi.8
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 10:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=67xlZTozbppO1tD/cUfJAcULLiIXVMCnS4Oc0loNZgQ=;
        b=W6E9j6nQMnD4iDs9CLRJA/MkrKais4yATJOLzrV+oEBJfhiwx+4YZwbKUrK3fCERna
         XiSyl4IKD5mOucMRLHc1FSCoOuAGCBuJEtjPjpMi77emUdsxtDnneGGDG5PtPnZnHXom
         ryfDud5HLxlt3aKBwgKTZLiIO59j50MW6t5wThEDLkFiXi7C84x/y9xqiur6e/lFselU
         sFREwYMKhWqfwS7qdk4X0Qi6cVfO9chD+ZTfBtVD3JqKhEIeyq8VmT9dXutbSWSPuDyS
         FjWked1M+I1yDAeZye0hedVF/lolR8yfz+pW/rw9qiAR2jz6iImIcPtQucPKigAwlE2B
         1MXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=67xlZTozbppO1tD/cUfJAcULLiIXVMCnS4Oc0loNZgQ=;
        b=aV8/WIhOTSLScOL3keAWsuvAnmJPDktebdy6S3y1ijzzZTb5LTHoxNkftiqdykjAad
         UQ/4kfTwPc+4nfrgu5n7pvLUizt9i+t8Asb8ciN2gNZghcvZtB4Ih6tTgb4Z9DJr8pBq
         /RHqj+TJzreSx3w2/neqpX//Z7kZeZJCgarrK+PHBfTOsRjCRCaWQiWFELTIB+6JS9IY
         lJ/DcRMwrHqhXw+wTDEG7ad3KhYClOdMrnrqyhaaXbukVc8SRNaR2tgT4H4+ZBP4sa6Z
         sgDix9mwdDy+BmQ9Io9lrflk/Z7/wsUUPaockRtPGWc7lUQBLK8MykL2PrrdHaofKnuR
         YmIQ==
X-Gm-Message-State: ABuFfoi3HX6GGVvCWeKOauLlWHzxdjtqMdQbtPHxyudY81gZ5JDqd9Fq
	dhgrKbwJhDqkmxHNcEBYDCg=
X-Received: by 2002:a62:f909:: with SMTP id o9-v6mr17662008pfh.160.1538848226548;
        Sat, 06 Oct 2018 10:50:26 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id x186-v6sm17673748pfx.152.2018.10.06.10.50.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 10:50:25 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:20:19 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: vt6655: Add blank
 line after function/struct/union/enum declarations
Message-ID: <20181006175019.GA6283@himanshu-Vostro-3559>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
 <ff2e07eedb4220c53ff681ec6fefb5aa637ae9cb.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff2e07eedb4220c53ff681ec6fefb5aa637ae9cb.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 04:56:36PM +0530, Mamta Shukla wrote:
> Add blank line after function/struct/union/enum declarations to fix
> checkpatch issue.
> CHECK: Please use a blank line after function/struct/union/enum
> declarations
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Himanshu Jha <himanshujha199640@gmail.com>

> ---
> 
> No change in v2.
> 
>  drivers/staging/vt6655/rxtx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9c4a532..8ae9c68 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -65,6 +65,7 @@
>  	{RATE_12M, RATE_18M, RATE_24M, RATE_36M, RATE_48M}, /* fallback_rate0 */
>  	{RATE_12M, RATE_12M, RATE_18M, RATE_24M, RATE_36M}, /* fallback_rate1 */
>  };
> +
>  static const unsigned short wFB_Opt1[2][5] = {
>  	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, /* fallback_rate0 */
>  	{RATE_6M,  RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, /* fallback_rate1 */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ff2e07eedb4220c53ff681ec6fefb5aa637ae9cb.1538823377.git.mamtashukla555%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

