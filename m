X-GM-THRID: 6344288501760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4ca3f90fe855d892
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.89.194 with SMTP id bq2mr602771wib.4.1425419412024;
        Tue, 03 Mar 2015 13:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.48 with SMTP id t16ls93867lal.55.gmail; Tue, 03 Mar
 2015 13:50:10 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr142253lbj.23.1425419410484;
        Tue, 03 Mar 2015 13:50:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si979825wif.0.2015.03.03.13.50.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 13:50:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,683,1418079600"; 
   d="scan'208";a="124243749"
Received: from unknown (HELO [132.207.219.164]) ([132.207.219.164])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 22:50:09 +0100
Date: Tue, 3 Mar 2015 16:50:08 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
In-Reply-To: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503031645080.2677@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1798703102-1425419409=:2677"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1798703102-1425419409=:2677
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 3 Mar 2015, Ksenija Stanojević wrote:

> Hi,
>
> While working on a patch, I needed to find out the type of
> pMgntInfo->RegRfOff on line 2770, in file
> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
> directories. I tried recursive grep to find it and I could not locate
> where it is defined. I suppose it's some kind of macro...

The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
field named RegRfOff.  It has type bool.  The directory is different than
the one you are looking at though.

In your directory, there is drivers/staging/rtl8192u/r8192U.h that
declares a r8192_priv structure type, but it does not have this field.

Maybe this is dead code?  Can you compile the file?

julia


>
> Can you help me find out?
>
> Regards,
>
> Ksenija
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ%3D2yK07o%2B84z_%3Dc64Qas9jQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1798703102-1425419409=:2677--

