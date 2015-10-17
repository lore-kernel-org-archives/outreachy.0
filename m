X-GM-THRID: 6206327457482539008
X-Received: by 10.180.210.71 with SMTP id ms7mr2380701wic.4.1445080448746;
        Sat, 17 Oct 2015 04:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.147 with SMTP id 19ls417442lfp.5.gmail; Sat, 17 Oct 2015
 04:14:05 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr4735282lbb.19.1445080445638;
        Sat, 17 Oct 2015 04:14:05 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id w4si353592wiz.0.2015.10.17.04.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 04:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so42230060wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 04:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=9WnNOOZ06xPxL3sDJYpuXoICQqlbL1mFliOJm/8+BKY=;
        b=rSvS8hTu6qRVyWrL6puCS8pRkJrs6rB8gN1uNg96BbV+a9/WzhJmkxtu0swJRsA2n9
         6T64O1Td6lFGX5li0DhPnonI/d+X8IjRouigEuO8GOTfd589D7neHQu++kExYUHu7U0K
         nHIso0t+JHSgU/ob4WU3V8urP7Rx8bZ6g5XdioxddyD9Mk2bHQ6cTcDbRoUj7rWfpH0g
         jEgB2+F15fzW1LUWYehQDal6rxiedqX05oJywnpWDOuJzQOd4NeJe1xn3/JW141zgzIC
         dPEpKjdr9iQuR7oygHGiHQNPheeyMU9u38wJ089WUJs8OQw1WE3vrewVBLTfpU6woXjW
         /f6w==
MIME-Version: 1.0
X-Received: by 10.194.80.197 with SMTP id t5mr21762862wjx.143.1445080445491;
 Sat, 17 Oct 2015 04:14:05 -0700 (PDT)
Received: by 10.28.159.133 with HTTP; Sat, 17 Oct 2015 04:14:05 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510171244100.2056@localhost6.localdomain6>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
	<20151017050641.GA3052@kroah.com>
	<CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
	<alpine.DEB.2.02.1510171244100.2056@localhost6.localdomain6>
Date: Sat, 17 Oct 2015 14:14:05 +0300
Message-ID: <CAEAX3JrhJ0E0HLVOrh8nYLaC13reF31mjUSuXCptCC7NbgjhBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bea3a24a0229105224b0269

--047d7bea3a24a0229105224b0269
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, it really does not compile, I'm sorry for mail traffic. Very thanks
for helps :)

2015-10-17 13:44 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Sat, 17 Oct 2015, Aybuke Ozdemir wrote:
>
> > Hi Greg,
> >
> > I used this command "make drivers/staging/sm750fb/" before applying the
> > patch.
> > I sent that I faced no problems. :( command output:
> >
> > aybuke@kripton:~/git/kernels/staging$ make drivers/staging/sm750fb/
> >   CHK     include/config/kernel.release
> >   CHK     include/generated/uapi/linux/version.h
> >   CHK     include/generated/utsrelease.h
> >   CHK     include/generated/bounds.h
> >   CHK     include/generated/timeconst.h
> >   CHK     include/generated/asm-offsets.h
> >   CALL    scripts/checksyscalls.sh
> > aybuke@kripton:~/git/kernels/staging$
>
> It doesn't look like it compiled anything.  You would have a CC command i=
f
> it had. Do you have a .o file for the .c file that you changed?
>
> julia
>
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAEAX3JrU%3D56tg94bo1w6g
> > HNBr9nEtcgRauXfa%2BGFxa8r477hmw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>



--=20
Ayb=C3=BCke =C3=96zdemir
https://about.me/aybukeozdemir

--047d7bea3a24a0229105224b0269
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D"">Yes</span><span class=3D"">, it really</span> <span class=3D"">does n=
ot compile, </span></span><span id=3D"result_box" class=3D"" lang=3D"en"><s=
pan class=3D"">I&#39;m sorry</span> <span class=3D"">for</span> <span class=
=3D"">mail</span> <span class=3D"">traffic. Very thanks for helps :)<br></s=
pan></span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2015-10-17 13:44 GMT+03:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">On Sat, 17 Oct 2015, Aybuke Ozdemir wrote:<br>
<br>
&gt; Hi Greg,<br>
&gt;<br>
&gt; I used this command &quot;make drivers/staging/sm750fb/&quot; before a=
pplying the<br>
&gt; patch.<br>
&gt; I sent that I faced no problems. :( command output:<br>
&gt;<br>
&gt; aybuke@kripton:~/git/kernels/staging$ make drivers/staging/sm750fb/<br=
>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/config/kernel.release<br>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/uapi/linux/versio=
n.h<br>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/utsrelease.h<br>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/bounds.h<br>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/timeconst.h<br>
&gt; =C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 include/generated/asm-offsets.h<br>
&gt; =C2=A0 CALL=C2=A0=C2=A0=C2=A0 scripts/checksyscalls.sh<br>
&gt; aybuke@kripton:~/git/kernels/staging$<br>
<br>
</div></div>It doesn&#39;t look like it compiled anything.=C2=A0 You would =
have a CC command if<br>
it had. Do you have a .o file for the .c file that you changed?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAEAX3JrU%3D56tg94bo1w6g" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CAEAX=
3JrU%3D56tg94bo1w6g</a><br>
&gt; HNBr9nEtcgRauXfa%2BGFxa8r477hmw%<a href=3D"http://40mail.gmail.com" re=
l=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt; </div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Ayb=C3=
=BCke =C3=96zdemir<br></div><a href=3D"https://about.me/aybukeozdemir" targ=
et=3D"_blank">https://about.me/aybukeozdemir</a> <br></div></div></div></di=
v>
</div>

--047d7bea3a24a0229105224b0269--

