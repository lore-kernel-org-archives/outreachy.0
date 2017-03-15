X-GM-THRID: 6397785232436625408
X-Received: by 10.99.185.1 with SMTP id z1mr3052800pge.51.1489614982896;
        Wed, 15 Mar 2017 14:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.11 with SMTP id d11ls3374930itc.1.canary-gmail; Wed, 15
 Mar 2017 14:56:21 -0700 (PDT)
X-Received: by 10.99.38.5 with SMTP id m5mr3004945pgm.42.1489614981943;
        Wed, 15 Mar 2017 14:56:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si577052pfa.4.2017.03.15.14.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 14:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x63so3348954pfx.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 14:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EMgOlUpW5r0Eaq9xXnBOk2x/MNbPj6NsHnU6obL7Q6U=;
        b=mzqCnrJAC+OOH33yeQwkr/EqYZvEBpSRQ4gwcSx3ytU/Yu0eLeEHgY9MCNs8wCcvuc
         g6HJ1M9bqwMzMWnSivnHI2WLXYGYUcZlhVnfGiyYkYs7q2cnAkNyf5jQ4GlyLspNZiVh
         tg6QiCYmiyBbmoIQU028riplCqkoYk4qyfyg24wSW2WR28LWLw8PHZXLVno//8TVwio7
         wJkfJKH7oINeaqki79e/QCbduj7uoBgIGxD8Di9ZebUp2Aaq7EgvIIscrBNp9cZxBTxk
         L6PhGHrRXvyCG1XHpT0h5DzSi7hOJUvL4ZCqBSek8SHEfwsGAff+kKtLEjEggEoFVZPF
         Ni8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EMgOlUpW5r0Eaq9xXnBOk2x/MNbPj6NsHnU6obL7Q6U=;
        b=VUgr20/SgYoZKo8Vm+O+ENbBO76IOna2PnJazXWNrqBe2LHC3WwNhLSmDHkvdkhVWM
         IBnyhI5goZ3GYUuz33HRlgUsE5j1IOdoKwNvWbwrA2Bk73ui7yKVKvK9K5qY0PD+VsbQ
         VU31xsSfjpnKLdEr9FmuHErdB9DsuMjyDu7thLrCy9ePFgu0xDudLK/GV8Qs0JRdOvGi
         Fm3EyV5D4BnWrA7juNn+sou/DMFCUbzSkx5aQOt8GFmUY7iuO3hBNKCzJW3H7M+HemlE
         0CUvnG/tHcCX7/9n5Hx4IAsyCOJwUXvLvdxrZaCxJxbGSGLIyHb55ixOrmjiYH2zhG7f
         JGVw==
X-Gm-Message-State: AFeK/H3Cf9qWaDuC2BPxn638C6aTXtnofPTKsEUJHzXND/HALkARDV790KO7nz5khTVlgA==
X-Received: by 10.98.135.68 with SMTP id i65mr6346190pfe.28.1489614981730;
        Wed, 15 Mar 2017 14:56:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id e70sm6092931pfh.84.2017.03.15.14.56.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 14:56:21 -0700 (PDT)
Date: Wed, 15 Mar 2017 14:56:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Tamara Diaconita <diaconitatamara@gmail.com>, corbet@lwn.net,
	outreachy-kernel@googlegroups.com, linux-doc@vger.kernel.org,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Documentation: Fix typos
Message-ID: <20170315215619.GA4673@d830.WORKGROUP>
References: <20170315175811.4187-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703152107120.4005@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703152107120.4005@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 15, 2017 at 09:07:56PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 15 Mar 2017, Tamara Diaconita wrote:
> 
> > Fix typos in sync_file.txt to make documentation grammatically correct.
> 
> It's a bit picky, but you are not making the text grammatically correct,
> You are fixing spelling mistakes, but not changing any aspect of the
> grammar.
> 
> julia
> 

I'm wondering if there is one 'official' dictionary linux kernel
follows?

> >
> > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > ---
> >  Documentation/sync_file.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/sync_file.txt b/Documentation/sync_file.txt
> > index 269681a..c3d033a 100644
> > --- a/Documentation/sync_file.txt
> > +++ b/Documentation/sync_file.txt
> > @@ -37,7 +37,7 @@ dma_fence_signal(), when it has finished using (or processing) that buffer.
> >  Out-fences are fences that the driver creates.
> >
> >  On the other hand if the driver receives fence(s) through a sync_file from
> > -userspace we call these fence(s) 'in-fences'. Receiveing in-fences means that
> > +userspace we call these fence(s) 'in-fences'. Receiving in-fences means that
> >  we need to wait for the fence(s) to signal before using any buffer related to
> >  the in-fences.
> >
> > --
> > 2.9.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170315175811.4187-1-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703152107120.4005%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

