X-GM-THRID: 6464167912849539072
X-Received: by 10.28.15.74 with SMTP id 71mr683416wmp.3.1505075599271;
        Sun, 10 Sep 2017 13:33:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.18.219 with SMTP id 88ls134357ljs.39.gmail; Sun, 10 Sep
 2017 13:33:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA6TIvmXR2+6tdkBUrZZpECaAe4yrjabPOHzrrlSaO66+u3FRAmC63A41BPyyvCN+0jTsYu
X-Received: by 10.25.83.131 with SMTP id h3mr641689lfl.30.1505075597622;
        Sun, 10 Sep 2017 13:33:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505075597; cv=none;
        d=google.com; s=arc-20160816;
        b=GAJQ4LF4YjMMiUs4c+HN3uuYXxtwWInTtcn/aliE8BX1YTgKXSpDsFngZKdqMk7cl3
         C4CPm99zzNjoKgOG7SlaS2eGL1eey0iJi7sjdrp1Lfk90WDWz3eYBFE6nmXZGtZipg3V
         82lDGS+1myn/F1st6JafwRsnVutm+RYvntke9WLydrz2jZ/v5Cy1DMaXrDYpzyhHsK75
         gF+t5GqCjLkYQXdLr8+U3NWfF60GfEqKzsCFQ4AR8mLAyyyA9pUjl7NvZmpSY+Ne88cE
         Pvs4QNUefaQbc4fihf8SCM6z1daa3YBCBgtnQiM1x8q7wJ95dQuZF6B44mPLK2HhQZG7
         mxEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=IFHOVOtYG6YOmtA9c9/y4XP6QyQgtXtX1iira8qwIOU=;
        b=u3dxCi0yfNAqwb16zMC2chMYZlk/nYPSA5r7HYIfQg6rqaX2wC2In5OmFZjc100S4A
         RYgG1EYRttYtc0HA9j8Sy7EooNc5mWHI2Gx7f+1Z0NQ3x0a0IB/4zulSfPCR/m1qK0ep
         /TZDpGoYB2Eo0qZdcbRWNaJLtUxeK4cShpMgpLZ14wVbqMpweV2zxJW8nYROCZfr4jkx
         0ewvtbInu0ERxobOB3q7+uEKXFNGoUw/g0IVETuhuAVipTMKyXq+oc0HSnt+fnocIKME
         GwzDwEfcJlHAYaDW7Yte66F3gH69YyEXUlztQOCUiMvGpcc+Kject9T5PtFx98uLhXev
         nEgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q145si176517wme.4.2017.09.10.13.33.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 13:33:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,374,1500933600"; 
   d="scan'208";a="290385628"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 22:33:17 +0200
Date: Sun, 10 Sep 2017 22:33:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 04/10] staging: rtl8723bs: Remove
 unnecessary spaces at the start of line
In-Reply-To: <94120b866c10e83ec66c8b96522ae7d265d254cc.1505052882.git.harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709102233050.6548@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <94120b866c10e83ec66c8b96522ae7d265d254cc.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Harsha Sharma wrote:

> No spaces at the start of a line
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 5ceccd7..97ff3ab 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -597,7 +597,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
>  		_status = _FAIL;
>
>  	padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter, "RTW_CMD_THREAD");
> -        if (IS_ERR(padapter->cmdThread))
> +	if (IS_ERR(padapter->cmdThread))
>  		_status = _FAIL;
>  	else
>  		down(&padapter->cmdpriv.terminate_cmdthread_sema); /* wait for cmd_thread to run */
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/94120b866c10e83ec66c8b96522ae7d265d254cc.1505052882.git.harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

