X-GM-THRID: 6752241350359384064
X-Received: by 2002:a19:8092:: with SMTP id b140mr10586462lfd.13.1572251766250;
        Mon, 28 Oct 2019 01:36:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:86c6:: with SMTP id n6ls1450560ljj.5.gmail; Mon, 28 Oct
 2019 01:36:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/g4hFYERbePDletHfjtf+EqruUgJHYxUsP8FrNt7LlRs20AMdkIOWDXpr3dzUSO3n2OKn
X-Received: by 2002:a2e:8959:: with SMTP id b25mr11415916ljk.240.1572251765308;
        Mon, 28 Oct 2019 01:36:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572251765; cv=none;
        d=google.com; s=arc-20160816;
        b=zlqxkpcHvoAHiUMPRnde+sn9jtDZvas1SM7DFHaeW0fykqTyyU8KXUMrANwOtAjMyr
         xdkcgzjqcq6qVEPJGJOxWQ2ZrojXiv+4yBt+gkxZoqDVo2O2rSbG4t/BwK0u5AekHgjY
         8hpCrOkaAGQm8kKq+iSIOzRryiqROZF7eAStHv2chYRsOdx8owRnXR2kkSpt632olXU9
         iYVy20bOJQTFVPJbRekmN15fhUL+pxB+yZMVJNyJvdHWvaRSkgcnJUgcXxu1FTPgd2iR
         xIC8YuRIiREGd9HnbvDLQ4PjN6XfvLhkJgUmlTaC5SgKuHouOZTRBFP58vmvJ1ajKZmu
         VqNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lZexrYg0ovFmt3LmUiu8wahz1Nggy3neI3y5HGVDdL8=;
        b=LNK1+7bJqLuJtAWF2ErfyUfbvkZ2QND0qwcYvviey/KMPE0otmxtA7UrE5kVtvi/FG
         QM26WF2s8jdCFuuTccI3CECfDNCWe29nHKEOk5nxyJUr4d286nTY37zvurFpaN6cMs5Q
         MLOzEZl5Xy9TwwnPC3DLcDT5odLGi0K3XN56IBJwkiDAA+u8G3X4Vy2HobFNOfbdnkuc
         p6R6TozYYXmB/qw8hj9mnXezbLbl4gAtwfqjeFDMm/zqFyXV2gdheHYVTPGBK9GsO+G5
         hhNZqNmIYJv2iNE4dBrK0ugoG2lvSaaHalUcSgP2vj9oG4yRYDzgJDrhxVvgSoRtdSRT
         l4OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r71si426769lff.5.2019.10.28.01.36.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 01:36:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,239,1569276000"; 
   d="scan'208";a="408749677"
Received: from unknown (HELO hadrien) ([91.217.168.176])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2019 09:36:04 +0100
Date: Mon, 28 Oct 2019 09:36:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Cristiane Naves <cristianenavescardoso09@gmail.com>, 
    outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
In-Reply-To: <20191028082732.GE1944@kadam>
Message-ID: <alpine.DEB.2.21.1910280934430.2348@hadrien>
References: <20191026222453.GA14562@cristiane-Inspiron-5420> <20191028082732.GE1944@kadam>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 28 Oct 2019, Dan Carpenter wrote:

> On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> > Remove unneeded variable used to store return value. Issue found by
> > coccicheck.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/octeon/octeon-stubs.h | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > index b07f5e2..d53bd801 100644
> > --- a/drivers/staging/octeon/octeon-stubs.h
> > +++ b/drivers/staging/octeon/octeon-stubs.h
> > @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
> >  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
> >  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
> >  {
> > -	cvmx_pko_status_t ret = 0;
> > -
> > -	return ret;
> > +	return 0;
>
> What is the point of this function anyway?

Given that it is in octeon-stubs.h, it seems that the point is to get the
code to compile when COMPILE_TEST is set.  There is a real definition in
arch/mips/include/asm/octeon/cvmx-pko.h

julia

