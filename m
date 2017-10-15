X-GM-THRID: 6477098943281889280
X-Received: by 10.28.215.198 with SMTP id o189mr771366wmg.11.1508080460711;
        Sun, 15 Oct 2017 08:14:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.10 with SMTP id c10ls983824wmh.10.canary-gmail; Sun, 15
 Oct 2017 08:14:19 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SYwhHfe47eA+L4n7Y64eOaOtOCd+NpJ34Eg8EQsBYO+7Ie9EnFwr44H9bOPgIA3W/TSoMO
X-Received: by 10.28.184.78 with SMTP id i75mr764195wmf.30.1508080459768;
        Sun, 15 Oct 2017 08:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508080459; cv=none;
        d=google.com; s=arc-20160816;
        b=sUfK2JxpZTjf4pR0Kh9pfzncSZlj0zgUQ+JwKvKEYOHMtCndNisXzAXWrwDkPWDk7s
         BwzL7HuhfElw+5nrOUcQQNSXWWe+Nic3yPN/wzBAtOQH0IPD3mMSTmAF0XduTT0PXWJn
         zVEv97TeX+YA2Xzt+ILw5i7yDL6dJPAuWnrZD/SM7YpvDEF0AmQqYjNAiz//77loqQ2e
         +2cObR8QoP19Ab5vQFLVn6MooF0fpfingUAelQ77WsSOw+q4Rk/cpLxMhc3y9J41lcq6
         5KomN0AAdi8iOpDIo6k/RbwdNN8pavTHqVTQr8pW9AfbnbVdCbOSdC2Z6AkdGXTHlDxX
         jCRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=o/zExgaAD6+5WQ5PmxOyhEXwjV2/CcYK01DTKkIh+ok=;
        b=x7eRZlGp2HAFZK/81bsmxXaGGI0zhPeThi8FcCT38+xuTgcNLM7KYv315r47cCEQYU
         9OFn3UrkT35QLSexcA1tZK+cXA60V5rBScnm5kjhcR3J2xsyWtDi3p9vg8b7OUaOFhbx
         Uy42+TdGLgIWI8lrnK0f4oTWYHQ4lkXevloh0Xo0uEr7odRuLSIXp/dPXZCgFEJ3NHD8
         EvCLba9IxPUyyrTtiJFWW8iZns8k4Ax0d9ynEHXZFcd/2SgKkuHQhBYkwKleU3dUMi9n
         B/vtEkwrwS5VhzNcuFp0ibmwzRPzJO7PSkc+eusyWfne932mjO64DJD77te0LeW4lg3O
         1wUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si343085wrc.1.2017.10.15.08.14.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 08:14:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,382,1503352800"; 
   d="scan'208";a="296265512"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2017 17:14:19 +0200
Date: Sun, 15 Oct 2017 17:14:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Outreachy kernel] [PATCH] iptables: iptables-compat translation
 for TCPMSS
In-Reply-To: <CAHXiS59YOCeCxGEHjvU9Ej4C8opDJt4+coYORjZibuGPQ6iSsA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1710151713510.2089@hadrien>
References: <1508067107-13649-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1710151334180.2089@hadrien> <CAHXiS59YOCeCxGEHjvU9Ej4C8opDJt4+coYORjZibuGPQ6iSsA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Oct 2017, Aastha Gupta wrote:

> On Sun, Oct 15, 2017 at 5:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 15 Oct 2017, Aastha Gupta wrote:
> >
> >> Since path mtu support was added, we can now add
> >> iptables-compat translation for TCPMSS extension.
> >>
> >> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> >> ---
> >>  extensions/libxt_TCPMSS.c | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >> diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
> >> index 4b71e44..7f65298 100644
> >> --- a/extensions/libxt_TCPMSS.c
> >> +++ b/extensions/libxt_TCPMSS.c
> >> @@ -91,6 +91,17 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
> >>               printf(" --set-mss %u", mssinfo->mss);
> >>  }
> >>
> >> +static int TCPMSS_xlate(struct xt_xlate *xl,
> >> +                                              const struct xt_xlate_tg_params *params)
> >
> > The argument list seems to be quite oddly formatted.  Line the second line
> > up with the right side of the (
> >
> >> +{
> >> +     const struct xt_tcpmss_info *mssinfo =
> >> +             (const struct xt_tcpmss_info *)params->target->data;
> >
> > Is the cast really necessary?  It should not be necessary if the data
> > field has type void *.
> >
> >> +     if(mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
> >
> > Kernel code requires a space after if
> >
> >> +             xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
> >> +
> >> +     return 1;
> >> +}
> >> +
> >>  static struct xtables_target tcpmss_tg_reg[] = {
> >>       {
> >>               .family        = NFPROTO_IPV4,
> >> @@ -104,6 +115,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
> >>               .x6_parse      = TCPMSS_parse,
> >>               .x6_fcheck     = TCPMSS_check,
> >>               .x6_options    = TCPMSS4_opts,
> >> +             .xlate             = TCPMSS_xlate,
> >
> > Follow the same alignment strategy as for the other fields.
> >
> > julia
>
> I don't know why the alignment gets like this when I send it.

OK, maybe it is related to tabs.  If the code looks ok when you apply the
patch, then that's fine.

julia

> >
> >>       },
> >>       {
> >>               .family        = NFPROTO_IPV6,
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1508067107-13649-1-git-send-email-aastha.gupta4104%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

