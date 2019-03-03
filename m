X-GM-THRID: 6664125238569074688
Date: Sun, 3 Mar 2019 06:53:02 -0800 (PST)
From: idebleenasen@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <8dbb307a-cd05-4d59-9f54-90061c6733e3@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1903031230510.3207@hadrien>
References: <1551612545-54801-1-git-send-email-idebleenasen@gmail.com>
 <alpine.DEB.2.21.1903031230510.3207@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Fix alignment
 match issue
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_71_529515988.1551624782147"
X-Google-Token: EM7U7-MFlUQo16xyWN40
X-Google-IP: 114.29.227.177

------=_Part_71_529515988.1551624782147
Content-Type: multipart/alternative; 
	boundary="----=_Part_72_1326870186.1551624782147"

------=_Part_72_1326870186.1551624782147
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 3, 2019 at 5:01:38 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 3 Mar 2019, Debleena Sen wrote: 
>
> > Use tab to match alignment with open parenthesis to remove 
> > checkpatch.pl check: 
> > CHECK: Alignment should match open parenthesis 
> > 
> > Signed-off-by: Debleena Sen <ideble...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/wlan-ng/prism2mgmt.c | 4 ++-- 
> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/wlan-ng/prism2mgmt.c 
> b/drivers/staging/wlan-ng/prism2mgmt.c 
> > index 7350fe5..7d2a140 100644 
> > --- a/drivers/staging/wlan-ng/prism2mgmt.c 
> > +++ b/drivers/staging/wlan-ng/prism2mgmt.c 
> > @@ -228,8 +228,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void 
> *msgp) 
> >                  __le16 wordbuf[17]; 
> > 
> >                  result = hfa384x_drvr_setconfig16(hw, 
> > -                                        HFA384x_RID_CNFROAMINGMODE, 
> > 
> -                                        HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM); 
>
> > +                                                 
>  HFA384x_RID_CNFROAMINGMODE, 
> > +                                                 
>  HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM); 
>
> You are now over 80 characters for the third argument.  So it would be 
> better to leave the code as is. 
>
> julia 
>
> >                  if (result) { 
> >                          netdev_err(wlandev->netdev, 
> >                                     "setconfig(ROAMINGMODE) failed. 
> result=%d\n", 
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
> https://groups.google.com/d/msgid/outreachy-kernel/1551612545-54801-1-git-send-email-idebleenasen%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>
Yes I checked that. Sorry. Must've missed it. 

------=_Part_72_1326870186.1551624782147
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 3, 2019 at 5:01:38 PM UTC+5:30, J=
ulia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 3 Mar 2019, Debleena Sen wrote:
<br>
<br>&gt; Use tab to match alignment with open parenthesis to remove
<br>&gt; <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow=
" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F=
%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L9=
74NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google=
.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3d=
AFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a> che=
ck:
<br>&gt; CHECK: Alignment should match open parenthesis
<br>&gt;
<br>&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"javascript:" target=3D"=
_blank" gdf-obfuscated-mailto=3D"O8XcMiJFCQAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">ideble...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/wlan-ng/<wbr>prism2mgmt.c | 4 ++--
<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/wlan-ng/<wbr>prism2mgmt.c b/drivers/s=
taging/wlan-ng/<wbr>prism2mgmt.c
<br>&gt; index 7350fe5..7d2a140 100644
<br>&gt; --- a/drivers/staging/wlan-ng/<wbr>prism2mgmt.c
<br>&gt; +++ b/drivers/staging/wlan-ng/<wbr>prism2mgmt.c
<br>&gt; @@ -228,8 +228,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev=
, void *msgp)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__le16 wordbuf[17];
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0result =3D hfa384x_drvr_setconfig16(hw,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0HFA384x_RID_<wbr>CNFROAMINGMODE,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0HFA384x_ROAMMODE_<wbr>HOSTSCAN_HOSTROAM);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0HFA384x_RID_CNFROAMINGMODE,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0HFA384x_ROAMMODE_HOSTSCAN_<wbr>HOSTROAM);
<br>
<br>You are now over 80 characters for the third argument. =C2=A0So it woul=
d be
<br>better to leave the code as is.
<br>
<br>julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (result) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>netdev_err(wlandev-&gt;netdev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 &quot=
;setconfig(ROAMINGMODE) failed. result=3D%d\n&quot;,
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"O8XcMiJFCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"O8XcMiJFCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1551612545-54801-1-git-send-email-ideb=
leenasen%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"thi=
s.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/1551612545=
-54801-1-git-send-email-idebleenasen%40gmail.com&#39;;return true;" onclick=
=3D"this.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/155=
1612545-54801-1-git-send-email-idebleenasen%40gmail.com&#39;;return true;">=
https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1551612545-548=
01-1-git-send-<wbr>email-idebleenasen%40gmail.com</a><wbr>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><div>Yes I checked that. Sorry. Must&#39;ve missed it.=C2=
=A0<br></div></div>
------=_Part_72_1326870186.1551624782147--

------=_Part_71_529515988.1551624782147--

