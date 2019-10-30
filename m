X-GM-THRID: 6753357485842628608
X-Received: by 2002:a2e:9f11:: with SMTP id u17mr5363415ljk.104.1572414961225;
        Tue, 29 Oct 2019 22:56:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c97:: with SMTP id x23ls3394092lji.2.gmail; Tue, 29 Oct
 2019 22:56:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuHC/SWUDjSl2nYv3lGWyT0MVC9svbQ3rvqoKeDbxl0BYmJwZ/t47N3sKKhxe7kfSKMVGn
X-Received: by 2002:a2e:90b:: with SMTP id 11mr5159252ljj.233.1572414960024;
        Tue, 29 Oct 2019 22:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572414960; cv=none;
        d=google.com; s=arc-20160816;
        b=qpf/kxIPZRoqI0kafPFXWL7ZVXEBJsTjpRXxNDBNxbQHf3obcxMXl0y7tF/E+7lHS2
         OAHxZINsFCoFFB1KKtaKgtk+Op1zx2oGpdtBFR5Hnb3uU/Y6be8N7pEGyMDmGN+ugfZU
         C8+Gtr5yDP8gvYWNrRUO3JC322JG6Hu8SYx5Gy+eFsaUqNzZDUt4pn9Y9NP2uv+C58oc
         xKUFYmkmuT8wWXnm6MsGxhbj3NQFhVoa1wKpS20bU4JagWV4rXz2vPck3K28FYIqcTDE
         bTEgrAgNQUGuejHOQd1xp5B2q/pgX1+4iE9aFXUT2DWWRHmii/la9I8gRVIOpj72crZ8
         VO0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nn2MIeIi0oG4cGM87C+theEFpWJYqe4KQHeqVTpPORE=;
        b=X+iFd6whmKHq2JF8lrMMuA5UQCb8O54CD8munQoudYL/4CpGFmgN2/V50FeXNVgGQ2
         7XPgMysZLMGktCh8qJ0iJdmVjUJJJZb4pG/qU9SMdP/WkF+1bex0gojtHlnjQjr2FDgI
         oOQrCelEg/fOZsFHt4TpgCixkARyfAZc3CEVgbs9vWMu8ibujEOFbU6mbbLU5zrWACAF
         96587czbLR1PbnGEK7MbjawtY5Tf/sdKJkHbLPUNR8SyHoq62KWrEGgFYZRg2rChDgnC
         urQwVf0mM488aYbAnQQEFt0sq8ppWfVzLmNqqxCQp7g/CpVO9PGPVMKlz8GoU1HS+xR7
         t6XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d3si45482lfq.1.2019.10.29.22.55.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 22:56:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,246,1569276000"; 
   d="scan'208";a="325074611"
Received: from ppp-seco11pareq2-46-193-149-47.wb.wifirst.net (HELO hadrien) ([46.193.149.47])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 06:55:58 +0100
Date: Wed, 30 Oct 2019 06:55:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
cc: outreachy-kernel@googlegroups.com, axboe@kernel.dk, 
    linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, 
    lkcamp@lists.libreplanetbr.org, trivial@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] blk-mq: Fix typo in comment
In-Reply-To: <20191029223556.2289-1-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910300655460.2471@hadrien>
References: <20191029223556.2289-1-gabrielabittencourt00@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 29 Oct 2019, Gabriela Bittencourt wrote:

> Fix typo in words: 'vector' and 'query'.
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  block/blk-mq-virtio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/block/blk-mq-virtio.c b/block/blk-mq-virtio.c
> index 488341628256..7b8a42c35102 100644
> --- a/block/blk-mq-virtio.c
> +++ b/block/blk-mq-virtio.c
> @@ -16,7 +16,7 @@
>   * @first_vec:	first interrupt vectors to use for queues (usually 0)
>   *
>   * This function assumes the virtio device @vdev has at least as many available
> - * interrupt vetors as @set has queues.  It will then queuery the vector
> + * interrupt vectors as @set has queues.  It will then query the vector
>   * corresponding to each queue for it's affinity mask and built queue mapping
>   * that maps a queue to the CPUs that have irq affinity for the corresponding
>   * vector.
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191029223556.2289-1-gabrielabittencourt00%40gmail.com.
>

