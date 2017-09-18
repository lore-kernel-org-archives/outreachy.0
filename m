X-GM-THRID: 6465930684409053184
X-Received: by 10.28.4.69 with SMTP id 66mr993307wme.25.1505728149035;
        Mon, 18 Sep 2017 02:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.18.17 with SMTP id t17ls50576lje.53.gmail; Mon, 18 Sep 2017
 02:49:08 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5a2IX6wUAV9b7bJMSMdnoTvYQIjMkHULOU4f2NZmJsedQaB8+jDMGnqzsmD1YPoPrBG/46
X-Received: by 10.46.7.26 with SMTP id 26mr2558058ljh.5.1505728148034;
        Mon, 18 Sep 2017 02:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505728147; cv=none;
        d=google.com; s=arc-20160816;
        b=0n/SFS9q6ayhsnV1N5u2L95pXaH1CqOfQUl6hfzq4el3KmXbCVpsL9CCVYuV50pu19
         HNlin8SIVvLW6JRUTS8m1I5LmiRdCXbaWZIqylM6eWTtrkgtBxrEyEnYn6oVZgcaii5g
         tWScBQKaMMAzZ0QvkTdmJ/7AgDOgTCi4MH5vZzS7WQGcACZK6fslzMvL9d86tB4pq8cv
         b+oHQQXmIqAMfvezvyTQbnTVO9ePUZVTeAKhnuvX28tCb3C5IeMfgjXxVRTlo/RN4OLg
         zPSY7d7Hq/uEnIDARrDDJkCaD7ZYwIwGW75VOPrgOEgI6HedJBNbFzHTbcOrJ8zGvdaD
         j5AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1lbf8c895K6sNors5ROKLGsC/6L7yCFo6D3QCVmX9fw=;
        b=S4Zy+OrjkBYSq+usQnkeGh1EJo8/p3I3Tu8ZkQSrcvQAmiPWv0s/OLMPxUYy6GgcDO
         qjZpa1Xb9JDspQPZlsegQarxfW72wh3hZg1mBUIhfGIznJxZLAA+a0B9NZX8BbzdHsfW
         g8sgKFW7Q+GPZCIwYK6OMn/Qsamn/h3OPayPhgv36wxB2M2dAgHOzRYvG531/c0861WQ
         FUGtTKg56taCpZiAWl4CxkIq75YHO2OZWictxu+f9KYCsplSvdZcaoCJpoFTbLIZNSmf
         gvyuJRCOD/7MKvzsN6hffii6xgFxKi4dUG3IWGYzIXeatkqYBOt89mukCs6jznLOw72Q
         cYNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si439859wma.1.2017.09.18.02.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:49:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,412,1500933600"; 
   d="scan'208";a="237846077"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Sep 2017 11:49:07 +0200
Date: Mon, 18 Sep 2017 11:48:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <greg@kroah.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Meghana Madhyastha <meghana.madhyastha@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: drivers: Replace (skb
 == NULL) with (!skb)
In-Reply-To: <20170918094843.GA24318@kroah.com>
Message-ID: <alpine.DEB.2.20.1709181148160.6136@hadrien>
References: <20170915091310.GA21039@meghana-HP-Pavilion-Notebook> <alpine.DEB.2.20.1709151240450.3146@hadrien> <20170918094843.GA24318@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Sep 2017, Greg KH wrote:

> On Fri, Sep 15, 2017 at 12:42:42PM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 15 Sep 2017, Meghana Madhyastha wrote:
> >
> > > Some functions return NULL as an indication of failure.
> > > The style (!skb) is more common than (skb == NULL) for these
> > > functions.
> > >
> > > Found by the following Coccinelle script.
> > >
> > > @@
> > > identifier i;
> > > statement S;
> > > @@
> > >
> > > i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> > > alloc_netdev\|dev_alloc_skb\)(...));
> > >
> > > (
> > > -if (i == NULL)
> > > +if (!i)
> > > S
> >
> > If you provide just this option, Coccinelle should expand your rule to
> > consider the other option as well.
> >
> > You can see the section on isomorphisms in the Coccinelle tutorial.
> >
> > > |
> > > -if (NULL == i)
> > > +if (!i)
> > > S
> > > )
> > >
> > > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >
> > Acked-by: drivers/staging/irda/drivers/ali-ircc.c
>
> Odd acked-by signature :)

Oops :)

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170918094843.GA24318%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

