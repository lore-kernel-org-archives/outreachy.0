X-GM-THRID: 6254254394304364544
X-Received: by 10.182.87.2 with SMTP id t2mr22033680obz.20.1457462185178;
        Tue, 08 Mar 2016 10:36:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.73 with SMTP id qg9ls298033igb.36.gmail; Tue, 08 Mar
 2016 10:36:24 -0800 (PST)
X-Received: by 10.107.12.10 with SMTP id w10mr649682ioi.5.1457462184644;
        Tue, 08 Mar 2016 10:36:24 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-oi0-x22d.google.com (mail-oi0-x22d.google.com. [2607:f8b0:4003:c06::22d])
        by gmr-mx.google.com with ESMTPS id ph8si1782557igb.0.2016.03.08.10.36.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::22d as permitted sender) client-ip=2607:f8b0:4003:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::22d as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22d.google.com with SMTP id c203so17058946oia.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=2NYFWl/BcWro47IFAy2ONWMbFtdb44qOTdGtMBgB/dQ=;
        b=fLaoDQqHFnxk2AiXpd3QmM8fvdqaUTCmg4UWhDLuxCYaEEQKqyNlvPXkJLuXiq0TMQ
         imdKU++N8jBQt1g+14W4h+DA0e0wWbTMl53fp2+76KcHY/Hh7qKH9jJ0XAjoSdmUP0N9
         bJ5+33lFYzrCY7tvfmZ+bTzD89KThu5kgmLYalgx8F0T5CTGHQ1F6FGa3iOasxiaZH00
         AzL5LR9Bk9u/ozsyJXjOybrztwJXrToq1BK97p25n90VSXC7MXsG3rk57nnGuoC/oI1G
         lgml41tbd3Qk2bxn9d0IP1JRFTz9j/z8ix57NM4D1U79MwjBWEsY+i5wbak4EJMcJwve
         he6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=2NYFWl/BcWro47IFAy2ONWMbFtdb44qOTdGtMBgB/dQ=;
        b=NBQ9+sBOFsoZncpu/+2LtoxnnixcFgkPOH6w+U7O/p/Qyz6XD9j3kFs8TaW3ZGe8/8
         e1ZKMh4KlqiYb0NAXG6EZxchvO71VluVfd82ahYBazTyG5JSBn0Ew5KjzYH20i2u0HDw
         xCfhHFBDyuEyIafzWz6uuyZf3PIWT2U6sLnZJhwBy5aMhRBQBPK1wZacHrAbHUlCW+AN
         R9GX7A84SF70wL/B6t+zSQX29J5oTBzvIMPt9XwJdbREwWPcOe7pzvdnGnkGgKYe626q
         IcznQ/88hVoRN8pcfA6qGxCVTN+brw2CMAkTygaQh8felZRTpMpeS4J5ggnTYjQ7WfKV
         QJfw==
X-Gm-Message-State: AD7BkJJKT7mYOR6PLR0AR43x3CK6mG2lWpRdVkakxCcvQMtUNc1iNrOgERmGGt22uSxyNp0JwZAhhzvJ8I8zUA==
MIME-Version: 1.0
X-Received: by 10.202.216.137 with SMTP id p131mr13961472oig.30.1457462184460;
 Tue, 08 Mar 2016 10:36:24 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:24 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:24 -0800 (PST)
In-Reply-To: <1456182067-6264-1-git-send-email-dilekuzulmez@gmail.com>
References: <1456182067-6264-1-git-send-email-dilekuzulmez@gmail.com>
Date: Tue, 8 Mar 2016 20:36:24 +0200
Message-ID: <CAOBDApuArcgX2vwM0Q3s6+ZyuHOzona7yH3-L2PgweMdVQnf3w@mail.gmail.com>
Subject: Re: [PATCH] Staging: ste_rmi4: Add space around '/'
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113d4a28c74622052d8ddb17

--001a113d4a28c74622052d8ddb17
Content-Type: text/plain; charset=UTF-8

Did you check this ?
On Feb 23, 2016 1:01 AM, "Dilek Uzulmez" <dilekuzulmez@gmail.com> wrote:

