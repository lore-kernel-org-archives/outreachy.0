X-GM-THRID: 6335688613427150848
X-Received: by 10.66.183.166 with SMTP id en6mr240822pac.78.1475149187341;
        Thu, 29 Sep 2016 04:39:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.69 with SMTP id k66ls1231534ioe.22.gmail; Thu, 29 Sep
 2016 04:39:44 -0700 (PDT)
X-Received: by 10.107.168.211 with SMTP id e80mr624193ioj.36.1475149184605;
        Thu, 29 Sep 2016 04:39:44 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id c75si643554ywh.0.2016.09.29.04.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 04:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id n189so2119125qke.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 04:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=yuomgN8/GGV6avo4HDBZlk5AIoGrBRaYL/SWiu7j1ig=;
        b=QdGAAkI0TRlV4RQrxEcYwlsmptGWgLyI40k+ORDMThSIhgoXb8Zxx6Av3l9Uty6T5e
         QdW9bluj9vvdmT1zFc+gSBnf9glgb2p/b6NqXa/2x6LBq6yEykpf2IEpIE1as/zzrqDy
         8BZzFxDw1LSapABsJCwq5HPPQFjNcqLCx1Yrzu/oKlFqrug4YdEl2fgJFcGr4pk8Ht6O
         RPu0xKT8FhUt/+lP3woZ1SlS3byQTrdfY3sDPVL+5gW4aAXZgsoho7Vp7krt2t71eu0q
         MANqQYBsNnN0vDCh4fD0zVLVqpnRiRWvfqqlUU3vo9RZdwZpna6RM6TpfrzMkEAKUDZ0
         xl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=yuomgN8/GGV6avo4HDBZlk5AIoGrBRaYL/SWiu7j1ig=;
        b=L1noJZjowadURUHzaW0kTkSwaNl64qXUsMN4VRVmhu6/+QbjZ38R7p+nIXGlqx46J+
         bGxYJL3X5YA93lvmyXXYEmUkv5LS7uXVYejX/3FgQ5g2OwUyrmPoOLs1LkAKq+edioi0
         PrvIosn+wJE3e6TBOtMc6P6q/woWDoapokXqcrvEcBIAD+f0LQn8wtlwchzSuzj/OJ+F
         KQXrksGokNiiaIylyo4vsO5Wpw6seobY36c24DavEF4YpBG89N+GqD9yMGkFb8yNEGqp
         xxLdrTtX3Qs2FCTP+4PZETBuii+uOiHkqRpfoVpyAiuC7pbB44VIiiVBAEX5MJWOmo8j
         EIwg==
X-Gm-Message-State: AA6/9RnNOGmF4XpRov4nKy636AzRZpH3SyATeMsl6hNnM4JMQMfa0uo7KytCBWJaE+8PS6IZxgInIx8qYUGJPA==
X-Received: by 10.55.81.84 with SMTP id f81mr881057qkb.255.1475149184406; Thu,
 29 Sep 2016 04:39:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.171.92 with HTTP; Thu, 29 Sep 2016 04:39:44 -0700 (PDT)
In-Reply-To: <c1540d4979226f22ca311535bcb98807@jic23.retrosnub.co.uk>
References: <cover.1475141738.git.anchalj109@gmail.com> <6034b360c798be8bdbf156582dc2b4e0c174121b.1475141738.git.anchalj109@gmail.com>
 <c1540d4979226f22ca311535bcb98807@jic23.retrosnub.co.uk>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 29 Sep 2016 17:09:44 +0530
Message-ID: <CAAbeOSvOX3HQ7JDaqc+0R635eebYFAEW3f0f49VrD+Mp7PoZig@mail.gmail.com>
Subject: Re: [PATCH 2/3] staging: iio: cdc: ad7152: Fix CamelCase checkpatch warning
To: jic23@jic23.retrosnub.co.uk
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, jic23@kernel.org
Content-Type: multipart/alternative; boundary=001a114a8d9420a2f8053da3eff1

--001a114a8d9420a2f8053da3eff1
Content-Type: text/plain; charset=UTF-8

>Don't assume that checkpatch is right.
>
>Like all units that are named after a person (here Faraday)
>the unit should be capitals.  Checkpatch assumes that
>it is camel case but is wrong.
>
>J

Thank you for informing me next time I'll sure that kind of mistake not
happen.


On Thu, Sep 29, 2016 at 4:44 PM, <jic23@jic23.retrosnub.co.uk> wrote:

