X-GM-THRID: 6946206210186018816
X-Received: by 2002:a2e:557:: with SMTP id 84mr1716366ljf.480.1617790560453;
        Wed, 07 Apr 2021 03:16:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls384061ljn.0.gmail; Wed, 07 Apr
 2021 03:15:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyotkxhMKwBPntWlg//k+skRcaEC++4nGSJ6bYMhUSFVpZMSY5ACYolSI56y6W7GeoHWIAf
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr1713882ljp.479.1617790558555;
        Wed, 07 Apr 2021 03:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617790558; cv=none;
        d=google.com; s=arc-20160816;
        b=IevfhPHou6f5bmwsNOg5VCV5q/lDTqJHZ+E+p5cwIGq7xT5L56TixleMuopGuWqqDD
         EiZXlSbPc6Ya5PtXHcXangfEagSYf7Em9lv7YfCkPjgawtiAbIqaKTaaXoSfQ7hjjjOs
         JDWkT7sIWXEa/6LVAtwj9CSLlm3YB+0qx5DSR5LsZzfvj/t2/evpc7D8oNf5/R418oB6
         LlP+9Awn5WWdzjWHE+Mi57VshNpWL8t+bbfxLIZ2ggEcLPnuzj2OXOftTaoGz4+/Am6H
         qUue7Ay6V1jyk2tHXNCRxg5sXkOcxmb5N5H0rapDg/WfIplHHpUMieQ32L945FFzR4+K
         QHZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=etCOoYwvKxT3wgIw4L6JLmD0hqSX7WQUt4iGzSGDhrA=;
        b=qg/2gVj5dNhtWIZJceuIt5aNTD6ckyGfzMaNe74/8c6Ctn8FgzdpDxCs8HQWeuYDhS
         8X2U8WERLhWyye4RFg6MPAjLn0XS7pGbYHeao+nnVGouFh7ZscrXQ0R/Xn5EFOOQl+Nk
         Ir/Hf4rBfuBO3bRu7qnWsVmY4mDG+vUgC4EsxHRKMV10jdjIb8pCCWWXwdG2tkovr/93
         pAQbZfFwoMp03bqJAJCmo9TRylZCiHc8IG8umQnz15FxlmnwZv3uR6b2ZSyRDkPwdp1S
         KsKbaBxJqqwD/8MxASsIGhs1iahbEgW4pTbPi8dtDHSWJkQaqJmdXEb/l+DAjbSKdTy+
         TEvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si1619903lfa.0.2021.04.07.03.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 03:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AlP0CQ6zLCEBxzWeuLsFjKrPwtb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VUscVwDufTFAqmPRnvA6YV4iLN7AZ6OVBTr0V?=
 =?us-ascii?q?HDEKhM9o3nqgeMJwTb1spwkZhtaLJ/DtqYNzhHpOL3+hOxHdpl4PTvys6VrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqDF10zeQ8uP/YEPaCB7clKrSfIQxUqR/m8b0NrY8Hz4/?=
 =?us-ascii?q?XwtL+OW29lOzcXrCOrrR7A0s+cLzGomjQZWFp0sNMf2FmArCjFzsyYwpSG9iM?=
 =?us-ascii?q?=3D?=
X-IronPort-AV: E=Sophos;i="5.82,203,1613430000"; 
   d="scan'208";a="501970199"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Apr 2021 12:15:57 +0200
Date: Wed, 7 Apr 2021 12:15:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
cc: Matthew Wilcox <willy@infradead.org>, laurent.pinchart@ideasonboard.com, 
    mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: omap4iss: Ending
 line with argument
In-Reply-To: <e175859f-4f68-0408-415f-a3e19f7e4874@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104071213100.7407@hadrien>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com> <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com> <20210401152844.GF351017@casper.infradead.org>
 <e175859f-4f68-0408-415f-a3e19f7e4874@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 7 Apr 2021, Beatriz Martins de Carvalho wrote:

>
> Em 01/04/21 16:28, Matthew Wilcox escreveu:
> > On Thu, Apr 01, 2021 at 04:07:38PM +0100, Beatriz Martins de Carvalho wrote:
> > > diff --git a/drivers/staging/media/omap4iss/iss.c
> > > b/drivers/staging/media/omap4iss/iss.c
> > > index dae9073e7d3c..e8f724dbf810 100644
> > > --- a/drivers/staging/media/omap4iss/iss.c
> > > +++ b/drivers/staging/media/omap4iss/iss.c
> > > @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
> > >   	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
> > >   		    ISS_HL_SYSCONFIG_SOFTRESET);
> > >   -	timeout = iss_poll_condition_timeout(
> > > -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> > > -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> > > +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> > > +							    OMAP4_ISS_MEM_TOP,
> > > ISS_HL_SYSCONFIG)
> > > +							    &
> > > ISS_HL_SYSCONFIG_SOFTRESET),
> > > +							    1000, 10, 100);
> > This is not a readability improvment.  I would factor it out into its
> > own function.
>
> Thanks for the review. How can I do this? I don't know how to do this.

Copy the code into a new function.  Then see what parameters this function
needs for the various information it requires.  The code will produce some
results that are needed by the rest of the program.  So you have to
arrange via the return value that the proper variables are initialized
after the function call.

For example,

x = a + b;

could become

int f(int a, int b) {
  return a + b;
}

x = f(a,b);

That is a pretty silly change, but it gives the idea.

julia

> Beatriz Martins de Carvalho
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/e175859f-4f68-0408-415f-a3e19f7e4874%40gmail.com.
>

