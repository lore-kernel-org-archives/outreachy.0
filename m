X-GM-THRID: 6205668721559601152
X-Received: by 10.50.82.98 with SMTP id h2mr6498593igy.1.1445035985630;
        Fri, 16 Oct 2015 15:53:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.67 with SMTP id m64ls921111iom.94.gmail; Fri, 16 Oct
 2015 15:53:05 -0700 (PDT)
X-Received: by 10.66.220.229 with SMTP id pz5mr11687354pac.17.1445035985044;
        Fri, 16 Oct 2015 15:53:05 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id mh4si402915igb.0.2015.10.16.15.53.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 15:53:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22d.google.com with SMTP id l186so139259140iof.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 15:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Jv7mNxFwSqjpihLGN4ghqyA6Ng20nl9Y1CtfaxUb6Y4=;
        b=mFDVk4DuEJF49jywDkxOO614XXfIiNi1aHpvqFsbRpnSOjFPYldDKlAoxvsQ2shezs
         j2rnqEx4ETTBwbRCd87UiZghPdjZoQubHUBkWD0WFYq17HiehXv1EGjS/gS8PE7gDdD0
         orEu1Zb5tLZsoZy5AmS3JPdFHhpLs4hQzJIJaTft4vg/2jqgUwO18X4kx16INmWc8uLL
         5wR6ja74lbBAlRo/0rfC4IVoKXuzYXwoMquagiM1E5sNYLXDCubozabhOy9lpTqXS3q/
         LAj476riTgcIubSWo8BqUE3Ajf9nX4xv2U1XLwYsP90BLcndzhZeZ5W/ppfVj3KdYb4l
         09bQ==
MIME-Version: 1.0
X-Received: by 10.107.131.97 with SMTP id f94mr362556iod.100.1445035984919;
 Fri, 16 Oct 2015 15:53:04 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Fri, 16 Oct 2015 15:53:04 -0700 (PDT)
In-Reply-To: <30046181.iodvR1OlJa@wuerfel>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com>
	<30046181.iodvR1OlJa@wuerfel>
Date: Fri, 16 Oct 2015 15:53:04 -0700
Message-ID: <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] staging: ft1000: replace
 timeval with ktime_t
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ecac891a65a052240a8bf

--001a113ecac891a65a052240a8bf
Content-Type: text/plain; charset=UTF-8

Forgot to do reply-all earlier.

Resending.

I considered using the ktime_get_seconds() earlier.
However, I'm not convinced that the driver actually needs time in seconds.
It would be hard to guess given that I'm not actually running this on a
platform.
So I used ktime_get() instead so that when the driver gets cleaned up
later, it can be updated to use correct time granularity.

Given that sometimes they could end up calculating time from epoch seems to
hint that there is more cleanup required on the driver.

Do you think this is reasonable?

Thanks,
Deepa

On Fri, Oct 16, 2015 at 3:14 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Wednesday 14 October 2015 17:43:00 Deepa Dinamani wrote:
> > Replace use of struct timeval with ktime_t to calculate connection
> > duration. This avoids y2038 issues. Use ktime_get monotonic clock
> > instead of gettimeofday realtime clock to guard against negative
> > durations. Fix pr_debug to use matching %ul instead of converting
> > value to int, so that debug does not provide misleading information.
> > Fix connection time conversion to use interface type unsigned long
> > instead of assuming it maps to u32.
> >
> > Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
>
> The change looks correct, and your changelog also looks reasonable.
>
> However, I notice that the code only ever looks at the second
> portion of the time stamp. Therefore it would be nicer to use
> ktime_get_seconds() to avoid the expensive ktime_divns(), and to
> slightly simplify the code further.
>
> You can use either time64_t or a shorter type like 'u32' or 'long'
> to store monotonic seconds, so pick one of them and explain why
> you have that one.
>
>         Arnd
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/30046181.iodvR1OlJa%40wuerfel
> .
> For more options, visit https://groups.google.com/d/optout.
>

--001a113ecac891a65a052240a8bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Forgot to do reply-all =
earlier.<br><br></div><div>Resending.</div><div><br>I considered using the =
ktime_get_seconds() earlier.<br></div>However, I&#39;m not convinced that t=
he driver actually needs time in seconds.<br></div>It would be hard to gues=
s given that I&#39;m not actually running this on a platform.<br></div>So I=
 used ktime_get() instead so that when the driver gets cleaned up later, it=
 can be updated to use correct time granularity.<br><br></div>Given
 that sometimes they could end up calculating time from epoch seems to=20
hint that there is more cleanup required on the driver.<br><br></div>Do you=
 think this is reasonable?<br><br></div>Thanks,<br></div>Deepa<div class=3D=
""><div id=3D":1be" class=3D"" tabindex=3D"0"><img class=3D"" src=3D"https:=
//ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Oct 16, 20=
15 at 3:14 PM, Arnd Bergmann <span dir=3D"ltr">&lt;<a href=3D"mailto:arnd@a=
rndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><span class=3D"">On Wednesday 14 October 2015 17:43:0=
0 Deepa Dinamani wrote:<br>
&gt; Replace use of struct timeval with ktime_t to calculate connection<br>
&gt; duration. This avoids y2038 issues. Use ktime_get monotonic clock<br>
&gt; instead of gettimeofday realtime clock to guard against negative<br>
&gt; durations. Fix pr_debug to use matching %ul instead of converting<br>
&gt; value to int, so that debug does not provide misleading information.<b=
r>
&gt; Fix connection time conversion to use interface type unsigned long<br>
&gt; instead of assuming it maps to u32.<br>
&gt;<br>
&gt; Signed-off-by: Deepa Dinamani &lt;<a href=3D"mailto:deepa.kernel@gmail=
.com">deepa.kernel@gmail.com</a>&gt;<br>
<br>
</span>The change looks correct, and your changelog also looks reasonable.<=
br>
<br>
However, I notice that the code only ever looks at the second<br>
portion of the time stamp. Therefore it would be nicer to use<br>
ktime_get_seconds() to avoid the expensive ktime_divns(), and to<br>
slightly simplify the code further.<br>
<br>
You can use either time64_t or a shorter type like &#39;u32&#39; or &#39;lo=
ng&#39;<br>
to store monotonic seconds, so pick one of them and explain why<br>
you have that one.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
<br>
--<br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">=
outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/30046181.iodvR1OlJa%40wuerfel" rel=3D"noreferre=
r" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/300=
46181.iodvR1OlJa%40wuerfel</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</font></span></blockquote></div><br></div>

--001a113ecac891a65a052240a8bf--