> On 29.09.2016 10:47, Anchal Jain wrote:
>
>> This patch fix the check detect by the checkpatch.pl
>> CHECK: Avoid CamelCase
>> Convert the names into normal naming pattern
>>
> Don't assume that checkpatch is right.
>
> Like all units that are named after a person (here Faraday)
> the unit should be capitals.  Checkpatch assumes that
> it is camel case but is wrong.
>
> J
>
>
>> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>> ---
>>  drivers/staging/iio/cdc/ad7152.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/iio/cdc/ad7152.c
>> b/drivers/staging/iio/cdc/ad7152.c
>> index 1962052..2473af3 100644
>> --- a/drivers/staging/iio/cdc/ad7152.c
>> +++ b/drivers/staging/iio/cdc/ad7152.c
>> @@ -48,10 +48,10 @@
>>
>>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>>  #define AD7152_SETUP_CAPDIFF           bit(5)
>> -#define AD7152_SETUP_RANGE_2pF         (0 << 6)
>> -#define AD7152_SETUP_RANGE_0_5pF       bit(6)
>> -#define AD7152_SETUP_RANGE_1pF         (2 << 6)
>> -#define AD7152_SETUP_RANGE_4pF         (3 << 6)
>> +#define AD7152_SETUP_RANGE_2pf         (0 << 6)
>> +#define AD7152_SETUP_RANGE_0_5pf       bit(6)
>> +#define AD7152_SETUP_RANGE_1pf         (2 << 6)
>> +#define AD7152_SETUP_RANGE_4pf         (3 << 6)
>>  #define AD7152_SETUP_RANGE(x)          ((x) << 6)
>>
>>  /* Config Register Bit Designations (AD7152_REG_CFG) */
>> @@ -298,7 +298,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
>>                         if (val2 == ad7152_scale_table[i])
>>                                 break;
>>
>> -               chip->setup[chan->channel] &= ~AD7152_SETUP_RANGE_4pF;
>> +               chip->setup[chan->channel] &= ~AD7152_SETUP_RANGE_4pf;
>>                 chip->setup[chan->channel] |= AD7152_SETUP_RANGE(i);
>>
>>                 ret = i2c_smbus_write_byte_data(chip->client,
>>
>

--001a114a8d9420a2f8053da3eff1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;Don&#39;t assume that checkpatch is right.<br>
&gt;<br>&gt;Like all units that are named after a person (here Faraday)<br>=
&gt;the unit should be capitals.=C2=A0 Checkpatch assumes that<br>&gt;it is=
 camel case but is wrong.<br>
&gt;<br>&gt;J<br><br></div>Thank you for informing me next time I&#39;ll su=
re that kind of mistake not happen.<br><br></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Sep 29, 2016 at 4:44 PM,  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:jic23@jic23.retrosnub.co.uk" target=3D"_blan=
k">jic23@jic23.retrosnub.co.uk</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On 29.09.2016 10:47, Anchal Jain wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
This patch fix the check detect by the <a href=3D"http://checkpatch.pl" rel=
=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
CHECK: Avoid CamelCase<br>
Convert the names into normal naming pattern<br>
</blockquote></span>
Don&#39;t assume that checkpatch is right.<br>
<br>
Like all units that are named after a person (here Faraday)<br>
the unit should be capitals.=C2=A0 Checkpatch assumes that<br>
it is camel case but is wrong.<br>
<br>
J<div class=3D"HOEnZb"><div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com" targ=
et=3D"_blank">anchalj109@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/iio/cdc/ad715<wbr>2.c | 10 +++++-----<br>
=C2=A01 file changed, 5 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/drivers/staging/iio/cdc/ad71<wbr>52.c b/drivers/staging/iio/cd=
c/ad71<wbr>52.c<br>
index 1962052..2473af3 100644<br>
--- a/drivers/staging/iio/cdc/ad71<wbr>52.c<br>
+++ b/drivers/staging/iio/cdc/ad71<wbr>52.c<br>
@@ -48,10 +48,10 @@<br>
<br>
=C2=A0/* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */<br>
=C2=A0#define AD7152_SETUP_CAPDIFF=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
bit(5)<br>
-#define AD7152_SETUP_RANGE_2pF=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0 &lt;&lt=
; 6)<br>
-#define AD7152_SETUP_RANGE_0_5pF=C2=A0 =C2=A0 =C2=A0 =C2=A0bit(6)<br>
-#define AD7152_SETUP_RANGE_1pF=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(2 &lt;&lt=
; 6)<br>
-#define AD7152_SETUP_RANGE_4pF=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(3 &lt;&lt=
; 6)<br>
+#define AD7152_SETUP_RANGE_2pf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0 &lt;&lt=
; 6)<br>
+#define AD7152_SETUP_RANGE_0_5pf=C2=A0 =C2=A0 =C2=A0 =C2=A0bit(6)<br>
+#define AD7152_SETUP_RANGE_1pf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(2 &lt;&lt=
; 6)<br>
+#define AD7152_SETUP_RANGE_4pf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(3 &lt;&lt=
; 6)<br>
=C2=A0#define AD7152_SETUP_RANGE(x)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((x) =
&lt;&lt; 6)<br>
<br>
=C2=A0/* Config Register Bit Designations (AD7152_REG_CFG) */<br>
@@ -298,7 +298,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (val2 =3D=3D ad7152_scale_table[i])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;setup[chan=
-&gt;channel] &amp;=3D ~AD7152_SETUP_RANGE_4pF;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chip-&gt;setup[chan=
-&gt;channel] &amp;=3D ~AD7152_SETUP_RANGE_4pf;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 chip-&gt;setup[chan=
-&gt;channel] |=3D AD7152_SETUP_RANGE(i);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D i2c_smbus_w=
rite_byte_data(chip<wbr>-&gt;client,<br>
</blockquote>
</div></div></blockquote></div><br></div>

--001a114a8d9420a2f8053da3eff1--

