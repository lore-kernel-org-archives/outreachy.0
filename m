X-GM-THRID: 6667904381849960448
X-Received: by 2002:a2e:8754:: with SMTP id q20mr115555ljj.14.1552593124029;
        Thu, 14 Mar 2019 12:52:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:ae0c:: with SMTP id f12ls667559lfc.13.gmail; Thu, 14 Mar
 2019 12:52:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqws+zZ8+dv8s/VSOGU+jCJY9HNs4ejawiOzFOWUlWX9Hkk9WVn/UWSLP5OczR916qWbbCyt
X-Received: by 2002:ac2:515d:: with SMTP id q29mr3109148lfd.10.1552593123014;
        Thu, 14 Mar 2019 12:52:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552593123; cv=none;
        d=google.com; s=arc-20160816;
        b=UpQtg6lA/vAL5YCAojaiq7BSsYXBq8GbC3c5Dof8n5o21Slpemfkky/4UAAIt+KU8n
         uM7ck3051vSUfpB+9dgVeh3N6M1DZfaFW6r3FEH+T6hCPf9kQx8ok8tVS/WCtIrb/biM
         51Wdq1iK/U1V/sZW9sBkFdi/+gAEI8AdaFHjyPN1d27Wvq2vdvuguhQi4aWQkEUf9hGo
         ax+p+tY9XxEVVvCFhHyqvy8dBdkIro5e01Ks6aPGcEthTIHkZHE2DktcaliPraYmy2aS
         ktZ0hyWOVLe1Wibsl/ZbEvyzsx8MW8fyzF4KxFFRW5GDUmGQKt0f3nrZ795G5Q1qQTtR
         awOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uFcyLbN3NcIX049meFQglyBEQ8JMX5PoMwLYfByu+nc=;
        b=A4h9wPSPG1smHJ7r6X2hZKEgNuIUXI+dEiSw+RgFelWxIQMlWVPZQNYorSX/iam4iU
         IMtOE4pJDVmnhM3mbeO6CHZndN0AqIF/3cXRIRcxybJqEuBBARGw6T1mvDy0r/ZqDZsm
         0Tq4h+r9QCTdJKObLKNau9BNAaKr07BsfRWhF2a/ynegmimdXnLbyAkgnTtmRv6uw/6V
         qnG8AaPEkhCditMh5+vl5HCpQ3fL7KvjnJzrjyqRvnnsEzlREcZpRVyyv3B6cSc6kFkH
         BD9Y2SNScu8I77zsrICJZIW6+MWxG+ZLm3nM8grMTObfrKdcM7hgBrFoYl6B1XxTL2Jb
         +8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u21si590286lja.1.2019.03.14.12.52.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 12:52:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,479,1544482800"; 
   d="scan'208";a="299298752"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 20:52:01 +0100
Date: Thu, 14 Mar 2019 20:52:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
In-Reply-To: <20190314160338.GA14192@madhuleo>
Message-ID: <alpine.DEB.2.21.1903142050180.2749@hadrien>
References: <20190313155425.5548-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903132045230.2515@hadrien> <20190313214945.GB5065@madhuleo> <alpine.DEB.2.21.1903132304420.2515@hadrien> <20190313223559.GC5065@madhuleo> <alpine.DEB.2.21.1903140708190.2814@hadrien>
 <20190314160338.GA14192@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Mar 2019, Madhumthia Prabakaran wrote:

> On Thu, Mar 14, 2019 at 07:15:45AM +0100, Julia Lawall wrote:
> > > The change need to be made in two files -  drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > 1) drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > 2) drivers/staging/rtl8723bs/include/cmd_osdep.h (to remove extern from function prototypes)
> >
> > If you change the .c file in the first patch and the .h file in the second
> > patch, then the first patch will break the build.  On the other hand, if
> > you change the .h file in the first patch that will not change anything,
> > because no one cares about the declaration.
> >
> > Still I think it would make sense to do the whole thing at once, in a
> > single patch.  A function definition and its prototype go together, so if
> > you change both it would make the most sense to do the whole thing at once.
>
> Will fix as a patch.
> >
> > > So that's reason why I asked whether it has to be send as patch series or I can submit it as individual patches.
> >
> > Not individual patches.  Either a series with the .h file first and then the
> > change in the .c file, or a single patch.
> >
> >
> > > In rtw_cmd.c, along with the change already made, I will change the
> > > return expression. i.e.
> >
> > Your message got broken off here, But you don't want the change already
> > made.  There is no point to have a function that has the only statement to
> > call another function.The two functions that you changed should just be
> > dropped completely.
>
> I will drop the patch. But the function is calling same function with
> different return type. I never encountered this type of function in C.
> This is function overloading in C++. Based on Brian and Dennis, only
> change I can make on that function I can edit the return type with
> return (u32) _rtw_init_cmd_priv(pcmdpriv).
> Am I thinking straight for fixing it? Need for suggestions?

You should get rid of the functions that you previously modified.  Remove
the _s from the names of the functions that they call and change the
return types.  Check in the function body to see if changing the return
types causes any problem.  I haven't looked at those function definitions.

julia


>
> >
> > Again, please put your replies inline after the text that you are
> > replying to and not at the very end of the message, after the list
> > management information.
> >
> > julia
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903140708190.2814%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314160338.GA14192%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

