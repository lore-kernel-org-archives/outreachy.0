X-GM-THRID: 6394971085965623296
Date: Thu, 9 Mar 2017 02:55:11 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Message-Id: <53167cf4-2fc5-4178-b963-c616822ae3b1@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703081016060.3156@hadrien>
References: <cover.1488944614.git.varshar186@gmail.com> <58bf8051.081a620a.e7433.8064@mx.google.com>
 <alpine.DEB.2.20.1703081016060.3156@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: atomisp: Remove
 useless cast.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2939_1381020630.1489056911358"
X-Google-Token: EI_phMYFMeVddTimaD80
X-Google-IP: 45.125.141.33

------=_Part_2939_1381020630.1489056911358
Content-Type: multipart/alternative; 
	boundary="----=_Part_2940_1170240283.1489056911358"

------=_Part_2940_1170240283.1489056911358
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hello,

Did Coccinelle really find this case for you?  Because void and void * are 
> not the same. 
>
>    Yes, it was found using Coccinelle. I got the output as following.

   diff -u -p a/media/atomisp/pci/atomisp2/css2400/sh_css.c 
b/media/atomisp/pci/atomisp2/css2400/sh_css.c
--- a/media/atomisp/pci/atomisp2/css2400/sh_css.c
+++ b/media/atomisp/pci/atomisp2/css2400/sh_css.c
@@ -1335,7 +1335,7 @@ static int pc_monitoring(void *data)
 {
        int i = 0;

-       (void)data;
+       data;
        while (true) {
                if (sh_binary_running) {
                        sh_css_metrics_sample_pcs();
 
 @@
type T;    //Here if we assume T to be type void
T *ptr,p;  //ptr is pointer to void and p is of type void.
@@

As you said void and void * are different.
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)   It is taking this case. 
+ p
)

But p and ptr are also different, then why is it considering p? Is it 
giving false positive?
To  check this, I just changed the declaration.

@@
type T;
T *ptr;
T p;
@@
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)
+ p
)

However, here it does not match void and void * . Also gives no output for 
this particular file.
Why is it not recognizing the difference between ptr and p ? (with the 
earlier coccinelle script)

Thanks,
Varsha

------=_Part_2940_1170240283.1489056911358
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello,<br><br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">Did Coccinelle really find this case for you? =C2=A0Because void and =
void * are
<br>not the same.
<br>
<br></blockquote><div>=C2=A0=C2=A0 Yes, it was found using Coccinelle. I go=
t the output as following.<br><br>=C2=A0 =C2=A0diff -u -p a/media/atomisp/p=
ci/atomisp2/css2400/sh_css.c b/media/atomisp/pci/atomisp2/css2400/sh_css.c<=
br>--- a/media/atomisp/pci/atomisp2/css2400/sh_css.c<br>+++ b/media/atomisp=
/pci/atomisp2/css2400/sh_css.c<br>@@ -1335,7 +1335,7 @@ static int pc_monit=
oring(void *data)<br>=C2=A0{<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
int i =3D 0;<br><br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (void)data;<br>+=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 data;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 while (true) {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (sh_binary_running) =
{<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sh_cs=
s_metrics_sample_pcs();<br>=C2=A0<br></div><div>=C2=A0@@<br>type T;=C2=A0=
=C2=A0=C2=A0 //Here if we assume T to be type void<br>T *ptr,p;=C2=A0 //ptr=
 is pointer to void and p is of type void.<br>@@<br><br>As you said void an=
d void * are different.<br>(<br>- (T *)(&amp;p)<br>+ &amp;p<br>|<br>- (T *)=
ptr<br>+ ptr<br>|<br>- (T *)(ptr)<br>+ ptr<br>|<br>- (T)(p)=C2=A0=C2=A0 It =
is taking this case. <br>+ p<br>)<br><br>But p and ptr are also different, =
then why is it considering p? Is it giving false positive?<br>To=C2=A0 chec=
k this, I just changed the declaration.<br><br>@@<br>type T;<br>T *ptr;<br>=
T p;<br>@@<br>(<br>- (T *)(&amp;p)<br>+ &amp;p<br>|<br>- (T *)ptr<br>+ ptr<=
br>|<br>- (T *)(ptr)<br>+ ptr<br>|<br>- (T)(p)<br>+ p<br>)<br><br>However, =
here it does not match void and void * . Also gives no output for this part=
icular file.<br>Why is it not recognizing the difference between ptr and p =
? (with the earlier coccinelle script)<br><br>Thanks,<br>Varsha<br></div></=
div>
------=_Part_2940_1170240283.1489056911358--

------=_Part_2939_1381020630.1489056911358--

