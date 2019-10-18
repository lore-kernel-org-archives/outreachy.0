X-GM-THRID: 6749203879083114496
X-Received: by 2002:adf:db0e:: with SMTP id s14mr4483440wri.341.1571421594750;
        Fri, 18 Oct 2019 10:59:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c5c4:: with SMTP id n4ls4061436wmk.3.canary-gmail; Fri,
 18 Oct 2019 10:59:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2EAoa3j11ukw2IDnxCR7zIWe5arutDjIa4ZkM8lAa40vvCOkTBhUqPvufjbUXifuGpzk5
X-Received: by 2002:a05:600c:21d2:: with SMTP id x18mr8899228wmj.146.1571421593746;
        Fri, 18 Oct 2019 10:59:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571421593; cv=none;
        d=google.com; s=arc-20160816;
        b=TgYdQ1NXJxgV1Q6FEbCcw/1dUp3RjFXToTwdSEYKJN8GjwHNH625CesGnnoykvlzpL
         3RiajV1qgpdcj4dAcxM17ofs3IBtE+3baDDOnpNSFKdoEYP6YMRcDVnQm1nyoOsqyml4
         BWcsc4rHMzu5iKITeZrYriY5cFLPQW9MhKhLxDwvK4zYmYD33WpiyeyMO7WdJdpsdcCv
         KuGOw/vEadvjq6ylcnOM7VwBt63Dn9JO4GWr+jcZmRKLBwlaWsX5JUFXx5k3++R2mzyM
         1Cm8HEJJhOvjs9jluhS1elxLe7P40n3hrV+Iyr3o/PRZ9gXYjz4I6fGyet6pHwE6Op3v
         TmWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VFyHD+SddVwdZ21vohzmwULpbFviRS3iNI+QaZQDRNs=;
        b=llA0zE/zYH+fApRBUM70zqmRoe0rIyl09xXLC0o+Udn0vV+kzcCVg+XwG3xfj6v+3K
         m/dy45UUbHQTP9E5IIsiofQ6rfb5OPTQADQ58AD4uV9DriC1BWah7+oW5PVTn1FPVD/p
         hykhZeyYh/x1YIRiTZ8uxSrJs8RGWu5XdHvnyYbas6dMs1cFtUYtfXEqq+eKTv2CEXd8
         GdLYHucj/LvLDi5MNPp5cXyaoDpIQ9XebNcO8hNeuB/wlI0+wfSWdEH6ikbtAe3eQ0nJ
         9d7q41YLqCd1fnG/KuzAaCjqQxyutsAxxJwDk5ERZCEu2Ea3rDxbj1tLM/dJwFi3CgX7
         9oUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c12si136381wrn.2.2019.10.18.10.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:59:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,312,1566856800"; 
   d="scan'208";a="406882965"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 19:59:53 +0200
Date: Fri, 18 Oct 2019 19:59:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: Netlogic: Fix spelling
 mistake
In-Reply-To: <20191018175759.GA8294@ik-ubuntu>
Message-ID: <alpine.DEB.2.21.1910181959390.3697@hadrien>
References: <20191018175759.GA8294@ik-ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 18 Oct 2019, Evan Chime wrote:

> Change "standred" on line 3 to "standard"

OK, I see that you got that one too :)

julia

>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/netlogic/TODO | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/netlogic/TODO b/drivers/staging/netlogic/TODO
> index de8fb8009ce3..20e22ecb9903 100644
> --- a/drivers/staging/netlogic/TODO
> +++ b/drivers/staging/netlogic/TODO
> @@ -1,6 +1,6 @@
>  * Implementing 64bit stat counter in software
>  * All memory allocation should be changed to DMA allocations
> -* Changing comments into linux standred format
> +* Changing comments into linux standard format
>
>  Please send patches
>  To:
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191018175759.GA8294%40ik-ubuntu.
>

