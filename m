X-GM-THRID: 6949457058068430848
X-Received: by 2002:a2e:5347:: with SMTP id t7mr12001213ljd.263.1618063313985;
        Sat, 10 Apr 2021 07:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls963173lfm.2.gmail; Sat, 10 Apr
 2021 07:01:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxueFgB3nF4IBvoOiMtmm4RgcosoCoTjGsrJD1328WZFMHjmNB6hpQRiY3g0AraUgv2+gBT
X-Received: by 2002:ac2:4e44:: with SMTP id f4mr13410039lfr.380.1618063312342;
        Sat, 10 Apr 2021 07:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618063312; cv=none;
        d=google.com; s=arc-20160816;
        b=ls6RhPzGK4uwsOYRIpRdFE/nBUyzDGI0rxa8BtkTEueB33lD4bYbvwRXxAFjlphsfe
         BNBEUuh0zCzrrQzfdVsP77P/2iB4GVtZT7JksNAx7L+WoOwP+fmimTLOob9j126zo9Vv
         misbUJY3deoewrZpSg0CGDQHmccqLp9U8TRUV68dveuB0lVCCq0ebB7eoVvgdaM0tsJh
         AZtwZUM9kvS4ndu5fMTVb5ZoHZDn/MePiBLtxtddc8zrzB6URnIii2dssm5HsQ5/GguV
         J8MEoCuna0nHn92I6llVbQszFeUFuryZZiOMfCOlk6/BFBykeFvdCwGsnoUQD7zZjnUa
         JR5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=xNNORxJrR3dNFe9UfPa0fjHBuTOmFee/pSUiokRa6Qo=;
        b=etKNqwZJtA3DttR5FKKp2s8E8ADLlDYyfGxU6r+7TYWTsOwCtqIf52Np8+zbdcQFff
         z8Prxi0k7VbtDt78Ihf3KzT98RZCA8cN+eC7jz0jG/WVRS3LNG12lx01vcNKCc3QChbs
         qgT3kJeuiR6oJ79s0+SeNvahodjTOB01dgTiOEu6oU9h5/lOvStddy0xQE+8p57nfkgZ
         0GWxD1KImOdNp07BXXkzDNQqTeX4/OiQzq5UK4tp7D32EoSSlVM+e6HhLjLit2lRjGHM
         y1wFEhUltSawiOfMOZfloAp+uDEcP7myaoaDYUM3tbJ9+GMdTTOtJM1otiyvSJ8A6Jhy
         GEbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q18si403793ljg.2.2021.04.10.07.01.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 07:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ar6mAq67lpGrAOLVITwPXwCnXdLJzesId70hD?=
 =?us-ascii?q?6mlaTxtJfsuE0/2/hfhz726RtB89UGwt8OrqBICuWnXZnKQe3aAwOvOYUBDiqC?=
 =?us-ascii?q?+UKuhZjLfK5x3FN2nA+vVG1aFmGpIObeHYKVRhl8717E2ZPr8boOWvy6yjiefA?=
 =?us-ascii?q?w3oFd2gDV4ha4wh0EQqdGEFtLTM2ZqYRLoaW5cZMulObF0g/U8LTPBU4dtTYq8?=
 =?us-ascii?q?aOvJzrZgNuPW9E1CC+yQLt0rL8HhSCty1ybxpEy94ZnlT4rw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,212,1613430000"; 
   d="scan'208";a="378288243"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 16:01:51 +0200
Date: Sat, 10 Apr 2021 16:01:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <3114102.qbl0ZuBMXl@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101601100.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <2186059.xkuF2sVEJi@localhost.localdomain> <alpine.DEB.2.22.394.2104101524260.2975@hadrien> <3114102.qbl0ZuBMXl@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 10, 2021 3:24:43 PM CEST Julia Lawall wrote:
> > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > On Saturday, April 10, 2021 2:12:28 PM CEST Julia Lawall wrote:
> > > > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > > > On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > > > > > That variable has global scope and is assigned at least in:
> > > > > > What do you mean by global scope?  None of the following look
> > > > > > like
> > > > > > references to global variables.
> > > > > >
> > > > > > julia
> > > > >
> > > > > I just mean that fw_current_in_ps_mode is a field of a struct in a
> > > > > .h
> > > > > file included everywhere in this driver and that the functions whom
> > > > > the following assignments belong to have not the "static" type
> > > > > modifier.
> > > >
> > > > OK, but a field in a structure is not a variable, and this is not
> > > > what
> > > > scope means.
> > >
> > > You're right, a field in a structure is not a variable.
> > >
> > > > int x;
> > > >
> > > > outside of anything is a global variable (global scope).
> > > >
> > > > int foo() {
> > > >
> > > >   int x;
> > > >   ...
> > > >
> > > > }
> > > >
> > > > Here x is a local variable.  Its scope is the body of the function.
> > > >
> > > > int foo() {
> > > >
> > > >   if (abc) {
> > > >
> > > >     int x;
> > > >     ...
> > > >
> > > >   }
> > > >
> > > > }
> > > >
> > > > Here x is a local variable, but its scope is only in the if branch.
> > >
> > > And you're right again: I needed a little refresh of my knowledge of C.
> > >
> > > I've searched again in the code for the purpose of finding out if that
> > > struct is initialized with global scope but I didn't find anything. I
> > > didn't even find any dynamic allocation within functions that returns
> > > pointers to that struct.
> > >
> > > Therefore, according to Greg's request, I'll delete that stupid 'if'
> > > statement in the patch series v2 that I'm about to submit.
> >
> > I'm really not clear on why the if should be deleted.
> >
> > julia
> >
> I'm supposed to delete it because of the review made by Greg. In a couple
> of previous messages he wrote:
>
> "If this is only checked, how can it ever be true?  Who ever sets this
> value?"
>
> and then:
>
> "Just delete the variable from the structure entirely and when it is
> used.".
>
> However, like you, I'm not sure yet.

Be sure.  Greg already said that he misinterpreted the patch, because he
thought that the name also changed.

julia


>
> Thanks,
>
> Fabio
> >
> > > I've really appreciated your help.
> > >
> > > Thanks,
> > >
> > > Fabio
> > >
> > > > julia
> > > >
> > > > > Thanks,
> > > > >
> > > > > Fabio
> > > > >
> > > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > > > > > > pwrpriv->fw_current_in_ps_mode = false;
> > > > > > >
> > > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > > > > > > pwrpriv->fw_current_in_ps_mode = true;
> > > > > > >
> > > > > > > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > > > > > > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > > > > > >
> > > > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > > > > > > pwrctrlpriv->fw_current_in_ps_mode = false;
>
>
>
>
>

