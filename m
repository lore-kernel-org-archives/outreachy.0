X-GM-THRID: 6392997475785900032
X-Received: by 10.28.48.71 with SMTP id w68mr14623wmw.15.1488492480712;
        Thu, 02 Mar 2017 14:08:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls887233ljb.12.gmail; Thu, 02 Mar
 2017 14:08:00 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr2518174lja.9.1488492480060;
        Thu, 02 Mar 2017 14:08:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si29088wmh.1.2017.03.02.14.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 14:08:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,233,1484002800"; 
   d="scan'208";a="215374818"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 23:07:58 +0100
Date: Thu, 2 Mar 2017 23:07:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 3/5] staging: lustre: lustre:
 Remove unnecessary cast on void pointer
In-Reply-To: <CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703022306431.2175@hadrien>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com> <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com> <1488491006.2179.14.camel@perches.com> <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
 <1488491957.2179.18.camel@perches.com> <CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-103972899-1488492479=:2175"

--8323329-103972899-1488492479=:2175
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 3 Mar 2017, SIMRAN SINGHAL wrote:

> On Fri, Mar 3, 2017 at 3:29 AM, Joe Perches <joe@perches.com> wrote:
> > On Fri, 2017-03-03 at 03:25 +0530, SIMRAN SINGHAL wrote:
> >> On Fri, Mar 3, 2017 at 3:13 AM, Joe Perches <joe@perches.com> wrote:
> >> > On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
> >> > > The following Coccinelle script was used to detect this:
> >> > > @r@
> >> > > expression x;
> >> > > void* e;
> >> > > type T;
> >> > > identifier f;
> >> > > @@
> >> > > (
> >> > >   *((T *)e)
> >> > > >
> >> > >
> >> > >   ((T *)x)[...]
> >> > > >
> >> > >
> >> > >   ((T*)x)->f
> >> > > >
> >> > >
> >> > > - (T*)
> >> > >   e
> >> > > )
> >> >
> >> > NAK.
> >> >
> >> > Nice, but you still have to verify correctness
> >> > before submitting these patches.
> >> >
> >> > > diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> >> >
> >> > []
> >> > > @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
> >> > >               rc = sptlrpc_parse_flavor(val, &flvr);
> >> > >               if (rc) {
> >> > >                       CERROR("invalid sptlrpc flavor %s to MGS\n",
> >> > > -                            (char *)val);
> >> > > +                            val);
> >> >
> >> > Try compiling this.
> >> >
> >>
> >> I compiled it before sending.
> >
> > Did you look at the warnings?
> >
> >   CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
> > drivers/staging/lustre/lustre/mgc/mgc_request.c: In function ‘mgc_set_info_async’:
> > drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning: format ‘%s’ expects argument of type ‘char *’, but argument 3 has type ‘void *’ [-Wformat=]
> >     CERROR("invalid sptlrpc flavor %s to MGS\n",
> >
>
> I again compiled it and this is what I got :-
>
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
>   CHK     include/generated/compile.h
>   LD      arch/x86/boot/compressed/vmlinux
>   ZOFFSET arch/x86/boot/zoffset.h
>   AS      arch/x86/boot/header.o
>   LD      arch/x86/boot/setup.elf
>   OBJCOPY arch/x86/boot/setup.bin
>   OBJCOPY arch/x86/boot/vmlinux.bin
>   BUILD   arch/x86/boot/bzImage
> Setup is 17500 bytes (padded to 17920 bytes).
> System is 7128 kB
> CRC 37713343
> Kernel: arch/x86/boot/bzImage is ready  (#4)
>   Building modules, stage 2.
>   MODPOST 4541 modules
>
> I am not getting any warning.

Did you touch the .c file before compiling it?  Warnings still allow the
creation of a .o, and once there is a .o that s more recent than the .c,
make won't compile it again.

I got a whole of host of warnings, including the ones Joe showed.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-103972899-1488492479=:2175--

