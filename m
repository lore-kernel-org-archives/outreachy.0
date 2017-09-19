X-GM-THRID: 6466344790011150336
X-Received: by 10.28.156.86 with SMTP id f83mr147782wme.5.1505832943619;
        Tue, 19 Sep 2017 07:55:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.163 with SMTP id y35ls2158792wmh.23.gmail; Tue, 19 Sep
 2017 07:55:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAAt4sP/ERgKy2IYmGq56pQta7AF10XVnboa3WesUaRz1xVC8NjPJJbBSRixZFK0XGBi0O1
X-Received: by 10.28.142.201 with SMTP id q192mr146237wmd.23.1505832942445;
        Tue, 19 Sep 2017 07:55:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505832942; cv=none;
        d=google.com; s=arc-20160816;
        b=uUOM/jHHD2J1/BRLxR8GkeOH3+sjrUwD8QHxvy62nzbUEqNS9yNe1Se49s5PRY03lR
         7wsZpbNSEpgYOLcXiA7fYT2HViCTMzb5DVmtWVZn8myAUZTJ3MAKYYnwd5khPnCg8SqC
         pYEQ1vcDZTQJpyB4Z3285m4sg53SbhNpOqZmkPyb4SCxXN4nHDNT4/pE4xRafnsKJkHG
         ptUW7Durd9TDn+OxbIxPfWkyAdA3b670QOD3akPEoWm51GZ4Qps0RWwNzW8+4aWD0Ro3
         GZf09p5FOp8N6wcP7/Sp9eCOVwVBtDIy9yb3zSovPqEIXpSuhHVRakJqiTaSXXtTvAUh
         6Tfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=YONnh7js9LPpLIPsw9SDs9LoiNQnVBAnPDj4CWxSHws=;
        b=boxOOaX8oxGXQocbWJwN+v048uKIZUdPTN9PZ7qf6VY80Vi1GqgR2mTL0r/j1vg4Me
         RiFPcz5KaTbU+491s7MhZQQMEFmta/g28YDWOfYIWWXiLNM5wHz6rkGuf77lU49CAyen
         2751sw1xhyITeD1KS/Zz97GTtcoJcONv5mD9pf9oxoQyUOjMVltWYDSmQRP9vdV4/TWy
         ijLVC5uotJnzGV/+G9gA1vi6Bz+K8exUq1aGgl3bEefiUk7XQuTbFIOyCN0S2eCMQ6Qf
         wFZ+XgiFMAHXIk8c3Oz4roPPq04lflPzNN1vpgKoR4+V2v+KoAmx+xxostZyOB/s14AI
         pFYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si151101wmi.2.2017.09.19.07.55.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 07:55:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="291797064"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 16:55:41 +0200
Date: Tue, 19 Sep 2017 16:55:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8191u: ieee80211:
 prefer pr_debug() to printk(KERN_DEBUG, ...)
In-Reply-To: <CAHXiS58Lp9VaSwxGd2MG+kQmtw_--Zmir8v3z3==EzuY7F8CjA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709191651010.3036@hadrien>
References: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com> <20170918100450.GB24451@kroah.com> <CAHXiS58Lp9VaSwxGd2MG+kQmtw_--Zmir8v3z3==EzuY7F8CjA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Sep 2017, Aastha Gupta wrote:

> On Mon, Sep 18, 2017 at 3:34 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Sat, Sep 16, 2017 at 05:30:12PM +0530, Aastha Gupta wrote:
> >> This patch replaces call to  printk with pr_debug function
> >> thus addressing the following checkpatch script warning:
> >>
> >> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...
> >>
> >> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> >
> > As this is a network device, it should be using netdev_dbg() instead,
> > right?  Or, worse case, dev_dbg(), almost no driver should ever call a
> > "raw" pr_debug() call.
> >
> > thanks,
> >
> > greg k-h
>
> I did think of replacing it with netdev_dbg() but netdev_dbg()
> requires an object of netdev which is not present in the file.
> Including it won't be right. Or is the parameter optional?

Maybe you can add it to the containing function, if the calling context
has the information available.  You might have to work back through
several calling contexts.

julia



