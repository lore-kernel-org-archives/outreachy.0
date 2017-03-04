X-GM-THRID: 6393343309495926784
X-Received: by 10.157.6.80 with SMTP id 74mr4567036otn.5.1488694533204;
        Sat, 04 Mar 2017 22:15:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.40.140 with SMTP id h134ls1697336ith.5.gmail; Sat, 04 Mar
 2017 22:15:32 -0800 (PST)
X-Received: by 10.99.188.2 with SMTP id q2mr4623787pge.36.1488694532418;
        Sat, 04 Mar 2017 22:15:32 -0800 (PST)
Received: by 10.202.94.136 with SMTP id s130msoib;
        Sat, 4 Mar 2017 05:57:41 -0800 (PST)
X-Received: by 10.157.51.38 with SMTP id f35mr2999655otc.84.1488635860868;
        Sat, 04 Mar 2017 05:57:40 -0800 (PST)
Return-Path: <pranjas@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id f187si1808417ywc.0.2017.03.04.05.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 05:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of pranjas@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of pranjas@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=pranjas@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id n141so10017720qke.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 05:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=u8rjCZMNJ6ASwo9sY0jOC6O/YEWuY9LWl7LhUf4/RWU=;
        b=cBbJdjkXerDk9U6OGRkqwHH6XS/HZdFXE5fsF2zQofvqecdprikmdNwblUmXFPF9DP
         RO8vUMPk98EBQAGBMwxjH/TD3L86dysm0rGWtOkaXQ9JKvmVl9lv8LROhXroxyNQS/ug
         SdRsy85HyYVud0Ek2p8/vukMEqb6rX2hs+Jo8DoeD9QDEOasWtgCqG/sgjKQXyuhU62j
         mNtgsRmeZlAEsZqt3aVe5PH9JbfIRHk7o2fG9zQVrv2CFO2l+Drmbav2q6CPncXnqB5V
         tY8q8gkN9Xxo9gl5mkeA92PEVIokfUTLgOiW/3JHGkOQHU4C8Myt9sUo9cK5Vtal/hRS
         ivTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=u8rjCZMNJ6ASwo9sY0jOC6O/YEWuY9LWl7LhUf4/RWU=;
        b=EOSyP7p3UDhy9QUujK+8rT7zN6MYEs170k4rlKFl5CrPtwSvY/3Xa8R+c6CURHQLGK
         E80lQh6wmTQANcqZbwoJqne0vuUa8lxITDFQG0cR5jgBsYvEi8vQXTiN2ct5MLA6cyv4
         F9Elnf9umfIj0/PDPqz7KEa3OhKbEm4F3GoXLSqmovK9ciYG0A5D0E6zmkbyKAug0I+2
         NkpL2CR0We8h/BNvlmyUzeaQxQ+sjdPJmdlcf0TVFWmBEp+Tc8pHCj1G/F3v2Y0dL8WB
         r8q/M0p0iWg27du69TJ2kA0CRaWAbsP5Pv72iiLO22L/bzUgOI7AFrKenGZk4d9OXvV+
         mAKQ==
X-Gm-Message-State: AMke39kVDVYpSd/cUGJpWVDHUFzeMLUyQHf6AejSUeHrtHw2BbJdKpJB9Ph7fpV6lVpkPleJd03lbVQjTzbugw==
X-Received: by 10.200.46.91 with SMTP id s27mr8437083qta.278.1488635860579;
 Sat, 04 Mar 2017 05:57:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.20.33 with HTTP; Sat, 4 Mar 2017 05:57:40 -0800 (PST)
