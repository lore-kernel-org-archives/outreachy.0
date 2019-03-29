X-GM-THRID: 6673442126229929984
X-Received: by 2002:a50:b104:: with SMTP id k4mr1361336edd.12.1553882928522;
        Fri, 29 Mar 2019 11:08:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6015:: with SMTP id o21ls650322ejj.3.gmail; Fri, 29
 Mar 2019 11:08:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHyW5oke6nna+yjFakEyoU0bumyr+SqHykz4X5cUkysc0hO54E/9/+HTj9v1Oa8T423zde
X-Received: by 2002:a17:906:6713:: with SMTP id a19mr257025ejp.11.1553882927685;
        Fri, 29 Mar 2019 11:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553882927; cv=none;
        d=google.com; s=arc-20160816;
        b=H7UklOnMzWoBgG/aF7TJQSPGPDjpdnWbtMXwh0yHBdWAV8mCTfZ7QzieurrxBKqhX2
         kpFUvKABNtRFp3U5AOPGAPYbnDWZG6oNnOqt8zH8fTUx/9k4bDqOUdQA3Zka2maH3WmB
         aj/+TAnQSGjsIpAXi257Kb3a80RFLGxCPjy9JKWqMspTkdmGLevpJ0XI6o/Zb/G6M4+a
         fMN77XXIvkg0z2QG/syIEKmkxSo66+yVe7NDYtQ5JaeNSGTOsDRvo4uIHTvDt6+k0x5/
         65PEkqPUcApS7A6Ce5FCQlbTY2Eyf0Gi8gNiwDDUuJtcn4kWw6F5jjneeUg1tylLZGcw
         tE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BApWA8P7PQTDnAFDyhbchfu1SrM8YcpNNwzKktaX/mo=;
        b=ypm0LkxaN4JEp3h8M1wbvXdfqy8AxS9oKgsEDAVxeOOiQhVIaXVoa11TOcO3/vOFRE
         EA+8ylwKLcaIhGMUGOToEnBJ7Yu5CfOcu2HuOMxmL6rnOSH8GPhOdQ73hHRQrxUJ8EX0
         na8XM6mHbG5rkIgG6fMbCGME6nS344vi2NaUruzitDHJGB6v5KscqsHdS0tAWxO8SHnG
         sx8mJpxhAvds1B8Eccbam6FIn+cR5n1wcAwV4o2LSp80E3g73nR4rQvvQwiIOUTWCNPg
         lCGDbDEN26kTNuTQKmjXGZL/iihkHVPsNg/xsxo18R3o+Aw5ZheSJo4TZqCOE3pJTyCi
         mv/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l53si195646edc.2.2019.03.29.11.08.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:08:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,285,1549926000"; 
   d="scan'208";a="301200570"
Received: from unknown (HELO hadrien) ([109.190.253.13])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2019 19:08:46 +0100
Date: Fri, 29 Mar 2019 19:08:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <greg@kroah.com>
cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, 
    outreachy-kernel@googlegroups.com, 
    Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove
 unnecessary parentheses
In-Reply-To: <20190329161253.GA32685@kroah.com>
Message-ID: <alpine.DEB.2.21.1903291907400.3335@hadrien>
References: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190329161253.GA32685@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 29 Mar 2019, Greg KH wrote:

> On Thu, Mar 28, 2019 at 09:54:24PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle
> >
> > This patch removes unnecessary parentheses while returning a value and
> > removes unnecessary space.
> > Using following semantic patch:
> >
> > @@
> > local idexpression id;
> > @@
> >
> > - return(id);
> > + return id;
> >
> > @@
> > local idexpression id;
> > @@
> >
> > -return (id) ;
> > +return id;
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c
> > ---
> > Changes in v2:
> > 	-Add new semantic patch to drop spaces.
> >
> > --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c
>
> That is a _VERY_ odd diff, and obviously does not apply to the kernel
> tree.  Did something go wrong when creating it?

It looks like the output of Coccinelle.  Payal, you have to apply the diff
that you get from Coccinelle to your kernel tree, check that it compiles,
and then make a patch in the normal way.

julia

>
> Please fix up and resend.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

