X-GM-THRID: 6465312034582953984
Date: Fri, 15 Sep 2017 00:02:15 -0700 (PDT)
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <df162e84-1763-4fc6-8d3d-8aee1151f515@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1709132210210.2920@hadrien>
References: <20170913171234.GA4052@manoharreddy>
 <alpine.DEB.2.20.1709132210210.2920@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: Android: follow coding
 guidlines
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1175_1973426501.1505458936101"
X-Google-Token: EPf17c0FSgsmmibys2Q0
X-Google-IP: 117.239.205.194

------=_Part_1175_1973426501.1505458936101
Content-Type: multipart/alternative; 
	boundary="----=_Part_1176_1324887094.1505458936101"

------=_Part_1176_1324887094.1505458936101
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I would like to ask will this patch be merged into Greg's Staging driver 
development tree? If not what kind of what of patches will be merged into 
Greg's tree?

Thanks,
Keerthi. 

On Thursday, September 14, 2017 at 1:40:50 AM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Wed, 13 Sep 2017, Keerthi Reddy wrote: 
>
> > - Add a new line after struct declaration 
> > - remove extra new line. 
> > 
> > Signed-off-by: Keerthi Reddy <keerth...@gmail.com <javascript:>> 
>
> Acked-by: Julia Lawall <julia....@lip6.fr <javascript:>> 
>
> > --- 
> >  drivers/staging/android/ion/ion.h | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/android/ion/ion.h 
> b/drivers/staging/android/ion/ion.h 
> > index 621e5f7..f5f9cd6 100644 
> > --- a/drivers/staging/android/ion/ion.h 
> > +++ b/drivers/staging/android/ion/ion.h 
> > @@ -86,6 +86,7 @@ struct ion_buffer { 
> >          struct sg_table *sg_table; 
> >          struct list_head attachments; 
> >  }; 
> > + 
> >  void ion_buffer_destroy(struct ion_buffer *buffer); 
> > 
> >  /** 
> > @@ -299,7 +300,6 @@ size_t ion_heap_freelist_shrink(struct ion_heap 
> *heap, 
> >   */ 
> >  size_t ion_heap_freelist_size(struct ion_heap *heap); 
> > 
> > - 
> >  /** 
> >   * functions for creating and destroying a heap pool -- allows you 
> >   * to keep a pool of pre allocated memory to use from your heap. 
>  Keeping 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170913171234.GA4052%40manoharreddy. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1176_1324887094.1505458936101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would like to ask will this patch=C2=A0be merged into Gr=
eg&#39;s Staging driver development tree? If not what kind of what of patch=
es will be merged into Greg&#39;s tree?<div><br></div><div>Thanks,</div><di=
v>Keerthi.=C2=A0<br><br>On Thursday, September 14, 2017 at 1:40:50 AM UTC+5=
:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Wed, 13 Sep 2017, Keerthi Reddy wrote:
<br>
<br>&gt; - Add a new line after struct declaration
<br>&gt; - remove extra new line.
<br>&gt;
<br>&gt; Signed-off-by: Keerthi Reddy &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"X5F8xkn4DAAJ" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=
=3D&#39;javascript:&#39;;return true;">keerth...@gmail.com</a>&gt;
<br>
<br>Acked-by: Julia Lawall &lt;<a href=3D"javascript:" target=3D"_blank" gd=
f-obfuscated-mailto=3D"X5F8xkn4DAAJ" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javas=
cript:&#39;;return true;">julia....@lip6.fr</a>&gt;
<br>
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/android/ion/<wbr>ion.h | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/android/ion/<wbr>ion.h b/drivers/stag=
ing/android/ion/<wbr>ion.h
<br>&gt; index 621e5f7..f5f9cd6 100644
<br>&gt; --- a/drivers/staging/android/ion/<wbr>ion.h
<br>&gt; +++ b/drivers/staging/android/ion/<wbr>ion.h
<br>&gt; @@ -86,6 +86,7 @@ struct ion_buffer {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sg_ta=
ble *sg_table;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct list_=
head attachments;
<br>&gt; =C2=A0};
<br>&gt; +
<br>&gt; =C2=A0void ion_buffer_destroy(struct ion_buffer *buffer);
<br>&gt;
<br>&gt; =C2=A0/**
<br>&gt; @@ -299,7 +300,6 @@ size_t ion_heap_freelist_shrink(<wbr>struct io=
n_heap *heap,
<br>&gt; =C2=A0 */
<br>&gt; =C2=A0size_t ion_heap_freelist_size(struct ion_heap *heap);
<br>&gt;
<br>&gt; -
<br>&gt; =C2=A0/**
<br>&gt; =C2=A0 * functions for creating and destroying a heap pool -- allo=
ws you
<br>&gt; =C2=A0 * to keep a pool of pre allocated memory to use from your h=
eap. =C2=A0Keeping
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"X5F8xkn4DAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"X5F8xkn4DAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170913171234.GA4052%40manoharreddy" =
target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://=
groups.google.com/d/msgid/outreachy-kernel/20170913171234.GA4052%40manoharr=
eddy&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.c=
om/d/msgid/outreachy-kernel/20170913171234.GA4052%40manoharreddy&#39;;retur=
n true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170=
913171234.GA4052%<wbr>40manoharreddy</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></div>
------=_Part_1176_1324887094.1505458936101--

------=_Part_1175_1973426501.1505458936101--