> Add space around operator '/'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '/' (ctx:VxV)
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> index 824d460..0d8b689 100644
> --- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> +++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> @@ -334,7 +334,7 @@ static int synpatics_rmi4_touchpad_report(struct
> synaptics_rmi4_data *pdata,
>          *      10 = finger present but data may not be accurate,
>          *      11 = reserved for product use.
>          */
> -       finger_registers        = (fingers_supported + 3)/4;
> +       finger_registers        = (fingers_supported + 3) / 4;
>         data_base_addr          = rfi->fn_desc.data_base_addr;
>         retval = synaptics_rmi4_i2c_block_read(pdata, data_base_addr,
> values,
>                                                         finger_registers);
> @@ -350,7 +350,7 @@ static int synpatics_rmi4_touchpad_report(struct
> synaptics_rmi4_data *pdata,
>         data_reg_blk_size = rfi->size_of_data_register_block;
>         for (finger = 0; finger < fingers_supported; finger++) {
>                 /* determine which data byte the finger status is in */
> -               reg = finger/4;
> +               reg = finger / 4;
>                 /* bit shift to get finger's status */
>                 finger_shift    = (finger % 4) * 2;
>                 finger_status   = (values[reg] >> finger_shift) & 3;
> @@ -566,7 +566,7 @@ static int synpatics_rmi4_touchpad_detect(struct
> synaptics_rmi4_data *pdata,
>         }
>         pdata->fingers_supported = rfi->num_of_data_points;
>         /* Need to get interrupt info for handling interrupts */
> -       rfi->index_to_intr_reg = (interruptcount + 7)/8;
> +       rfi->index_to_intr_reg = (interruptcount + 7) / 8;
>         if (rfi->index_to_intr_reg != 0)
>                 rfi->index_to_intr_reg -= 1;
>         /*
> --
> 1.9.1
>
>

--001a113d4a28c74622052d8ddb17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Did you check this ?</p>
<div class=3D"gmail_quote">On Feb 23, 2016 1:01 AM, &quot;Dilek Uzulmez&quo=
t; &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">dilekuzulmez@gmail.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Add spac=
e around operator &#39;/&#39;. Problem found using <a href=3D"http://checkp=
atch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
CHECK: spaces preferred around that &#39;/&#39; (ctx:VxV)<br>
<br>
Signed-off-by: Dilek Uzulmez &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">=
dilekuzulmez@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 6 +++---<br>
=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/stagin=
g/ste_rmi4/synaptics_i2c_rmi4.c<br>
index 824d460..0d8b689 100644<br>
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c<br>
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c<br>
@@ -334,7 +334,7 @@ static int synpatics_rmi4_touchpad_report(struct synapt=
ics_rmi4_data *pdata,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 10 =3D finger prese=
nt but data may not be accurate,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0 11 =3D reserved for=
 product use.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0finger_registers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 (fingers_supported + 3)/4;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0finger_registers=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 (fingers_supported + 3) / 4;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 data_base_addr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D rfi-&gt;fn_desc.data_base_addr;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 retval =3D synaptics_rmi4_i2c_block_read(pdata,=
 data_base_addr, values,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 finger_registers);<br>
@@ -350,7 +350,7 @@ static int synpatics_rmi4_touchpad_report(struct synapt=
ics_rmi4_data *pdata,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 data_reg_blk_size =3D rfi-&gt;size_of_data_regi=
ster_block;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (finger =3D 0; finger &lt; fingers_supporte=
d; finger++) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* determine which =
data byte the finger status is in */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D finger/4;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D finger / 4;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* bit shift to get=
 finger&#39;s status */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 finger_shift=C2=A0 =
=C2=A0 =3D (finger % 4) * 2;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 finger_status=C2=A0=
 =C2=A0=3D (values[reg] &gt;&gt; finger_shift) &amp; 3;<br>
@@ -566,7 +566,7 @@ static int synpatics_rmi4_touchpad_detect(struct synapt=
ics_rmi4_data *pdata,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pdata-&gt;fingers_supported =3D rfi-&gt;num_of_=
data_points;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Need to get interrupt info for handling inte=
rrupts */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rfi-&gt;index_to_intr_reg =3D (interruptcount +=
 7)/8;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rfi-&gt;index_to_intr_reg =3D (interruptcount +=
 7) / 8;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rfi-&gt;index_to_intr_reg !=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfi-&gt;index_to_in=
tr_reg -=3D 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
--<br>
1.9.1<br>
<br>
</blockquote></div>

--001a113d4a28c74622052d8ddb17--

