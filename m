X-GM-THRID: 6662791794901647360
X-Received: by 2002:a1c:a846:: with SMTP id r67mr115298wme.18.1551387093638;
        Thu, 28 Feb 2019 12:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:eb09:: with SMTP id s9ls1493035wrn.12.gmail; Thu, 28 Feb
 2019 12:51:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqymcqv/R1Z9VEXrnO5n//EhOEr5TG+TFanAsyiQrBUfVCMvEAeAPmx00KHfZbc6BuLludMn
X-Received: by 2002:adf:ea81:: with SMTP id s1mr74378wrm.19.1551387092818;
        Thu, 28 Feb 2019 12:51:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551387092; cv=none;
        d=google.com; s=arc-20160816;
        b=HWRgnsGjc4RFu6ijl+KPuwe13GR0VGkCVImaCbAJ/5HLjSJ1luoaC8kW7X4JTUO/iP
         3lDejMgCIPzcFvBIbmDaGy9yZwctmK5eziSAaGC11pXvk4iz6LD9eb0/ALrmKJSWUfmL
         0kZcQqStSUBFck7KinTQI7eOtWNdSbYLVso5bwIXgAiHPqSRR86Ei9HNIlqLXnAgsBsT
         EIjyBT3QyQg5bIAzDsuRyZJbguuubK5n3ICdejl3xpmZWWhwlM/n3zpOc2i+grVmmsIp
         AbiT+UVrcM3SL4+xquKIN4vg02pLm/arUGhDQ4uzkDIv587wVEqVoTzmI7R3+7RzGui0
         jgfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XoKeLtz3CGXpjQ/ma+CJM3oVKBrnOyZYMiMnCmydHGo=;
        b=AljYpTVfj06XRIUbVRK9vCQGfpWmLnkPiL+XGPLJiUzYnYOwEBcJpJ+CaQ6jyOq5cp
         x2uY+1VpP1FYzvZf7Zh9Xs7+32Y0Np7WWwcr/k0Rjx8QzLkCtejl1hB7TQJM8pfZiH8z
         LCten4+PQcF6bYD4MftOeHdQlhBb7bws51Us2ub2xxGLaz7r31askvje2vaWUS/PDSuB
         GXkKKdj0YHWCz1AMJY91haEbNg4thDDjos5dSIjaTPPXukAgiaj4vPD5taAkzFVlWxZC
         zxObuj7/CX/xiRdmxuzL9FtJDQnxjNgl23uxdkkEqVT7Rkzn79gOWik5pRNIABCT1ffS
         /Uaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 109si752580wrb.0.2019.02.28.12.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 12:51:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,424,1544482800"; 
   d="scan'208";a="297716927"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2019 21:51:32 +0100
Date: Thu, 28 Feb 2019 21:51:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: vt6655: Align a static
 function declaration
In-Reply-To: <20190228204639.GA26488@madhuleo>
Message-ID: <alpine.DEB.2.21.1902282149440.3134@hadrien>
References: <20190228202810.26235-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1902282140240.3134@hadrien> <20190228204639.GA26488@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Feb 2019, Madhumthia Prabakaran wrote:

> On Thu, Feb 28, 2019 at 09:40:58PM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 28 Feb 2019, Madhumitha Prabakaran wrote:
> >
> > > Align function arguments and function return type to improve readabilty.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > > Changes in v5
> > > - Commit log and code diff are matching. In last commit, there was error
> > > from my side while reevaluating and commiting it again.
> > >
> > > Changes in v4
> > > - Commit log and code diff are matching
> > >
> > > Changes in v3
> > > - Included driver name in subject line.
> > >
> > > Changes in v2
> > > - Improved alignment of function declaration
> > > - Modified subject line and commit log
> > > ---
> > >  drivers/staging/vt6655/card.c | 15 ++++-----------
> > >  1 file changed, 4 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > > index 3226dbaab3bb..f858f97cf119 100644
> > > --- a/drivers/staging/vt6655/card.c
> > > +++ b/drivers/staging/vt6655/card.c
> > > @@ -60,14 +60,9 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> > >
> > >  /*---------------------  Static Functions  --------------------------*/
> > >
> > > -static
> > > -void
> > > -s_vCalculateOFDMRParameter(
> > > -	unsigned char byRate,
> > > -	u8 bb_type,
> > > -	unsigned char *pbyTxRate,
> > > -	unsigned char *pbyRsvTime
> > > -);
> > > +static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> > > +				       unsigned char *pbyTxRate,
> > > +				       unsigned char *pbyRsvTime);
> > >
> > >  /*---------------------  Export Functions  --------------------------*/
> > >
> > > @@ -84,9 +79,7 @@ s_vCalculateOFDMRParameter(
> > >   *
> > >   * Return Value: none
> > >   */
> > > -static
> > > -void
> > > -s_vCalculateOFDMRParameter(
> > > +static void s_vCalculateOFDMRParameter(
> > >  	unsigned char byRate,
> > >  	u8 bb_type,
> > >  	unsigned char *pbyTxRate,
> >
> > You could realign the parameter list here as in the other case.
> >
> > julia
> >
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190228202810.26235-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1902282140240.3134%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> I realigned the parameter list for function s_vCalculateOFDMRParameter. I don't know why it is showing in a mail like that after EXPORT FUNCTION
> Please correct me, if I'm understanding it in a wrong way

Indeed, there seems to be some code duplication.  I would suggest to get
rid of all of your commits and go back to Greg's version and start over.

julia

