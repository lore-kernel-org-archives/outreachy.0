X-GM-THRID: 6729723019264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2163b9d8124f404e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.53.137 with SMTP id b9mr10220530pdp.4.1425566814179;
        Thu, 05 Mar 2015 06:46:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.77 with SMTP id b74ls240241ioj.35.gmail; Thu, 05 Mar
 2015 06:46:53 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr32951496igr.7.1425566813906;
        Thu, 05 Mar 2015 06:46:53 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-vc0-x22d.google.com (mail-vc0-x22d.google.com. [2607:f8b0:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id yn1si160813vdc.0.2015.03.05.06.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 06:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::22d as permitted sender) client-ip=2607:f8b0:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::22d as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vc0-x22d.google.com with SMTP id hy10so8122578vcb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 06:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QENUYBEKjb0jCbF2QxjNh7aSV/6uxo5kbHd7iXjyFiA=;
        b=scvYw4xXP7T62a/KDSYmiZ5TQ/B2MtrU6pZh4n6SEUlzwCACVnVhyHqj1M0xDF+FfY
         U/y5mqwrg5qODeJ1UzZOoJLWFG7SvL75ODYwv3VRlshj7Idnd1FqSE7C2C3p5VtzEjTb
         lsTJKqgSXoFYUxYRyseBAcnDMoROXZl500SCHYGa6yNH1+pMegkWLc1vzUccMTd+KP+3
         ckvnMkSWgL2XbYAOU7+p51iUNOHLv8QH/r1QqUWyxb4Io8kvXA9p9wiZyWf6D68jH93D
         Czum4J9D0KcORUtNTCyBiikDV9I41feJwcZQQeFJRGXBKmBpWu40cji/NYr0/qEUbktx
         88FA==
MIME-Version: 1.0
X-Received: by 10.52.73.166 with SMTP id m6mr12898820vdv.13.1425566813771;
 Thu, 05 Mar 2015 06:46:53 -0800 (PST)
Received: by 10.52.102.232 with HTTP; Thu, 5 Mar 2015 06:46:53 -0800 (PST)
In-Reply-To: <CAOGyfZFPMd-2WePqGEZxo-Z2Z06rvZZxQKcaf6q_QoqbR_hFUg@mail.gmail.com>
References: <CAOGyfZFPMd-2WePqGEZxo-Z2Z06rvZZxQKcaf6q_QoqbR_hFUg@mail.gmail.com>
Date: Thu, 5 Mar 2015 20:16:53 +0530
Message-ID: <CANPzvBCpu7aL4xSscdp7vhUqdx32v6ndr1xX9CFmMOf-h=a=jw@mail.gmail.com>
Subject: Re: Regarding patches for Linux Kernel
From: Somya Anand <somyaanand214@gmail.com>
To: khushboo surana <khushboo9293@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=bcaec5015fa589df6605108ba3bd

--bcaec5015fa589df6605108ba3bd
Content-Type: text/plain; charset=UTF-8

Hello Khushboo,

Welcome to Linux kernel development. I guess you are new to this, so I
encourage you to try out sending some of the cleanup patches first so that
you get the idea of the code an how this whole procedure works. You must
have read the instruction for submitting your first patch on outreachy
page. For further help, you can see this :
www.youtube.com/watch?v=LLBrBBImJt4
And for coccinelle script, this link might help you:
www.youtube.com/watch?v=buZrNd6XkEw

Further, For full dynamic ticks project, I am still reading, For the better
feel of this project you might see:
www.youtube.com/watch?v=G3jHP9kNjwc

For general reading, I suggest you to read the book "Linux kernel
development by Robert Love".

I have CCed this mail to outreachy mailing list as well, so that you can
get more technical advice from the mentors. If any doubt, I am happy to
help you.

--
Cheers,
Somya

On Thu, Mar 5, 2015 at 7:38 PM, khushboo surana <khushboo9293@gmail.com>
wrote:

> Hello Somya,
>
> I am Khushboo, an aspiring OPW applicant. I recently subscribed to the
> Linux Kernel mailing list and saw a few patches submitted by you. I am
> interested in one of the Linux Kernel projects: Full Dynamic Ticks and want
> to start contributing, but I am a little lost about where to start from.
> Can you please tell me, where do you pick up the tasks to work on. If the
> patches that u have worked on are from the task list given on the project
> pages or has your mentor given you a list of bugs or if there is a bug page
> for newbies. I would really appreciate if you can help me here.
>
> Thanks
> Khushboo
>
>
>

--bcaec5015fa589df6605108ba3bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hello Khushboo,</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Welcome to Linux kern=
el development. I guess you are new to this, so I encourage you to try out =
sending some of the cleanup patches first so that you get the idea of the c=
ode an how this whole procedure works. You must have read the instruction f=
or submitting your first patch on outreachy page. For further help, you can=
 see this :</div><div class=3D"gmail_extra"><a href=3D"http://www.youtube.c=
om/watch?v=3DLLBrBBImJt4">www.youtube.com/watch?v=3DLLBrBBImJt4</a><br></di=
v><div class=3D"gmail_extra">And for coccinelle script, this link might hel=
p you:</div><div class=3D"gmail_extra"><a href=3D"http://www.youtube.com/wa=
tch?v=3DbuZrNd6XkEw">www.youtube.com/watch?v=3DbuZrNd6XkEw</a><br></div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Further, For f=
ull dynamic ticks project, I am still reading, For the better feel of this =
project you might see:</div><div class=3D"gmail_extra"><a href=3D"http://ww=
w.youtube.com/watch?v=3DG3jHP9kNjwc">www.youtube.com/watch?v=3DG3jHP9kNjwc<=
/a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">For general reading, I suggest you to read the book &quot;Linux kernel de=
velopment by Robert Love&quot;.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">I have CCed this mail to outreachy mailing list a=
s well, so that you can get more technical advice from the mentors. If any =
doubt, I am happy to help you.</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">--</div><div class=3D"gmail_extra">Cheers,</div><d=
iv class=3D"gmail_extra">Somya</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra"><div class=3D"gmail_quote">On Thu, Mar 5, 2015 at =
7:38 PM, khushboo surana <span dir=3D"ltr">&lt;<a href=3D"mailto:khushboo92=
93@gmail.com" target=3D"_blank">khushboo9293@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hello Somya,<br><br><=
/div>I am Khushboo, an aspiring OPW applicant. I recently subscribed to the=
 Linux Kernel mailing list and saw a few patches submitted by you. I am int=
erested in one of the Linux Kernel projects: Full Dynamic Ticks and want to=
 start contributing, but I am a little lost about where to start from. Can =
you please tell me, where do you pick up the tasks to work on. If the patch=
es that u have worked on are from the task list given on the project pages =
or has your mentor given you a list of bugs or if there is a bug page for n=
ewbies. I would really appreciate if you can help me here.<br><br></div>Tha=
nks<span class=3D""><font color=3D"#888888"><br></font></span></div><span c=
lass=3D""><font color=3D"#888888">Khushboo<br><div><div><br>=C2=A0<br></div=
></div></font></span></div>
</blockquote></div><br></div></div>

--bcaec5015fa589df6605108ba3bd--

