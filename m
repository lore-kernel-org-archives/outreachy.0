X-GM-THRID: 6607095314902941696
X-Received: by 2002:a19:d8a1:: with SMTP id r33-v6mr488554lfi.7.1538511893188;
        Tue, 02 Oct 2018 13:24:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:51d9:: with SMTP id g86-v6ls1414789lfl.23.gmail; Tue, 02
 Oct 2018 13:24:52 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61HuzfLShgXGLdEerep0L5KpcGLsHq6L1gIWDpY/xyQSMxf0OjEdSCZD9WjIPKjjkOSWWpF
X-Received: by 2002:a19:12c9:: with SMTP id 70-v6mr484215lfs.3.1538511892347;
        Tue, 02 Oct 2018 13:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538511892; cv=none;
        d=google.com; s=arc-20160816;
        b=zfr+OdC5fa+tDKDZ0bX8wQ0ailKn8OOoJWu6jVXBXAsGQ2oKmERwWqECcNij8tPTn0
         YBcOouSeapjYzj+2FquAV1VAZqzFc0riXhe2mK6Y2ZN22WgOkg8TmGLL4BwzszoNngS5
         WDqa9t3I1DZn0nk2BxLj11lz5qWj7F871l1GFVwPhk85gz2OdgrKggTSDNN+6+WmxHw6
         gcEUhBHtN5hr0mARGZMqKEZo2n1ON2+Gdm57+FEInlSPPIJU+dbKwvK3gGapvtct18kr
         AQL7RaTxyxc/1lMlPB2u1QyROEFCqq4bEsPAecpVD+Gn7Y3fH0+6ND2ksikUEcERsj31
         tOYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rzID2VHG0hCUMa7HbEMVh0/b1mZF4S/uiSiKvQVvP0s=;
        b=E+R3X+zmczV6ZtKBau50gqhH64Y9mjSR579saWYksqypMbmL433eBAeE2hOQkH9e9Z
         MRT8cubIbg/wX3T3nidNa97AcfQJumLDMlpZmnE9934HfBE7UJ5Qa+rC4F8mOwE1Z91D
         To+jj4In6K0YE3lHv/3JChBe4PLhJ7uyHqUDMQCnYU75ErEM82Rmw6Gg/EoelxR7c7Id
         04KHSePm/cUnJ9lYNaM/y/LW0Mgwg+CetYz8wxIrsYdm9bKork63F8lxnoD336t6PLAt
         Vrq+sAczOhm/ivcIwwyJE7bqLc5m7CADj8DvnqDa5BVxX3s+APW0nPXl8yMbysSr+cNL
         jovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n81-v6si141086lfi.0.2018.10.02.13.24.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 13:24:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,333,1534802400"; 
   d="scan'208";a="280714855"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2018 22:24:51 +0200
Date: Tue, 2 Oct 2018 22:24:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: Dafna Hirschfeld <dafna3@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <20181002200507.GA26645@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.21.1810022211150.2806@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com> <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com> <20181002092816.GA7179@himanshu-Vostro-3559> <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
 <20181002200507.GA26645@himanshu-Vostro-3559>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-483107017-1538511891=:2806"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-483107017-1538511891=:2806
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 3 Oct 2018, Himanshu Jha wrote:

> > > Hi, I choose the CONFIG_PCI option, it did solve the undefined symbols,
> > but the file still does not compile starting with the error:
> >
> > drivers/staging/mt7621-pci/pci-mt7621.c:496:27: error: ‘port’ undeclared
> > (first use in this function); did you mean ‘ror8’?
> >   list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
> >
> > I saw that in other usages of list_for_each_entry_safe, the first parameter
> > is a local variable.
>
> Correct! Both port & tmp should be a local variable of the same object
> type.

I don't think it is necessary for either of them to be local variables.
It might be a bit strange for them to be global variables, but there isn't
any intrinsic problem.  Of course, it is necessary for the variable to be
declared somewhere, which does not seem to be the case here.

Actually, one could take a moment to think about why these variables have
to already be declared.  Indeed, if the loop exits in a normal way, then
the first argument ends up pointing to the head of the list, which is a
dummy value and not useful for much of anything.  Referring to it is
typically a bug.  But sometimes it is useful to break out of such a loop,
so then the variable has to be visible in the enclosing scope.

I'm not sure if there is any practical use of having the temporary
variable in the second argument of list_for_each_entry_safe have a
lifetime outside of the loop.  It is just a pointer to get from one
element to the next one, in case the element that the first argument is
pointing to is removed from the list.  But it is necessary to be able to
specify the name for this variable, to be sure that it doesn't conflict
with anything else, and then it might be considered strange for a macro to
be declaring new variables; it is safer to have the scope of the variable
be apparent in the visible source code.

julia

>
> > > > Then in run "make menuconfig" again and under "Device Drivers -> staging
> > > > drivers" I chose "MediaTek MT7621 PCI Controller"
> > > > Hoping it will solve it , but it didn't.
> > > >
> > > > The files I prepared the patchset for did compile ok , is it important
> > > that
> > > > all files will compile?
> > >
> > > I think for these changes just use that .config supplied by the distro
> > > at /boot/config-*
> > >
> > > But IIRC `make allyesconfig` should be used(not sure though..)
> > >
> >
> > But I compile on ubuntu on x86 and I want to compile to a specific mips SoC.
> > I tried it anyway and it did not compile the file  I prepared the patch for
> > (drivers/staging/mt7621-mmc/sd.c)
>
> Cool!
> You found a bug while cross-compiling for MIPS which would not
> show up on x86.
>
> Btw, the Cc list should contain developers who might give you
> a better feedback. Therefore, use `get_maintainer` to list all
> those people.
>
>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181002200507.GA26645%40himanshu-Vostro-3559.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-483107017-1538511891=:2806--

