X-GM-THRID: 6619408354530820096
X-Received: by 2002:a2e:5d0c:: with SMTP id r12-v6mr41474ljb.8.1541228183541;
        Fri, 02 Nov 2018 23:56:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:1fd4:: with SMTP id f203-v6ls1558600lff.14.gmail; Fri,
 02 Nov 2018 23:56:22 -0700 (PDT)
X-Google-Smtp-Source: AJdET5csb+S67VC6Q/iwlYdl3zJMrF0/+0LTf7TGJH1dX8gzbOTIW9Hme7AVmVGJ1oIAPTCVmjh5
X-Received: by 2002:a19:ed08:: with SMTP id y8mr1160301lfy.10.1541228182614;
        Fri, 02 Nov 2018 23:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541228182; cv=none;
        d=google.com; s=arc-20160816;
        b=aG0g96kz2eeO2SgYzxzobnW3XVEtZDVI8HdLnCXmjHAF/aYP2sAXWVC/sbz0maC8Tp
         se3yYqe62Mo8lrGNOlaXRjO0q0n8WGrJBl9qHYFz6hbfPJzRaBbfK8y9VIHdnshX+DAj
         uB3KNj64GD4XrcR4ovrWZ6ilXLSoJAk2g4/NE5BTHKXrb3dhRvVRHMA0N4VnEj237vYw
         ggRqvL2eUWhKQ+t4QldMJb+SGJji/1x2ZM6hTSaxsiKgPTUqp6YdMvW42nXiE9t2Z8Gd
         YImkClWPCTv76ArnZNY94+EzCl4caq/YK1TcjsKcQ4DKDi+Nkaw1ImtxLIUGFAD+3sIG
         bXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rNdVKM+JBxl66kHBPdb5ilwR0KVMbo4sw8sq6NwDJx0=;
        b=kcho/kZwWQ+wptnCwi6QIpyA0dPgcnB3EgWXSNCzmXuMv7Zycu1DE1HpbLRLfSjHHy
         rXiKUh8qNWc0ucMyAyQuj0cZO6y68/YTUc+avdEmR7UfHdbocO3bz9dqVdnY3rV844Cy
         CaZEVtJyToPuyRw39md055yNaEMfS1uXq4jPl9w8yfzOh5eLMZO+o7DumQU2IUsEQh0C
         XOBDDPzjnJ8JrGzjvT/PdGwXUo/2EjAyTTzTvQS3A8IKm8TinZK1wvRKxkvPY6PkSPyY
         6APqEAdLFDd/6aC3fIvDEnCFxCmHcOqDY8PJV36o5acF9JjuosbT3szJH1QcIhQng03M
         MYEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5-v6si309271ljh.2.2018.11.02.23.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 23:56:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,459,1534802400"; 
   d="scan'208";a="284221027"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 07:56:21 +0100
Date: Sat, 3 Nov 2018 07:56:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: cleanup long line
 in gb_uart_probe()
In-Reply-To: <20181102232501.GA1571@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811030755310.2922@hadrien>
References: <20181102232501.GA1571@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Clear line over 80 characters warning in gb_uart_probe() by adding
> appropriate lines breaks.
> Reported by checkpatch
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/uart.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index b3bffe91ae99..735f70c09823 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -829,8 +829,8 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
>  	if (!gb_tty)
>  		return -ENOMEM;
>
> -	connection = gb_connection_create(gbphy_dev->bundle,
> -					  le16_to_cpu(gbphy_dev->cport_desc->id),
> +	connection = gb_connection_create(gbphy_dev->bundle, le16_to_cpu
> +					 (gbphy_dev->cport_desc->id),

This really hides the structure of the code.  You can just reduce the
indentation in front of the call and then line the remaining argument up
with that.

julia

>  					  gb_uart_request_handler);
>  	if (IS_ERR(connection)) {
>  		retval = PTR_ERR(connection);
> --
> 2.19.1
>
>
> --
> ta
> ioannis
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102232501.GA1571%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

