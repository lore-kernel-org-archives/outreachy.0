X-GM-THRID: 6392835608825298944
X-Received: by 10.25.104.21 with SMTP id d21mr1317515lfc.31.1488688832284;
        Sat, 04 Mar 2017 20:40:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls1221084ljv.49.gmail; Sat, 04 Mar
 2017 20:40:31 -0800 (PST)
X-Received: by 10.25.41.85 with SMTP id p82mr1341266lfp.16.1488688831483;
        Sat, 04 Mar 2017 20:40:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id e72si464716wma.0.2017.03.04.20.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 20:40:31 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id r36so10647353lfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 20:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=D2hR/euF76eo40KVclDqg8KZyWIFkuIJf5C42yMBptA=;
        b=aYm47JY5acuOSfRD3aSIhG0+L/AM4XnO5JtDSCjfcMTZ7GY9NGkQ5MbA1Xidpz+TgK
         XqQnEwbpGs4jZp+k6VGXkhtdk0uZ9tmz0RvI3IOwg+xyW3I+XAROBTD4oGug47jw4VvH
         EBQccFWlXlRq7BE/dfKFzHE0Rq+ZYCzbt0meKMK1wPm/MtPL1Z5XeBOlbm1ot3yL/aeG
         JNcKS9eSxObVpBlDmp6JbXdmZSPUs3o76blmV1iwOaY/dSIRJHSZHYrhucu2OoP0apRj
         t7xE+Rxo78SV5NpC0VNktH1FhM58UOirXhP5vnKp0EkVSNLHcF6WSA0CLUOLDuvU6+/e
         L4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=D2hR/euF76eo40KVclDqg8KZyWIFkuIJf5C42yMBptA=;
        b=cUeL1H5AxQJQJuiVXNqirPkgm4CxKOGFekBWxVMA4OZgSiCoyEafzIJQsvy9cKbOEL
         c4d8WAg26frRBFw9iL2YbbyvPxGS6cIe3XzvrpE8j8nDZtKqKgGNlwUN2nS3X2jcjmen
         oCOj1aEgF+0hsvQa6jz04zeYgjbVou/Qr/0T9/kY/D4gorSZWXc24/LK1L8nQ92HdHn4
         +8jt2PDbSEEMXqIojOBLdkqfFUxFyVJf+63QNujjFNae09v7NqFBVyRSmQNaWJAXk20N
         YPanQTEGlgeIo7M+H0wu3pwEINEf7VGojhCV6unXVqPhzK5zfpPCKYO3tOzKIrnZOwfR
         hJYw==
X-Gm-Message-State: AMke39njVBQHSiHwr5FKpqzO61nqXkOtGvFbfZo2tIXzOgCe2LFwqs1Ttkr5sCIL3fleCo4Aiz/NeHDuEEbcKQ==
X-Received: by 10.25.233.201 with SMTP id j70mr626030lfk.20.1488688830909;
 Sat, 04 Mar 2017 20:40:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sat, 4 Mar 2017 20:40:30 -0800 (PST)
In-Reply-To: <20170305000632.GA5628@d830.WORKGROUP>
References: <20170302130459.GA31856@singhal-Inspiron-5558> <fe8d6a85-3d4e-8019-937b-22389b942da3@tronnes.org>
 <20170305000632.GA5628@d830.WORKGROUP>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 5 Mar 2017 10:10:30 +0530
Message-ID: <CALrZqyP2BpnP=XAptdAZBcRP=s4ezpWcTrU9X2XvgZrikHM5Jw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 4/6] staging: fbtft: Fix sparse
 warnings of incorrect type in assignment
To: Alison Schofield <amsfield22@gmail.com>
Cc: =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>, 
	Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com, 
	Juliana Rodrigues <juliana.orod@gmail.com>, thomas.petazzoni@free-electrons.com, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 5, 2017 at 5:36 AM, Alison Schofield <amsfield22@gmail.com> wro=
te:
> On Thu, Mar 02, 2017 at 02:26:37PM +0100, Noralf Tr=C3=B8nnes wrote:
>>
>> Den 02.03.2017 14.04, skrev simran singhal:
>> >This patch fixes the following sparse warnings:
>> >
>> >drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in as=
signment (different base types)
>> >drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [u=
nsigned] [short] [usertype] <noident>
>> >drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [use=
rtype] <noident>
>> >
>> >drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assi=
gnment (different base types)
>> >drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long =
[unsigned] [long] [long long] [usertype] <noident>
>> >drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usert=
ype] <noident>
>> >
>> >Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> >---
>> >  v2:
>> >    -changed commit message
>> >
>> >  drivers/staging/fbtft/fbtft-bus.c | 2 +-
>> >  drivers/staging/fbtft/fbtft-io.c  | 2 +-
>> >  2 files changed, 2 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/=
fbtft-bus.c
>> >index ec45043..df2223e 100644
>> >--- a/drivers/staging/fbtft/fbtft-bus.c
>> >+++ b/drivers/staging/fbtft/fbtft-bus.c
>> >@@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, =
size_t offset, size_t len)
>> >                                             to_copy, remain - to_copy)=
;
>> >             for (i =3D 0; i < to_copy; i++)
>> >-                    txbuf16[i] =3D cpu_to_be16(vmem16[i]);
>> >+                    txbuf16[i] =3D vmem16[i];
>>
>> This change breaks functionality on little endian machines like
>> the Raspberry Pi.
>>
>>
>> Noralf.
>>
>
> Hi Simran,
>
> It's probably good to get back to this one while we have Noralf's
> attention.
>
> While the change above - in fbtft-bus.c is a problem, the change
> below in fbtft-io.c looks ok.  So, compare what you did.  You can't
> *not* do the endian conversion.
>
> This is a cleanup change, a cosmetic change.  There is no underlying
> bug, so you just need to get the typing correct w/out affecting
> behavior.
> anyway.
>
> BTW: I think it's OK to pull this one out and send a v3 of this alone.
> That would mean abandoning the patchset and doing them one at a time.
> They are all in different drivers

Hi alison,

Thanks for the explaination.

I will drop the changes I did in fbtft-bus.c and send a v3 of this alone.

Can you please suggest me any source through which I can understand the
concept of endianess. As right know I didn't understand it, I just
tried to fix the
warnings which I got through sparse and as you can see most of the fixes ar=
e
wrong.

Thanks!
Simran



> alisons

>
>
>
>> >             vmem16 =3D vmem16 + to_copy;
>> >             ret =3D par->fbtftops.write(par, par->txbuf.buf,
>> >diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/f=
btft-io.c
>> >index d868405..ffb9a3b 100644
>> >--- a/drivers/staging/fbtft/fbtft-io.c
>> >+++ b/drivers/staging/fbtft/fbtft-io.c
>> >@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, =
void *buf, size_t len)
>> >                     src++;
>> >             }
>> >             tmp |=3D ((*src & 0x0100) ? 1 : 0);
>> >-            *(u64 *)dst =3D cpu_to_be64(tmp);
>> >+            *(__be64 *)dst =3D cpu_to_be64(tmp);
>> >             dst +=3D 8;
>> >             *dst++ =3D (u8)(*src++ & 0x00FF);
>> >             added++;
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/outreachy-kernel/fe8d6a85-3d4e-8019-937b-22389b942da3%40tronnes.org.
>> For more options, visit https://groups.google.com/d/optout.

