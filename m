X-GM-THRID: 6749323707377778688
X-Received: by 2002:a81:4806:: with SMTP id v6mr10121395ywa.271.1572652044640;
        Fri, 01 Nov 2019 16:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:338a:: with SMTP id z132ls1330469ybz.14.gmail; Fri, 01
 Nov 2019 16:47:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZzof40QbLspX8HBv3r2JsGUhrJqa38nhcWUYFnuACLo0QwMm3e45cT7hsG+r5tLMTMkkG
X-Received: by 2002:a25:7395:: with SMTP id o143mr12009400ybc.190.1572652043213;
        Fri, 01 Nov 2019 16:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572652043; cv=none;
        d=google.com; s=arc-20160816;
        b=T7pG1mdO7nuIeCcNPxaT1RqXX4qfrM4dRzKlnF1YxXE2wrt9kM5w3tV7xi4SjbP7IN
         BI/bJ0+fo0BJqp5FrXkuKsE1UZq9zg3028qX7prgkmYPfjGtxXQGoin6MoHQFCpvI+c6
         ly0RZeMLbeN7iZV9hq84nwy7NZPb3HRIKax4w9SAkCU4ilfy0XBVxezPG6YZrA7qaV6W
         9wBxJhvVLWgCj2pYYoRc0nO6yUktNh2FOWr96BYq8cmtPfKqZVA0zINQXbFdw1cMY6Uz
         C3CRcSic+Ff84bU3kTs/omAti6BPEFlVb13dZgf98TCcewxJ1WHL+Mxj1/GEDXj1BYg+
         TbLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=z2jUkMPn+mMfsR3A652c7qLYXHku0OhHUC5Ak+AL/Go=;
        b=zWpH2+AdEIlOuxjnu0AfUVQNbWmOKqEz5vdQ3nWUAtkdJdPicrbSlnjHgmVKkv9St9
         /3Ux87RlIKyOiFEHc/wEKstFzwtuLIa+7n93DVHjsY3BTSShwLWLMT19AHmS8tI9XCWT
         VrWtty91XgYg+HiFoEmSpNdE8tYlF3nfCaO/RkkCEEUKWIsX60O0DDQdduXpUnwPaKP+
         7Hb2LFwkAF62ME0209MYvXcVBkzb1dWhP1kYDGwy/TM1CJff5GKeNFbEhul6rorsrow8
         VX1QNsnLk+c4rO7Sn5bu7UdWTSv++0WHN7+n/NsY8Y2G+T5rftyumizvhf4F+dZPRdgP
         O6RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Esae8I0l;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a1si648586ywh.3.2019.11.01.16.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Esae8I0l;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id s23so4026130pgo.9
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 16:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=z2jUkMPn+mMfsR3A652c7qLYXHku0OhHUC5Ak+AL/Go=;
        b=Esae8I0lFpiegezt3T3Rvor/OPaA+I7deTDm/4Uqfqf6esyppQebbh6KsularfuuWg
         8atcTnfUjSJXzqh7gdN0/lORuMNUmqJ37LZbSObNZIbl1GUbnHzBfFiwtpbNtv8UXHyX
         qsUkKWPzOZWGLA7ZNUdPv3XCbA/MMv5cl8GezBP/pPU1gViC9y4erT9KHYId5tjKSglQ
         fI19osH8wb/mGcaUxjHjtg3vmzVQhf3bE80SmXKtjy8l62dafXIHssJxCVrzGCv+//9Q
         m6dNH2NYyPD6hlDjhJQd5E7wKBJScehYhIanT8C7PY04yo3slryV0htxfq9wwFwXdgmF
         UyNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=z2jUkMPn+mMfsR3A652c7qLYXHku0OhHUC5Ak+AL/Go=;
        b=BSXbeyqzqpYFcvhqzi6MGjRNSEYcGTCqsllDV7bq3I4TfejmgyMGlM5c0FqETkUN89
         RvUpe/szkXmBHTq4+7cLx6NULQNXXam2UztiaEd8bKraBpmnuoEznqSs87eIkJM8kx6Q
         H8GOGDsAxTVlt6qUHrLIyGgKMzANt5XL5EJC2d0MZNsw3S7a9c1T1c354O74cr5N+HNq
         4WUXtTlEb4OcEA8wawqrZ7P3XE94lXdX7zOI1vFaBtOAwfnn6wmkKZ6NioNgo2JXhLV4
         Y6VGV9sZ8NDWJEdh6QlkkWrP6ljrN8U6JBzacW0zjSeUkvNKVunuZAljQin8YL6d72uB
         ac+w==
X-Gm-Message-State: APjAAAVo/OJFttUeH3WQaZ1KAps4bFzNqCEb8oaXGrolMDc/kpd26R46
	ifE9ksutdTsuNmsIG9fLNelbiTJjjvY=
X-Received: by 2002:a17:90a:9201:: with SMTP id m1mr19041986pjo.42.1572652042107;
        Fri, 01 Nov 2019 16:47:22 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id m68sm7729583pfb.122.2019.11.01.16.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 16:47:21 -0700 (PDT)
Date: Fri, 1 Nov 2019 18:47:18 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [RESEND PATCH v5 1/2] staging: rtl8723bs:
 Fix line over 80 characters
Message-ID: <20191101234718.veroftfioe7qjx2x@gmail.com>
Mail-Followup-To: outreachy-kernel@googlegroups.com,
	Greg KH <gregkh@linuxfoundation.org>
References: <cover.1572396117.git.jarias.linux@gmail.com>
 <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572396117.git.jarias.linux@gmail.com>
 <20191030092456.GA637833@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191030092456.GA637833@kroah.com>

Hello Greg,

I've updated the patch and decided to drop the coverletter. Now all
the changes are clearly defined. I also added your suggestion about
the argument wrapping that I didn't see the first time.

Thanks.

On Wed, Oct 30, 2019 at 10:24:56AM +0100, Greg KH wrote:
> On Tue, Oct 29, 2019 at 07:48:49PM -0500, Javier F. Arias wrote:
> > Fix line over 80 characters by wrapping arguments in function call.
> > 
> > Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> > Changes in V3:
> > 	- Edit the commit message to properly use the Suggested-by
> > 	  tag.
> > Changes in V2:
> >         - Edit the commit message to use the Suggested-by tag.
> 
> This is a v5 patch, but you only show what happened in v2 and v3, what
> about the other 2?
> 
> Also, you don't seem to have changed this patch from my last review, why
> not?  I will not take this as-is, sorry.  Please fix up and send a new
> version based on that review.
> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030092456.GA637833%40kroah.com.

