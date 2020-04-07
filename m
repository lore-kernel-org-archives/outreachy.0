X-GM-THRID: 6811040563999014912
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr762529vke.11.1586253956191;
        Tue, 07 Apr 2020 03:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls171519vke.6.gmail; Tue, 07 Apr
 2020 03:05:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypLqfMuT97KqhM9lxdaKz/6Fo4SvyHi3XptQHx1++b55FxRN7a2I/eA7Ku32/pcr64wPajWk
X-Received: by 2002:a1f:45d8:: with SMTP id s207mr769881vka.33.1586253954883;
        Tue, 07 Apr 2020 03:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586253954; cv=none;
        d=google.com; s=arc-20160816;
        b=LuaLVvpSvaR5TH7JjtIWvthzw4E+hDhG7zfC4Imvzye2gXwzSXI4rhY09sN3YLOswR
         98O6JocIgZ4MOLSHDCxy+Ny6q5HeMvgmUuJMo4NzFVY8BwzF40ehZx+C7s5ZRlz0hGlD
         VC+2ke9hSkWOxMUBDacE4RH8A7vCPqFQtzOwRjLEUIx4iZmt/e+rrXWiiHHQ35en7eJN
         V6g9RKbYsePSrxiwe4EdMqhg0ejc4akIMvt1zR0aBnTn0YIVKGAAc9fQeWScA+1Kw90V
         +ACq5YXNouk6CaKCffx9OZAduQd2fuXG3U7S8OiwueOKr3EL55pcEruWI2VasLMrmg5G
         lUDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hqpbFfeSwLd2FGWdtWY3jPzaOdmvrSv9kYGRN1GaNCg=;
        b=xJvjzABbygFLpcBMQ9+/MxR+F81uFXKVBov5DNuchBxmvr8KfW4mnv4uG60Y8SOZD1
         mwqhRToGsqghkRe7JIe0hseGlhUxLNbAM9pTQnoV4iPc0IZwkjWzGSac9YwiLy5TTqbw
         7NOtgFCuM8S/Gy4Cn+cX6FmQz24g/vGVcmj/47MirZYUS+EGPuKe0SfC9spGF0E/1KOF
         xTI0YRWwr17WfZ5ceCo94mnF7I5Twhq8oMW6hZAUJnSW1UjwqMrqMfBNvOFY0ZmN1ErZ
         96Q0UC/UbxhrtexKGuOXzohcPnaXgOHma37uY9/38x4TfOneLUqFu5I9zk6k8ynbtCl2
         Kpjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=h8xHhWza;
       spf=neutral (google.com: 2607:f8b0:4864:20::1030 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=QUARANTINE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id p7si164296vsf.1.2020.04.07.03.05.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 03:05:54 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1030 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=h8xHhWza;
       spf=neutral (google.com: 2607:f8b0:4864:20::1030 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=QUARANTINE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1030.google.com with SMTP id q16so1020167pje.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Apr 2020 03:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hqpbFfeSwLd2FGWdtWY3jPzaOdmvrSv9kYGRN1GaNCg=;
        b=h8xHhWza1zzIKHIOgUF5eE771g1yvl63ejv6XfQFB2aSBr2N1VQjwwm5AXccy6ZdVj
         21Lm1gM8CtalPv3oxCNPBs2Ztl5wngASIv6eWfOF64i74fFHzhMiUkAyE4tuH4XCmcoh
         9grvOcrbl652X8pvvEZNf3X7iuUJxnDOx6PR2IQJXYqwMDER7bBG1ONS2gb0KQIKuH4m
         Ig+Lio2rUapYD0jIYv6vhIKrcwyDaKrPx51Ih6YV1If/fdZAFgA+bk1SlxjWKMMaljqT
         X9+PZPToBmkGu+InD2tVWX3SHmf2ML0vrOYtmVmNNVDIUBRuhHVLTBtQuMpCIh/DaukX
         iOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hqpbFfeSwLd2FGWdtWY3jPzaOdmvrSv9kYGRN1GaNCg=;
        b=cZ4Ht139HtZGRSDk/MfgE2T6i/KbljAGvqxHPXhBA4d1Qi8QkTPSVMGrENaTYflpOQ
         dGaSjkXHhHb36pBRilwLc7VpScKSUGPdrI6ex5fVoiqHGNOOO1ozW8qYSLBuOiyBwqAv
         IDRPvO662Lt9kdCwqJb360UFyVs8xyPx5jjIJ981g1SXzRvCyOkTO6R6plvNqFw3tuv5
         QJusEDuSjAhU/vZtFCEXHGlAHwbsCANAwUTfZ7RWWDBZ92wz5EkSjh7sQkpOwsgclZN1
         qYP9GMXGQfASLWuM55FsemHyMZ7iJna1qZ/PAF/TByhKb82P0P8ekZmKaxSquyGPNAW5
         sEAw==
X-Gm-Message-State: AGi0PuYflSjYUawvZJqDhBxv2aTYmmCLeqXPFEgqgVzUMiDD7Wp9PrQ4
	pWCTYZWD2f905xw4eTy6UtznGxiCl6+SFywEkEZ1P1UEWHM=
X-Received: by 2002:a17:90a:a414:: with SMTP id y20mr1870734pjp.124.1586253953127;
 Tue, 07 Apr 2020 03:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com> <fbd90100d26c549bee00c5b42007dcb85e01f0ac.camel@gmail.com>
In-Reply-To: <fbd90100d26c549bee00c5b42007dcb85e01f0ac.camel@gmail.com>
From: KAAIRA GUPTA <kgupta@es.iitr.ac.in>
Date: Tue, 7 Apr 2020 15:35:41 +0530
Message-ID: <CADFBUUJU=PDx_z8yJwV9gkJarEH=i_NQ19EWDaQdtkqfDDzyrQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application deadline
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000006669ed05a2b087fe"

--0000000000006669ed05a2b087fe
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Apr, 2020, 13:18 Sam Muhammed, <jane.pnx9@gmail.com> wrote:

> On Fri, 2020-04-03 at 06:17 +0530, Vaishali Thakkar wrote:
> > On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> > <vthakkar@vaishalithakkar.in> wrote:
> > >
> > > Greeting Outreachy applicants,
> > >
> > > Thank you for all your contributions in the Linux Kernel. This is a
> > > reminder for you all that Outreachy's final application deadline is
> > > approaching on April 7, 2020 - 4pm UTC.
> > >
> > > Now is the time to record all your contributions and apply for the
> > > projects you're interested in. We would advise you to at least apply
> > > for 2 projects of your choice. And please do not wait to apply on the
> > > day of a deadline. You can always add more contributions until the
> > > deadline. Don't forget to add links to your patches while recording
> > > contributions on the website.
> >
> > Also, I forgot to add it here but as it says in the welcome message
> > please do not forget to add your project preferences in the
> > 'community-specific questions' section of the application, if you have
> > applied for more than one project.
> >
> > Thanks!
> >
> > > If you have any query, feel free to contact me and project mentors. We
> > > wish you all the best for your applications.
> > >
>
> Another important question and i'm looking forward for an answer please
> how can we DELETE a contribution??
>

There is an option for withdrawing the application right where you can edit
it. I think that should serve purpose


> Sam
> > > Have a nice day!
> > >
> > >
> > > Helen Koike and Vaishali Thakkar
> > > Outreachy Linux Kernel Co-coordinator
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/fbd90100d26c549bee00c5b42007dcb85e01f0ac.camel%40gmail.com
> .
>

--0000000000006669ed05a2b087fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 7 Apr, 2020, 13:18 Sam Muhammed, &lt;<a href=
=3D"mailto:jane.pnx9@gmail.com">jane.pnx9@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">On Fri, 2020-04-03 at 06:17 +0530, Vaishali=
 Thakkar wrote:<br>
&gt; On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar<br>
&gt; &lt;<a href=3D"mailto:vthakkar@vaishalithakkar.in" target=3D"_blank" r=
el=3D"noreferrer">vthakkar@vaishalithakkar.in</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Greeting Outreachy applicants,<br>
&gt; &gt;<br>
&gt; &gt; Thank you for all your contributions in the Linux Kernel. This is=
 a<br>
&gt; &gt; reminder for you all that Outreachy&#39;s final application deadl=
ine is<br>
&gt; &gt; approaching on April 7, 2020 - 4pm UTC.<br>
&gt; &gt;<br>
&gt; &gt; Now is the time to record all your contributions and apply for th=
e<br>
&gt; &gt; projects you&#39;re interested in. We would advise you to at leas=
t apply<br>
&gt; &gt; for 2 projects of your choice. And please do not wait to apply on=
 the<br>
&gt; &gt; day of a deadline. You can always add more contributions until th=
e<br>
&gt; &gt; deadline. Don&#39;t forget to add links to your patches while rec=
ording<br>
&gt; &gt; contributions on the website.<br>
&gt; <br>
&gt; Also, I forgot to add it here but as it says in the welcome message<br=
>
&gt; please do not forget to add your project preferences in the<br>
&gt; &#39;community-specific questions&#39; section of the application, if =
you have<br>
&gt; applied for more than one project.<br>
&gt; <br>
&gt; Thanks!<br>
&gt; <br>
&gt; &gt; If you have any query, feel free to contact me and project mentor=
s. We<br>
&gt; &gt; wish you all the best for your applications.<br>
&gt; &gt;<br>
<br>
Another important question and i&#39;m looking forward for an answer please=
<br>
how can we DELETE a contribution??<br></blockquote></div></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">There is an option for withdrawing the ap=
plication right where you can edit it. I think that should serve purpose</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<br>
Sam<br>
&gt; &gt; Have a nice day!<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Helen Koike and Vaishali Thakkar<br>
&gt; &gt; Outreachy Linux Kernel Co-coordinator<br>
&gt; <br>
<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/fbd90100d26c549bee00c5b42007dcb85e01f0ac.camel%=
40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups=
.google.com/d/msgid/outreachy-kernel/fbd90100d26c549bee00c5b42007dcb85e01f0=
ac.camel%40gmail.com</a>.<br>
</blockquote></div></div></div>

--0000000000006669ed05a2b087fe--

