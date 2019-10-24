X-GM-THRID: 6751148085003419648
X-Received: by 2002:a1c:e404:: with SMTP id b4mr3889794wmh.90.1571903670984;
        Thu, 24 Oct 2019 00:54:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:ca45:: with SMTP id m5ls824140wml.1.canary-gmail; Thu,
 24 Oct 2019 00:54:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwS8LBBTIc2jHVTmcKG2bk9LrzJtHUtMIKifp9Gn8LpvNAVJROZdnY8E9PQxQpRHwsHbM9Z
X-Received: by 2002:a05:600c:2107:: with SMTP id u7mr3704733wml.86.1571903670075;
        Thu, 24 Oct 2019 00:54:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571903670; cv=none;
        d=google.com; s=arc-20160816;
        b=A+4UPAPf1yV2SHuYfpkuOpaaVateOHrLiiLBn4AGhKbTe/cQKa6CjbxvJXDTI92jqE
         i4NkhwEpMksj1LLWVVpAhkZAoZ7wfUMJ6yqg0wlOYLT/Lpbs0uu/9qIe/+fr4TYtwHm1
         +Ne3NhHrtnqWUP5/9lMAHGcuubiWBat0oLc5Oj79Q9N0IwtYnmrL4GWo7yR51rBvmxi6
         GJ7zFZiKnvkyb41Vr0XAzPJEP3fIEWbZw1ZHm1PlT9UxZInMoCxkV3XXLo8cLWHUZxQ/
         VJlYx/5aZgSY/vmx/xVlHAQwT0fJljqU3xy2tRuGyh2BEdrxiGomsIm7+CJowrIYZHAc
         g8vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TiSh9RulKH3Qtr82QPEnGWQCrbL7+40OiuWG5aBNnj0=;
        b=RYOlVmAF0f3t45uDCjBR1Rg+EG/cvqBdxizYJgGViDOkn1HOCcC9+glO4JT0j56fV6
         OZDwT7oL9Q8Udqcc1PxUq434ZI3GOJ5vOxD5ChzLFfbOp7D7NUgxQlcJUsOHgBk3g+1T
         sGIHv8z/AahL7SFxahR4LaOGgYeG5lvKX8cFeXEywBZTZFi48wu0sEPhBOxxv6ib8j/v
         Mhm502gIFQ4O8f3ZgRgIGcHmYMM6RN9A7j5kqpDtXFEjqwwWObxnKi/ytwQ2lEmhQgxG
         CoSvYk2SYoA1O6OVrNXqZG+aeiYlue21+wS2wiSp6g7YclfvQR7+rhU8yfsWCWkz7Znp
         luVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p15si1264003wrj.0.2019.10.24.00.54.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 00:54:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,224,1569276000"; 
   d="scan'208";a="324077078"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 09:54:29 +0200
Date: Thu, 24 Oct 2019 09:54:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: evan chime <chime.evan.dri.devel@gmail.com>
cc: abbotti@mev.co.uk, gregkh@linuxfoundation.org, 
    hsweeten@visionengravers.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/7] Staging: comedi: Remove wrapper
 function declarartion
In-Reply-To: <CANR89jZA3yy124EDWogZkVoqtRKmx-0+npxP6=_=yTcmTmHKLw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910240951390.4479@hadrien>
References: <20191023234427.GA4613@ik-ubuntu> <alpine.DEB.2.21.1910240645570.2771@hadrien> <CANR89jZA3yy124EDWogZkVoqtRKmx-0+npxP6=_=yTcmTmHKLw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1254200295-1571903670=:4479"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1254200295-1571903670=:4479
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 24 Oct 2019, evan chime wrote:

>
> Hello Julia
>
>
> Thanks for the reply. I see what you mean, the kernel compiles when I make
> changes to three files, for each of two of the functions. The other function
> is static, so it compiles on a change of only one file
>
>
> Please Julia, I’ve two questions:
>
> A) So I should change three files for a function, then make a single commit,
> for that, and that will be a patch of the patch set, right?

You can do as you like.  For example, you could have one commit for all of
the uses in a given file, and then one commit for the definition and the
header.  Or you could do as you propose - just adjust everything in a
single commit.  In this case, where there are a small number of uses and
all of the patches go to the same people, the second solution may be
simpler.  In a more general vase, where the uses are all across the
kernel, the first approach could be better.

>
>
> B) I will now have three patches for this patch set, and as obviously the
> previous patch set won’t be accepted, so my next patch set submission, won’t
> be a patch set review( PATCH v2, 1,2,3,4,5,6,7/7) since I will be having
> only three patches now, right?. So I need to make a fresh patch set of three
> submission

No, it's a v2.  Greg needs to ignore the first set of patches and take
this one instead.

julia

>
> You’re superstar
>
>
> Kind regards 
>
> Evan
>
>
> On Thu, 24 Oct 2019 at 05:47, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Thu, 24 Oct 2019, Evan Chime wrote:
>
>       > Remove wrapper function "comedi_buf_map_put" declaration
>       > as part of remove all wrappers in drivers/staging/comedi/TODO
>       >
>       > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
>       > ---
>       >  drivers/staging/comedi/comedi_internal.h | 2 --
>       >  1 file changed, 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/comedi/comedi_internal.h
>       b/drivers/staging/comedi/comedi_internal.h
>       > index df3b1af109f7..73131e625fe5 100644
>       > --- a/drivers/staging/comedi/comedi_internal.h
>       > +++ b/drivers/staging/comedi/comedi_internal.h
>       > @@ -23,12 +23,10 @@ struct comedi_device
>       *comedi_alloc_board_minor(struct device *hardware_device);
>       >  void comedi_release_hardware_device(struct device
>       *hardware_device);
>       >  int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);
>       >  void comedi_free_subdevice_minor(struct comedi_subdevice *s);
>       > -
>
>       Removing this blank line is not relevant to your change.
>
>       >  int comedi_buf_alloc(struct comedi_device *dev, struct
>       comedi_subdevice *s,
>       >                    unsigned long new_size);
>       >  void comedi_buf_reset(struct comedi_subdevice *s);
>       >  bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
>       > -int comedi_buf_map_put(struct comedi_buf_map *bm);
>
>       It looks suspicious that you are removing a prototype here and
>       calls
>       afterwards.  Does the kernel compile after you apply this patch
>       and before
>       you apply the remaining ones?  The kernel should compile before
>       and after
>       every single patch, not before and after every series.
>
>       julia
>
>       >  int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned
>       long offset,
>       >                         void *buf, int len, int write);
>       >  struct comedi_buf_map *comedi_buf_map_from_subdev_get(
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20191023234427.GA4613%40
>       ik-ubuntu.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANR89jZA3yy124EDWogZkVo
> qtRKmx-0%2BnpxP6%3D_%3DyTcmTmHKLw%40mail.gmail.com.
>
>
--8323329-1254200295-1571903670=:4479--

