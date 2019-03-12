X-GM-THRID: 6667430437644664832
Date: Tue, 12 Mar 2019 07:30:35 -0700 (PDT)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <75c4ca91-0811-4a19-a9e2-29b127d419c9@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903121112510.4097@hadrien>
References: <20190312091512.2315-1-etsai042@gmail.com>
 <alpine.DEB.2.20.1903121112510.4097@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Change else-if
 block order
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2656_2049600376.1552401035594"
X-Google-Token: EIuFn-QFL-cxEbM9GZQ0
X-Google-IP: 128.199.125.193

------=_Part_2656_2049600376.1552401035594
Content-Type: multipart/alternative; 
	boundary="----=_Part_2657_1979406535.1552401035594"

------=_Part_2657_1979406535.1552401035594
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 12, 2019 at 3:16:26 AM UTC-7, Julia Lawall wrote:
>
>
> This would definitely be tha case of silencing a warning, because the 
> warning appears to be a false positive.  There is a return on the previous 
> line, but it is under an else, so it's not guaranteed to occur. 
>
> Furthermoew, by making this change, I guess you obtain another occurrence 
> of this warning, becaue your added code ends with a return and the next 
> line contains an else. 
>
> I think the logic of checkpatch.pl is that, else under break or return 
directly is not recommended. But if the return is in a nested else, this 
warning will not appear since there can be other if-block or elseif-block 
behind it that doesn't always return. This change doesn't generate more 
warnings.
In this file we can't simply delete the last else because the if-block 
behind it doesn't return in all cases.
 

> If this really seems to be an improvement, the log message needs to 
> explain why moving the if around preserves the semantics of the code.  Try 
> to avoid log messages that just say Change or Fix.  Those words don't give 
> any information about what you did or why it is useful. 
>
>
Though it silence this warning, I think this change is not necessary. Maybe 
checkpatch.pl should be revised, to check the whole if-else flow control, 
and to make sure to give out this warning only when all blocks behind the 
last else has a return?

Thanks for the log message advice, I won't use Change or Fix next time.

Wentao
 

> julia 
>
> >          } else { 
> >                  name = NULL; 
> >                  if ((type != KT_SPKUP) && (key > 0) && (key <= 
> num_key_names)) { 
> > -- 
> > 2.11.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsai042%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2657_1979406535.1552401035594
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 12, 2019 at 3:16:26 AM UTC-7, Ju=
lia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><br>This woul=
d definitely be tha case of silencing a warning, because the
<br>warning appears to be a false positive. =C2=A0There is a return on the =
previous
<br>line, but it is under an else, so it&#39;s not guaranteed to occur.
<br>
<br>Furthermoew, by making this change, I guess you obtain another occurren=
ce
<br>of this warning, becaue your added code ends with a return and the next
<br>line contains an else.
<br>
<br></blockquote><div>I think the logic of checkpatch.pl is that, else unde=
r break or return directly is not recommended. But if the return is in a ne=
sted else, this warning will not appear since there can be other if-block o=
r elseif-block behind it that doesn&#39;t always return. This change doesn&=
#39;t generate more warnings.</div><div>In this file we can&#39;t simply de=
lete the last else because the if-block behind it doesn&#39;t return in all=
 cases.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
If this really seems to be an improvement, the log message needs to
<br>explain why moving the if around preserves the semantics of the code. =
=C2=A0Try
<br>to avoid log messages that just say Change or Fix. =C2=A0Those words do=
n&#39;t give
<br>any information about what you did or why it is useful.
<br>
<br></blockquote><div><br></div><div>Though it silence this warning, I thin=
k this change is not necessary. Maybe checkpatch.pl should be revised, to c=
heck the whole if-else flow control, and to make sure to give out this warn=
ing only when all blocks behind the last else has a return?</div><div><br><=
/div><div>Thanks for the log message advice, I won&#39;t use Change or Fix =
next time.</div><div><br></div><div>Wentao</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: =
1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0name =3D NULL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((type !=3D KT_SPKUP) &amp;&amp; (ke=
y &gt; 0) &amp;&amp; (key &lt;=3D num_key_names)) {
<br>&gt; --
<br>&gt; 2.11.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"hpZZ6_AGCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"hpZZ6_AGCgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsai042%40gmail=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ht=
tps://groups.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsa=
i042%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://gro=
ups.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsai042%40gm=
ail.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>20190312091512.2315-1-<wbr>etsai042%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2657_1979406535.1552401035594--

------=_Part_2656_2049600376.1552401035594--

