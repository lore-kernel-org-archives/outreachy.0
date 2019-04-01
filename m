X-GM-THRID: 6674924693853569024
Date: Mon, 1 Apr 2019 07:24:31 -0700 (PDT)
From: sanjana99reddy99@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b4ebfc08-d6ef-44b3-b383-240b8ca3bab9@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1904011601450.5585@hadrien>
References: <20190401135637.8459-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.21.1904011601450.5585@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: imx: Replace
 list_entry with list_for_each_entry_safe
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_862_1321987254.1554128671404"
X-Google-Token: EJ--iOUFN_0O0hTXm-80
X-Google-IP: 2405:204:6628:6470:9524:528f:f662:5d77

------=_Part_862_1321987254.1554128671404
Content-Type: multipart/alternative; 
	boundary="----=_Part_863_352072897.1554128671405"

------=_Part_863_352072897.1554128671405
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, April 1, 2019 at 7:32:41 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 1 Apr 2019, Sanjana Sanikommu wrote: 
>
> > Challenge suggested by coccinelle. 
> > Replace use of the combination of list_empty() and list_entry() with 
> > list_for_each_entry_safe() to simplify the code. 
> > 
> > Issue found using below Coccinelle script. 
> > 
> > @@ 
> > expression E1; 
> > identifier I1, I2; 
> > type T; 
> > iterator name list_for_each_entry_safe; 
> > @@ 
> > 
> > T *I1; 
> > + T *tmp; 
> > ... 
> > - while (list_empty(&E1) == 0) 
> > + list_for_each_entry_safe (I1, tmp, &E1, I2) 
> > { 
> > ...when != T *I1; 
> > - I1 = list_entry(E1.next, T, I2); 
> > ... 
> > } 
>
> I haven't studied this carefully, but there was an old coccinelle script 
> in this direction that made the code quite incorrect.  You need to 
> understand what you are doing here to be sure that it is correct. 
>


    Here I used list_for_each_entry_safe to iterate list of given type.
    I made script by considering the below information.    
  
    
https://www.kernel.org/doc/htmldocs/kernel-api/API-list-for-each-entry-safe.html
 

     Please correct me if I am wrong :)
     Thank you 
     Sanjana.

