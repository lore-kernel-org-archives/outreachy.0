X-GM-THRID: 7018560405884633088
Date: Wed, 13 Oct 2021 09:12:49 -0700 (PDT)
From: kushal kothari <kushalkothari285@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e97abd31-41ed-464d-8025-e1e830733ef6n@googlegroups.com>
In-Reply-To: <20211013154012.GA421014@alison-desk>
References: <CALtHPQvouXM=mvNH=m6dZ70BkhsksCSyS+F5kyb7NENa8-Knww@mail.gmail.com>
 <CABpLfoj-C-E3JhNkz1w7foqsde+vnQvuxzjeDUke21QOdf+HKQ@mail.gmail.com>
 <CALtHPQuOcvDcDU4PXBtQhaqt1BWtsrqWwZFVbF=dhhw1WnWmMQ@mail.gmail.com>
 <YWbve+s/LkX+sAo5@kernel.org>
 <20211013154012.GA421014@alison-desk>
Subject: Re: [Outreachy kernel] Re: Outreachy applicant 2021 - Interested in
 the project : Create memblock simulator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1290_594706807.1634141569345"

------=_Part_1290_594706807.1634141569345
Content-Type: multipart/alternative; 
	boundary="----=_Part_1291_2132554330.1634141569345"

------=_Part_1291_2132554330.1634141569345
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

> The first patch tutorial has a section on get_maintainers.pl usage. 

Thank you. I sent the patch to the maintainers. Unlike GitHub, this was new 
to me.

Also, for any participant, after fixing the TODO and if facing with this 
issue: this blog 
<https://vthakkar1994.wordpress.com/2017/01/21/sending-patches-with-the-git-send-email/> will 
be helpful.


On Wednesday, October 13, 2021 at 9:02:11 PM UTC+5:30 Alison Schofield 
wrote:

> On Wed, Oct 13, 2021 at 05:38:51PM +0300, Mike Rapoport wrote:
> > (added outreachy-kernel <outreach...@googlegroups.com>)
> > 
> > Hi,
> > 
> > Please 'cc the outreachy-kernel group for process questions, they may be
> > relevant for other participants.
> > 
> > On Wed, Oct 13, 2021 at 07:53:13PM +0530, kushal kothari wrote:
> > > Hii,
> > > I need your help with the understanding of the patch.
> > > I fixed the code and created a small patch .And at the end while 
> submitting the
> > > patch I am stuck to whom should I send my patch to ?
> > > "To whom should the emails be sent (if anyone)?"
> > > 
> > > So, Should I mail it this to all the maintainer which gmail can be 
> found when
> > > running the script along with you
> > > git show HEAD | perl scripts/get_maintainer.pl --separator , 
> --nokeywords
> > > --nogit --nogit-fallback --norolestats --nol
> > > 
> > > Or am I missing something?
> > 
> > The simplest way to find out who should get the patch is indeed to use
> > scripts/get_maintainer.pl. Depending on your setup, the script output 
> can
> > be integrated with git send-email or mutt, but sometimes it is usefull to
> > review the addresses and edit the recipients list by hand.
> > 
> > Please also 'cc the outreachy-kernel group when you post your patches.
> > 
> > There are more details about how to select recipients here:
> > 
> > 
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
> > 
>
> The first patch tutorial has a section on get_maintainers.pl usage.
>
> > > This is my first time submitting a patch .Can you please help me with 
> this? to
> > > whom to submit the patch? 
> > > 
> > > On Tue, Oct 12, 2021 at 5:29 PM Mike Rapoport <mike.r...@gmail.com> 
> wrote:
> > > 
> > > Hi Kush,
> > > 
> > > On Tue, Oct 12, 2021 at 8:25 AM kushal kothari
> > > <kushalko...@gmail.com> wrote:
> > > >
> > > > Good Morning Mike,
> > > >
> > > > My name is Kush from Mumbai, India. My Outreachy initial application 
> is
> > > accepted. I am very much interested in the topic "Create a memblock
> > > simulator" . I hope, I am not connecting with you late for this 
> Outreachy
> > > project.
> > > 
> > > It's not too late :)
> > > 
> > > > My previous work and interest in this topic:
> > > >
> > > > My previous internship(i.e.Summer ISCAS 2021) was with Apache Apisix
> > > under Apache Software Foundation. The program was almost similar where
> > > students connect with mentors and work remotely(similar to 
> Outreachy/GSoC).
> > > Though the main task there was to create a packaging tool(adding 
> support of
> > > Ubuntu/CentOS/Fedora) etc [Fedora commit hasn't been merged yet]. 
> Therein,
> > > I worked majorly with Makefile, Docker Shell Scripting, etc. Also, I 
> have
> > > understanding about Linux kernel development. So my tech stacks are 
> very
> > > much aligned with the requirements of the project.
> > > >
> > > > As the first task mentioned in the Outreachy project contribution
> > > information of ours -> I also went through complete Linux kernel 
> tutorials
> > > installing all the prerequisites, configuring mutt and sent you a null
> > > patch, and did all other setups as said in the tutorial.
> > > 
> > > I believe the next task for applicants wishing to participate in Linux
> > > kernel project is to upstream a couple of cleanup patches.
> > > As you've gone through the setup of the environment, it should not be
> > > a problem :)
> > > 
> > > > My Github: https://github.com/Kushal-kothari
> > > 
> > > --
> > > Sincerely yours,
> > > Mike.
> > > 
> > 
> > -- 
> > Sincerely yours,
> > Mike.
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com.
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/YWbve%2Bs/LkX%2BsAo5%40kernel.org
> .
>