In-Reply-To: <20170303183707.14830-3-arushisinghal19971997@gmail.com>
References: <20170303183707.14830-1-arushisinghal19971997@gmail.com> <20170303183707.14830-3-arushisinghal19971997@gmail.com>
From: Pranay Srivastava <pranjas@gmail.com>
Date: Sat, 4 Mar 2017 19:27:40 +0530
Message-ID: <CA+aCy1FvjQ-fdYvHaabbQjetuod6r7UMRx-pMnz3PA9YN5VJow@mail.gmail.com>
Subject: Re: [PATCH 2/6] staging: speakup: simple_strtoul is replaced with kstrtoul
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: "w.d.hubbs@gmail.com" <w.d.hubbs@gmail.com>, 
	"devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, "kirk@reisers.ca" <kirk@reisers.ca>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"speakup@linux-speakup.org" <speakup@linux-speakup.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"samuel.thibault@ens-lyon.org" <samuel.thibault@ens-lyon.org>, 
	"chris@the-brannons.com" <chris@the-brannons.com>
Content-Type: multipart/alternative; boundary=001a113f1840ab7c300549e80b1b

--001a113f1840ab7c300549e80b1b
Content-Type: text/plain; charset=UTF-8

Hey Arushi,

On Saturday, March 4, 2017, Arushi Singhal <arushisinghal19971997@gmail.com>
wrote:
> This patch fixes "simple_strtoul is obsolete, use kstrtoul instead"
> warning.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c    | 4 ++--
>  drivers/staging/speakup/main.c        | 2 +-

I guess a similar patch was NAKed earlier this week. Can you check if
you are doing this differently.

