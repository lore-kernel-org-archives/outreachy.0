X-GM-THRID: 6804107396790616064
X-Received: by 2002:a1c:8149:: with SMTP id c70mr17456119wmd.123.1584207088401;
        Sat, 14 Mar 2020 10:31:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls6690211wrv.9.gmail; Sat, 14 Mar
 2020 10:31:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt4jQPWwB8PRyXEtP/bvTbKYJqK9VkbjDDzaj9kdwQ3EhGjbYSV5I398LWAvI/bilPVETa8
X-Received: by 2002:adf:9501:: with SMTP id 1mr25398525wrs.426.1584207087078;
        Sat, 14 Mar 2020 10:31:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584207087; cv=none;
        d=google.com; s=arc-20160816;
        b=vnkAEdfQ2KtYTesCPGdLuQbANjPqKq1ukTLpuvYb/IvWFfQyZksYWtRqtzmv2l1KDg
         Amg4wyIu+x7RYJ58tq+LwyXuDGmML3wqIqwkTQ5TD9EMx1AFVw3EvmRyu+qyipdUHtSd
         hX06yhDSil631n+Q8ivd+1ZuKJuxwBR9hhIrgRiVzXH/dN/RdYBnBrrhmRUZFkgL6bVt
         GWC6iSinuTSsydQC9OWFlCzWoxYKp0I9xqx+EoMLC1/bJMarKeTK5JoCVcIKeG6AB13u
         ZXAm/5NfdQUzZunTAJyOu7I/7J79kQXHO3n9bWtqSviK9+Cfxde3V+1hDLND7baVAGni
         twCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=35CcVScVjlTRq4uGVQ6GqQx4dAzGfGM/0ePE90yjnrE=;
        b=KicXqNCEkggKW32QuXU6xQVt5PPA6ZdKtloP5mXSlU9x/pV7hW85Bb1p/qCki12sOt
         wGfrIQ9df17xj3MaV9HmAPa02dQCUEQL0HSxN2QCpiS/cq4sLNXSJ08xLbUPxbb0j9Bm
         jpa4sWICv3I+T6GaMmh74Rrh/kwc+i7fNgAYtd/+/Eu652UcNpMp6RdrMIyk1nJf5fUR
         6PYaiaM0ZzCFlB/3Egk39w+d19KBIw8G7CUsHCOkV2aKyN/JE5hmhGFV2LuUBljCKqoe
         zENcSVlyXQ3346kU+PoL1KzYyxTqdoX+TAqFlJJbccasdnz0QvNUYfsMdoqhVsbSt6Br
         U1JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l13si596272wrp.2.2020.03.14.10.31.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 10:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="342370553"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 18:31:26 +0100
Date: Sat, 14 Mar 2020 18:31:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_atmio16d: remove
 commented code blocks
In-Reply-To: <7731265e-42a7-4c67-a0f5-245cecbecc0b@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003141831050.3026@hadrien>
References: <20200314165130.GA18939@deeUbuntu> <alpine.DEB.2.21.2003141756000.3026@hadrien> <7842c46c-710b-4a2a-bf46-396ed319e2a6@googlegroups.com> <alpine.DEB.2.21.2003141808100.3026@hadrien> <7731265e-42a7-4c67-a0f5-245cecbecc0b@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1316783797-1584207086=:3026"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1316783797-1584207086=:3026
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 14 Mar 2020, Deepak Varma wrote:

