X-GM-THRID: 6388887439725821952
Date: Sun, 19 Feb 2017 11:56:04 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: joe@perches.com, arushisinghal19971997@gmail.com,
	gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Message-Id: <4cf4d8ec-cf06-4a03-bffd-7066de2a13cc@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702192018570.2363@hadrien>
References: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook>  <1487529117.2198.36.camel@perches.com>  <alpine.DEB.2.20.1702191955530.2363@hadrien> <1487531915.2198.38.camel@perches.com>
 <alpine.DEB.2.20.1702192018570.2363@hadrien>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: ks7010: Unnecessary
 parentheses are removed.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4430_1026883526.1487534164925"
X-Google-Token: ENTwp8UFAsB91QTOIMo0
X-Google-IP: 14.139.82.6

------=_Part_4430_1026883526.1487534164925
Content-Type: multipart/alternative; 
	boundary="----=_Part_4431_180321211.1487534164925"

------=_Part_4431_180321211.1487534164925
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi
Actually sorry this is because of some mistake in rebasing.
I will correct it send the correct version.
On Monday, February 20, 2017 at 12:50:05 AM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 19 Feb 2017, Joe Perches wrote: 
>
> > On Sun, 2017-02-19 at 19:58 +0100, Julia Lawall wrote: 
> > > On Sun, 19 Feb 2017, Joe Perches wrote: 
> > > > On Sun, 2017-02-19 at 23:56 +0530, Arushi Singhal wrote: 
> > > > > Unnecessary parentheses should be avoided as reported by 
> checkpatch.pl. 
> > > > > Remove unnecessary parentheses, as reported by checkpatch as are 
> nicer 
> > > > > to read.For example:- 
> > > > > It's often nicer to read if &(foo[0]) is converted to foo like: 
> > > > >      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN); 
> > > > >      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN); 
> > > > [] 
> > > > > diff --git a/drivers/staging/ks7010/ks_hostif.c 
> b/drivers/staging/ks7010/ks_hostif.c 
> > > > [] 
> > > > > @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private 
> *priv, struct ap_info_t *ap_info, 
> > > > >          memset(ap, 0, sizeof(struct local_ap_t)); 
> > > > > 
> > > > >          /* bssid */ 
> > > > > -        memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN); 
> > > > > +        memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN); 
> > > > 
> > > > This code doesn't match the suggested style of 
> > > > your commit message. 
> > > 
> > > Is what is suggested in the commit message correct?  That is, is the 
> 0th 
> > > element of an array always at the same address as a pointer to the 
> array 
> > > itself? 
> > 
> > I think your wording is a little fuzzy. 
> > 
> > Assuming you mean not a pointer to the array, 
> > but the array itself, yes. 
>
> Yes, I mean the array itself,sorry.  Thanks. 
>
> Arushi, it would be good it you could make the change you proposed to 
> make.  The calls would look much more normal that way. 
>
> thanks, 
> julia 
>
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/1487531915.2198.38.camel%40perches.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_4431_180321211.1487534164925
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi<br>Actually sorry this is because of some mistake i=
n rebasing.<br>I will correct it send the correct version.<br>On Monday, Fe=
bruary 20, 2017 at 12:50:05 AM UTC+5:30, Julia Lawall wrote:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #=
ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 19 Feb 2017, Joe Perches wrote:
<br>
<br>&gt; On Sun, 2017-02-19 at 19:58 +0100, Julia Lawall wrote:
<br>&gt; &gt; On Sun, 19 Feb 2017, Joe Perches wrote:
<br>&gt; &gt; &gt; On Sun, 2017-02-19 at 23:56 +0530, Arushi Singhal wrote:
<br>&gt; &gt; &gt; &gt; Unnecessary parentheses should be avoided as report=
ed by <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F=
checkpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974N=
I3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.co=
m/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQ=
jCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a>.
<br>&gt; &gt; &gt; &gt; Remove unnecessary parentheses, as reported by chec=
kpatch as are nicer
<br>&gt; &gt; &gt; &gt; to read.For example:-
<br>&gt; &gt; &gt; &gt; It&#39;s often nicer to read if &amp;(foo[0]) is co=
nverted to foo like:
<br>&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0memcpy(&amp;(ap-&gt;bssid[0]), =
&amp;(ap_info-&gt;bssid[0]), ETH_ALEN);
<br>&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0memcpy(ap-&gt;bssid, ap_info-&g=
t;bssid, ETH_ALEN);
<br>&gt; &gt; &gt; []
<br>&gt; &gt; &gt; &gt; diff --git a/drivers/staging/ks7010/ks_<wbr>hostif.=
c b/drivers/staging/ks7010/ks_<wbr>hostif.c
<br>&gt; &gt; &gt; []
<br>&gt; &gt; &gt; &gt; @@ -212,7 +212,7 @@ int get_ap_information(struct k=
s_wlan_private *priv, struct ap_info_t *ap_info,
<br>&gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0memset(ap, 0, sizeof(struct local_ap_t));
<br>&gt; &gt; &gt; &gt;
<br>&gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0/* bssid */
<br>&gt; &gt; &gt; &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0me=
mcpy(&amp;(ap-&gt;bssid[0]<wbr>), &amp;(ap_info-&gt;bssid[0]), ETH_ALEN);
<br>&gt; &gt; &gt; &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0me=
mcpy(&amp;ap-&gt;bssid[0], &amp;ap_info-&gt;bssid[0], ETH_ALEN);
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; This code doesn&#39;t match the suggested style of
<br>&gt; &gt; &gt; your commit message.
<br>&gt; &gt;
<br>&gt; &gt; Is what is suggested in the commit message correct? =C2=A0Tha=
t is, is the 0th
<br>&gt; &gt; element of an array always at the same address as a pointer t=
o the array
<br>&gt; &gt; itself?
<br>&gt;
<br>&gt; I think your wording is a little fuzzy.
<br>&gt;
<br>&gt; Assuming you mean not a pointer to the array,
<br>&gt; but the array itself, yes.
<br>
<br>Yes, I mean the array itself,sorry. =C2=A0Thanks.
<br>
<br>Arushi, it would be good it you could make the change you proposed to
<br>make. =C2=A0The calls would look much more normal that way.
<br>
<br>thanks,
<br>julia
<br>
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"lkIwRleNAAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"lkIwRleNAAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1487531915.2198.38.camel%40perches.com=
" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https:=
//groups.google.com/d/msgid/outreachy-kernel/1487531915.2198.38.camel%40per=
ches.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.goog=
le.com/d/msgid/outreachy-kernel/1487531915.2198.38.camel%40perches.com&#39;=
;return true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr=
>1487531915.2198.38.camel%<wbr>40perches.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_4431_180321211.1487534164925--

------=_Part_4430_1026883526.1487534164925--

