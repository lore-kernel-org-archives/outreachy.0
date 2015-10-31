X-GM-THRID: 6211498487054336000
X-Received: by 10.112.209.73 with SMTP id mk9mr2606720lbc.14.1446284744013;
        Sat, 31 Oct 2015 02:45:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.134 with SMTP id s128ls287928wmb.41.canary; Sat, 31 Oct
 2015 02:45:43 -0700 (PDT)
X-Received: by 10.28.87.15 with SMTP id l15mr513863wmb.1.1446284743460;
        Sat, 31 Oct 2015 02:45:43 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id g9si209964wmd.2.2015.10.31.02.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 02:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so23984657wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 02:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5Pa76fDRbhaNw9u7fl1GgDX3useH+znnjMtuaTApvgo=;
        b=QAIj0jkYQRf/DSkFQMLTRdSIHy9KVOJr9ltQLcf+D1lflKZEaRbRwY7Q21Cf/FJNLy
         bo6uJd49krH5YhD8/n4ieDDZ/z4uEMnx030D5JRLXDnQzuzE1V3W6fvBkTx818lxw3fq
         kvcea47sFOqTwk1KlvRK6UbQMYnjKv/QbKhujbpsT2hd214hYju3Z5FTN5t7fEn4C83y
         u3BFlfYJXGw0Zix5bDNuf+ic9ojLrGJQClcxjFjAnWQre3SzNy+veExXSXyu7a24+ztw
         1NgJqebjzroKA3ZSDomVLBs60m9c046Rhm0hd01cl4tv+VBVLlu77A13ND9ypGItGh3N
         55Iw==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr13198533wjb.86.1446284743348;
 Sat, 31 Oct 2015 02:45:43 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 31 Oct 2015 02:45:43 -0700 (PDT)
In-Reply-To: <3921328.RGgLIZQx3h@wuerfel>
References: <CAKHNQQG6GJWTStPeSVEJOsTAqNbetQPeF3KR90WibZ=Ns+5RMA@mail.gmail.com>
	<3921328.RGgLIZQx3h@wuerfel>
Date: Sat, 31 Oct 2015 15:15:43 +0530
Message-ID: <CAKHNQQHSgqMqFPwxNeNk+ULuTWqojMZaKhNt-ZpNZ-x3taiZZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Help needed with debugfs functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1130cf265f19cd05236368a2

--001a1130cf265f19cd05236368a2
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 31, 2015 at 2:37 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Friday 30 October 2015 23:16:29 Shivani Bhardwaj wrote:
> >
> > While working on removal of irrelevant wrapper functions, I came across a
> > function lustre_insert_debugfs() in the following file.
> > drivers/staging/lustre/lnet/lnet/router_proc.c
> >
> > However, after some searching, I found out that lnet router debugfs was
> > enabled in this patch:
> > http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html
> >
> > So, my focus is on two functions:
> > 1. void lnet_proc_init(void) which was converted to void
> > lnet_router_debugfs_init(void)
> > 2. void lnet_proc_fini(void) which was converted to void
> > lnet_router_debugfs_fini(void)
> >
> > Now, the first function that is, lnet_router_debugfs_init() acts as a
> > wrapper for the function lustre_insert_debugfs() which is defined in
> > drivers/staging/lustre/lustre/libcfs/module.c.
> >
> > But, the second function, that is, lnet_router_debugfs_fini() has got
> > nothing in its definition but it is still called at many places which
> > implies that it does simply nothing when called. So, I thought of adding
> > lustre_remove_debugfs() in its definition because that is what it is
> > supposed to do. (Please correct me if I am wrong here)
>
> I think that would be wrong, as lustre_remove_debugfs() removes all
> debugfs files, while lnet_router_debugfs_init() only creates a subset
> of the files that refer to lnet_router.
>
> This is fine because we don't actually need to remove them from the
> exact place that they were added from -- removing all files once
> is sufficient.
>
> It's also possible that there is an actual bug here: if
> lnet_router_debugfs_init is part of a loadable module that can
> get removed before lustre_remove_debugfs() is called, then opening
> one of the files after the implementation has been removed would
> certainly result in a crash.
>
>
Fine. But, what should happen when  lnet_proc_fini() is called? There must
be some kind of functionality associated with it. Or, if it is not needed
at all, should I remove all its occurences?

> So, I added lustre_remove_debugfs() as a prototype in the header file
> > drivers/staging/lustre/include/linux/libcfs/libcfs.h so that it can
> easily
> > be called from inside of lnet_router_debugfs_fini().
> >
> > Now, if the above mentioned is the right thing to do, then I'd like to
> know
> > what role does EXPORT_SYMBOL_GPL() play. Please explain with any of the
> > above functions as example. I'm asking this because lustre_insert_debugfs
> > has been defined and then exported with EXPORT_SYMBOL_GPL, but no matter
> > whether I do that with lustre_remove_debugfs or not, it does not throw
> any
> > errors. So, what is it exactly doing here?
>
> EXPORT_SYMBOL_GPL() is needed specifically when the code is defined in
> one module and used in another one. I believe that lustre has too many
> EXPORT_SYMBOL_GPL() statements and a lot of them could be removed, but
> it's not clear if lustre_insert_debugfs is one of them or not.
>
> Try removing the EXPORT_SYMBOL_GPL() and build the entire kernel with
> lustre configured as a loadable module. It is important that you run
> 'make vmlinux && make modules' or a similar command but not just
> 'make drivers/staging/lustre/', which would not check for missing
> export statements.
>
>         Arnd
>

