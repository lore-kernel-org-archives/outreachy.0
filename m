X-GM-THRID: 9366486908928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c1a283e7c02deb22
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.125.67 with SMTP id mo3mr12068807lbb.6.1426930533859;
        Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.200 with SMTP id d8ls300208laa.34.gmail; Sat, 21 Mar
 2015 02:35:33 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr12068803lbb.6.1426930533413;
        Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x22f.google.com (mail-la0-x22f.google.com. [2a00:1450:4010:c03::22f])
        by gmr-mx.google.com with ESMTPS id wz2si552678lbb.0.2015.03.21.02.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22f as permitted sender) client-ip=2a00:1450:4010:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22f.google.com with SMTP id g8so103158546lag.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MKc79d5Z8hjqXoxYfIOuwRpNmMeJLFG0aUq61SqhoRE=;
        b=QwVdITg66ygVJMMrbeqEuUi43BjHNGSbgCZVkwD20tp8tC4DGj8vW5DW1sLDCvmcS8
         ub0Q/d7v3aw9ShEyyjFGuvPq6aKLSb5UEbeSikbuKyJs6HzCjWBno98Han6zH+m6Z8Qk
         AHyjByF+YXmqB7OXPZG+hWcWjZQ6PKiQcLkMLM38MR178nzQMkFitlV4wct+aghl1Q6+
         ErWnJNC+QLP6x6aOosRS2616ovHGqX6Vx0ZRxKLyX87Ptn1v+KAut6f8Q9JfR7lc8REF
         OaUOEaqyBl0mOl0TEOV22gCZRpKIlCHA45JOb5HQGO1dkBNgIx3yOTwgMUIqaiyMsDuY
         1VFQ==
MIME-Version: 1.0
X-Received: by 10.112.126.199 with SMTP id na7mr24182559lbb.114.1426930533335;
 Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Sat, 21 Mar 2015 02:35:33 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503210955550.2010@localhost6.localdomain6>
References: <20150321082830.GA20169@akanksha>
	<alpine.DEB.2.02.1503210955550.2010@localhost6.localdomain6>
Date: Sat, 21 Mar 2015 15:05:33 +0530
Message-ID: <CAHjTdYdzucO1B7gaB4U-J=xNVtQAHakwL7irOVgVw8rXhy7PbQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Fix incorrect type
 in assignment
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3776a8f0b340511c9271b

--001a11c3776a8f0b340511c9271b
Content-Type: text/plain; charset=UTF-8

> -             cb[(chip->ci)++] = cpu_to_le32(val);

> > +             cb[(chip->ci)++] = val;
>

For this case, we don't need to cast u32 to __le32 as cb is
declared as u32 *


> > -                     sgb[(chip->sgi)++] = cpu_to_le64(val);
> > +                     sgb[(chip->sgi)++] = val;
>

For this case,  we don't need to cast u64 to __le64 as sgb
is declared as u64*

These were detected with sparse.
This is my understanding, please offer suggestions if that is
not the case :)

--001a11c3776a8f0b340511c9271b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
cb[(chip-&gt;ci)++] =3D cpu_to_le32(val);<br><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb=
"><div class=3D"h5">
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cb[(chip-&gt;ci)++] =
=3D val;<br></div></div></blockquote><div>=C2=A0</div><div>For this case, w=
e don&#39;t need to cast u32 to __le32 as cb is<br>declared as u32 *<br></d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><d=
iv class=3D"h5">&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0sgb[(chip-&gt;sgi)++] =3D cpu_to_le64(val);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0sgb[(chip-&gt;sgi)++] =3D val;<br></div></div></blockquote><div><br>=
For this case,=C2=A0 we don&#39;t need to cast u64 to __le64 as sgb<br>is d=
eclared as u64*<br><br></div><div>These were detected with sparse.<br></div=
><div>This is my understanding, please offer suggestions if that is<br></di=
v><div>not the case :)<br></div></div></div></div>

--001a11c3776a8f0b340511c9271b--

