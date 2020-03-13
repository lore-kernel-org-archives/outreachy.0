X-GM-THRID: 6803797198848917504
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr9733842uae.106.1584134399216;
        Fri, 13 Mar 2020 14:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:dc15:: with SMTP id x21ls1432747vsj.2.gmail; Fri, 13 Mar
 2020 14:19:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLw4/7n2vwVNiPtD2FReieOlaynWL4DnUQIosjyXC9iGd+7OzzVtZs3kLTX+u2LxKQgw0r
X-Received: by 2002:a67:4384:: with SMTP id q126mr10577162vsa.154.1584134395635;
        Fri, 13 Mar 2020 14:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584134395; cv=none;
        d=google.com; s=arc-20160816;
        b=VHjKRg37gOlmAM/aQuQ9CYuV7Eqen5Nk/zLWxfOdIJEHvTZrNk7Q7LdiLbP0GmYXUK
         MGZEWjjdFD5Tu2+BZQC5AM+hwagU+8FngePXy+8hMqax4VhBBkH4solQ7TbLhXS9Z1Km
         I/RXAiAtJywQSVBRcAvvqyk2QvVC3cGf0V5WV5fi+kVJeKmwwvAOVEcKg60RlaOMIaGR
         kH5QJFEggl2E+iH+CrjPx/evxVKyAt0Fxx4WOfXjcPs29ZZ3f4df/0ZCrqIG9X8OvD6S
         wqyk0QWv8a9itqh0IIItWMI3k6+1SYUOKxE9hlmRQJVM5sWMv7VmiB8WTyCyq56CIGbd
         QVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=xs8m73qx6Jypn1rhPz2PYhnN3SkCIn4AHb27nCUtNfY=;
        b=Lkc3z2ykVNDEZxosy8+cV0Tgxv7g2a9JohzLg/nZ0+NUUhhJ2UD4zZAR8+jRKKdBCK
         toT1Pn4b92nqItUE7WfD1c0xs4udjR7wHbU+eai0zBQ3ureUumWpYYPaf7mexDgcr57O
         oCRkOF/mYmubQyUlJt3XruXfpdlafmQT1tHnQIeTiN2MASTUlD8hN+MftEBsMpYq4NZz
         maVXMvtb0AFn/9bBa2poYYQohWWltshvg67UGF5MJ42iftBpfVSAd5cKy0fqyoopNDkc
         Jx3FzpwwQaA7HzVtsfbLV5a3EAwD8uzc5QCjyLIeY9m1bznYbb6pf4/UwHdhugY6R37O
         vvWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=GPHGtU9Y;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w12si109896uaq.0.2020.03.13.14.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:19:54 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=GPHGtU9Y;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x542.google.com with SMTP id 37so5692175pgm.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xs8m73qx6Jypn1rhPz2PYhnN3SkCIn4AHb27nCUtNfY=;
        b=GPHGtU9YVxymGL9R9m02xo+5IAgKjfE7Sat2XYX9XafvgaclNpqI8eDywxMGiqj5yn
         1CF41/nn9LB6VFsnEJ4vFSvGmuNNcOw12c3uJwCxMhgSwVG6nd8xg0DjOZOvPKiHiKAN
         RDos4O9O07nuaJ9DEgSeRipEhybCky4E0lUneG1CjeiDiiPCEXbWpWjIaVZJhDhECErf
         6vWF1TUr6MUsyIjTyyFY7RhViLW6i1+i8Me8ESDesGCH1OGAbn7EeqqEC2CNP65QlM/Y
         AJCVQVYp1tT3OJ6e2zppnRqH9fI/1FMdfvUDM0QxjNuezt4Eq66A64r+ZPU9cJT4NY3E
         YI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xs8m73qx6Jypn1rhPz2PYhnN3SkCIn4AHb27nCUtNfY=;
        b=h1f8agLEevDa4Vx5Vw8hHb+Ws9Cx5AOIELhKZBDOqPwyLWqqz8Yyo5mgwHP2dt2QBb
         TGa6Dy7I4RY6slLuSZUfPFfjPn7xd+iNQP7K2x6BTVCRuBqBYICFsCOGEHFyxACoHrqF
         ZtB3oGUr9/ZxeJ9DhHRxYJCx9LYnKWrap4E1MztIfac+kj5YjMIwvQ6yrKA5/NOiDy4T
         DXp152DHtOUlrA0GhO38GunX577JEOD2ATel/duvRqVG9kjJrgRlFvwqkBKbZ6G0PJbN
         58f1EQwKcF/1UVKQDntvUvr0D1xI/F2dsEL/aefigSR9bOB9AZu31dFmya3ZXXf+kFvH
         QCMA==
X-Gm-Message-State: ANhLgQ0FWlu4WzH7dmq4lDmdYer6kfYgw/u1h8XSfdIQeXFOwrzzblay
	3d3/6IfordB5o3+HCDrqah0XYg==
X-Received: by 2002:a63:5d60:: with SMTP id o32mr14407574pgm.126.1584134393212;
        Fri, 13 Mar 2020 14:19:53 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id nu13sm3635045pjb.22.2020.03.13.14.19.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 14:19:52 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Sat, 14 Mar 2020 02:49:46 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: media: hantro: add
 parentheses
Message-ID: <20200313211946.GA1217@kaaira-HP-Pavilion-Notebook>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
 <20200313204739.32676-6-kgupta@es.iitr.ac.in>
 <alpine.DEB.2.21.2003132204070.2355@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003132204070.2355@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 13, 2020 at 10:05:08PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 14 Mar 2020, Kaaira Gupta wrote:
> 
> > Add parentheses around `reg_name` to be safe of precedence issues in
> > a Macro in file hantro_postproc.c. Warning reported by checkpatch.pl
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/media/hantro/hantro_postproc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> > index d99238f4753c..c731cda822c2 100644
> > --- a/drivers/staging/media/hantro/hantro_postproc.c
> > +++ b/drivers/staging/media/hantro/hantro_postproc.c
> > @@ -22,7 +22,7 @@
> >  #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> >  { \
> >  	hantro_reg_write_s((vpu), \
> > -			   &(vpu)->variant->postproc_regs->reg_name, \
> > +			   &(vpu)->variant->postproc_regs->(reg_name), \
> 
> Does this compile?  I didn't know that you could put parentheses around a
> field name.
> 
> Maybe the macro isn't actually used?
> 
> In any case, I don't think any precedence problem is possible.

In such a case where I have to remove a patch from the patchset, should
I send a different patchset or should I write in the log of the cover
letter that a patch was deleted?

> 
> julia
> 
> >  			   (val)); \
> >  }
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313204739.32676-6-kgupta%40es.iitr.ac.in.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.2003132204070.2355%40hadrien.

