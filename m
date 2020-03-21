X-GM-THRID: 6806467742549409792
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr13103144plt.172.1584794781804;
        Sat, 21 Mar 2020 05:46:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls4545137pgj.8.gmail; Sat, 21 Mar
 2020 05:46:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsTjVrz8MnhWQYdimq67l9X/mDmjSTfyq12AFguAtDt8dFLU4E+eGNA5Wea2meAhj44WOVE
X-Received: by 2002:a63:334c:: with SMTP id z73mr13645168pgz.421.1584794780246;
        Sat, 21 Mar 2020 05:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584794780; cv=none;
        d=google.com; s=arc-20160816;
        b=unx/SDfnv9CpJ5OEq8HAxt7Q2WAUTD52MfyuZ1uSdSncC3vCJFIfc3xUBgM/uxXIsF
         19TsXMOpBWFKJY/XN2HAgSveEKRg1ZurtmNuC0RdAteZidE7poaw52vHh+IxmDNb7lPQ
         SPS8VdUMVbGHyd02TQOUEslmg6h1ptucJ3f27TQhX+PJLWLdSQZlvBlxUn932aOIFjdV
         IFmrb71aKdHFebJDMDGGe0uOUAIgNOr56ZoIWqkOpBXc+KrDm7ZUL9uHOoYOKxMyo4fb
         ch39CeA26zl0hcKt2To7QECHfqsKNC28AxRN7cV/lpuEEfAk7uf4g3HrdfZ2DUvlex29
         IEcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KbSnLb91cwzRsOcM0HxgFbHr1foctwEVQXQZciNvU00=;
        b=kQB6Quc4TXI9RO9sPLZCIUh2Sl/8Amnus6SqPKLrH6heOWbBHZB1Ub1daNOmmFQFk+
         KWualrJytMxAVJmBWig/aaILGAgdazakD3fMQ7wgv1vtEdL8MzhHajNmOyRMUyqJUEgv
         V7c4O7e7f7NxQI+cIsxmSEQw9qiniSzSUZ2jeEfRphCgjrqtxYFqgWM7rRoHtdB0+Gxd
         IIxZj0vorAIaFDThNKoGHRC7KfX7HdosY9HxWVN6xuarpgVvMwU085BwpVh8lFw85unG
         KtsPmBZdmzug54AFOjvJeS+GksVMz4AQPznEWLXLVLaDrjqYAUVQvZT5VIqnVFwjMmtx
         nFQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0dAHfNOt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ml9si543122pjb.2.2020.03.21.05.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 05:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0dAHfNOt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E2102072C;
	Sat, 21 Mar 2020 12:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584794780;
	bh=v23uA6xALV5B3paSc6GD8K9lznnRDbPTqxFrK++pIaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0dAHfNOtrYAE95AFgok137FVrwYFCYU6ivrJPee5U2WCeYXNjQ2Z6Jch5tMYT1LG8
	 gpFoNzKmGm9s0hKhwk8zyKCPZ3rzsHRvopgAev/02D5uJpDFol6MyuC8khx/lXsaa+
	 iU5xGh5gr/aG2TT2LUHm2lS+4H8pmgiVl2IXJJ9Q=
Date: Sat, 21 Mar 2020 13:46:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: hp100: Block comments
 use a trailing */ on a separate line
Message-ID: <20200321124615.GA1215294@kroah.com>
References: <20200321013101.GA17131@siyah2>
 <20200321093325.GC917692@kroah.com>
 <e60514a251eb3f690e9136670def0ee2b8289969.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e60514a251eb3f690e9136670def0ee2b8289969.camel@gmail.com>

On Sat, Mar 21, 2020 at 08:44:48AM -0400, Sam Muhammed wrote:
> On Sat, 2020-03-21 at 10:33 +0100, Greg KH wrote:
> > On Sat, Mar 21, 2020 at 04:31:01AM +0300, Gokce Kuler wrote:
> > > Moved to the bottom line */ for block comments
> > 
> > Again, you said what you did, but not why.
> > 
> > Also, you _added_ two new checkpatch warnings, not a good ratio :(
> > 
> > thanks,
> > 
> 
> Iam sorry, are we allowed to work on this driver, because i got; 
> WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the
> MAINTAINERS hierarchy.  No unnecessary modifications please.

For basic code cleanups, to learn the process, it's fine, but note that
the code will be deleted from the kernel "soon", so any changes you make
will not stick around.

thanks,

greg k-h

