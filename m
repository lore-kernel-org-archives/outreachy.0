X-GM-THRID: 6250792352904904704
X-Received: by 10.25.15.161 with SMTP id 33mr1115494lfp.0.1455434550316;
        Sat, 13 Feb 2016 23:22:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls355760wmg.47.gmail; Sat, 13 Feb
 2016 23:22:29 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr512087wme.4.1455434549934;
        Sat, 13 Feb 2016 23:22:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si438132wmy.2.2016.02.13.23.22.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:22:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="203013625"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:22:29 +0100
Date: Sun, 14 Feb 2016 08:22:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use
 IS_ERR_OR_NULL
In-Reply-To: <CA+5yK5HTPxk9EtTgUki+47-1G0fhHL-t1YUvaeeha_Ltd=3F9Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602140820560.2039@localhost6.localdomain6>
References: <20160213150641.GA26097@amitoj-Inspiron-3542> <4143065.OBkRWe7lv3@wuerfel> <CA+5yK5HTPxk9EtTgUki+47-1G0fhHL-t1YUvaeeha_Ltd=3F9Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 14 Feb 2016, Amitoj Kaur Chawla wrote:

> On Sun, Feb 14, 2016 at 1:26 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> >> -       if (root == NULL || IS_ERR(root)) {
> >> +       if (IS_ERR_OR_NULL(root)) {
> >>                 if (lmd.lsm)
> >>                         obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
> >>
> >
> >
> > There is almost always a bug if you have to use IS_ERR_OR_NULL().
> >
> > Please check if that is actually required here at all, any why
> > the two cases should be handled the same way.
> >
> > Normally a function that can return an error pointer should
> > never return a NULL pointer and vice versa, so a better fix
> > would be to change the function that returned the root variable
> > to have a consistent behavior.
> >
> >         Arnd
> 
> This is how the variable root is defined:
> 
> struct *inode root;
> root = ll_iget(...)
> 
> and then we have the above statement.
> 
> ll_iget returns a *inode or NULL pointer
> 
> Similar for the second case in the above patch wherein instead of
> having a variable root, *inode is used directly.
> 
> What would be the correct change here?

You have to check all of the return points in ll_iget to see if any of 
them could return and ERR_PTR value.  This may require checking in some 
other functions to see what values they return.  If none of them can 
return an ERR_PTR value, you should just remove the ERR_PTR test.

julia


> 
> Amitoj
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5HTPxk9EtTgUki%2B47-1G0fhHL-t1YUvaeeha_Ltd%3D3F9Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

