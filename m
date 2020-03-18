X-GM-THRID: 6805595890134286336
X-Received: by 2002:a1c:b657:: with SMTP id g84mr6307148wmf.107.1584553135530;
        Wed, 18 Mar 2020 10:38:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls979391wrd.5.gmail; Wed, 18 Mar
 2020 10:38:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtiz+vdnjaWFp4oXlLr2fRoDUlZNsd88GnJMn9f9OeTo8oeTiXQed8xqfiajMLB56hGVLGB
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr7059612wrq.180.1584553134186;
        Wed, 18 Mar 2020 10:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584553134; cv=none;
        d=google.com; s=arc-20160816;
        b=mJFmhggEcrBeUUG8AixwEaabdLsdky6IhpT5Ssq/9OWH/ZpngkGJU/htJcvUL0+Fke
         BqcvFTpa49T4IHBOIzzSTKa8xWSnjVc8GpKo8edVurFgk+YbG573/O0LShURtfQw4uTk
         6RkeMTGttOtQ+0/SD3SpRQpu+dzvLxiTMedK61e7TOuTjPwx61ur80fD0sarEDK9a22P
         5XlahE37B4HaXrKcLWFI/4O2+TG3NgnBPZTc8dtoO86w+AaQdb0nMZU9YKELLXTqfcsB
         1w15z1mgbSSPmakFe29f/lvdWuyZbyQSs3+Nujr6eQRxNQ2tDI/tElvMtbsrabQVdpdn
         ODqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:cc:to:date:from:subject:content-transfer-encoding
         :mime-version:user-agent:thread-topic:references:in-reply-to
         :dkim-signature;
        bh=ZuIQN56pHfRWBE010wbrRWxUptK/WopHOILtezUgfVk=;
        b=GvrDDtQtTy2EHfJGPqN+J2FJIJebKlnsO1nqCpxJ942Gzek0+cn6xtgHLYEUDSwgyt
         jXhK8HU218QAuymwNxi8JvDJ4U3WVu46YLNWSUWLCJ/b42L5K44Zs959SROLqZEZnjT6
         6TZWJtO7tlAva9PzK/MuxL5yzu9BNEfVZTocQhANpCIh/7gYr77JSt45ugTsevQH9w/9
         7ASqD7WU+AzFvkI1eGCVwIHJ0jZlenCVN+S9r6tWTHv21MxUSujitoSCcy0nCxtKiYBm
         G9AztvfeMYYRSzxXD5nSwQbo+Jz2b5cIdOV1S/o4jWn8jr1R2xoJIH8QPgzcK96pJGp7
         rfMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfbA5PuW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y201si183880wmc.0.2020.03.18.10.38.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfbA5PuW;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id v11so31556550wrm.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=in-reply-to:references:thread-topic:user-agent:mime-version
         :content-transfer-encoding:subject:from:date:to:cc:message-id;
        bh=ZuIQN56pHfRWBE010wbrRWxUptK/WopHOILtezUgfVk=;
        b=dfbA5PuWwGPbKkxmQHabNs1YPW+2AzYpwshCvw+FH7l9uHlMcrQXAhFMKJV/ks3oWm
         28ad5lyg5HHbfBgVo6royNEYQ2DbhYf2AgCDAYkc6LIfX4lTcFSvcOGrHXpJCGmwLvWD
         qfov05W3tOmhIih2aQonm/nbFZPXNAcSZnBRD6oCiTxJ2NHE7ybiBvhdu9jQWV/Z8jP1
         pLQCKKGkGXdkWI0eY7lZ7r07YNoLfXjwYkRFWo5WD9RN7dglOXW3dIXYy+rQsOHJKtAK
         tuiUuhPFYV9rBJDVjTgcLPrsXB9oOTegKZuo5fXnlwQZ4kGRya9q7oNyZsxG4ZLclJVu
         QYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:in-reply-to:references:thread-topic:user-agent
         :mime-version:content-transfer-encoding:subject:from:date:to:cc
         :message-id;
        bh=ZuIQN56pHfRWBE010wbrRWxUptK/WopHOILtezUgfVk=;
        b=TD7ZCltPsdwMVZzhby4v60ziSWEI349rusjsYv99Taz2kDMi2BLU/xm/dGfhCmOsHp
         eSLHVhY4cy1EyP9wcrX3iixyQHqzmKTEWYn0HNI8U3Bz7ym2yUXIJhpPkx00yvOeOCi9
         yJZyiV+Fp9aJ5fr3528OT9Ia26Rn9Cd45d/vqVTY1DhgOpCvoxP2BFrAV5W2hQnXKmpN
         ZRnBA5YPI+pFX9mbF0qa1Yu4L2rNTui+GlcApcA8SF2dYxdZu+cFCSERYXyQ54C42lym
         h/NSbcGrdvyTyDxiOSAgU+VcfDZ3QWeNiBYz6F594juRO5jxh0BT0AIboxJzWIS06cXu
         a/Ow==
