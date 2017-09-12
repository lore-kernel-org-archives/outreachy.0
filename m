X-GM-THRID: 6464894536375074816
X-Received: by 10.46.71.198 with SMTP id u189mr1226828lja.14.1505226527747;
        Tue, 12 Sep 2017 07:28:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.65 with SMTP id b1ls122475lje.25.gmail; Tue, 12 Sep 2017
 07:28:46 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAXqfzyr5ib5mBr5/+okVDiF9T9KoGfbVaysgJrENIWRbtpEZTaIIoUNk82heMOMdseCBd8
X-Received: by 10.25.202.17 with SMTP id a17mr845866lfg.6.1505226526382;
        Tue, 12 Sep 2017 07:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505226526; cv=none;
        d=google.com; s=arc-20160816;
        b=bW48Po3hKAnYU1SkcYXX+j98TmrMHU5rGD1GAIxW4pCqY2rTli7I1bbiELjEPacgt5
         xaxUnWh1bjRi0+Rrmt0qhtfruYuz+Cyk3q5R7BnnXDULtGYvQYi33m2R92OGcAOK0/6t
         kIjagvteNAc0zkrw1bcsLoDSaBrsrwTGSrXWSnZjg5iMpabKShGKOCTI+wWmIVFEvfRf
         wX1YoGs01g2SBHV5uCwfDIKNHdeO/cw7fWGDUhe4HUDUJQU8Wd4sQ5Q3EItffdyIoHOS
         G5myKflQiNeTVYG71iVYxz0wJsp3MdQUAdHLtG+0GklQ54F6lrK5shusv+Ee6PdlU5ip
         PNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=IFqC8WVK9AVnsnYXpV5rvQ91twzdRf9YTejoVWoWqgw=;
        b=XspmFPqBWyc/GrhfiJjO7LchUY0Hm/js9p7tiYyR4PlVEeuHEG2ojgRcTpnj459Asw
         P5N7HkT3NxEJWX9ozfHZasiMWbSineqiG1mBBmC2NNJbk5uQohuX2HiPC/wtpn09dmz1
         Y8QN8vHlhEy+jxHHjdlSAnyN6S3PXiXtbIYGnVVWmNuKofavVQ6o8PLPUydY8uiQd83o
         3kdJclYQvZNU4VwrUGvgZTb1XQhkIWD4l3SQdJOhMYYKYgt+YkjqxSg35N+15JObSl2t
         YNbCcGVKxw9uOUcMYsL0cuZ8CvC5qipRW7IPcn/XBlxJPPwb1OU0EIVFvQm49fAUpl2l
         lWGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si625844wmg.4.2017.09.12.07.28.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 07:28:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,383,1500933600"; 
   d="scan'208";a="290704469"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 16:28:26 +0200
Date: Tue, 12 Sep 2017 16:27:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Merge
 assignment with return
In-Reply-To: <1505226307-5119-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709121627340.3149@hadrien>
References: <1505226307-5119-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Srishti Sharma wrote:

> Merge the assignment and the return statements to return the value
> directly. Done using the following semantic patch by coccinelle.
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> index 11162f5..e6ddfbf 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> @@ -1168,13 +1168,9 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
>
>  int hmm_bo_page_allocated(struct hmm_buffer_object *bo)
>  {
> -	int ret;
> -
>  	check_bo_null_return(bo, 0);
>
> -	ret = bo->status & HMM_BO_PAGE_ALLOCED;
> -
> -	return ret;
> +	return bo->status & HMM_BO_PAGE_ALLOCED;
>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505226307-5119-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

