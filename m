X-GM-THRID: 6616381756005154816
X-Received: by 2002:aa7:d152:: with SMTP id r18-v6mr1621440edo.2.1540727204680;
        Sun, 28 Oct 2018 04:46:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:69c5:: with SMTP id g5-v6ls896829ejs.0.gmail; Sun,
 28 Oct 2018 04:46:43 -0700 (PDT)
X-Google-Smtp-Source: AJdET5efSbCOvke1WM7F5irmDbStpCuF6Le3urrbVYCRc8yv5eWaN6z0tqQOfTUod9+G/gylgTzJ
X-Received: by 2002:a17:906:591:: with SMTP id 17-v6mr1178149ejn.10.1540727203860;
        Sun, 28 Oct 2018 04:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540727203; cv=none;
        d=google.com; s=arc-20160816;
        b=0XMepxRwaWq3Y/9qqNb0qk4NZk4BZAOgxi/73wz0TFZ+i5W0Jmj9TsRySx+kccS+pQ
         KQ7h5rZAo+Q2m4c9t0rIP93/uYMqjM7aBPj38GKpVr/s2w7BEHOGbi3WN/PzfyVd8nSg
         7ydQuuIEdT4WUO5UtFEQ0Tg/vsFI+YBtoBzECT0yMJeWUhDbwz26u4yekLIhcsVzcEeo
         StHMm6Y0kzFZamif3zuS5RFMLWXKn7GqPmSUGvo5/YPMeIstQ9lPhiUG9aSkeg/5Z5yL
         7k+GcG9IgqcbgAdmEjodGfVLvSbXz7LvRQwGspOiS9b14tSA3DdjX3NW+tcDzSzNgR7G
         RUag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=THW8ZDxCUih461bbwxroSxqP/PoK7NAB867x2oJAU0U=;
        b=LcAPkDuKn8Y+S32LDYhP5RfO+QrpzD3ElqejeDuMc4byz4+tZReREgoZ78rqG5nFyJ
         uXvBYHlZ+xQfBwgor75TrPTZZwb6jEWK96wXmwdN4+mJmSTD+VUJFZEhawMKHU4rjav5
         4zFE0exxY07XfVmhNI4ei8H76M0harXbexkwQYWoGRyRNKq0D4Rlpzyi4FFNB023oMGC
         2uERImNfI+1bqVPTJV+a/CaRjQYnO8ByLVw+YCr3rxLQlr473fSfdWU7EnO3LtcrDzPT
         hcCIpZ3dz44SILdZ60Cm3HBMBrAK2x3ZxggqLMeXEbAcPKlfvcSKkgP7fgpicNbu7pOR
         rvaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y16-v6si693177eds.0.2018.10.28.04.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 04:46:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,436,1534802400"; 
   d="scan'208";a="283549915"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 12:46:42 +0100
Date: Sun, 28 Oct 2018 12:46:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Sasha Levin <sashal@kernel.org>, 
    Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
In-Reply-To: <20181028112011.GA5157@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.21.1810281243420.2433@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com> <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com> <20181026204225.GH2015@sasha-vm> <20181028075209.GA1938@himanshu-Vostro-3559> <alpine.DEB.2.21.1810280932030.2450@hadrien>
 <20181028112011.GA5157@himanshu-Vostro-3559>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 28 Oct 2018, Himanshu Jha wrote:

> On Sun, Oct 28, 2018 at 09:47:15AM +0100, Julia Lawall wrote:
> > > The "possible alignement issues" in CHECK report is difficult to figure
> > > out by just doing a glance analysis. :)
> > >
> > > Linus also suggested to use bool as the base type i.e., `bool x:1` but
> > > again sizeof(_Bool) is implementation defined ranging from 1-4 bytes.
> >
> > If bool x:1 has the size of bool, then wouldn't int x:1 have the size of
> > int?  But my little experiments suggest that the size is the smallest that
> > fits the requested bits and alignment chosen by the compiler, regardless of
> > the type.
>
> Yes, correct!
> And we can't use sizeof on bitfields *directly*, nor reference it using a
> pointer.
>
> It can be applied only when these bitfields are wrapped in a structure.
>
> Testing:
>
> #include <stdio.h>
> #include <stdbool.h>
>
> struct S {
> bool a:1;
> bool b:1;
> bool c:1;
> bool d:1;
> };
>
> int main(void)
> {
>     printf("%zu\n", sizeof(struct S));
> }
>
> Output: 1
>
> If I change all bool to unsigned int, output is: *4*.
>
> So, conclusion is compiler doesn't squeeze the size less than
> native size of the datatype i.e., if we changed all members to
> unsigned int:1,
> total width = 4 bits
> padding = 4 bits
>
> Therefore, total size should have been = 1 byte!
> But since sizeof(unsigned int) == 4, it can't be squeezed to
> less than it.

This conclusion does not seem to be correct, if you try the following
program.  I get 4 for everything, meaning that the four unsigned int bits
are getting squeezed into one byte when it is convenient.

#include <stdio.h>
#include <stdbool.h>

struct S1 {
bool a:1;
bool b:1;
bool c:1;
bool d:1;
char a1;
char a2;
char a3;
};

struct S2 {
unsigned int a:1;
unsigned int b:1;
unsigned int c:1;
unsigned int d:1;
char a1;
char a2;
char a3;
};

int main(void)
{
    printf("%zu\n", sizeof(struct S1));
    printf("%zu\n", sizeof(struct S2));
    printf("%zu\n", sizeof(unsigned int));
}

> Well, int x:1 can either have 0..1 or -1..0 range due implementation
> defined behavior as I said in the previous reply.
>
> If you really want to consider negative values, then make it explicit
> using `signed int x:1` which make range guaranteed to be -1..0

The code wants booleans, not negative values.

julia

