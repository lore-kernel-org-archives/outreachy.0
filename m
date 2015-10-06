X-GM-THRID: 6200896862154653696
Date: Mon, 5 Oct 2015 21:43:52 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
In-Reply-To: <20151006040800.GA30304@ubuntu>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
 <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
 <alpine.DEB.2.10.1510041457450.2661@hadrien>
 <20151006040800.GA30304@ubuntu>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1902_1889220396.1444106632498"
X-Google-Token: EIijzbAFh0mGezFQjCQ0
X-Google-IP: 124.124.47.116

------=_Part_1902_1889220396.1444106632498
Content-Type: multipart/alternative; 
	boundary="----=_Part_1903_130749030.1444106632498"

------=_Part_1903_130749030.1444106632498
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Done. Seems like those folders didn't have much to compile, only one file 
whose dependencies were compiled.
Thank you
On Tuesday, October 6, 2015 at 9:38:25 AM UTC+5:30, Shivani Bhardwaj wrote:
>
> On Sun, Oct 04, 2015 at 02:59:17PM +0200, Julia Lawall wrote: 
> > On Sun, 4 Oct 2015, Shivani Bhardwaj wrote: 
> > 
> >>> 
> >>> Hi Julia, Sudip! I think after I have used make allmodconfig, 
> >>> something is not working right. Now, when I use sparse, it shows 
> >>> messages and warnings for arch/ and include/ , is this dues to some 
> >>> change in configuration file? Please respond. 
> >>> Thank you! 
> >>> 
> > > Thanks, Sudip! And for last two messages I did make use of mutt, I 
> don't 
> > > know why doesn't it show up. 
> > > And, does this mean that every time I compile, I must use 
> allmodconfig? 
> > 
> > You have top posted again.  Once you make allmodconfig, it should be 
> good 
> > enough to leave it as is, at least until you update your kernel and get 
> a 
> > new Kconfig file. 
> > 
> > julia 
> > 
> > > Thank you 
> > > 
> > > On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee 
> wrote: 
> > >       On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj 
> > >       wrote: 
> > >       > Hi Sudeep! I'm having trouble with inline mode of 
> > >       communication, I think 
> > >       > I'm doing it wrong. I'm not getting exactly difference between 
> > >       top-post and 
> > >       > inline way, I've been warned about this before as well. I'll 
> > >       learn as soon 
> > >       > as possible. I've sent my .config file. You can check it. 
> > >       Ok, now I understand why you are getting the warning. :) 
> > >       In your .config CONFIG_STAGING_BOARD is not selected. So 
> > >       staging/board 
> > >       is not included in the build and as a result the modules on 
> > >       which board 
> > >       is dependent are also not built. So in this scenario when you 
> > >       try to do 
> > >       make M=drivers/staging/board it gives warning. To test properly 
> > >       try with 
> > >       make allmodconfig. 
> > > 
> > >       regards 
> > >       sudip 
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google 
> Groups 
> > > "outreachy-kernel" group. 
> > > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > > email to outreachy-kernel+unsubscribe@googlegroups.com. 
> > > To post to this group, send email to outreachy-kernel@googlegroups.com. 
>
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55- 
> > > b7991ea55a5b%40googlegroups.com. 
> > > For more options, visit https://groups.google.com/d/optout. 
> > > 
> > > 
>

------=_Part_1903_130749030.1444106632498
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Done. Seems like those folders didn&#39;t have much to=
 compile, only one file whose dependencies were compiled.<br>Thank you<br>O=
n Tuesday, October 6, 2015 at 9:38:25 AM UTC+5:30, Shivani Bhardwaj wrote:<=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;">On Sun, Oct 04, 2015 at 02:59:1=
7PM +0200, Julia Lawall wrote:
<br>&gt; On Sun, 4 Oct 2015, Shivani Bhardwaj wrote:
<br>&gt; <br>&gt;&gt;&gt;
<br>&gt;&gt;&gt; Hi Julia, Sudip! I think after I have used make allmodconf=
ig,
<br>&gt;&gt;&gt; something is not working right. Now, when I use sparse, it=
 shows
<br>&gt;&gt;&gt; messages and warnings for arch/ and include/ , is this due=
s to some
<br>&gt;&gt;&gt; change in configuration file? Please respond.=20
<br>&gt;&gt;&gt; Thank you!
<br>&gt;&gt;&gt;
<br>&gt; &gt; Thanks, Sudip! And for last two messages I did make use of mu=
tt, I don&#39;t
<br>&gt; &gt; know why doesn&#39;t it show up.
<br>&gt; &gt; And, does this mean that every time I compile, I must use all=
modconfig?
<br>&gt;=20
<br>&gt; You have top posted again. =C2=A0Once you make allmodconfig, it sh=
ould be good
<br>&gt; enough to leave it as is, at least until you update your kernel an=
d get a
<br>&gt; new Kconfig file.
<br>&gt;=20
<br>&gt; julia
<br>&gt;=20
<br>&gt; &gt; Thank you
<br>&gt; &gt;
<br>&gt; &gt; On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukh=
erjee wrote:
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 On Fri, Oct 02, 2015 at 05:01:06AM -0700=
, Shivani Bhardwaj
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 wrote:
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 &gt; Hi Sudeep! I&#39;m having trouble w=
ith inline mode of
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 communication, I think
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 &gt; I&#39;m doing it wrong. I&#39;m not=
 getting exactly difference between
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 top-post and
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 &gt; inline way, I&#39;ve been warned ab=
out this before as well. I&#39;ll
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 learn as soon
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 &gt; as possible. I&#39;ve sent my .conf=
ig file. You can check it.
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 Ok, now I understand why you are getting=
 the warning. :)
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 In your .config CONFIG_STAGING_BOARD is =
not selected. So
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 staging/board
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 is not included in the build and as a re=
sult the modules on
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 which board
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 is dependent are also not built. So in t=
his scenario when you
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 try to do
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 make M=3Ddrivers/staging/board it gives =
warning. To test properly
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 try with
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 make allmodconfig.
<br>&gt; &gt;
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 regards
<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 sudip
<br>&gt; &gt;
<br>&gt; &gt; --
<br>&gt; &gt; You received this message because you are subscribed to the G=
oogle Groups
<br>&gt; &gt; &quot;outreachy-kernel&quot; group.
<br>&gt; &gt; To unsubscribe from this group and stop receiving emails from=
 it, send an
<br>&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goo=
glegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googlegr=
oups.com</a>.
<br>&gt; &gt; To post to this group, send email to <a href=3D"mailto:outrea=
chy-kernel@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroup=
s.<wbr>com</a>.
<br>&gt; &gt; To view this discussion on the web visithttps://<a href=3D"ht=
tp://groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55-" t=
arget=3D"_blank">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>71611=
fa2-5d15-4032-bd55-</a>
<br>&gt; &gt; b7991ea55a5b%<a href=3D"http://40googlegroups.com" target=3D"=
_blank">40googlegroups.<wbr>com</a>.
<br>&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/=
d/optout" target=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; &gt;
<br>&gt; &gt;
<br></blockquote></div>
------=_Part_1903_130749030.1444106632498--

------=_Part_1902_1889220396.1444106632498--

