X-GM-THRID: 6754389089918648320
X-Received: by 2002:a17:906:48c5:: with SMTP id d5mr11439694ejt.167.1572635412415;
        Fri, 01 Nov 2019 12:10:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6889:: with SMTP id n9ls1367122ejr.2.gmail; Fri, 01
 Nov 2019 12:10:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtViG9CRGHNttxpGBTF98U9vh3PLDH1pwNX6icUx2btC8fEb5YciCicxqZVvYCPW0fUMn7
X-Received: by 2002:a5d:674f:: with SMTP id l15mr12954516wrw.80.1572635411393;
        Fri, 01 Nov 2019 12:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572635411; cv=none;
        d=google.com; s=arc-20160816;
        b=ALgC004HDclvnS9/P+S3lrnGT0AKwkuTQ5xa3vKRS/AqNYOED52YC5+hovv8bVlUKk
         TIqeSdzJegtVhNs28ARfO1sYfblmXhjf2XsA9JnPpNttO5uD4Cf96dG6jucqsMpGk8Bo
         +T8VgAJtNLg9gdXKLns6yhYY5d3z5sHMrS+nj/REyyn+KcH3Or3l8JvKWp4iF2ixz8S3
         e1IbiQ20+E9IvmJUEOiIKIFLKCczoaQltYSc/KeaHTq5ioMH0YZqAoKOyUGVjf9Kt5cv
         ASe+ZVuTMQ2d3kOjWPmevdIeW/GSnUZ83XjBCzyCuyGh5dOx1ZzwJcxuEuVruI3gEeow
         qwEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9vmcU6GE2g3nA2yEg4Mk618F3RkhpKy6YT+ifBD1mRE=;
        b=AwY/n9lMM9mbeHZUyNWUt2E43i6pRirmppRh9WGppPIyOn0QBH/rmilS2U+Z3Ix+Jh
         BvK4PzSa4f91A002zlvnLZn+znvtLID6xGsYFk4pYfVUtEbzo1i2Q/zUUeT6x17UJw0P
         ueVVwEztOxfJFDY97RbFsM1moFbG/ddqOXXYH2iWPhRO4b8hy75+UjdvCf/GInqRu37S
         enripRrsQ7Jk2hl5W6NVHwF9ibZ5kaIiBIMr4kAu527Xwsp55IZsrp5tsRXR6107vIGD
         3hIQsPDD6IfjR0e8JRSzNOFa/Xjg3513Sis0tGySzypKWyEz8Fif9+nI51ZG/aTY6ZIU
         6Jyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t18si496556wrw.0.2019.11.01.12.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 12:10:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,256,1569276000"; 
   d="scan'208";a="325343945"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 20:10:10 +0100
Date: Fri, 1 Nov 2019 20:10:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: Fix wrong
 assignment to boolean variable
In-Reply-To: <20191101171914.rphvreggpu6qj77e@gmail.com>
Message-ID: <alpine.DEB.2.21.1911012009460.2883@hadrien>
References: <20191101171914.rphvreggpu6qj77e@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Javier F. Arias wrote:

> This patch fixes a warning by replacing the incorrect value with
> a boolean.
> Issue found by Coccinelle.

The value is not really incorrect or wrong.  It is just not expressed in
an ideal way.

julia

>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/media/ipu3/ipu3-css.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
> index fd1ed84c400c..f36de501edc6 100644
> --- a/drivers/staging/media/ipu3/ipu3-css.c
> +++ b/drivers/staging/media/ipu3/ipu3-css.c
> @@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
>  bool imgu_css_queue_empty(struct imgu_css *css)
>  {
>  	unsigned int pipe;
> -	bool ret = 0;
> +	bool ret = false;
>
>  	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
>  		ret &= imgu_css_pipe_queue_empty(css, pipe);
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191101171914.rphvreggpu6qj77e%40gmail.com.
>

