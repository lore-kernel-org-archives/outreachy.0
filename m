X-GM-THRID: 6200896862154653696
Date: Fri, 2 Oct 2015 04:57:57 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: shivanib134@gmail.com
Message-Id: <eac16aa3-e747-421b-854a-bd7141d7b437@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1510021318460.2515@hadrien>
References: <20151002040637.GA41415@ubuntu> <b520f0bf-34b7-41a1-948f-7ca510325cfd@googlegroups.com>
 <alpine.DEB.2.10.1510021318460.2515@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: board: Fixed the error
 for implicit declaration of function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_820_596813979.1443787077958"
X-Google-Token: EMXiubAFThYrq9nSqnc0
X-Google-IP: 124.124.47.116

------=_Part_820_596813979.1443787077958
Content-Type: multipart/alternative; 
	boundary="----=_Part_821_2132444036.1443787077958"

------=_Part_821_2132444036.1443787077958
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Julia, I'm sorry. I looked for all the places where the function was 
available, prom.h wasn't the ideal place though. I've removed it and I'm 
still not able to configure what is causing problems if I do have correct 
header files and everything needed. I'm working on this. Thank you so much.
On Friday, October 2, 2015 at 4:49:51 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Fri, 2 Oct 2015, Shivani Bhardwaj wrote: 
> > Hi Julia! I have a doubt. I think I'm having trouble with the header 
> file 
> > because it declares the function prototype with an extern keyword (I'm 
> not 
> > sure if memory allocation plays a role in this). And, if the function 
> has 
> > been declared in some header file then re-declaration of it won't be a 
> good 
> > practice, I suppose. Please tell me whether extern has to do anything 
> with 
> > it or not. This is the header file 
> > http://lxr.free-electrons.com/source/include/linux/of.h#L189. 
>
> Why did you suggest to add an include of prom.h rather than of of.h? 
>
> You shouldn't declare such a generic function in the specific driver. 
>
> julia 
>
> > Thank you. 
> > 
> > On Friday, October 2, 2015 at 9:36:47 AM UTC+5:30, Shivani Bhardwaj 
> wrote: 
> >       Fixed the error for implicit declaration of the function 
> >       'of_find_all_nodes' by adding the appropriate header file and 
> >       declaring 
> >       the function before it has been called. 
> > 
> >       Signed-off-by: Shivani Bhardwaj: <shiva...@gmail.com <javascript:>> 
>
> >       --- 
> >        drivers/staging/board/board.c | 2 ++ 
> >        1 file changed, 2 insertions(+) 
> > 
> >       diff --git a/drivers/staging/board/board.c 
> >       b/drivers/staging/board/board.c 
> >       index 29d456e..8d0ac82 100644 
> >       --- a/drivers/staging/board/board.c 
> >       +++ b/drivers/staging/board/board.c 
> >       @@ -19,11 +19,13 @@ 
> >        #include <linux/of_irq.h> 
> >        #include <linux/platform_device.h> 
> >        #include <linux/pm_domain.h> 
> >       +#include <asm/prom.h> 
> >         
> >        #include "board.h" 
> >         
> >        static struct device_node *irqc_node __initdata; 
> >        static unsigned int irqc_base __initdata; 
> >       +struct device_node *of_find_all_nodes(struct device_node 
> >       *prev); 
> >         
> >        static bool find_by_address(u64 base_address) 
> >        { 
> >       -- 
> >       2.1.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/b520f0bf-34b7-41a1-948f- 
> > 7ca510325cfd%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >


------=_Part_821_2132444036.1443787077958
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Julia, I&#39;m sorry. I looked for all the places wher=
e the function was available,
 prom.h wasn&#39;t the ideal place though. I&#39;ve removed it and I&#39;m =
still not
 able to configure what is causing problems if I do have correct header=20
files and everything needed. I&#39;m working on this. Thank you so much.<br=
>On Friday, October 2, 2015 at 4:49:51 PM UTC+5:30, Julia Lawall wrote:<blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-=
left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:
<br>&gt; Hi Julia! I have a doubt. I think I&#39;m having trouble with the =
header file
<br>&gt; because it declares the function prototype with an extern keyword =
(I&#39;m not
<br>&gt; sure if memory allocation plays a role in this). And, if the funct=
ion has
<br>&gt; been declared in some header file then re-declaration of it won&#3=
9;t be a good
<br>&gt; practice, I suppose. Please tell me whether extern has to do anyth=
ing with
<br>&gt; it or not. This is the header file
<br>&gt; <a href=3D"http://lxr.free-electrons.com/source/include/linux/of.h=
#L189" target=3D"_blank" rel=3D"nofollow">http://lxr.free-electrons.com/<wb=
r>source/include/linux/of.h#L189</a><wbr>.
<br>
<br>Why did you suggest to add an include of prom.h rather than of of.h?
<br>
<br>You shouldn&#39;t declare such a generic function in the specific drive=
r.
<br>
<br>julia
<br>
<br>&gt; Thank you.
<br>&gt;
<br>&gt; On Friday, October 2, 2015 at 9:36:47 AM UTC+5:30, Shivani Bhardwa=
j wrote:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Fixed the error for implicit declaration of t=
he function
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &#39;of_find_all_nodes&#39; by adding the app=
ropriate header file and
<br>&gt; =C2=A0 =C2=A0 =C2=A0 declaring
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the function before it has been called.
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Signed-off-by: Shivani Bhardwaj: &lt;<a href=
=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"gn5RqYRlCAAJ" r=
el=3D"nofollow">shiva...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0drivers/staging/board/board.c | 2 ++
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A01 file changed, 2 insertions(+)
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 diff --git a/drivers/staging/board/board.<wbr=
>c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/board/board.<wbr>c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 index 29d456e..8d0ac82 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --- a/drivers/staging/board/board.<wbr>c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++ b/drivers/staging/board/board.<wbr>c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 @@ -19,11 +19,13 @@
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#include &lt;linux/of_irq.h&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#include &lt;linux/platform_device.h&gt=
;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#include &lt;linux/pm_domain.h&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +#include &lt;asm/prom.h&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0#include &quot;board.h&quot;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static struct device_node *irqc_node __=
initdata;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static unsigned int irqc_base __initdat=
a;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +struct device_node *of_find_all_nodes(struct=
 device_node
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *prev);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0static bool find_by_address(u64 base_ad=
dress)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 2.1.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"gn5RqYRlCAAJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroup=
s.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"gn5RqYRlCAAJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/b520f0bf-34b7-41a1-948f-" target=
=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/msgid/outreachy-kerne=
l/<wbr>b520f0bf-34b7-41a1-948f-</a>
<br>&gt; 7ca510325cfd%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_821_2132444036.1443787077958--

------=_Part_820_596813979.1443787077958--

