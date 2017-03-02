X-GM-THRID: 6392997475785900032
X-Received: by 10.46.80.82 with SMTP id v18mr2296309ljd.27.1488492305866;
        Thu, 02 Mar 2017 14:05:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls817301ljb.44.gmail; Thu, 02 Mar
 2017 14:05:05 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr2346270ljb.10.1488492305375;
        Thu, 02 Mar 2017 14:05:05 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id v201si12651wmv.3.2017.03.02.14.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 14:05:05 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id r36so6731844lfi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 14:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gtGrB+XGttMgzAwPZLqyFdcMlk+VGof7LW84Kbjvzho=;
        b=E7E3+eDtJDAKpzEiZ96SU0ByHG2HnEUYoFdJoBueeRDNCkArT1pl8WHnnzrnW6EgGj
         VP7t9ak4kNBs3nhvZxYmpyFBWBmUYCpwnPpyDDkmuMfdqyM97+DdJEiSWqGlG0m9BRc7
         QUs5yJhCMW1wbvHoS7gR/ZU5WMG5HIxSb6Oely2WmLpQLzTjZZtJS6RqQijH+Ep+UAJp
         g16kL5hEfKQ7xIJUWnMAxJ1tyEcOwCEJzcJmI5AGkU73qaKPpc1r8n+anPKjDydzs2gk
         qilW+mrhOL5dTns6kqvU3rXQUkH24UudD2nUbk4EAmdnGNoovAcHmFXR60QC+fw3Xnbt
         eTNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gtGrB+XGttMgzAwPZLqyFdcMlk+VGof7LW84Kbjvzho=;
        b=rHX9mA0lXWIfhO2jiv4z1mT5XTCca3dO6jRciuWPxm7fAHYmHMblmthLrLsCJPAKR0
         sqAhU8Ry6DP1VN0GSMVCvkt7zUyTqv/UegaBx4uKCW540zqJ7Jn91bHUYxboTfSrIOGV
         Z1n+lqHIhFhXU/NCvzxd7aTkHU3JvYTKC4ai0MdlavlSHDP7j+BQQczexUHVMRkyznT5
         Oy56JgI8sxCfEXR8crtzh25T1dHW4jYEv7Z/OoQQc1vfmmpwA5bRze1/zaRZc6DY5TSO
         8IpGCR6x7Dw7Qc1rdj6whA0mofC24vtHhvhDSi1suMq5Qa7+OvDWv/+zuY0PA/GXIYOi
         hPRg==
X-Gm-Message-State: AMke39lJoqFC4NNmBl1O3m0PH4mquHKM4TxMxrW/ro6ox/ByJZBKbQf965Gz3ehvllFsDzP1iKgcal247W3ifQ==
X-Received: by 10.25.40.21 with SMTP id o21mr4933565lfo.45.1488492305086; Thu,
 02 Mar 2017 14:05:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Thu, 2 Mar 2017 14:05:04 -0800 (PST)
In-Reply-To: <1488491957.2179.18.camel@perches.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
 <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
 <1488491006.2179.14.camel@perches.com> <CALrZqyN3si-5v5PLWc9ppQ7CjqZGXAXU02GrnyspsioStKTWng@mail.gmail.com>
 <1488491957.2179.18.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 03:35:04 +0530
Message-ID: <CALrZqyP6S2mwYUBERerLnG99qVSFm5jHppjy695JARHMfZ-5Pw@mail.gmail.com>
Subject: Re: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on
 void pointer
To: Joe Perches <joe@perches.com>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2017 at 3:29 AM, Joe Perches <joe@perches.com> wrote:
> On Fri, 2017-03-03 at 03:25 +0530, SIMRAN SINGHAL wrote:
>> On Fri, Mar 3, 2017 at 3:13 AM, Joe Perches <joe@perches.com> wrote:
>> > On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
>> > > The following Coccinelle script was used to detect this:
>> > > @r@
>> > > expression x;
>> > > void* e;
>> > > type T;
>> > > identifier f;
>> > > @@
>> > > (
>> > >   *((T *)e)
>> > > >
>> > >
>> > >   ((T *)x)[...]
>> > > >
>> > >
>> > >   ((T*)x)->f
>> > > >
>> > >
>> > > - (T*)
>> > >   e
>> > > )
>> >
>> > NAK.
>> >
>> > Nice, but you still have to verify correctness
>> > before submitting these patches.
>> >
>> > > diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drive=
rs/staging/lustre/lustre/mgc/mgc_request.c
>> >
>> > []
>> > > @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_=
env *env, struct obd_export *exp,
>> > >               rc =3D sptlrpc_parse_flavor(val, &flvr);
>> > >               if (rc) {
>> > >                       CERROR("invalid sptlrpc flavor %s to MGS\n",
>> > > -                            (char *)val);
>> > > +                            val);
>> >
>> > Try compiling this.
>> >
>>
>> I compiled it before sending.
>
> Did you look at the warnings?
>
>   CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
> drivers/staging/lustre/lustre/mgc/mgc_request.c: In function =E2=80=98mgc=
_set_info_async=E2=80=99:
> drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning: format=
 =E2=80=98%s=E2=80=99 expects argument of type =E2=80=98char *=E2=80=99, bu=
t argument 3 has type =E2=80=98void *=E2=80=99 [-Wformat=3D]
>     CERROR("invalid sptlrpc flavor %s to MGS\n",
>

I again compiled it and this is what I got :-

  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/bounds.h
  CHK     include/generated/asm-offsets.h
  CALL    scripts/checksyscalls.sh
  CHK     include/generated/compile.h
  LD      arch/x86/boot/compressed/vmlinux
  ZOFFSET arch/x86/boot/zoffset.h
  AS      arch/x86/boot/header.o
  LD      arch/x86/boot/setup.elf
  OBJCOPY arch/x86/boot/setup.bin
  OBJCOPY arch/x86/boot/vmlinux.bin
  BUILD   arch/x86/boot/bzImage
Setup is 17500 bytes (padded to 17920 bytes).
System is 7128 kB
CRC 37713343
Kernel: arch/x86/boot/bzImage is ready  (#4)
  Building modules, stage 2.
  MODPOST 4541 modules

I am not getting any warning.

