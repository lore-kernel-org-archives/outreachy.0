X-GM-THRID: 6392835608825298944
X-Received: by 10.36.39.213 with SMTP id g204mr2181404ita.26.1488689449121;
        Sat, 04 Mar 2017 20:50:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.140 with SMTP id b134ls3917435ioa.38.gmail; Sat, 04 Mar
 2017 20:50:48 -0800 (PST)
X-Received: by 10.99.251.83 with SMTP id w19mr4544811pgj.24.1488689448222;
        Sat, 04 Mar 2017 20:50:48 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ot0-x242.google.com (mail-ot0-x242.google.com. [2607:f8b0:4003:c0f::242])
        by gmr-mx.google.com with ESMTPS id e196si1200560itc.2.2017.03.04.20.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 20:50:48 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::242 as permitted sender) client-ip=2607:f8b0:4003:c0f::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::242 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x242.google.com with SMTP id i1so14451595ota.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 20:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Zdh3LiFRYxmCaOee3J5ZQlWOW/vclxaWwbPZ9lrljQI=;
        b=A4Ev88WpIaQUWJrXf2NdY/VVOXlSbvtbloHnbv31o+uwVenGCfgLnTV88BDh9rJT4X
         7ADabQhG3NQujOqqBLcbnB72706tgCP7shkxYHbU3NkxXS8Givf6cjiIvaoqZhPSeDAY
         Vzu3EWc6NhD2NRkX/ayo0R617Xzeh0sJY1LLrmwG6GS8reFaxFwwa7v3EG7D7cSiDcQG
         ggAzBzQH43CLz3e1IrsyHBpAIuOIHXEnnj0dEKXOWBoSvhYg9G/c4fGrs9Aaiu8iEIeg
         9QZ0iA1utbqXLBsiAui5O84toJicL2r5I/LQJurn+6FGfifvbiHHaGg8vdQ1Mqo9/oub
         79KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Zdh3LiFRYxmCaOee3J5ZQlWOW/vclxaWwbPZ9lrljQI=;
        b=qI4Hh3aDmYM/w5jbz5fdgjxI3wmEwIeEZRnMAY3yXDKdEJqixDYBOab2JLfFPW5bZf
         8BbUXYKxfj5lNsBPNfgvx+GJbmZcrfoX7FL9Siqu/WVhjC4+Wjob7r8Tassh9TD0alXu
         /GjEGxiO8IsezXnRdH+/oA8bJSARBZm43i0jv3cj4lN7XMi7DRENugQ7ejhETykJt7fG
         h/qcXIxKget9RL7XG7WdefysaT868Zc/TV+50PLACkCW+UjhMHpgW5NrvcyYstTxAdlO
         Y1XNpq2TiOXzDXmSr6V/vZpaU2NBsig7Jr5CPB7acYldL5IRh3sTdgKPROZSyAaMa+o+
         zU5Q==
X-Gm-Message-State: AMke39kI7jdOH9/JGW+Wrtn3Ju5bRzr8oSArqF5lvwUXNKRagVRRaNQL8QW+DFuaLstCdT5+QA1eN/eV2eceQg==
X-Received: by 10.157.15.196 with SMTP id m4mr4749415otd.67.1488689447814;
 Sat, 04 Mar 2017 20:50:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.107.100 with HTTP; Sat, 4 Mar 2017 20:50:47 -0800 (PST)
In-Reply-To: <CALrZqyP2BpnP=XAptdAZBcRP=s4ezpWcTrU9X2XvgZrikHM5Jw@mail.gmail.com>
References: <20170302130459.GA31856@singhal-Inspiron-5558> <fe8d6a85-3d4e-8019-937b-22389b942da3@tronnes.org>
 <20170305000632.GA5628@d830.WORKGROUP> <CALrZqyP2BpnP=XAptdAZBcRP=s4ezpWcTrU9X2XvgZrikHM5Jw@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Sun, 5 Mar 2017 10:20:47 +0530
Message-ID: <CAK-LDbKxL1q4n+igMJZtcL58z9YDCiVqc+yFSvT4EnEe2Z9DYQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 4/6] staging: fbtft: Fix sparse
 warnings of incorrect type in assignment
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>, 
	Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, sergio.paracuellos@gmail.com, 
	Juliana Rodrigues <juliana.orod@gmail.com>, thomas.petazzoni@free-electrons.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 5, 2017 at 10:10 AM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> On Sun, Mar 5, 2017 at 5:36 AM, Alison Schofield <amsfield22@gmail.com> w=
