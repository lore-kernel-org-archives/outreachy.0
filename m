X-GM-THRID: 6619842705607360512
X-Received: by 2002:a1c:f912:: with SMTP id x18-v6mr685848wmh.11.1541399137673;
        Sun, 04 Nov 2018 22:25:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5651:: with SMTP id j17-v6ls1346525wrw.28.gmail; Sun, 04
 Nov 2018 22:25:36 -0800 (PST)
X-Google-Smtp-Source: AJdET5e2k73maEeCWGd1PspZIRJc4tLE0Jg59OHNTZp5JksptsrhVxdZednvMtZw15rsWbxOJ+6g
X-Received: by 2002:adf:fb0c:: with SMTP id c12-v6mr2003053wrr.22.1541399136895;
        Sun, 04 Nov 2018 22:25:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541399136; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh7LxPFrAWcdbxlJW/jhAcOWWgFn8nv7r6Hfmr3hSzg7E3LP8Qzi3yzeqoK3sJaz7H
         HD08nBiP0CXC/JHJF29vRkb3yG+eVOrdzoeGHZ+TynT42shoJn/SjMFah6CUigpSxCWV
         5PPv2wwSFlAU7qWaYGJon0+yyggkeXi/hjZXNRjcp0yrT0fs4cjWvYBmEiyj1saBWVMz
         Y8u8jqcr4tY3pcWZMOndJoxGHmau1UeE5S+QWr/HlPJRj1+6Vh5A8Rh+rUMJfR+bN4qa
         KLgUvlOXHlA4/H6llsmwisDtGb4ZSy8FQJ4I3ZuTZLMnNP6xL9FLcKLV8StBPbaOl0Vo
         jQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SJKbIS19heE+O3DImzVjL6t6jhgfUsd3JlU2Rrg6Jww=;
        b=jXorSOp9O0+HjbGIO1PgVKZIOf2k44Y/Ob2c45Innnq4H+RkMPNIbKQdrlX7hBpGR3
         vLbMqtAmVybSjALGunsEXe0kNbxvlv9oZhzNtNivOy3JHv8YRuDsmIqPV/ZelqHOOWkM
         Gvwfl7BiotoQW/eDJnLxk5vSI5gM+gOHBbTI3Npu6f48figlRwG0FTB2lSPpOPgKtC71
         bJOts8DCEGzXQU42vysMFhl0n1dzCp7jjrDz8d/MyCUzlDYt+3x3swx+NwAwDJmnqWAi
         SkJf+73nyXNDSCsoDRFcCCDymMn7unhWt/yqq/FL/Fn5u+m7nZ0dzL1e1ZFf0s2yqTpd
         EN6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 204-v6si338655wmw.3.2018.11.04.22.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 22:25:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,467,1534802400"; 
   d="scan'208";a="354084954"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 07:25:36 +0100
Date: Mon, 5 Nov 2018 07:25:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Announcement] Outreachy application
 reminder
In-Reply-To: <20181105055411.GA2334@k-vBox>
Message-ID: <alpine.DEB.2.21.1811050724580.2654@hadrien>
References: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com> <20181105055411.GA2334@k-vBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Maya Nakamura wrote:

> On Sun, Nov 04, 2018 at 09:00:13AM +0530, Vaishali Thakkar wrote:
> > Hi All,
> >
> > As you know, Outreachy deadline for Linux kernel projects is November
> > 6, 2018. So, don't forget to submit your application before deadline.
> > Here, are bunch of points you need to take care of:
> >
> > - Record your contributions on Outreachy's website. Remember that for
> > each project you want to apply for, you will need to record separate
> > contributions and fill separate application. Make sure that you put
> > links to patches when you record the contributions. If you have
> > written any blog post etc related to your Linux kernel experience,
> > feel free to put links as well.
> >
> > - We normally advise each applicant to apply for at least 2 projects.
> > Make sure to add your project preferences under the question
> > 'Community-specific Questions' in the application.
> >
> > All the best and we're looking forward to reviewing your applications.
> > Feel free to ask questions, if any.
>
> Hi Vaishali,
>
> Thank you for the application reminder!
>
> For the final application, there is an optional Community-specific
> Question section, and you instructed us to add our project preferences.
> I am confused because the final application is for a specific project.
> Am I right that I should rank the projects that I am applying for to
> answer the question?

Please do that.  Otherwise, there is no way to know which you prefer.

julia

>
> Maya
>
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181105055411.GA2334%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.
>