>
>
> On Saturday, 14 March 2020 22:41:02 UTC+5:30, Julia Lawall wrote:
>
>
>       On Sat, 14 Mar 2020, Deepak Varma wrote:
>
>       >
>       >
>       > On Saturday, 14 March 2020 22:27:15 UTC+5:30, Julia Lawall
>       wrote:
>       >
>       >
>       >       On Sat, 14 Mar 2020, Deepak R Varma wrote:
>       >
>       >       > Remove two if# 0 directive code blocks. The first
>       commented
>       >       code block
>       >
>       >       #if
>       >
>       >       > is redundant too; whereas the other code block is
>       never used.
>       >       Problem
>       >
>       >       Why do you say that the first one is redundant?
>       >
>       >       julia
>       >
>       >
>       > The instructions in if and else block are exactly the same.
>       so, if or else,
>       > you are going to run the same instruction. Let me know if I
>       misunderstood or
>       > misquoted.
>
>       Since one of them is under an #if 0, the current effect is quite
>       different.  Only the statement in the then branch will be
>       executed.
>
>       Redundant would be eg:
>
>       x = 0;
>       x = 0;
>
>       There is no point in having the second line, because x is
>       already 0.
>
>       Even without the #if 0, if you have:
>
>       if (x)
>         y = 0;
>       else y = 0;
>
>       It doesn't seem reasonable to say that the second y = 0 is
>       redundant. It
>       is the if that is is not necessary.  But once you have the if,
>       you need
>       both the then and else branches.
>
>       julia
>
>
> Agreed. if(x) becomes redundant when #if 0 becomes #if 1. I was trying to
> make the same point that even if the #if 0 block is turned on, it will still
> have the same behavior with the if(x) .. else in place. But, I though the
> else part will be redundant, but it was wrong. The if part would be
> redundant. I got your point. Well explained. Thank you!
>
> Would you suggest I reword the patch description and send in v2? Is the rest
> looking good to you?

Yes for both.

julia

> Deepak.
>
>
>       >
>       > Thank you.
>       >
>       >
>       >       > detected by checkpatch script.
>       >       >
>       >       > Signed-off-by: Deepak R Varma <mh12g...@gmail.com>
>       >       > ---
>       >       >  drivers/staging/comedi/drivers/ni_atmio16d.c | 10
>       ----------
>       >       >  1 file changed, 10 deletions(-)
>       >       >
>       >       > diff --git
>       a/drivers/staging/comedi/drivers/ni_atmio16d.c
>       >       b/drivers/staging/comedi/drivers/ni_atmio16d.c
>       >       > index 68ad9676f962..0bca7d752015 100644
>       >       > --- a/drivers/staging/comedi/drivers/ni_atmio16d.c
>       >       > +++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
>       >       > @@ -266,19 +266,9 @@ static int
>       atmio16d_ai_cmdtest(struct
>       >       comedi_device *dev,
>       >       >          if (cmd->scan_begin_src == TRIG_FOLLOW) {
>       >       >                  /* internal trigger */
>       >       >                  err |=
>       >       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
>       >       > -        } else {
>       >       > -#if 0
>       >       > -                /* external trigger */
>       >       > -                /* should be level/edge, hi/lo
>       specification
>       >       here */
>       >       > -                err |=
>       >       comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
>       >       > -#endif
>       >       >          }
>       >       >
>       >       >          err |=
>       >       comedi_check_trigger_arg_min(&cmd->convert_arg, 10000);
>       >       > -#if 0
>       >       > -        err |=
>       >       comedi_check_trigger_arg_max(&cmd->convert_arg,
>       SLOWEST_TIMER);
>       >       > -#endif
>       >       > -
>       >       >          err |=
>       >       comedi_check_trigger_arg_is(&cmd->scan_end_arg,
>       >       >                                            
>       >       cmd->chanlist_len);
>       >       >
>       >       > --
>       >       > 2.17.1
>       >       >
>       >       > --
>       >       > You received this message because you are subscribed
>       to the
>       >       Google Groups "outreachy-kernel" group.
>       >       > To unsubscribe from this group and stop receiving
>       emails from
>       >       it, send an email to outreach...@googlegroups.com.
>       >       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/20200314165130.GA18
>       939%4
>       >       0deeUbuntu.
>       >       >
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/7842c46c-710b-4a2a-
>       bf46-
>       > 396ed319e2a6%40googlegroups.com.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/7731265e-42a7-4c67-a0f5-
> 245cecbecc0b%40googlegroups.com.
>
>
--8323329-1316783797-1584207086=:3026--