rote:
>> On Thu, Mar 02, 2017 at 02:26:37PM +0100, Noralf Tr=C3=B8nnes wrote:
>>>
>>> Den 02.03.2017 14.04, skrev simran singhal:
>>> >This patch fixes the following sparse warnings:
>>> >
>>> >drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in a=
ssignment (different base types)
>>> >drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [=
unsigned] [short] [usertype] <noident>
>>> >drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [us=
ertype] <noident>
>>> >
>>> >drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in ass=
ignment (different base types)
>>> >drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long=
 [unsigned] [long] [long long] [usertype] <noident>
>>> >drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [user=
type] <noident>
>>> >
>>> >Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>>> >---
>>> >  v2:
>>> >    -changed commit message
>>> >
>>> >  drivers/staging/fbtft/fbtft-bus.c | 2 +-
>>> >  drivers/staging/fbtft/fbtft-io.c  | 2 +-
>>> >  2 files changed, 2 insertions(+), 2 deletions(-)
>>> >
>>> >diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft=
/fbtft-bus.c
>>> >index ec45043..df2223e 100644
>>> >--- a/drivers/staging/fbtft/fbtft-bus.c
>>> >+++ b/drivers/staging/fbtft/fbtft-bus.c
>>> >@@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par,=
 size_t offset, size_t len)
>>> >                                             to_copy, remain - to_copy=
);
>>> >             for (i =3D 0; i < to_copy; i++)
>>> >-                    txbuf16[i] =3D cpu_to_be16(vmem16[i]);
>>> >+                    txbuf16[i] =3D vmem16[i];
>>>
>>> This change breaks functionality on little endian machines like
>>> the Raspberry Pi.
>>>
>>>
>>> Noralf.
>>>
>>
>> Hi Simran,
>>
>> It's probably good to get back to this one while we have Noralf's
>> attention.
>>
>> While the change above - in fbtft-bus.c is a problem, the change
>> below in fbtft-io.c looks ok.  So, compare what you did.  You can't
>> *not* do the endian conversion.
>>
>> This is a cleanup change, a cosmetic change.  There is no underlying
>> bug, so you just need to get the typing correct w/out affecting
>> behavior.
>> anyway.
>>
>> BTW: I think it's OK to pull this one out and send a v3 of this alone.
>> That would mean abandoning the patchset and doing them one at a time.
>> They are all in different drivers
>
> Hi alison,
>
> Thanks for the explaination.
>
> I will drop the changes I did in fbtft-bus.c and send a v3 of this alone.
>
> Can you please suggest me any source through which I can understand the
> concept of endianess. As right know I didn't understand it, I just
> tried to fix the
> warnings which I got through sparse and as you can see most of the fixes =
are
> wrong.
>
> Thanks!
> Simran
>

Hi Simran,

I would suggest to have a look at thie LWN article[1]. It is pretty old
article but explains very well on the concept of why these annotations
[__le16, __le32 etc] were introduced at first place and how Sparse
gives warnings based on these annotations.

In addition, you should look at the definitions of byte ordering macros.
For example, in this example we have 'cpu_to_be64' then you can go
and look at the definition of that macro see where they are used and
why they are used in the first place.

Thanks.

[1] https://lwn.net/Articles/205624/

>
>> alisons
>
>>
>>
>>
>>> >             vmem16 =3D vmem16 + to_copy;
>>> >             ret =3D par->fbtftops.write(par, par->txbuf.buf,
>>> >diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/=
fbtft-io.c
>>> >index d868405..ffb9a3b 100644
>>> >--- a/drivers/staging/fbtft/fbtft-io.c
>>> >+++ b/drivers/staging/fbtft/fbtft-io.c
>>> >@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par,=
 void *buf, size_t len)
>>> >                     src++;
>>> >             }
>>> >             tmp |=3D ((*src & 0x0100) ? 1 : 0);
>>> >-            *(u64 *)dst =3D cpu_to_be64(tmp);
>>> >+            *(__be64 *)dst =3D cpu_to_be64(tmp);
>>> >             dst +=3D 8;
>>> >             *dst++ =3D (u8)(*src++ & 0x00FF);
>>> >             added++;
>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/ms=
gid/outreachy-kernel/fe8d6a85-3d4e-8019-937b-22389b942da3%40tronnes.org.
>>> For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/CALrZqyP2BpnP%3DXAptdAZBcRP%3Ds4ezpWcTrU9X2XvgZrikHM5Jw%=
40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.



--=20
Vaishali
http://vaishalithakkar.in/