------=_Part_1291_2132554330.1634141569345
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div>&gt; The first patch tutorial has a section on <a href=3D"http://get_m=
aintainers.pl">get_maintainers.pl</a> usage. <br></div><div><p><span>Thank =
you. I sent the patch to the maintainers. Unlike GitHub, this was new to me=
.</span></p><p><span>Also, for any participant, after fixing the TODO and i=
f facing with this issue: this&nbsp;</span><a href=3D"https://vthakkar1994.=
wordpress.com/2017/01/21/sending-patches-with-the-git-send-email/"><span>bl=
og</span></a><span>&nbsp;will be helpful.</span></p></div><div><br></div><d=
iv><br></div><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_at=
tr">On Wednesday, October 13, 2021 at 9:02:11 PM UTC+5:30 Alison Schofield =
wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0=
.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">On Wed=
, Oct 13, 2021 at 05:38:51PM +0300, Mike Rapoport wrote:
<br>&gt; (added outreachy-kernel &lt;<a href data-email-masked rel=3D"nofol=
low">outreach...@googlegroups.com</a>&gt;)
<br>&gt;=20
<br>&gt; Hi,
<br>&gt;=20
<br>&gt; Please &#39;cc the outreachy-kernel group for process questions, t=
hey may be
<br>&gt; relevant for other participants.
<br>&gt;=20
<br>&gt; On Wed, Oct 13, 2021 at 07:53:13PM +0530, kushal kothari wrote:
<br>&gt; &gt; Hii,
<br>&gt; &gt; I need your help with the understanding of the patch.
<br>&gt; &gt; I fixed the code and created a small patch .And at the end wh=
ile submitting the
<br>&gt; &gt; patch I am stuck to whom should I send my patch to ?
<br>&gt; &gt; &quot;To whom should the emails be sent (if anyone)?&quot;
<br>&gt; &gt;=20
<br>&gt; &gt; So, Should I mail it this to all the maintainer which gmail c=
an be found when
<br>&gt; &gt; running the script along with you
<br>&gt; &gt; git show HEAD | perl scripts/<a href=3D"http://get_maintainer=
.pl" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www=
.google.com/url?hl=3Den&amp;q=3Dhttp://get_maintainer.pl&amp;source=3Dgmail=
&amp;ust=3D1634227072576000&amp;usg=3DAFQjCNHA3o_tGWsJNwYs2d7HDlCaDj6yeA">g=
et_maintainer.pl</a> --separator , --nokeywords
<br>&gt; &gt; --nogit --nogit-fallback --norolestats --nol
<br>&gt; &gt;=20
<br>&gt; &gt; Or am I missing something?
<br>&gt;=20
<br>&gt; The simplest way to find out who should get the patch is indeed to=
 use
<br>&gt; scripts/<a href=3D"http://get_maintainer.pl" target=3D"_blank" rel=
=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&am=
p;q=3Dhttp://get_maintainer.pl&amp;source=3Dgmail&amp;ust=3D163422707257600=
0&amp;usg=3DAFQjCNHA3o_tGWsJNwYs2d7HDlCaDj6yeA">get_maintainer.pl</a>. Depe=
nding on your setup, the script output can
<br>&gt; be integrated with git send-email or mutt, but sometimes it is use=
full to
<br>&gt; review the addresses and edit the recipients list by hand.
<br>&gt;=20
<br>&gt; Please also &#39;cc the outreachy-kernel group when you post your =
patches.
<br>&gt;=20
<br>&gt; There are more details about how to select recipients here:
<br>&gt;=20
<br>&gt; <a href=3D"https://www.kernel.org/doc/html/latest/process/submitti=
ng-patches.html#select-the-recipients-for-your-patch" target=3D"_blank" rel=
=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&am=
p;q=3Dhttps://www.kernel.org/doc/html/latest/process/submitting-patches.htm=
l%23select-the-recipients-for-your-patch&amp;source=3Dgmail&amp;ust=3D16342=
27072576000&amp;usg=3DAFQjCNGpweObmUvW47ekJJ-Zu2Pafdxhng">https://www.kerne=
l.org/doc/html/latest/process/submitting-patches.html#select-the-recipients=
-for-your-patch</a>
<br>&gt; =20
<br>
<br>The first patch tutorial has a section on <a href=3D"http://get_maintai=
ners.pl" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https:/=
/www.google.com/url?hl=3Den&amp;q=3Dhttp://get_maintainers.pl&amp;source=3D=
gmail&amp;ust=3D1634227072576000&amp;usg=3DAFQjCNG4syGl_KA54dhp83viE4C3vPfe=
iA">get_maintainers.pl</a> usage.
<br>
<br>&gt; &gt; This is my first time submitting a patch .Can you please help=
 me with this? to
<br>&gt; &gt; whom to submit the patch?=C2=A0
<br>&gt; &gt;=20
<br>&gt; &gt; On Tue, Oct 12, 2021 at 5:29 PM Mike Rapoport &lt;<a href dat=
a-email-masked rel=3D"nofollow">mike.r...@gmail.com</a>&gt; wrote:
<br>&gt; &gt;=20
<br>&gt; &gt;     Hi Kush,
<br>&gt; &gt;=20
<br>&gt; &gt;     On Tue, Oct 12, 2021 at 8:25 AM kushal kothari
<br>&gt; &gt;     &lt;<a href data-email-masked rel=3D"nofollow">kushalko..=
.@gmail.com</a>&gt; wrote:
<br>&gt; &gt;     &gt;
<br>&gt; &gt;     &gt; Good Morning Mike,
<br>&gt; &gt;     &gt;
<br>&gt; &gt;     &gt; My name is Kush from Mumbai, India. My Outreachy ini=
tial application is
<br>&gt; &gt;     accepted. I am very much interested in the topic &quot;Cr=
eate a memblock
<br>&gt; &gt;     simulator&quot; . I hope, I am not connecting with you la=
te for this Outreachy
<br>&gt; &gt;     project.
<br>&gt; &gt;=20
<br>&gt; &gt;     It&#39;s not too late :)
<br>&gt; &gt;=20
<br>&gt; &gt;     &gt; My previous work and interest in this topic:
<br>&gt; &gt;     &gt;
<br>&gt; &gt;     &gt; My previous internship(i.e.Summer ISCAS 2021) was wi=
th Apache Apisix
<br>&gt; &gt;     under Apache Software Foundation. The program was almost =
similar where
<br>&gt; &gt;     students connect with mentors and work remotely(similar t=
o Outreachy/GSoC).
<br>&gt; &gt;     Though the main task there was to create a packaging tool=
(adding support of
<br>&gt; &gt;     Ubuntu/CentOS/Fedora) etc [Fedora commit hasn&#39;t been =
merged yet]. Therein,
<br>&gt; &gt;     I worked majorly with Makefile, Docker Shell Scripting, e=
tc. Also, I have
<br>&gt; &gt;     understanding about Linux kernel development. So my tech =
stacks are very
<br>&gt; &gt;     much aligned with the requirements of the project.
<br>&gt; &gt;     &gt;
<br>&gt; &gt;     &gt; As the first task mentioned in the Outreachy project=
 contribution
<br>&gt; &gt;     information of ours -&gt; I also went through complete Li=
nux kernel tutorials
<br>&gt; &gt;     installing all the prerequisites, configuring mutt and se=
nt you a null
<br>&gt; &gt;     patch, and did all other setups as said in the tutorial.
<br>&gt; &gt;=20
<br>&gt; &gt;     I believe the next task for applicants wishing to partici=
pate in Linux
<br>&gt; &gt;     kernel project is to upstream a couple of cleanup patches=
.
<br>&gt; &gt;     As you&#39;ve gone through the setup of the environment, =
it should not be
<br>&gt; &gt;     a problem :)
<br>&gt; &gt;=20
<br>&gt; &gt;     &gt; My Github: <a href=3D"https://github.com/Kushal-koth=
ari" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www=
.google.com/url?hl=3Den&amp;q=3Dhttps://github.com/Kushal-kothari&amp;sourc=
e=3Dgmail&amp;ust=3D1634227072576000&amp;usg=3DAFQjCNGo9vXab0Y7BB7VS5Irb8m5=
dDhcOg">https://github.com/Kushal-kothari</a>
<br>&gt; &gt;=20
<br>&gt; &gt;     --
<br>&gt; &gt;     Sincerely yours,
<br>&gt; &gt;     Mike.
<br>&gt; &gt;=20
<br>&gt;=20
<br>&gt; --=20
<br>&gt; Sincerely yours,
<br>&gt; Mike.
<br>&gt;=20
<br>&gt; --=20
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href data-email-masked rel=3D"nofollow">outreachy-kern.=
..@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/YWbve%2Bs/LkX%2BsAo5%40kernel.org" tar=
get=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.=
com/url?hl=3Den&amp;q=3Dhttps://groups.google.com/d/msgid/outreachy-kernel/=
YWbve%252Bs/LkX%252BsAo5%2540kernel.org&amp;source=3Dgmail&amp;ust=3D163422=
7072576000&amp;usg=3DAFQjCNH3dDh99MkyIgB8WLdPERRpiE-hnA">https://groups.goo=
gle.com/d/msgid/outreachy-kernel/YWbve%2Bs/LkX%2BsAo5%40kernel.org</a>.
<br></blockquote></div>
------=_Part_1291_2132554330.1634141569345--

------=_Part_1290_594706807.1634141569345--

