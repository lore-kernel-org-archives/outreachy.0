X-GM-THRID: 6256413152198524928
X-Received: by 10.13.216.150 with SMTP id a144mr9641444ywe.52.1456684701375;
        Sun, 28 Feb 2016 10:38:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls2283850qge.89.gmail; Sun, 28 Feb
 2016 10:38:20 -0800 (PST)
X-Received: by 10.31.11.75 with SMTP id 72mr9889517vkl.2.1456684700701;
        Sun, 28 Feb 2016 10:38:20 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-yw0-x231.google.com (mail-yw0-x231.google.com. [2607:f8b0:4002:c05::231])
        by gmr-mx.google.com with ESMTPS id q187si1365088ywf.4.2016.02.28.10.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 10:38:20 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) client-ip=2607:f8b0:4002:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x231.google.com with SMTP id u200so105740575ywf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 10:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=/muheyAFP9JSQbg3rxw858BD9VkbnUbVUqRQKhmPCo4=;
        b=NfvDM83JQm2fbsyk5kox4k5++4xTyOTabwc8FQuftKaVycSA3m9y0L0vnUWqEfQLyD
         qtyLPPkWBA6FxblPwsgTlv7p4NOn/knoa4lUXkzqg3NQufsEIrhfqq5WcJWWorif601Y
         HZIfvQTyQwKB7yMxJK5Byq18WUXXrcpoaYvmwTPAQwvIafLiw1i+fYHFNDUHUPFblIGk
         zwX5XURCpiAuIG1ngTptAjyLJhfXVulrsF77Vn7tPvTkBxtLRk7a8tna38aHDV3DWc2/
         2pWkeGxh/fu+gpzuXigUuVsO4tH416ed/abQorCf3CDwyFsLEE9RcCpjwZGxy6d0yAdf
         Gj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=/muheyAFP9JSQbg3rxw858BD9VkbnUbVUqRQKhmPCo4=;
        b=guwkm8GCdoeL0Mjjn8XsHyTNxL0uuTksHk1bDTPOjz5EzjiycWZCT2RQEgVgod/1v7
         8v9+/ZCn5JSRbL4eKgX++kxZGjjxj4dZ3gv2OvDLQb5WBMT0oir9wXj4wOk1U+gwBTwi
         6mrw77TZTqhtSdTjKK6oA4xldb9J9BavLIFwW/9XaVAsf6gPwddtNitkY8xstQ1101jf
         GDlk4TZtm8Y7GlyZ+yVoWaZnv4xGG+orBo5sOqtHBRWRuX/4FVBqxaSiMok4prlWekli
         i75jYHkT1QYqlCdaTTovEwBAETBwfqLlDsk2v72fQ71BDwjFWSR8XKD93GTGCAoKQgeH
         1Sxg==
X-Gm-Message-State: AD7BkJKiCbbi4K45fHgv/wOaDSHgtfSJeg5i0u7ftxwah97tNnl5lP9YdbMbAF9usBdrEzz0NNeZEAIC4REzfg==
MIME-Version: 1.0
X-Received: by 10.13.219.133 with SMTP id d127mr6378958ywe.73.1456684700435;
 Sun, 28 Feb 2016 10:38:20 -0800 (PST)
Received: by 10.37.53.5 with HTTP; Sun, 28 Feb 2016 10:38:20 -0800 (PST)
In-Reply-To: <20160225221151.GN6092@mtj.duckdns.org>
References: <CAC7CfdpLDNqf+4_oaF3wT=6nA_Om87Fdf4-RYZrTcp9u3TE1NA@mail.gmail.com>
	<20160225221151.GN6092@mtj.duckdns.org>
Date: Mon, 29 Feb 2016 00:08:20 +0530
Message-ID: <CAC7Cfdq=XLk1rf_hcBz89b1iVqp6U34GOQS9YYf8W4Cvm=yb4A@mail.gmail.com>
Subject: Re: Regarding submission of first patch to the kernel
From: Pooja Shamili <poojashamili@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114fc1021e90b6052cd8d6b3

--001a114fc1021e90b6052cd8d6b3
Content-Type: text/plain; charset=UTF-8

Hi Tejun,

Thanks for your reply. Sorry for not being very specific in my email. I
wanted to know what kind of background knowledge do I need to gather in
order to start doing the tasks and you answered that by suggesting to write
a test module that experiments with a workqueue. I read the tasks on the
Mentor's Page and I also went through the documentation on workqueues. I
got to read about alloc_workqueue but in the tasks page, there is also
system_wq that is mentioned. I am not able to gather much information about
this particular function. Can you suggest a resource from where I could
understand the function better?