>
> julia 
>
> > 
> > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/media/imx/imx-media-capture.c | 5 ++--- 
> >  1 file changed, 2 insertions(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/media/imx/imx-media-capture.c 
> b/drivers/staging/media/imx/imx-media-capture.c 
> > index 9703c85b19c4..facce18975d8 100644 
> > --- a/drivers/staging/media/imx/imx-media-capture.c 
> > +++ b/drivers/staging/media/imx/imx-media-capture.c 
> > @@ -556,6 +556,7 @@ static void capture_stop_streaming(struct vb2_queue 
> *vq) 
> >  { 
> >          struct capture_priv *priv = vb2_get_drv_priv(vq); 
> >          struct imx_media_buffer *frame; 
> > +        struct imx_media_buffer *tmp; 
> >          unsigned long flags; 
> >          int ret; 
> > 
> > @@ -570,9 +571,7 @@ static void capture_stop_streaming(struct vb2_queue 
> *vq) 
> > 
> >          /* release all active buffers */ 
> >          spin_lock_irqsave(&priv->q_lock, flags); 
> > -        while (!list_empty(&priv->ready_q)) { 
> > -                frame = list_entry(priv->ready_q.next, 
> > -                                   struct imx_media_buffer, list); 
> > +        list_for_each_entry_safe(frame, tmp, &priv->ready_q, list) { 
> >                  list_del(&frame->list); 
> >                  vb2_buffer_done(&frame->vbuf.vb2_buf, 
> VB2_BUF_STATE_ERROR); 
> >          } 
> > -- 
> > 2.17.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190401135637.8459-1-sanjana99reddy99%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_863_352072897.1554128671405
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, April 1, 2019 at 7:32:41 PM UTC+5:30, J=
ulia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 1 Apr 2019, Sanjana Sanikommu wrote:
<br>
<br>&gt; Challenge suggested by coccinelle.
<br>&gt; Replace use of the combination of list_empty() and list_entry() wi=
th
<br>&gt; list_for_each_entry_safe() to simplify the code.
<br>&gt;
<br>&gt; Issue found using below Coccinelle script.
<br>&gt;
<br>&gt; @@
<br>&gt; expression E1;
<br>&gt; identifier I1, I2;
<br>&gt; type T;
<br>&gt; iterator name list_for_each_entry_safe;
<br>&gt; @@
<br>&gt;
<br>&gt; T *I1;
<br>&gt; + T *tmp;
<br>&gt; ...
<br>&gt; - while (list_empty(&amp;E1) =3D=3D 0)
<br>&gt; + list_for_each_entry_safe (I1, tmp, &amp;E1, I2)
<br>&gt; {
<br>&gt; ...when !=3D T *I1;
<br>&gt; - I1 =3D list_entry(E1.next, T, I2);
<br>&gt; ...
<br>&gt; }
<br>
<br>I haven&#39;t studied this carefully, but there was an old coccinelle s=
cript
<br>in this direction that made the code quite incorrect. =C2=A0You need to
<br>understand what you are doing here to be sure that it is correct.
<br></blockquote><div><br></div><div><br></div><div>=C2=A0 =C2=A0 Here I us=
ed list_for_each_entry_safe to iterate list of given type.</div><div>=C2=A0=
 =C2=A0 I made script by considering the below information.=C2=A0 =C2=A0=C2=
=A0</div><div>=C2=A0=C2=A0</div><div>=C2=A0 =C2=A0=C2=A0<a href=3D"https://=
www.kernel.org/doc/htmldocs/kernel-api/API-list-for-each-entry-safe.html">h=
ttps://www.kernel.org/doc/htmldocs/kernel-api/API-list-for-each-entry-safe.=
html</a>=C2=A0</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0Please correct =
me if I am wrong :)</div><div>=C2=A0 =C2=A0 =C2=A0Thank you=C2=A0</div><div=
>=C2=A0 =C2=A0 =C2=A0Sanjana.</div><blockquote class=3D"gmail_quote" style=
=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: =
1ex;">
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"SWSKO7QOBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">sanjana9...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/media/imx/<wbr>imx-media-capture.c | 5 ++---
<br>&gt; =C2=A01 file changed, 2 insertions(+), 3 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/media/imx/<wbr>imx-media-capture.c b/=
drivers/staging/media/imx/<wbr>imx-media-capture.c
<br>&gt; index 9703c85b19c4..facce18975d8 100644
<br>&gt; --- a/drivers/staging/media/imx/<wbr>imx-media-capture.c
<br>&gt; +++ b/drivers/staging/media/imx/<wbr>imx-media-capture.c
<br>&gt; @@ -556,6 +556,7 @@ static void capture_stop_streaming(struct vb2_=
queue *vq)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct captu=
re_priv *priv =3D vb2_get_drv_priv(vq);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct imx_m=
edia_buffer *frame;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct imx_media_=
buffer *tmp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g flags;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>&gt;
<br>&gt; @@ -570,9 +571,7 @@ static void capture_stop_streaming(struct vb2_=
queue *vq)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* release a=
ll active buffers */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_ir=
qsave(&amp;<wbr>priv-&gt;q_lock, flags);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0while (!list_empt=
y(&amp;priv-&gt;ready_q)) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0frame =3D list_entry(priv-&gt;ready_q.next=
,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct i=
mx_media_buffer, list);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_for_each_ent=
ry_<wbr>safe(frame, tmp, &amp;priv-&gt;ready_q, list) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0list_del(&amp;<wbr>frame-&gt;list);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vb2_buffer_<wbr>done(&amp;frame-&gt;vbu=
f.vb2_buf, VB2_BUF_STATE_ERROR);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"SWSKO7QOBwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"SWSKO7QOBwAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190401135637.8459-1-sanjana99reddy99=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190401135637.8=
459-1-sanjana99reddy99%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20190401135637.8=
459-1-sanjana99reddy99%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190401135637.8459-1-<wbr>sanjana9=
9reddy99%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_863_352072897.1554128671405--

------=_Part_862_1321987254.1554128671404--