X-Gm-Message-State: ANhLgQ0+UuHgtUlsUV4NwuTPGGRgLydbMcBOpgk0bmA7s9FlAVwjzhi/
	Wxg59vmz6NLp+dTRZ9Z3hqMJswOsoC7NiQ==
X-Received: by 2002:adf:fa8d:: with SMTP id h13mr6732438wrr.155.1584553133807;
        Wed, 18 Mar 2020 10:38:53 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from [192.168.1.2] ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id l13sm10457520wrm.57.2020.03.18.10.38.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:38:53 -0700 (PDT)
In-Reply-To: <0534e4c283948979f1264c150c72546cca910aab.camel@gmail.com>
References: <20200318170713.3886-1-jane.pnx9@gmail.com> <alpine.DEB.2.21.2003181809410.2979@hadrien> <0534e4c283948979f1264c150c72546cca910aab.camel@gmail.com>
X-Referenced-Uid: 31
Thread-Topic: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line after variable declarations.
User-Agent: Android
X-Is-Generated-Message-Id: true
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----0FPAGSZU7ETU2ZEHZ3HG7RL8K3X1X7"
Content-Transfer-Encoding: 7bit
X-Local-Message-Id: <ae3830fd-20f7-40e8-ac3c-56c1fe8181ee@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line after variable declarations.
From: Sam Muhammad <jane.pnx9@gmail.com>
Date: Wed, 18 Mar 2020 19:38:51 +0200
To: Julia Lawall <julia.lawall@inria.fr>
CC: outreachy-kernel@googlegroups.com,Manish Chopra <manishc@marvell.com>,
		gr-linux-nic-dev@marvell.com,Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <ae3830fd-20f7-40e8-ac3c-56c1fe8181ee@gmail.com>

------0FPAGSZU7ETU2ZEHZ3HG7RL8K3X1X7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

I am afraid my reply wasn't inline :(

Sam

=E2=81=A3Get BlueMail for Andro=
id =E2=80=8B

On Mar 18, 2020, 7:30 PM, at 7:30 PM, Sam Muhammed <jane=2Epn=
x9@gmail=2Ecom> wrote:
>-----Original Message-----
>From: Julia Lawall <jul=
ia=2Elawall@inria=2Efr>
>To: Sam Muhammed <jane=2Epnx9@gmail=2Ecom>
>Cc: ou=
treachy-kernel@googlegroups=2Ecom, Manish Chopra <
>manishc@marvell=2Ecom>,=
 GR-Linux-NIC-Dev@marvell=2Ecom, Greg Kroah-Hartman 
><gregkh@linuxfoundati=
on=2Eorg>
>Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank=
 line 
