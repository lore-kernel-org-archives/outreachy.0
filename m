X-GM-THRID: 6249455675787706368
X-Received: by 10.66.150.131 with SMTP id ui3mr17694137pab.42.1455088974913;
        Tue, 09 Feb 2016 23:22:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.163 with SMTP id h32ls256456qgf.70.gmail; Tue, 09 Feb
 2016 23:22:54 -0800 (PST)
X-Received: by 10.13.223.140 with SMTP id i134mr35051822ywe.11.1455088974193;
        Tue, 09 Feb 2016 23:22:54 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id xh11si575896igb.0.2016.02.09.23.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 23:22:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f81so892086iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 23:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=c50QKaGDTiZ+DnMq50QjB8sP04rtHRcWHFQK3C/vwiA=;
        b=uY5G+RPW1XetqFCK60/mr+8Nl+46vLXcVco4p8JYAK9KCm8i65VbQeheR+nxzmBtDh
         zudQqE6maEK8LiuLo5nrGw5atOv8cZnxuWByNiGGccO+U05km2b6JnmiQP1P2d/Mefiu
         JdVrF3ik0wCKJ5ToZYFuIWqoALagPxkaMXqJDosLybD0IdtXoprUm+E+m1ouzbWzdxpe
         LLRmw3hf8Ix+pTcBD/sv3qdkVgrGILZ950V3W6/VQJJtgMAxcHp53YLv3Dy0zyYeEaIt
         +XfZ9AtnJXcbfOlTzJjJmWU+5M4/8K/Nb13h0BnBECCJ7K/C/uMIuyXtWrE5ELfh5IGc
         VuRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=c50QKaGDTiZ+DnMq50QjB8sP04rtHRcWHFQK3C/vwiA=;
        b=UVnXosyiS90+m0inc/An93cV8GZ1z4RJjm1ukaKy1dEob/3Z+MhN1UIQl6iJcfWZt4
         MbmanPCO2YJGfQQDo6FX1O0nHGA45YVUl+DgNpUcO3cJIthPBhaBy8UbyXYTuEZxaQRb
         cfzTQj891+xhNu7/TKw6C6ydhHKduSio40JtDq8X8zPFWiakugG9OcmkwjruhPjD7usV
         g0HCWsuBA0bn775xguThl9mTh8HtTokWPpyoiIiQi7WY/uGXDhUr4kOQ4VoluOjGH7CP
         NqJ6vy8AcWtMaSz0Bm4FXifU9A+yxyIQC8pSeT0LVIQoUIeqsKVMXjU/wCS/TDc9C9Ay
         0XUQ==
X-Gm-Message-State: AG10YORotrYxMVc/9I7k4xbF8i3d0SR3S5QeDPmtriMtWK4gcJvHGHExyUlBrzs8KkiSMK9D2v+LaLMvDZgzgQ==
X-Received: by 10.107.157.213 with SMTP id g204mr41457317ioe.169.1455088973993;
 Tue, 09 Feb 2016 23:22:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Tue, 9 Feb 2016 23:22:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602100810150.2050@localhost6.localdomain6>
References: <1455064774-22091-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.02.1602100810150.2050@localhost6.localdomain6>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Wed, 10 Feb 2016 12:52:14 +0530
Message-ID: <CAMnyiXuoxCMWgKooc2ykOH6LNVA4P6F=yZoePb8tRwh_f4ZRew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Drivers: staging: lustre: lustre:
 lov: lov_pool: Fixed a coding style warning
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11402d1c698184052b654d36

--001a11402d1c698184052b654d36
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 10, 2016 at 12:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> The proper strategy to make the subject line is not to simply take the
> entire path of the file and put ": " in place of /.  Unfortunately, there
> is no deterministic way of making the subject line.  Instead, you have to
> see what other people have done, and hope that that is what the
> maintainers want.
>
> To see what others have done, you can do the following, for the file that
> you have changed:
>
> git log --oneline patch/file.c
>
> In your case, most of the examples are actually
>
> staging: lustre:
>
> but that may be too generic.  There are a few occurrences of
>
> staging: lustre: lov:
>
> That one seems better for your case.  Please send a v2.  Since this patch
> is part of a series, the v2 should contain v2s for all of the patches in
> the series, even the ones that don't change.  Indicate clearly what
> changes are made and where changes are not made.
>
> julia
>
Thanks Julia,
I will send v2, with the changes you have pointed out.

Rakhi

>
> On Wed, 10 Feb 2016, Rakhi Sharma wrote:
>
> > Fixed a warning.
> > WARNING: void function return statements are not generally useful.
> >
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c
> b/drivers/staging/lustre/lustre/lov/lov_pool.c
> > index bba37bf..34e0919 100644
> > --- a/drivers/staging/lustre/lustre/lov/lov_pool.c
> > +++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
> > @@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, void
> *v)
> >               lov_pool_putref(iter->pool);
> >               kfree(iter);
> >       }
> > -     return;
> >  }
> >
> >  static int pool_proc_show(struct seq_file *s, void *v)
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1455064774-22091-1-git-send-email-rakhish1994%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a11402d1c698184052b654d36
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 10, 2016 at 12:43 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The proper strate=
gy to make the subject line is not to simply take the<br>
entire path of the file and put &quot;: &quot; in place of /.=C2=A0 Unfortu=
nately, there<br>
is no deterministic way of making the subject line.=C2=A0 Instead, you have=
 to<br>
see what other people have done, and hope that that is what the<br>
maintainers want.<br>
<br>
To see what others have done, you can do the following, for the file that<b=
r>
you have changed:<br>
<br>
git log --oneline patch/file.c<br>
<br>
In your case, most of the examples are actually<br>
<br>
staging: lustre:<br>
<br>
but that may be too generic.=C2=A0 There are a few occurrences of<br>
<br>
staging: lustre: lov:<br>
<br>
That one seems better for your case.=C2=A0 Please send a v2.=C2=A0 Since th=
is patch<br>
is part of a series, the v2 should contain v2s for all of the patches in<br=
>
the series, even the ones that don&#39;t change.=C2=A0 Indicate clearly wha=
t<br>
changes are made and where changes are not made.<br>
<br>
julia<br></blockquote><div>Thanks Julia,</div><div>I will send v2, with the=
 changes you have pointed out.</div><div><br></div><div>Rakhi=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, 10 Feb 2016, Rakhi Sharma wrote:<br>
<br>
&gt; Fixed a warning.<br>
&gt; WARNING: void function return statements are not generally useful.<br>
&gt;<br>
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -<br>
&gt;=C2=A0 1 file changed, 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/st=
aging/lustre/lustre/lov/lov_pool.c<br>
&gt; index bba37bf..34e0919 100644<br>
&gt; --- a/drivers/staging/lustre/lustre/lov/lov_pool.c<br>
&gt; +++ b/drivers/staging/lustre/lustre/lov/lov_pool.c<br>
&gt; @@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, voi=
d *v)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lov_pool_putref(=
iter-&gt;pool);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(iter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int pool_proc_show(struct seq_file *s, void *v)<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1455064774-22091-1-git-send-email-rakhish1=
994%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google=
.com/d/msgid/outreachy-kernel/1455064774-22091-1-git-send-email-rakhish1994=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--001a11402d1c698184052b654d36--

