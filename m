X-GM-THRID: 3543146692608
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ec6524604eff670
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.233.5 with SMTP id ts5mr10989975pac.27.1425911757782;
        Mon, 09 Mar 2015 07:35:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.124.193 with SMTP id mk1ls906567igb.1.canary; Mon, 09 Mar
 2015 07:35:57 -0700 (PDT)
X-Received: by 10.66.196.11 with SMTP id ii11mr28069916pac.37.1425911757498;
        Mon, 09 Mar 2015 07:35:57 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si2698653pdc.0.2015.03.09.07.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 07:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E1225944;
	Mon,  9 Mar 2015 14:35:56 +0000 (UTC)
Date: Mon, 9 Mar 2015 15:35:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8188eu: Eliminate
 use of _set_timer
Message-ID: <20150309143551.GB4720@kroah.com>
References: <cover.1425714259.git.vthakkar1994@gmail.com>
 <b993ec823a6d73cc6ba50fc36cc9fd13e8b92ea9.1425714259.git.vthakkar1994@gmail.com>
 <20150309121443.GA6934@kroah.com>
 <CAK-LDbKPnPw5WTq9gOB-o+Arb=FJb6c+ZNNv1kHRue=E9Nup5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbKPnPw5WTq9gOB-o+Arb=FJb6c+ZNNv1kHRue=E9Nup5A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 09, 2015 at 07:58:42PM +0530, Vaishali Thakkar wrote:
> On Mon, Mar 9, 2015 at 5:44 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sat, Mar 07, 2015 at 01:21:37PM +0530, Vaishali Thakkar wrote:
> >> This patch introduces the use of API function mod_timer
> >> instead of driver specific function _set_timer as it is
> >> a more efficient and standard way to update the expire
> >> field of an active timer. Also, definition of function
> >> _set_timer is removed as it is no longer needed after
> >> this change.
> >>
> >> Here, these cases are handled using Coccinelle and
> >> semantic patch used for this is as follows:
> >>
> >> @@ expression x; expression y;@@
> >>
> >> - _set_timer (&x, y);
> >> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
> >>
> >> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >> ---
> >> v1 : Here, this patch has some line over 80 characters as
> >>      limiting them to 80 characters does not make code look
> >>      good and readable.
> >> v2 : Change commit log
> >>    - Redo the patch against staging-testing
> >> v3 : No change but as patch is in series with another patch,
> >>      sending this as a new version.
> >
> > You obviously didn't even test-build this patch, otherwise you wouldn't
> > have submitted it :(
> 
> Oh...not again. :(
> 
> Ok. I guess something went wrong from my side and I am really very
> sorry for that. It is definitely bad thing to break the build. But trust
> me I buid-tested it. And my gcc is working good for all other drivers.
> 
> Let me tell you what I did. I am used to run this command for each
> and every file before submitting a patch:
> 
> 'make drivers/staging/rtl8188eu/core/rtw_cmd.o'
> 
> Now, for this particular driver [rtl8188eu], this command is not working.
> It is showing me this :
> 
> ./scripts/Makefile.build:44: drivers/staging/rtl8188eu/core/Makefile:
> No such file or directory
> make[1]: *** No rule to make target
> `drivers/staging/rtl8188eu/core/Makefile'.  Stop.
> make: *** [drivers/staging/rtl8188eu/core/rtw_cmd.o] Error 2
> 
> So, I run 'make drivers/staging/rtl8188eu/' and it is not showing me any error.
> I once asked Arnd about it and he told me that may be it has
> non-standard make-file.
> May be here, its my mistake. I should have asked him the solution to
> fix this issue.
> 
> Anyways, for now can you please tell me which building errors are shown by this
> patch and what can be done to solve my make-file issue??

It's long-gone from my patch queue, and short-term memory, sorry.

A simple 'make -j16' should show you the errors.  Make sure you have
selected the driver to be built in the Kconfig options.

thanks,

greg k-h

