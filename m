X-GM-THRID: 6211822819926343680
X-Received: by 10.194.203.33 with SMTP id kn1mr2886351wjc.3.1446313763590;
        Sat, 31 Oct 2015 10:49:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.198 with SMTP id x189ls319550lfd.51.gmail; Sat, 31 Oct
 2015 10:49:23 -0700 (PDT)
X-Received: by 10.112.181.194 with SMTP id dy2mr1594009lbc.11.1446313763060;
        Sat, 31 Oct 2015 10:49:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si263469wmb.0.2015.10.31.10.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 10:49:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,225,1444687200"; 
   d="scan'208";a="185373120"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Oct 2015 18:49:22 +0100
Date: Sat, 31 Oct 2015 18:49:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8192u: Remove
 unnecessary function
In-Reply-To: <CA+5yK5EsysqdrEkxMYftfmuh056jX1oxtjEUmY7wfgJQ93t4qA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510311846160.2194@localhost6.localdomain6>
References: <cover.1446302505.git.amitoj1606@gmail.com> <57ba37d09c11afef9ae42a4d251771796479cbb4.1446302505.git.amitoj1606@gmail.com> <alpine.DEB.2.02.1510311816290.2194@localhost6.localdomain6>
 <CA+5yK5EsysqdrEkxMYftfmuh056jX1oxtjEUmY7wfgJQ93t4qA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1606284690-1446313762=:2194"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1606284690-1446313762=:2194
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:

> 
> 
> On Sat, Oct 31, 2015 at 10:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:
> >
> >> This patch solves two problems.
> >> The function rtl8192_CalculateBitShift() had an unnecessary variable i
> >> that could be removed by using a single line of code.
> >>
> >> After this change, rtl8192_CalculateBitShift() becomes a wrapper
> >> function, so the rtl8192_CalculateBitShift() function has been removed
> >> completely to replace it with a single line of code.
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192u/r819xU_phy.c | 25 +++++--------------------
> >>  1 file changed, 5 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
> b/drivers/staging/rtl8192u/r819xU_phy.c
> >> index e5dbaca..5ee4c34 100644
> >> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> >> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> >> @@ -38,21 +38,6 @@ static u32 RF_CHANNEL_TABLE_ZEBRA[] = {
> >>  #define rtl819XAGCTAB_Array Rtl8192UsbAGCTAB_Array
> >>
> >> /*************************************************************************
> *****
> >> - * function: This function reads BB parameters from header file we
> generate,
> >> - *           and does register read/write
> >> - * input:    u32     bitmask  //taget bit pos in the addr to be modified
> >> - * output:   none
> >> - * return:   u32     return the shift bit position of the mask
> >> -***************************************************************************
> ***/
> >> -static u32 rtl8192_CalculateBitShift(u32 bitmask)
> >> -{
> >> -     u32 i;
> >> -
> >> -     i = ffs(bitmask) - 1;
> >> -     return i;
> >> -}
> >> -
> >>-/*************************************************************************
> *****
> >>   * function:  This function checks different RF type to execute legal
> judgement.
> >>   *            If RF Path is illegal, we will return false.
> >>   * input:     net_device      *dev
> >> @@ -94,7 +79,7 @@ void rtl8192_setBBreg(struct net_device *dev, u32
> reg_addr, u32 bitmask,
> >>
> >>       if (bitmask != bMaskDWord) {
> >>               read_nic_dword(dev, reg_addr, &reg);
> >> -             bitshift = rtl8192_CalculateBitShift(bitmask);
> >> +             bitshift = ffs(bitmask) - 1;
> >
> > I'm not sure that the change is a good idea.  The names ffs is not very
> > understandable.  Is it a standard kernel function?  What does it do?
> >
> > julia
> 
> As far as I read up about it, it returns the least significant bit of
> bitmask. I read up about it here.
> Confused as to why the change isn't a good idea.

OK, since it is a standard function, it should be OK.

julia
--8323328-1606284690-1446313762=:2194--

