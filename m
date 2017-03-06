X-GM-THRID: 6394380881452072960
Date: Mon, 6 Mar 2017 06:17:39 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: diaconitatamara@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org, diaconita.tamara@gmail.com
Message-Id: <afc93d05-93b2-4e28-9151-ab591db13533@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703061447520.3078@hadrien>
References: <20170306134330.8965-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703061447520.3078@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: speakup: i18n: Delete
 tab to indent
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1432_400083833.1488809859845"
X-Google-Token: EIPf9cUFAEOO_XqXw840
X-Google-IP: 141.85.228.76

------=_Part_1432_400083833.1488809859845
Content-Type: multipart/alternative; 
	boundary="----=_Part_1433_1802798424.1488809859845"

------=_Part_1433_1802798424.1488809859845
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Yes, these are all changes since a previous version.
Can you tell me what My patch should contain?
I don't have in my commit history the previous changes because at some 
point I made a git reset .

luni, 6 martie 2017, 15:49:53 UTC+2, Julia Lawall a scris:
>
>
>
> On Mon, 6 Mar 2017, Tamara Diaconita wrote: 
>
> > Added a space to align the code. 
> > Added a space after ':' in the subject of the patch. 
> > Deleted '.c' in the subject of the patch. 
>
> I think that these are all changes since a previous version?  The commit 
> log should explain the changes since the original version, in Greg's tree. 
> Updates since the previous version should go below the ---, so that they 
> will be dropped from the commit history.  They are only meaningful 
> to people who saw the previous version. 
>
> julia 
>
>
> > 
> > Signed-off-by: Tamara Diaconita <diaconit...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/speakup/i18n.c | 2 +- 
> >  1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/speakup/i18n.c 
> b/drivers/staging/speakup/i18n.c 
> > index 1a3e348..11f1418 100644 
> > --- a/drivers/staging/speakup/i18n.c 
> > +++ b/drivers/staging/speakup/i18n.c 
> > @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char 
> *text, size_t length) 
> >                          if (index >= MSG_FORMATTED_START && 
> >                              index <= MSG_FORMATTED_END && 
> >                              !fmt_validate(speakup_default_msgs[index], 
> > -                                          newstr)) { 
> > +                                          newstr)) { 
> >                                  kfree(newstr); 
> >                                  return -EINVAL; 
> >                          } 
> > -- 
> > 2.9.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170306134330.8965-1-diaconita.tamara%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1433_1802798424.1488809859845
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, these are all changes since a previous version.<br>Ca=
n you tell me what My patch should contain?<br>I don&#39;t have in my commi=
t history the previous changes because at some point I made a git reset .<b=
r><br>luni, 6 martie 2017, 15:49:53 UTC+2, Julia Lawall a scris:<blockquote=
 class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1=
px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 6 Mar 2017, Tamara Diaconita wrote:
<br>
<br>&gt; Added a space to align the code.
<br>&gt; Added a space after &#39;:&#39; in the subject of the patch.
<br>&gt; Deleted &#39;.c&#39; in the subject of the patch.
<br>
<br>I think that these are all changes since a previous version? =C2=A0The =
commit
<br>log should explain the changes since the original version, in Greg&#39;=
s tree.
<br>Updates since the previous version should go below the ---, so that the=
y
<br>will be dropped from the commit history. =C2=A0They are only meaningful
<br>to people who saw the previous version.
<br>
<br>julia
<br>
<br>
<br>&gt;
<br>&gt; Signed-off-by: Tamara Diaconita &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"dhnaVwhYAQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">diaconit...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/speakup/i18n.<wbr>c | 2 +-
<br>&gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/speakup/<wbr>i18n.c b/drivers/staging=
/speakup/<wbr>i18n.c
<br>&gt; index 1a3e348..11f1418 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>i18n.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>i18n.c
<br>&gt; @@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, ch=
ar *text, size_t length)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (index &gt;=3D MSG_FORMATTED_START &amp;&amp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0index &lt;=3D MSG_FORMATTED_END &amp;&amp;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0!fmt_validate(speakup_<wbr>default_msgs[index],
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0newstr=
)) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0newstr)) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0kfree(newstr)=
;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0return -EINVA=
L;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"dhnaVwhYAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"dhnaVwhYAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170306134330.8965-1-diaconita.tamara=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170306134330.8=
965-1-diaconita.tamara%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170306134330.8=
965-1-diaconita.tamara%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170306134330.8965-1-<wbr>diaconit=
a.tamara%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1433_1802798424.1488809859845--

------=_Part_1432_400083833.1488809859845--