>after variable declarations=2E
>Date: Wed, 18 Mar 2020 18:10:17 +01=
00 (CET)
>
>
>On Wed, 18 Mar 2020, Sam Muhammed wrote:
>
>> Cleanup checkpa=
tch=2Epl WARNING: Missing a blank line after
>> declarations=2E
>> 
>> Sign=
ed-off-by: Sam Muhammed <jane=2Epnx9@gmail=2Ecom>
>> ---
>>  drivers/stagin=
g/qlge/qlge_dbg=2Ec | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 del=
etion(-)
>> 
>> diff --git a/drivers/staging/qlge/qlge_dbg=2Ec
>> b/drivers=
/staging/qlge/qlge_dbg=2Ec
>> index 737d6abd8076=2E=2E8bf592812518 100644
>=
> --- a/drivers/staging/qlge/qlge_dbg=2Ec
>> +++ b/drivers/staging/qlge/qlg=
e_dbg=2Ec
>> @@ -496,7 +496,9 @@ static int ql_get_mpi_shadow_regs(struct
>=
> ql_adapter *qdev, u32 *buf)
>>  static int ql_get_mpi_regs(struct ql_adap=
ter *qdev, u32 *buf,
>>  			   u32 offset, u32 count)
>>  {
>> -	int i, sta=
tus =3D 0;
>> +	int i;
>> +	int status =3D 0;
>> +
>
>This does more than a=
dd a blank line=2E
>
>Actually, it's fine to declare several variables at o=
nce=2E
>
>julia
>
>>  	for (i =3D 0; i < count; i++, buf++) {
>>  		status =
=3D ql_read_mpi_reg(qdev, offset + i, buf);
>>  		if (status)
>> @@ -1330,6=
 +1332,7 @@ static void ql_dump_intr_states(struct
>> ql_adapter *qdev)
>> =
 {
>>  	int i;
>>  	u32 value;
>> +
>>  	for (i =3D 0; i < qdev->intr_count=
; i++) {
>>  		ql_write32(qdev, INTR_EN, qdev-
>> >intr_context[i]=2Eintr_r=
ead_mask);
>>  		value =3D ql_read32(qdev, INTR_EN);
>> @@ -1415,6 +1418,7 =
@@ void ql_dump_routing_entries(struct ql_adapter
>> *qdev)
>>  {
>>  	int =
i;
>>  	u32 value;
>> +
>>  	i =3D ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
=
>>  	if (i)
>>  		return;
>> @@ -1565,6 +1569,7 @@ void ql_dump_stat(struct=
 ql_adapter *qdev)
>>  void ql_dump_qdev(struct ql_adapter *qdev)
>>  {
>> =
 	int i;
>> +
>>  	DUMP_QDEV_FIELD(qdev, "%lx", flags);
>>  	DUMP_QDEV_FIEL=
D(qdev, "%p", vlgrp);
>>  	DUMP_QDEV_FIELD(qdev, "%p", pdev);
>> @@ -1650,6=
 +1655,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
>>  void ql_dump_=
ricb(struct ricb *ricb)
>>  {
>>  	int i;
>> +
>>  	pr_err("=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Dumping ricb =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n");
>>  	pr_err("Dumping ricb stuff=2E=
=2E=2E\n");
>> 
>> --
>> 2=2E20=2E1
>> 
>> --
>> You received this message =
because you are subscribed to the Google
>> Groups "outreachy-kernel" group=
=2E
>> To unsubscribe from this group and stop receiving emails from it,
>>=
 send an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>> To =
view this discussion on the web visit 
>>
>https://groups=2Egoogle=2Ecom/d/=
msgid/outreachy-kernel/20200318170713=2E3886-1-jane=2Epnx9%40gmail=2Ecom
>>=
 =2E
>> 
>By this i maintaned the developer's style; declaring more than on=
e
>variable was okay, but that was the only occurrence of declaring more
>t=
han one variable and assigning a value to one of them in the same
>line=2E
=
>
>This is an instance where two variables of the same type declared in
>di=
fferent lines since one of them was assigned a value:
>
>
>	int status =3D =
0;
>	int i;
>
>	for (i =3D PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i +=3D 4, =
buf++) {
>		/* We're reading 400 xgmac registers, but we filter out
>		 * s=
everal locations that are non-responsive to reads=2E
>		 */
>
>plus a TODO =
note to fix checkpatch issues; i choose it as a starter=2E :)
>
>
>Sam

------0FPAGSZU7ETU2ZEHZ3HG7RL8K3X1X7
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body style=3D"zoom: 0%;"><div dir=3D"auto">I am afraid =
my reply wasn't inline :(<br><br></div>
<div dir=3D"auto">Sam<br><br></div>=

<div dir=3D"auto"><!-- tmjah_g_1299s -->Get <!-- tmjah_g_1299e --><a href=
=3D"http://www=2Ebluemail=2Eme/r?b=3D15824"><!-- tmjah_g_1299s -->BlueMail =
for Android<!-- tmjah_g_1299e --></a><!-- tmjah_g_1299s --> <!-- tmjah_g_12=
99e --></div>
<div class=3D"gmail_quote" >On Mar 18, 2020, at 7:30 PM, Sam =
Muhammed &lt;<a href=3D"mailto:jane=2Epnx9@gmail=2Ecom" target=3D"_blank">j=
ane=2Epnx9@gmail=2Ecom</a>&gt; wrote:<blockquote class=3D"gmail_quote" styl=
e=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204)=
; padding-left: 1ex;">
<pre class=3D"blue">-----Original Message-----<br>Fr=
om: Julia Lawall &lt;julia=2Elawall@inria=2Efr&gt;<br>To: Sam Muhammed &lt;=
jane=2Epnx9@gmail=2Ecom&gt;<br>Cc: outreachy-kernel@googlegroups=2Ecom, Man=
ish Chopra &lt;<br>manishc@marvell=2Ecom&gt;, GR-Linux-NIC-Dev@marvell=2Eco=
m, Greg Kroah-Hartman <br>&lt;gregkh@linuxfoundation=2Eorg&gt;<br>Subject: =
Re: [Outreachy kernel] [PATCH] Staging: qlge: Add blank line <br>after vari=
able declarations=2E<br>Date: Wed, 18 Mar 2020 18:10:17 +0100 (CET)<br><br>=
<br>On Wed, 18 Mar 2020, Sam Muhammed wrote:<br><br><blockquote class=3D"gm=
ail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #72=
9fcf; padding-left: 1ex;"> Cleanup <a href=3D"http://checkpatch=2Epl">check=
patch=2Epl</a> WARNING: Missing a blank line after<br> declarations=2E<br> =
<br> Signed-off-by: Sam Muhammed &lt;jane=2Epnx9@gmail=2Ecom&gt;<br> ---<br=
>  drivers/staging/qlge/qlge_dbg=2Ec | 8 +++++++-<br>  1 file changed, 7 in=
sertions(+), 1 deletion(-)<br> <br> diff --git a/drivers/staging/qlge/qlge_=
dbg=2Ec<br> b/drivers/staging/qlge/qlge_dbg=2Ec<br> index 737d6abd8076=2E=
=2E8bf592812518 100644<br> --- a/drivers/staging/qlge/qlge_dbg=2Ec<br> +++ =
b/drivers/staging/qlge/qlge_dbg=2Ec<br> @@ -496,7 +496,9 @@ static int ql_g=
et_mpi_shadow_regs(struct<br> ql_adapter *qdev, u32 *buf)<br>  static int q=
l_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,<br>        u32 offset, u3=
2 count)<br>  {<br> - int i, status =3D 0;<br> + int i;<br> + int status =
=3D 0;<br> +<br></blockquote><br>This does more than add a blank line=2E<br=
><br>Actually, it's fine to declare several variables at once=2E<br><br>jul=
ia<br><br><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=
=2E8ex; border-left: 1px solid #729fcf; padding-left: 1ex;">   for (i =3D 0=
; i &lt; count; i++, buf++) {<br>    status =3D ql_read_mpi_reg(qdev, offse=
t + i, buf);<br>    if (status)<br> @@ -1330,6 +1332,7 @@ static void ql_du=
mp_intr_states(struct<br> ql_adapter *qdev)<br>  {<br>   int i;<br>   u32 v=
alue;<br> +<br>   for (i =3D 0; i &lt; qdev-&gt;intr_count; i++) {<br>    q=
l_write32(qdev, INTR_EN, qdev-<br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #ad7fa8; padding-le=
ft: 1ex;">intr_context[i]=2Eintr_read_mask);<br></blockquote>    value =3D =
ql_read32(qdev, INTR_EN);<br> @@ -1415,6 +1418,7 @@ void ql_dump_routing_en=
tries(struct ql_adapter<br> *qdev)<br>  {<br>   int i;<br>   u32 value;<br>=
 +<br>   i =3D ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);<br>   if (i)<br>    =
return;<br> @@ -1565,6 +1569,7 @@ void ql_dump_stat(struct ql_adapter *qdev=
)<br>  void ql_dump_qdev(struct ql_adapter *qdev)<br>  {<br>   int i;<br> +=
<br>   DUMP_QDEV_FIELD(qdev, "%lx", flags);<br>   DUMP_QDEV_FIELD(qdev, "%p=
", vlgrp);<br>   DUMP_QDEV_FIELD(qdev, "%p", pdev);<br> @@ -1650,6 +1655,7 =
@@ void ql_dump_tx_ring(struct tx_ring *tx_ring)<br>  void ql_dump_ricb(str=
uct ricb *ricb)<br>  {<br>   int i;<br> +<br>   pr_err("=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Dumping ricb =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n");<br>   pr_err("Dumping ricb stuff=2E=2E=
=2E\n");<br> <br> --<br> 2=2E20=2E1<br> <br> --<br> You received this messa=
ge because you are subscribed to the Google<br> Groups "outreachy-kernel" g=
roup=2E<br> To unsubscribe from this group and stop receiving emails from i=
t,<br> send an email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E<=
br> To view this discussion on the web visit <br> <a href=3D"https://groups=
=2Egoogle=2Ecom/d/msgid/outreachy-kernel/20200318170713=2E3886-1-jane=2Epnx=
9%40gmail=2Ecom">https://groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/202=
00318170713=2E3886-1-jane=2Epnx9%40gmail=2Ecom</a><br> =2E<br> <br></blockq=
uote>By this i maintaned the developer's style; declaring more than one<br>=
variable was okay, but that was the only occurrence of declaring more<br>th=
an one variable and assigning a value to one of them in the same<br>line=2E=
<br><br>This is an instance where two variables of the same type declared i=
n<br>different lines since one of them was assigned a value:<br><br><br> in=
t status =3D 0;<br> int i;<br><br> for (i =3D PAUSE_SRC_LO; i &lt; XGMAC_RE=
GISTER_END; i +=3D 4, buf++) {<br>  /* We're reading 400 xgmac registers, b=
ut we filter out<br>   * several locations that are non-responsive to reads=
=2E<br>   */<br><br>plus a TODO note to fix checkpatch issues; i choose it =
as a starter=2E :)<br><br><br>Sam<br><br></pre></blockquote></div></body></=
html>
------0FPAGSZU7ETU2ZEHZ3HG7RL8K3X1X7--


