X-GM-THRID: 6750107807793545216
X-Gmail-Labels: Topic type: DISCUSSION
Date: Thu, 24 Oct 2019 22:52:56 -0700 (PDT)
From: Javier Arias <jarias.linux@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <764c87b8-f0b4-4be6-a1df-a6d437f24f48@googlegroups.com>
In-Reply-To: <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
References: <399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8@googlegroups.com>
 <CAK-LDbLfnr6Yx7pGA3+WatKGpX3STLAmrNr9OhtXcwxVy-0L+g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Suggested commit orden for patchsets?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_52_625600830.1571982776694"
X-Google-Token: ELibyu0F5l4bx5SmLxE0
X-Google-IP: 190.27.30.48

------=_Part_52_625600830.1571982776694
Content-Type: multipart/alternative; 
	boundary="----=_Part_53_303399501.1571982776694"

------=_Part_53_303399501.1571982776694
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Sorry for the late answer.

My fix didn't introduce new warnings, but there were more warnings in that 
line. For example, I would be looking for comparison with boolean and fix 
most, but many also has +80 columns and camelcase.

The feedback I received is this one: 
https://groups.google.com/d/msg/outreachy-kernel/9GgwTurOJ4w/k1O_Bv_jBwAJ

This is where I was a little confused, as I didn't get why would it make 
more sense to solve the 80 chars issue first, when the first issue I wanted 
to patch was the "Replace string with identifier".

On Monday, 21 October 2019 00:19:51 UTC-5, Vaishali Thakkar wrote:
>
> On Mon, Oct 21, 2019 at 9:55 AM Javier Arias <jaria...@gmail.com 
> <javascript:>> wrote: 
> > 
> > Hello everyone, 
>
> Hi Javier, 
>
> > I have a question related to the commit order, as I received feedback 
> about how a commit order makes more sense for patchsets, but when I start 
> finding an specific issue the next commits in the patchset are usually just 
> to fix warnings displayed by checkpatch after the first fix, so I don't 
> feel like changing the commit order would be productive for me. 
>
> I'm not sure if I understand your question correctly but your 
> first fix shouldn't introduce any new warnings. Every fix you 
> do or every commit you create should not have any 
> checkpatch warnings. 
>
> Also, can you possibly provide a link to which feedback 
> you're talking about here so that people can check it 
> and give you suggestions accordingly for your confusion. 
>
> > So my question are: 
> > Is there a suggested commit order for patchsets even if this is the 
> case? 
> > is it enough if I describe the reason why I used certain commit order in 
> the cover letter? 
> > 
> > Thanks in advance for your answers. 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreach...@googlegroups.com <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8%40googlegroups.com. 
>
>

------=_Part_53_303399501.1571982776694
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry for the late answer.</div><div><br></div><div>M=
y fix didn&#39;t introduce new warnings, but there were more warnings in th=
at line. For example, I would be looking for comparison with boolean and fi=
x most, but many also has +80 columns and camelcase.<br></div><div><br></di=
v><div>The feedback I received is this one: https://groups.google.com/d/msg=
/outreachy-kernel/9GgwTurOJ4w/k1O_Bv_jBwAJ</div><div><br></div><div>This is=
 where I was a little confused, as I didn&#39;t get why would it make more =
sense to solve the 80 chars issue first, when the first issue I wanted to p=
atch was the &quot;Replace string with identifier&quot;.<br></div><br>On Mo=
nday, 21 October 2019 00:19:51 UTC-5, Vaishali Thakkar  wrote:<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">On Mon, Oct 21, 2019 at 9:55 AM Javier Aria=
s &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"Df=
eq4g5cDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#3=
9;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;"=
>jaria...@gmail.com</a>&gt; wrote:
<br>&gt;
<br>&gt; Hello everyone,
<br>
<br>Hi Javier,
<br>
<br>&gt; I have a question related to the commit order, as I received feedb=
ack about how a commit order makes more sense for patchsets, but when I sta=
rt finding an specific issue the next commits in the patchset are usually j=
ust to fix warnings displayed by checkpatch after the first fix, so I don&#=
39;t feel like changing the commit order would be productive for me.
<br>
<br>I&#39;m not sure if I understand your question correctly but your
<br>first fix shouldn&#39;t introduce any new warnings. Every fix you
<br>do or every commit you create should not have any
<br>checkpatch warnings.
<br>
<br>Also, can you possibly provide a link to which feedback
<br>you&#39;re talking about here so that people can check it
<br>and give you suggestions accordingly for your confusion.
<br>
<br>&gt; So my question are:
<br>&gt; Is there a suggested commit order for patchsets even if this is th=
e case?
<br>&gt; is it enough if I describe the reason why I used certain commit or=
der in the cover letter?
<br>&gt;
<br>&gt; Thanks in advance for your answers.
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Dfeq4g5cDAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreach...@<wbr>googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/399e73f8-1ba5-4e5c-a4dc-9f19f6de8fb8%4=
0googlegroups.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.h=
ref=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/399e73f8-1ba5=
-4e5c-a4dc-9f19f6de8fb8%40googlegroups.com&#39;;return true;" onclick=3D"th=
is.href=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/399e73f8-=
1ba5-4e5c-a4dc-9f19f6de8fb8%40googlegroups.com&#39;;return true;">https://g=
roups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>399e73f8-1ba5-4e5c-a4dc=
-<wbr>9f19f6de8fb8%40googlegroups.<wbr>com</a>.
<br></blockquote></div>
------=_Part_53_303399501.1571982776694--

------=_Part_52_625600830.1571982776694--

