X-GM-THRID: 6249445155877683200
X-Received: by 10.28.30.147 with SMTP id e141mr1065194wme.0.1455087807694;
        Tue, 09 Feb 2016 23:03:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.146.10 with SMTP id u10ls45361lfd.42.gmail; Tue, 09 Feb
 2016 23:03:27 -0800 (PST)
X-Received: by 10.25.22.154 with SMTP id 26mr4518963lfw.3.1455087807013;
        Tue, 09 Feb 2016 23:03:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w129si933250wme.1.2016.02.09.23.03.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:03:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202406891"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 08:03:26 +0100
Date: Wed, 10 Feb 2016 08:03:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: RAKHI SHARMA <rakhish1994@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel@googlegroups.com, Daniel Baluta <daniel.baluta@gmail.com>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a warning
In-Reply-To: <CAMnyiXsk1P19XHUCx11=s+RtwXSDL-fMxAJdkSaaqdrD6hFSyw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602100801030.2050@localhost6.localdomain6>
References: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com> <20160210061455.GA374@sudip-pc> <CAMnyiXsk1P19XHUCx11=s+RtwXSDL-fMxAJdkSaaqdrD6hFSyw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-490715681-1455087806=:2050"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-490715681-1455087806=:2050
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 10 Feb 2016, RAKHI SHARMA wrote:

> 
> 
> On Wed, Feb 10, 2016 at 11:44 AM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
>       On Wed, Feb 10, 2016 at 05:28:46AM +0530, Rakhi Sharma wrote:
>       > Fixed a checkpatch warning.
>       > WARNING: struct file_operations should normally be const
>       >
>       > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
>       > ---
> 
>       It now adds new build warning:
> 
>       ../drivers/staging/lustre/lustre/lov/lov_pool.c: In function
>       ‘lov_pool_new’:
>       ../drivers/staging/lustre/lustre/lov/lov_pool.c:438:7: warning:
>       passing argument 4 of ‘ldebugfs_add_simple’ discards ‘const’
>       qualifier from pointer target type [enabled by default]
>              &pool_proc_operations);
>              ^
>       In file included from../drivers/staging/lustre/lustre/lov/../include/linux/../obd_support.h:43:0
>       ,
>                        from
>       ../drivers/staging/lustre/lustre/lov/../include/linux/obd.h:44,
>                        from
>       ../drivers/staging/lustre/lustre/lov/../include/obd.h:40,
>                        from
>       ../drivers/staging/lustre/lustre/lov/lov_pool.c:49:
> ../drivers/staging/lustre/lustre/lov/../include/linux/../lprocfs_status.h:5
>       47:16: note: expected ‘struct file_operations *’ but argument is
>       of type ‘const struct file_operations *’
>        struct dentry *ldebugfs_add_simple(struct dentry *root,
> 
>       regards
> 
> hi Sudip,
> Will you please help me to understand why this warning produce? Is the const
> I have put there is wrong? but as I think it is ok there.may be I am wrong
> this side, please let me know how this is going on?

In general, a structure is something that gets passed around in the code.  
If you put the annotation const on it, then all of the variables that 
point to it, eg functon parameters, local variables etc, also have to be 
annotated with const.  Otherwise, the compiler is not certain that there 
can be no modification to the structure.

If you get a warning like this one, then you should look at the code that 
it mentions and see if it can be annotated with const too.  And so on.  
Normally a file operations structure should not be modified, so it should 
work out in the end.  But everythng has to be consistent.

julia

> thanks
> Rakhi 
>       sudip
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAMnyiXsk1P19XHUCx11%3Ds
> %2BRtwXSDL-fMxAJdkSaaqdrD6hFSyw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-490715681-1455087806=:2050--