Thanks,
Pooja

On Fri, Feb 26, 2016 at 3:41 AM, Tejun Heo <tj@kernel.org> wrote:

> Hello, Pooja.
>
> On Tue, Feb 23, 2016 at 11:36:56AM +0530, Pooja Shamili wrote:
> > I am Pooja Shamili, a third year C.S.E undergraduate student from
> > IIIT-Hyderabad, India and I am very interested in applying to the
> Outreachy
> > program for this summer. I was going through all the projects for this
> > particular round and I found the project "Update legacy workqueue
> creation
> > interface users"  interesting and something I would like to work on. Can
> > you help me understand this project better and guide me to gather the
> > required background knowledge for it? Also if there are any tasks I could
> > do so that I will be able to submit my first patch, how can I claim one?
>
> Just in case you missed, the following page contains more details.
>
>  http://kernelnewbies.org/Tejun_Heo
>
> If you generally wanna learn about workqueue, it'd be best to write up
> a test module which experiements with a workqueue and see how
> different aspects of it work.
>
> In a nutshell, it's an asynchronous execution mechanism or a worker
> pool so that, for example, an irq handler can schedule a function to
> be executed with a blockable context.
>
> Heh, I'm a bit lost on where to begin.  Can you please ask more
> specific questions?  Which part do you understand and where aren't you
> sure?  Also, can you please cc the outreachy mailing list so that
> others can learn from the thread too?
>
> Thanks.
>
> --
> tejun
>

--001a114fc1021e90b6052cd8d6b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tejun,<div><br></div><div>Thanks for your reply. Sorry =
for not being very specific in my email. I wanted to know what kind of back=
ground knowledge do I need to gather in order to start doing the tasks and =
you answered that by suggesting to write a test module that experiments wit=
h a workqueue. I read the tasks on the Mentor&#39;s Page and I also went th=
rough the documentation on workqueues. I got to read about alloc_workqueue =
but in the tasks page, there is also system_wq that is mentioned. I am not =
able to gather much information about this particular function. Can you sug=
gest a resource from where I could understand the function better?=C2=A0</d=
iv><div><br></div><div>Thanks,</div><div>Pooja</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Fri, Feb 26, 2016 at 3:41 AM, T=
ejun Heo <span dir=3D"ltr">&lt;<a href=3D"mailto:tj@kernel.org" target=3D"_=
blank">tj@kernel.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hello, Pooja.<br>
<span class=3D""><br>
On Tue, Feb 23, 2016 at 11:36:56AM +0530, Pooja Shamili wrote:<br>
&gt; I am Pooja Shamili, a third year C.S.E undergraduate student from<br>
&gt; IIIT-Hyderabad, India and I am very interested in applying to the Outr=
eachy<br>
&gt; program for this summer. I was going through all the projects for this=
<br>
&gt; particular round and I found the project &quot;Update legacy workqueue=
 creation<br>
&gt; interface users&quot;=C2=A0 interesting and something I would like to =
work on. Can<br>
&gt; you help me understand this project better and guide me to gather the<=
br>
&gt; required background knowledge for it? Also if there are any tasks I co=
uld<br>
&gt; do so that I will be able to submit my first patch, how can I claim on=
e?<br>
<br>
</span>Just in case you missed, the following page contains more details.<b=
r>
<br>
=C2=A0<a href=3D"http://kernelnewbies.org/Tejun_Heo" rel=3D"noreferrer" tar=
get=3D"_blank">http://kernelnewbies.org/Tejun_Heo</a><br>
<br>
If you generally wanna learn about workqueue, it&#39;d be best to write up<=
br>
a test module which experiements with a workqueue and see how<br>
different aspects of it work.<br>
<br>
In a nutshell, it&#39;s an asynchronous execution mechanism or a worker<br>
pool so that, for example, an irq handler can schedule a function to<br>
be executed with a blockable context.<br>
<br>
Heh, I&#39;m a bit lost on where to begin.=C2=A0 Can you please ask more<br=
>
specific questions?=C2=A0 Which part do you understand and where aren&#39;t=
 you<br>
sure?=C2=A0 Also, can you please cc the outreachy mailing list so that<br>
others can learn from the thread too?<br>
<br>
Thanks.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
tejun<br>
</font></span></blockquote></div><br></div>

--001a114fc1021e90b6052cd8d6b3--

