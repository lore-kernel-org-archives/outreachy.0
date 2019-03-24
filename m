X-GM-THRID: 6671711109199691776
Date: Sun, 24 Mar 2019 11:43:21 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <eecfd55f-8f90-479c-a4ff-a7e30e08f155@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903240712570.2526@hadrien>
References: <20190323220611.9385-1-vatsalanarang@gmail.com>
 <alpine.DEB.2.21.1903240712570.2526@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8723bs: include:
 Eliminate p from structure field
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1308_2094363679.1553453002091"
X-Google-Token: EMmf3-QFWart-KoeuZE0
X-Google-IP: 103.87.57.5

------=_Part_1308_2094363679.1553453002091
Content-Type: multipart/alternative; 
	boundary="----=_Part_1309_1883739567.1553453002091"

------=_Part_1309_1883739567.1553453002091
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> You have removed the p's from a lot of things that are not structure 
> fields.  I the beginning you had a specific structure, and it had a field 
> called pbuf that I suggested to rename as buf.  As part of that renaming, 
> you should go around and look for the other uses of that structure and 
> change their refererences to the pbuf field to buf as well.  One way that 
> can help you do this is to use Coccinelle: 
>
> @@ 
> struct thestructure x; 
> @@ 
>
> - x.pbuf 
> + x.buf 
>
> @@ 
> struct thestructure *x; 
> @@ 
>
> - x->pbuf 
> + x->buf 
>
> (I don't remember the name of the structure, so you should fill that in). 
> Another somewhat reliable way to automate it is to just iteratively 
> compile 
> the code and fix up the error messages as they occur.  You can also grep 
> for each use of the structure name, and then look by hand for all 
> occurrences of the field.  In practice, you may want to use all three 
> approaches, 
>
> You approach seems to be going into your editor and doing search and 
> replace of pbuf by buf.  This can cause problems if there are uses of pbuf 
> that should not change, eg because they come from some other part of the 
> kernel.  Fortunately this is not very likely, because the rest of the 
> kernel doensn't use variable names like that. 
>
> I still don't understand why you don't end up changing a single .c file. 
> Either a lot of things are not used or something is wrong.  Did you 
> compile 
> the code? 
>
> julia 
>
>
>
I am very sorry. I think , i missed some step in the process 
I will use Coccinelle now and figure it out soon and then submit the patch 
again correctly.
Thanks, 
Vatsala

------=_Part_1309_1883739567.1553453002091
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">You have removed the p&#39=
;s from a lot of things that are not structure
<br>fields. =C2=A0I the beginning you had a specific structure, and it had =
a field
<br>called pbuf that I suggested to rename as buf. =C2=A0As part of that re=
naming,
<br>you should go around and look for the other uses of that structure and
<br>change their refererences to the pbuf field to buf as well. =C2=A0One w=
ay that
<br>can help you do this is to use Coccinelle:
<br>
<br>@@
<br>struct thestructure x;
<br>@@
<br>
<br>- x.pbuf
<br>+ x.buf
<br>
<br>@@
<br>struct thestructure *x;
<br>@@
<br>
<br>- x-&gt;pbuf
<br>+ x-&gt;buf
<br>
<br>(I don&#39;t remember the name of the structure, so you should fill tha=
t in).
<br>Another somewhat reliable way to automate it is to just iteratively com=
pile
<br>the code and fix up the error messages as they occur. =C2=A0You can als=
o grep
<br>for each use of the structure name, and then look by hand for all
<br>occurrences of the field. =C2=A0In practice, you may want to use all th=
ree
<br>approaches,
<br>
<br>You approach seems to be going into your editor and doing search and
<br>replace of pbuf by buf. =C2=A0This can cause problems if there are uses=
 of pbuf
<br>that should not change, eg because they come from some other part of th=
e
<br>kernel. =C2=A0Fortunately this is not very likely, because the rest of =
the
<br>kernel doensn&#39;t use variable names like that.
<br>
<br>I still don&#39;t understand why you don&#39;t end up changing a single=
 .c file.
<br>Either a lot of things are not used or something is wrong. =C2=A0Did yo=
u compile
<br>the code?
<br>
<br>julia
<br>
<br>
<br></blockquote><div><br></div><div>I am very sorry. I think , i missed so=
me step in the process <br></div><div>I will use Coccinelle now and figure =
it out soon and then submit the patch again correctly.</div><div> Thanks, <=
br></div><div>Vatsala<br></div>
------=_Part_1309_1883739567.1553453002091--

------=_Part_1308_2094363679.1553453002091--

