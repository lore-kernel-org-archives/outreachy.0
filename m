X-GM-THRID: 6803797198848917504
X-Received: by 2002:a63:4502:: with SMTP id s2mr15044287pga.391.1584133817229;
        Fri, 13 Mar 2020 14:10:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls5033757plj.0.gmail; Fri, 13
 Mar 2020 14:10:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuw2jcav2d7hOZ9eoI7MClsPKg4lk77grQlIH/Vo4jQ6Fv+NXKf+7bJK1WmRL4CEzR4XOCM
X-Received: by 2002:a17:902:aa88:: with SMTP id d8mr14859986plr.201.1584133815578;
        Fri, 13 Mar 2020 14:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584133815; cv=none;
        d=google.com; s=arc-20160816;
        b=tCT+uUeGcrWA29jfAvJOa/g63P0HV+HGrJ6WH+zIgktCZSkW6reIMovpZYPjGLCE5c
         G7bXS8zunksn3xrXdlIDqWmSDYYlTNwX1qtJl/vNMedtXxqbtsw0CzIlxEJygJQK5WFO
         /x0tYShUW0iQmogzkTdBAIg4OS2wjsfPaiKL80xvanm+qFAyARJn9cbI7TXrqWjswnfd
         4CguuqMa0PNw4jPE7oONfdfzJPMOWbgoq3D9t4zZpY/nR+V6wEmh1i75or6EEyXuhEtG
         oZMD5WOwm3bPcVXRzBxFaaykbK7zG7tZ+mse/P32rPAx7/yDBOR2iCyLV4qGZFcuz/h+
         l3PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=IzBcTAImC16v7R68ORPdGthaAJDhqKoBNdDSwvBG3Tw=;
        b=VTcKlkXF0WJa5aQedihFwHBysbMZ8aVXX5U5y6F1ZvU6q3lvyjeL/DPg3+LnNqMc+y
         j4ZZlQbl41X3T9gkLohhaEYfy6sjSWwtIMWPQcVyVMJqY8IUV2s5C25Y3rEQimX1Y65a
         0NTZc/BtDZ4aTT0YhSq/vuV4PLcgU3b8SnE/nEbcj34lG4Yo0e0nn5enozpyWd22Bp9Z
         O02CxLgwycy5jNe1Bb2JpROrcYCaFxNnnAeGAcXnPcwhVJcnqIzjUZs3fQX+FjjH1ruY
         GfpMIPExmCSFNHJybxGEb1CX6AXJld+2BiWzT8Xr63t77dAyMw/A28EEDGSjn1WGWnM3
         AqzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=ZnMBvOhX;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b10si625112pfo.6.2020.03.13.14.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:10:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=ZnMBvOhX;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1043.google.com with SMTP id nu11so1741193pjb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IzBcTAImC16v7R68ORPdGthaAJDhqKoBNdDSwvBG3Tw=;
        b=ZnMBvOhXMv9v4KIEy3n7ilbJWwn22nl1DAV4YCUJfECGQgApteptOQeBr+G8hQuAqd
         9OjGibwAz+dxaR87+i0YkayjZk6mWzssZWW9AJZytFrcRsx76Nc0BUFjD71f7/44ty7j
         SmtYauPqlEU6ttvBCheiAPfVAROTOWIPR2eMMe0+E8/I7NfoQilhOe2/6bAKwJNSq99A
         zKCwVnP9Z4Ey+lD/7wQEQ+tsi59hPDqln89AqX/46R9PnN4tDIMOiGne0uOnNbQ9ca9z
         rDCuiKQgq/IDf93hPW2SvMZFiq+fadF9z+VzTTMqo+S0yAp8Pfdkr4x3zsIALDTiBC2t
         G/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IzBcTAImC16v7R68ORPdGthaAJDhqKoBNdDSwvBG3Tw=;
        b=pRLxKSirUap+Ch1f1XbyEFXv5UVsp2KHRdru5DHEbKdEvKct4ucrTl01WgZPBWZtGX
         TW2PGMT64WBVAilVpYTyKPc3SvLOOve0/xdq+CTkvP/hzqZ4bPegrDJ5z48icnKd/GS4
         K+K794lDatBCvTVybV/zXJpmmTTU2bzgo9otIK3anRCAhqQI4VfO8d7aGWxVBZyKMh3H
         MumOvUJSSwyypW9Cy1BZoPEbjF7/OgNOBrsZ+vFy4GXjdPBwxY2XULD3Tm0kch+sMWUs
         XsJSsm6jiTbmITO5x5yBe2pIMUhLeyOBwblHJ7WBL8n6DaKE5NsHZyr4p1RErgfJbqWX
         tsZw==
X-Gm-Message-State: ANhLgQ1J5c1c4HCKkKn46Anzx7tf9DA51LAZDmT9QhVahAwR+T56ALbq
	FlRX5TAmCp02EKbxMkcLFYvbYjL4tnY=
X-Received: by 2002:a17:90a:a385:: with SMTP id x5mr12032259pjp.102.1584133814716;
        Fri, 13 Mar 2020 14:10:14 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id f68sm9811214pje.0.2020.03.13.14.10.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 14:10:14 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Sat, 14 Mar 2020 02:40:07 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: media: hantro: add
 parentheses
Message-ID: <20200313211007.GA1084@kaaira-HP-Pavilion-Notebook>
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

Yes it compiles.

> 
> Maybe the macro isn't actually used?
> 
> In any case, I don't think any precedence problem is possible.

Yes, you are right. There won't be any precedence issues in this case.
Sorry for the misunderstanding.

Thanks!

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

