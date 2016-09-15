X-GM-THRID: 6330577059983654912
X-Received: by 10.98.205.131 with SMTP id o125mr7310348pfg.12.1473961895131;
        Thu, 15 Sep 2016 10:51:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.11 with SMTP id 11ls1225937iog.26.gmail; Thu, 15 Sep
 2016 10:51:34 -0700 (PDT)
X-Received: by 10.36.14.84 with SMTP id 81mr3127166ite.7.1473961894291;
        Thu, 15 Sep 2016 10:51:34 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id w124si488685ywc.4.2016.09.15.10.51.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id h8so59335793qka.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 10:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=TtkEQwhRYQmoOsEtBSEV/iYMAntmZgB3Cm1fzy0/Yq0=;
        b=aAqiQnx50koOq+sSJJixYT9umwGKyD32cJnQxahzjcGNQoim2DGiMRbJV0LGk3MHNx
         IrB31deF8qf3ABHV1AJg/k/PCIHymi67hYVXZP4z5bauBdP/K6Hh6xoDiIzce0LJPfS7
         tVkJwCNngmgr5IYXwAFHdDHwxwFFmpke9Z0Pg2PMmR/OlnojIcY97b2QGNUQB2DTD5ne
         7he6inwLj+27yofEpUXKmHmSoXj97fq1rJOHkRU4f7NcWWXgxZkOP97f4xcrQw6bUYia
         euFEi9Gg7xBgWNqEzfYbEBiV/rWELyBPAyRj1xffg21D3ZnRygrNChoeiGOzousy/2lf
         jjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=TtkEQwhRYQmoOsEtBSEV/iYMAntmZgB3Cm1fzy0/Yq0=;
        b=RdYQN6ysXj+LFm1wqrRbT+hEWMZaRi0uIKNkGYXEEFLeSCMAMj8tYgS1K6rn2rsjZJ
         dGfLbMQvt+vqDQD8W/bk6eY8+kxgRFxnQfmMdSg8QmduIp7TExfqxoBUP/Hvf9NR3d3o
         fzBwzp89Ol7btX5eTSZfId4jrprhfKxInuxuat3+Ci9Po96M7Isj5Fr7p7ZzLJyx0CzT
         L5XphDHRX8LhZ7u1AVh1At4GsG++ZMht9dXBOWRimWLG2540DYf4Cq7dyQF8TNt9P1cS
         yaFKw7E7m9oY86l3yCIEBLs2AcFk4Pml9Fa6ED2kdXR6jAtmaEBiuqGnUrZKl5D/+4Zh
         BVMw==
X-Gm-Message-State: AE9vXwNSg9WuGbZKZwgizfeOeGR/PgmWBwzYTdTJBWRs8PbgvA54UWNES7mJ97YDGzSWGuO4ZOZ/jj+BdCAdcA==
X-Received: by 10.55.48.9 with SMTP id w9mr10397097qkw.147.1473961894070; Thu,
 15 Sep 2016 10:51:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Thu, 15 Sep 2016 10:51:33 -0700 (PDT)
In-Reply-To: <20160915172523.GA20506@kroah.com>
References: <20160915154838.GA7175@life-desktop> <20160915172523.GA20506@kroah.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 15 Sep 2016 23:21:33 +0530
Message-ID: <CAAbeOSuRSzizAuoL12+-uSUiq6HXtwr6Em_qREq28wFXZjO9hQ@mail.gmail.com>
Subject: Re: [PATCH v2] staging: olpc_dcon: Prefer using the BIT macro
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Jon Nettleton <jon.nettleton@gmail.com>
Content-Type: multipart/alternative; boundary=001a11471b101bce77053c8f7ffe

--001a11471b101bce77053c8f7ffe
Content-Type: text/plain; charset=UTF-8

>You're previous commit message was a bit better :)
>
>And again, did you build test this?  Just looking at it, I do not think
>it will...
>
>thanks,


I can't understand what should I need to change in commit message


thanks,

On Thu, Sep 15, 2016 at 10:55 PM, Greg KH <gregkh@linuxfoundation.org>
wrote:

> On Thu, Sep 15, 2016 at 09:18:46PM +0530, Anchal Jain wrote:
> > This patch fix the CHECK
> > CHECK: Prefer using the BIT macro
> > detected by checkpatch.pl
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >       changes in v2:
> >               -modify commit message
>
> You're previous commit message was a bit better :)
>
> And again, did you build test this?  Just looking at it, I do not think
> it will...
>
> thanks,
>
> greg k-h
>

--001a11471b101bce77053c8f7ffe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span class=3D"gmail-im"><br>
</span>&gt;You&#39;re previous commit message was a bit better :)<br>
&gt;<br>
&gt;And again, did you build test this?=C2=A0 Just looking at it, I do not =
think<br>
&gt;it will...<br>
&gt;<br>
&gt;thanks,<br><br><br>I can&#39;t understand what should I need to change =
in commit message<br></div><div><br></div><div><br></div><div>thanks,</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep=
 15, 2016 at 10:55 PM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:greg=
kh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, =
Sep 15, 2016 at 09:18:46PM +0530, Anchal Jain wrote:<br>
&gt; This patch fix the CHECK<br>
&gt; CHECK: Prefer using the BIT macro<br>
&gt; detected by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-modify commit m=
essage<br>
<br>
</span>You&#39;re previous commit message was a bit better :)<br>
<br>
And again, did you build test this?=C2=A0 Just looking at it, I do not thin=
k<br>
it will...<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a11471b101bce77053c8f7ffe--