>  drivers/staging/speakup/varhandlers.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c
b/drivers/staging/speakup/kobjects.c
> index edde9e68779e..a82698c66568 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -152,7 +152,7 @@ static ssize_t chars_chartab_store(struct kobject
*kobj,
>                         continue;
>                 }
>
> -               index = simple_strtoul(cp, &temp, 10);
> +               index = kstrtoul(cp, &temp, 10);
>                 if (index > 255) {
>                         rejected++;
>                         cp = linefeed + 1;
> @@ -785,7 +785,7 @@ static ssize_t message_store_helper(const char *buf,
size_t count,
>                         continue;
>                 }
>
> -               index = simple_strtoul(cp, &temp, 10);
> +               index = kstrtoul(cp, &temp, 10);
>
>                 while ((temp < linefeed) && (*temp == ' ' || *temp ==
'\t'))
>                         temp++;
> diff --git a/drivers/staging/speakup/main.c
b/drivers/staging/speakup/main.c
> index 17df20ec94be..b43e2e156602 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -1945,7 +1945,7 @@ static int handle_goto(struct vc_data *vc, u_char
type, u_char ch, u_short key)
>                 return 1;
>         }
>
> -       goto_pos = simple_strtoul(goto_buf, &cp, 10);
> +       goto_pos = kstrtoul(goto_buf, &cp, 10);
>
>         if (*cp == 'x') {
>                 if (*goto_buf < '0')
> diff --git a/drivers/staging/speakup/varhandlers.c
b/drivers/staging/speakup/varhandlers.c
> index cc984196020f..5107533bb45a 100644
> --- a/drivers/staging/speakup/varhandlers.c
> +++ b/drivers/staging/speakup/varhandlers.c
> @@ -325,7 +325,7 @@ char *spk_s2uchar(char *start, char *dest)
>  {
>         int val;
>
> -       val = simple_strtoul(skip_spaces(start), &start, 10);
> +       val = kstrtoul(skip_spaces(start), &start, 10);
>         if (*start == ',')
>                 start++;
>         *dest = (u_char)val;
> --
> 2.11.0
>
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
>

-- 
        ---P.K.S

--001a113f1840ab7c300549e80b1b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Arushi,<br><br>On Saturday, March 4, 2017, Arushi Singhal &lt;<a href=
=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal19971997@gmail.com=
</a>&gt; wrote:<br>&gt; This patch fixes &quot;simple_strtoul is obsolete, =
use kstrtoul instead&quot;<br>&gt; warning.<br>&gt;<br>&gt; Signed-off-by: =
Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">arush=
isinghal19971997@gmail.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0drivers/stagin=
g/speakup/kobjects.c=C2=A0 =C2=A0 | 4 ++--<br>&gt; =C2=A0drivers/staging/sp=
eakup/main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br><br>I guess a similar pat=
ch was NAKed earlier this week. Can you check if<br>you are doing this diff=
erently.<br><br>&gt; =C2=A0drivers/staging/speakup/varhandlers.c | 2 +-<br>=
&gt; =C2=A03 files changed, 4 insertions(+), 4 deletions(-)<br>&gt;<br>&gt;=
 diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/=
kobjects.c<br>&gt; index edde9e68779e..a82698c66568 100644<br>&gt; --- a/dr=
ivers/staging/speakup/kobjects.c<br>&gt; +++ b/drivers/staging/speakup/kobj=
ects.c<br>&gt; @@ -152,7 +152,7 @@ static ssize_t chars_chartab_store(struc=
t kobject *kobj,<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index =3D simple_strtoul(cp, &amp;temp, 1=
0);<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index =
=3D kstrtoul(cp, &amp;temp, 10);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 if (index &gt; 255) {<br>&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rejected++;<=
br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 cp =3D linefeed + 1;<br>&gt; @@ -785,7 +785,7 @@ static s=
size_t message_store_helper(const char *buf, size_t count,<br>&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 continue;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>&gt;<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0index =3D simple_strtoul(cp, &amp;temp, 10);<br>&gt; +=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0index =3D kstrtoul(cp, &amp;temp, 10)=
;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 w=
hile ((temp &lt; linefeed) &amp;&amp; (*temp =3D=3D &#39; &#39; || *temp =
=3D=3D &#39;\t&#39;))<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp++;<br>&gt; diff --git a/drivers=
/staging/speakup/main.c b/drivers/staging/speakup/main.c<br>&gt; index 17df=
20ec94be..b43e2e156602 100644<br>&gt; --- a/drivers/staging/speakup/main.c<=
br>&gt; +++ b/drivers/staging/speakup/main.c<br>&gt; @@ -1945,7 +1945,7 @@ =
static int handle_goto(struct vc_data *vc, u_char type, u_char ch, u_short =
key)<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return=
 1;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>&gt;<br>&gt; -=C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto_pos =3D simple_strtoul(goto_buf, &amp;cp, 10);<br>&gt; +=
=C2=A0 =C2=A0 =C2=A0 =C2=A0goto_pos =3D kstrtoul(goto_buf, &amp;cp, 10);<br=
>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (*cp =3D=3D &#39;x&#39;) {<br>=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (*goto_buf =
&lt; &#39;0&#39;)<br>&gt; diff --git a/drivers/staging/speakup/varhandlers.=
c b/drivers/staging/speakup/varhandlers.c<br>&gt; index cc984196020f..51075=
33bb45a 100644<br>&gt; --- a/drivers/staging/speakup/varhandlers.c<br>&gt; =
+++ b/drivers/staging/speakup/varhandlers.c<br>&gt; @@ -325,7 +325,7 @@ cha=
r *spk_s2uchar(char *start, char *dest)<br>&gt; =C2=A0{<br>&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 int val;<br>&gt;<br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0val =
=3D simple_strtoul(skip_spaces(start), &amp;start, 10);<br>&gt; +=C2=A0 =C2=
=A0 =C2=A0 =C2=A0val =3D kstrtoul(skip_spaces(start), &amp;start, 10);<br>&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (*start =3D=3D &#39;,&#39;)<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 start++;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 *dest =3D (u_char)val;<br>&gt; --<br>&gt; 2.11.0<b=
r>&gt;<br>&gt; _______________________________________________<br>&gt; deve=
l mailing list<br>&gt; <a href=3D"mailto:devel@linuxdriverproject.org">deve=
l@linuxdriverproject.org</a><br>&gt; <a href=3D"http://driverdev.linuxdrive=
rproject.org/mailman/listinfo/driverdev-devel">http://driverdev.linuxdriver=
project.org/mailman/listinfo/driverdev-devel</a><br>&gt;<br><br>-- <br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ---P.K.S<br><br>

--001a113f1840ab7c300549e80b1b--

