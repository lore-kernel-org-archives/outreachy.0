X-GM-THRID: 6391984177458184192
Date: Tue, 28 Feb 2017 05:37:44 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <92210479-fe57-41c6-877e-c3ca67d45278@googlegroups.com>
In-Reply-To: <CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA@mail.gmail.com>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com>
 <c2f9d539-fe98-4541-b86c-f71555d44020@googlegroups.com> <alpine.DEB.2.20.1702280747380.2078@hadrien>
 <68311bc4-09a6-4baf-ab04-b0ce5916c4c9@googlegroups.com>
 <CAK-LDbKHYUe_Hs79ie52FHtLFZG4rGb8kbds5EaQb2kMUEMqKA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5928_275525629.1488289064667"
X-Google-Token: EKj61cUF6FSSdrRUqcM0
X-Google-IP: 117.211.102.14

------=_Part_5928_275525629.1488289064667
Content-Type: multipart/alternative; 
	boundary="----=_Part_5929_1291769837.1488289064667"

------=_Part_5929_1291769837.1488289064667
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> > ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > 
> ret.out 
> > 
> >   init_defs_builtins: /usr/lib64/coccinelle/standard.h 
> >   minus: parse error: 
> >   File "ret.cocci", line 10, column 0, charpos = 80 
> >   around = '', 
> >   whole content = 
>
> The file[ret.cocci] sent by you works perfectly fine for me without any 
> parsing 
> error. Are you sure there is nothing else in the same file [ret.cocci]? 
>
   
    Yes, nothing is there.

>
> Parsing error is shown at the line 10 and file has 9 lines. Also, in your 
> first mail you seemed to have something else as an error. [Exception 
> failure] 
>
> >  [varsha@varsha coccinelle]$ spatch --sp-file ret.cocci --no-includes 
> > ~/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c  > 
> ret.out 
> >  init_defs_builtins: /usr/lib64/coccinelle/standard.h 
> >  HANDLING: 
> > 
> /home/varsha/git/kernels/staging/drivers/staging/most/hdm-dim2/dim2_sysfs.c 
>
> If you have installed coccinelle from package manager then what is under 
> coccinelle directory? 

 
   Within /usr/lib64/coccinelle/
   I have the following files:
   ocaml  spatch  spatch.opt  standard.h  standard.iso

Have you cloned coccinelle code and have tried to 
> install it manually as well? 
>
>    No, I have not.      
  
   Thanks, 
    Varsha 

------=_Part_5929_1291769837.1488289064667
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;m=
argin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; ~/gi=
t/kernels/staging/drivers/<wbr>staging/most/hdm-dim2/dim2_<wbr>sysfs.c =C2=
=A0&gt; ret.out
<br>&gt;
<br>&gt; =C2=A0 init_defs_builtins: /usr/lib64/coccinelle/<wbr>standard.h
<br>&gt; =C2=A0 minus: parse error:
<br>&gt; =C2=A0 File &quot;ret.cocci&quot;, line 10, column 0, charpos =3D =
80
<br>&gt; =C2=A0 around =3D &#39;&#39;,
<br>&gt; =C2=A0 whole content =3D
<br>
<br>The file[ret.cocci] sent by you works perfectly fine for me without any=
 parsing
<br>error. Are you sure there is nothing else in the same file [ret.cocci]?
<br></blockquote><div>=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Yes, nothing is t=
here.<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-=
left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>Parsing error is shown at the line 10 and file has 9 lines. Also, in yo=
ur
<br>first mail you seemed to have something else as an error. [Exception
<br>failure]
<br>
<br>&gt; =C2=A0[varsha@varsha coccinelle]$ spatch --sp-file ret.cocci --no-=
includes
<br>&gt; ~/git/kernels/staging/drivers/<wbr>staging/most/hdm-dim2/dim2_<wbr=
>sysfs.c =C2=A0&gt; ret.out
<br>&gt; =C2=A0init_defs_builtins: /usr/lib64/coccinelle/<wbr>standard.h
<br>&gt; =C2=A0HANDLING:
<br>&gt; /home/varsha/git/kernels/<wbr>staging/drivers/staging/most/<wbr>hd=
m-dim2/dim2_sysfs.c
<br>
<br>If you have installed coccinelle from package manager then what is unde=
r
<br>coccinelle directory? </blockquote><div>=C2=A0</div><div>=C2=A0=C2=A0 W=
ithin /usr/lib64/coccinelle/<br>=C2=A0=C2=A0 I have the following files:<br=
>=C2=A0=C2=A0 ocaml=C2=A0 spatch=C2=A0 spatch.opt=C2=A0 standard.h=C2=A0 st=
andard.iso<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Have y=
ou cloned coccinelle code and have tried to
<br>install it manually as well?
<br>
<br></blockquote><div>=C2=A0=C2=A0 No, I have not. =C2=A0=C2=A0=C2=A0 =C2=
=A0<br>=C2=A0 <br>=C2=A0=C2=A0 Thanks,
</div><div>=C2=A0=C2=A0=C2=A0 Varsha <br></div></div>
------=_Part_5929_1291769837.1488289064667--

------=_Part_5928_275525629.1488289064667--

