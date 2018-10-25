X-GM-THRID: 6616189865324183552
X-Received: by 2002:a1c:6309:: with SMTP id x9-v6mr337411wmb.7.1540485578953;
        Thu, 25 Oct 2018 09:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5287:: with SMTP id c7-v6ls2246015wrv.14.gmail; Thu, 25
 Oct 2018 09:39:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f9Hnp2I78bdriuu08wifvqQx6sVUSzRdmtbmZDmTUxJreXRdXcxTet22/+1sqL1MQlBYgo
X-Received: by 2002:a5d:63cc:: with SMTP id c12-v6mr314017wrw.8.1540485578109;
        Thu, 25 Oct 2018 09:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540485578; cv=none;
        d=google.com; s=arc-20160816;
        b=FIHcKZzv0KXTM2YRk3RbpcYdTL+ylnvlCipdQB2sc81u8AOsRsnqGDNzswvqO7dYB1
         rstg4Ev4aFFW8jguGvl6rceOLgBxCq3GEVkz++J6EZpzsqeBkaIiqCf3L3ETHuXuJpQO
         eGcl+g1KhDbATrYs8XN8EI42ClaEezhk1ZFCjzrPps3srY803n469WsT414qz45A3ajJ
         cixdNQMdmTCibDE7vAT4QAOtFR/kRFdQNxZ0qOVzSUE8Cyx7HbpqFlamiD3Ha2XUa1NA
         +H6fLfcN6B+b8YDX42GJok4TkYznIf1GGKkgEzN7kXURxiH5HJbDDCypsjbJIB54yzPA
         Drjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kIV+tpeudGbjVH8gqpjG/9lEHRLH6eebElYlAzq69Hc=;
        b=JWI16RGIeO/r5t4Ye7FqjHlMAxOkRU60ae1pcsY0zdqWuSX9nqMFEg28+96TxW8pz5
         CtZW2EA6P2FXgoQQXyssSgnhyposnuIIGyljBsqwB93EbcQwDXHNc0MhsTl+sITJi98w
         76r9NJkhoQzS3L8onlLOyKyhh9GleZvxKXnMYJZ7eFdw7/TQv84JjAqISyvFJYaoie5i
         fzbtPczypXV0ZPU64Or8TjmRLoLiixnAHG6SXmfx4k+NolrTxfe3TrhS89Kg7f9+nW6X
         +mze3hFBbZFZV7XASpTo3DpVpP1v8Z4dF3QhKicRa+bheRQ2JtimFyBsXrc9UNrYavM/
         JYdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 202-v6si80141wmo.1.2018.10.25.09.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 09:39:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,424,1534802400"; 
   d="scan'208";a="352832724"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.5.17]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2018 18:39:37 +0200
Date: Thu, 25 Oct 2018 17:39:37 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kim Bradley <kim.jamie.bradley@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCHv2] Staging: rts5208: Capitalise
 preprocessor variable names
In-Reply-To: <20181025163303.GA6666@xubuntu-vm>
Message-ID: <alpine.DEB.2.21.1810251737270.2354@hadrien>
References: <20181025163303.GA6666@xubuntu-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 25 Oct 2018, Kim Bradley wrote:

> Capitalise header preprocesser variable names (and all
> occurences) to remove checkpatch camelcase warnings.
>
> v2: Left some camel-case uses (namely xD) - they may refer to
> xD picture cards, as suggested by Julia Lawall <julia....@lip6.fr>

The v2 discussion goes under the ---, not above it.  The part above the
--- goes in the commit history, but the previous versions do not.  The
discussion of previous versions will be meaningless in the commit history.
On the other hand, the part between the --- and the diff is only visible
in the mail thread and will be dropped when the patch is applied.  So it's
fine to put whatever you want there.

julia

>
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
> ---
>  drivers/staging/rts5208/xd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index bf21bf0d1616..57b94129b26f 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -90,7 +90,7 @@
>  #define	NO_OFFSET			0x0
>  #define	WITH_OFFSET			0x1
>
> -#define	Sect_Per_Page			4
> +#define	SECT_PER_PAGE			4
>  #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
>
>  #define ZONE0_BAD_BLOCK			23
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181025163303.GA6666%40xubuntu-vm.
> For more options, visit https://groups.google.com/d/optout.
>