OK. I'm trying this out.

Thanks a lot, Arnd.

--001a1130cf265f19cd05236368a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Oct 31, 2015 at 2:37 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=
=3D"">On Friday 30 October 2015 23:16:29 Shivani Bhardwaj wrote:<br>
&gt;<br>
&gt; While working on removal of irrelevant wrapper functions, I came acros=
s a<br>
&gt; function lustre_insert_debugfs() in the following file.<br>
&gt; drivers/staging/lustre/lnet/lnet/router_proc.c<br>
&gt;<br>
&gt; However, after some searching, I found out that lnet router debugfs wa=
s<br>
&gt; enabled in this patch:<br>
&gt; <a href=3D"http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html=
" rel=3D"noreferrer" target=3D"_blank">http://lkml.iu.edu/hypermail/linux/k=
ernel/1509.1/04202.html</a><br>
&gt;<br>
&gt; So, my focus is on two functions:<br>
&gt; 1. void lnet_proc_init(void) which was converted to void<br>
&gt; lnet_router_debugfs_init(void)<br>
&gt; 2. void lnet_proc_fini(void) which was converted to void<br>
&gt; lnet_router_debugfs_fini(void)<br>
&gt;<br>
&gt; Now, the first function that is, lnet_router_debugfs_init() acts as a<=
br>
&gt; wrapper for the function lustre_insert_debugfs() which is defined in<b=
r>
&gt; drivers/staging/lustre/lustre/libcfs/module.c.<br>
&gt;<br>
&gt; But, the second function, that is, lnet_router_debugfs_fini() has got<=
br>
&gt; nothing in its definition but it is still called at many places which<=
br>
&gt; implies that it does simply nothing when called. So, I thought of addi=
ng<br>
&gt; lustre_remove_debugfs() in its definition because that is what it is<b=
r>
&gt; supposed to do. (Please correct me if I am wrong here)<br>
<br>
</span>I think that would be wrong, as lustre_remove_debugfs() removes all<=
br>
debugfs files, while lnet_router_debugfs_init() only creates a subset<br>
of the files that refer to lnet_router.<br>
<br>
This is fine because we don&#39;t actually need to remove them from the<br>
exact place that they were added from -- removing all files once<br>
is sufficient.<br>
<br>
It&#39;s also possible that there is an actual bug here: if<br>
lnet_router_debugfs_init is part of a loadable module that can<br>
get removed before lustre_remove_debugfs() is called, then opening<br>
one of the files after the implementation has been removed would<br>
certainly result in a crash.<br>
<span class=3D""><br></span></blockquote><div><br>Fine. But, what should ha=
ppen when=C2=A0<span class=3D""> lnet_proc_fini() is called? There must be =
some kind of functionality associated with it. Or, if it is not needed at a=
ll, should I remove all its occurences?<br><br></span> </div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><span class=3D"">
&gt; So, I added lustre_remove_debugfs() as a prototype in the header file<=
br>
&gt; drivers/staging/lustre/include/linux/libcfs/libcfs.h so that it can ea=
sily<br>
&gt; be called from inside of lnet_router_debugfs_fini().<br>
&gt;<br>
&gt; Now, if the above mentioned is the right thing to do, then I&#39;d lik=
e to know<br>
&gt; what role does EXPORT_SYMBOL_GPL() play. Please explain with any of th=
e<br>
&gt; above functions as example. I&#39;m asking this because lustre_insert_=
debugfs<br>
&gt; has been defined and then exported with EXPORT_SYMBOL_GPL, but no matt=
er<br>
&gt; whether I do that with lustre_remove_debugfs or not, it does not throw=
 any<br>
&gt; errors. So, what is it exactly doing here?<br>
<br>
</span>EXPORT_SYMBOL_GPL() is needed specifically when the code is defined =
in<br>
one module and used in another one. I believe that lustre has too many<br>
EXPORT_SYMBOL_GPL() statements and a lot of them could be removed, but<br>
it&#39;s not clear if lustre_insert_debugfs is one of them or not.<br>
<br>
Try removing the EXPORT_SYMBOL_GPL() and build the entire kernel with<br>
lustre configured as a loadable module. It is important that you run<br>
&#39;make vmlinux &amp;&amp; make modules&#39; or a similar command but not=
 just<br>
&#39;make drivers/staging/lustre/&#39;, which would not check for missing<b=
r>
export statements.<br>
<span class=3D""><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">OK. I=
&#39;m trying this out.<br><br></div><div class=3D"gmail_extra">Thanks a lo=
t, Arnd.<br></div></div>

--001a1130cf265f19cd05236368a2--

