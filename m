X-GM-THRID: 6802299057078272000
X-Received: by 2002:a5d:528e:: with SMTP id c14mr27720524wrv.308.1583842013261;
        Tue, 10 Mar 2020 05:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls1104944wrd.5.gmail; Tue, 10 Mar
 2020 05:06:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsCWsh4iFj92zJqgmdVDoue8yEx9H1acoZ+IwF92OSPWsM6eXIHIbrsf4IACuo46Zedl/2m
X-Received: by 2002:adf:deca:: with SMTP id i10mr28827402wrn.172.1583842012065;
        Tue, 10 Mar 2020 05:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583842012; cv=none;
        d=google.com; s=arc-20160816;
        b=lXmVuA3YeTYo//+7fKf385O6xQrLYV9uMAHPJEzSsxhQ+bXoW+d0SQyKBmto9UNyfq
         ocWk7mI8oeUVtoeDoH2fh7aUwJ7Tah3pddIdARiK6fnr9PM0DU0FQvFDrjWZwHYjmXVP
         9UeEjclkwtM8jdn+WbgbQ2ZPTFZMSn+X9s23+mcJJKhasCFEIfBYtZlLjsgIoIpS3EJx
         M/+a2+AAXOK3WYirhVFUpGIixm+Avky8ZnqivAMA/qYe4u/9sIo07HZFHbLl4+3DG9yC
         6MmSSOEj3Lb5LQhpQJ6TC5BtuxDhUoon2RG2kGV3SZQsx+cQ/HXuwAAv+belcTG30psn
         /iCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iRbIASbtqaA5K5RP2H7WHAXCUgLgYzzLhjM1Ye4hrqg=;
        b=v8XHV95VwNhdh7Bp6vSylqez2LnPkq//1WDIg2nwfr8sHScIz8KrwUuQ85+xMQawcJ
         XVPKuUVEJ89PctjmJCaDMxtjGibPXdilOZmQgdtHd0qLcoqVIxX6iyIGy77sXMn0csZb
         tbZ15hX7+OBXEayX+y5zMUHg0KFTIk3GWp1n6xJwu1Ewwowkp9+FGyn8vQbXLoogtg+z
         qZXeUFeXkXLMWk+SX4th9WJkeJPCoxtPJ6di4U+GHSnpBNaUdGCvd9Sdd4DW2hdSEo9U
         llmWN4Q4ttHmAvxAp2IC0UA02IvGUMPeJy7dVi4O/55KMEPzwqxUihSZysA1/05Cr8zc
         vFCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=VAVNyRIR;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q9si511707wrx.0.2020.03.10.05.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=VAVNyRIR;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x344.google.com with SMTP id g62so1070666wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iRbIASbtqaA5K5RP2H7WHAXCUgLgYzzLhjM1Ye4hrqg=;
        b=VAVNyRIRrxlFq1oeMY1ZxGBLgbGIESNcPIc3u4L1Oa59vah+dKsvWOkhFRuisjKZJE
         npdoWhQi6zGNxPRffffIHJT91rs+4Q5E6Rj9rO/4L5NYur8tf2q97utzWPegeu2DmvTJ
         T4m+b+I+G19aVzXf5L94pVNAW06Z9fgcQm9/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iRbIASbtqaA5K5RP2H7WHAXCUgLgYzzLhjM1Ye4hrqg=;
        b=sojLaTTV50vd6eHdMxWVZ8zwwDVF1lz3psJb7dc4d7vw900gEJRb1XbC7WLzOS9hq0
         c/Rr0Bx9EXlIFb/fo5Q7juUsb/8TeWpiuNmVW+cXGQq3VX+CqjeW8utHEa8ExYuuZJVB
         CJJar4MtoBOLLMWS+LO1lOaA5AMNiz5HxazNYjodvG+yAyiGFaVOpI9SMQ4ZpDjQ1zr7
         kmrX6AKoXD+PZ/wd6nZzBEVKwY4JUXLgedggCUEb7aMH/OJHQ+mtWOQJ2RBm9HIMbBJy
         tNitQagv3KQmeRB2dek6KvNijiLF7TLGulY6ADxPVksA/aJO7AHNlSWujFbRW8fE7bO8
         tbcA==
X-Gm-Message-State: ANhLgQ0cQ3NlImx9NnITzMzam+oVQUH226j3GDMhi0O7as4td2dRNMJf
	3nxo2t63P1Ana9W1mUMwICMC6xQfI87+pw==
X-Received: by 2002:a1c:960c:: with SMTP id y12mr1876526wmd.9.1583842011642;
        Tue, 10 Mar 2020 05:06:51 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id r23sm10399888wrr.93.2020.03.10.05.06.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 05:06:51 -0700 (PDT)
Date: Tue, 10 Mar 2020 13:06:48 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Some questions about Outreachy
Message-ID: <20200310120648.GB3202@supernova>
References: <20200309195423.GB6565@supernova>
 <alpine.DEB.2.21.2003092130090.2324@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003092130090.2324@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 09:33:22PM +0100, Julia Lawall wrote:
> On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:
> 
> > I have some questions that are still unclear to me:
> >
> > In wiki it said that one have to make 10 patches and 2 patchsets. Is it
> > 10 patches plus 2 patchsets, or 10 patches 2 of them are patchsets?
> 
> Since this is your first time applying, I think that 10 patches plus 2
> series would be better.  But it depends on what you are doing.  Some
> changes naturally lend themselves to a series.
> 
> In any case, the goal is to be able to send patches that conform to the
> kernel coding style and are likely to be accepted.  Try to work in that
> direction and don't worry too much about the nunbers.
> 
Indeed.
> >
> > Linux kernel is accepting 2 interns. Is 2 interns for all sub-projects or
> > 2 interns in every kernel sub-project?
> 
> Normally there is one intern per project.  I don't know about the number
> of projects.
> 
> julia
> 
Understood, thank you!

