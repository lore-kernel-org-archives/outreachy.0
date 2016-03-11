X-GM-THRID: 6260938484867923968
X-Received: by 10.66.122.101 with SMTP id lr5mr9328094pab.3.1457738337022;
        Fri, 11 Mar 2016 15:18:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.200 with SMTP id 191ls1488212ioz.19.gmail; Fri, 11 Mar
 2016 15:18:56 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr9101463pac.19.1457738336426;
        Fri, 11 Mar 2016 15:18:56 -0800 (PST)
Return-Path: <bangashipra@gmail.com>
Received: from mail-ig0-x22e.google.com (mail-ig0-x22e.google.com. [2607:f8b0:4001:c05::22e])
        by gmr-mx.google.com with ESMTPS id iq8si268786igb.0.2016.03.11.15.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 15:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bangashipra@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) client-ip=2607:f8b0:4001:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bangashipra@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) smtp.mailfrom=bangashipra@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22e.google.com with SMTP id av4so23914970igc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 15:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XQl3Z77QXr8qegQQhXUfueqckxOH2cdhXzatHxqr+MY=;
        b=ni+ctXrMBIBq82aXqViwoRL49+hqw3ZrBYqf+JUovQYLSkZNdI9EQ9oQAooei7L7jN
         1S0hopjMGanPRZjHv5Bp8pQEpin/QGgaZ5uTveBRpue8ik1azGMTdce1NyFajkxX/K2O
         OmF+xkSRfPSBL2HaUTIxUjD7XMp43o0fYV0v5KRmMdCbFaVwhbqRxIKt9J61yrRoSL/A
         yujBRUrxkyHucPmU6NLrzxaGclLVZ6tk0orW6Ik6LEWtp9RwwMkPDa098F0NCkHubPA8
         LhzHiyCCq7AP4ln/QbyDzvE74KcUGYnj8Nz+L1amQa1WWN4YlG0vZJQbLuNADr3QgJjk
         6sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XQl3Z77QXr8qegQQhXUfueqckxOH2cdhXzatHxqr+MY=;
        b=f1eizxrNDWyvTAbUzq7smn/y+nNeQhAdvdsY5A7b2CBfDhzb9BGRJembOq3jv5FK3U
         wW/tztpmbKDiOa6WH6jOMkqwFWL5LenhcivX71kTX/Jf/aL2I9BGZAq1FFhhm9os3FHp
         WLK5As58FXoauBKVPAbsAROVVqV3kVFWXfYqnJj/QQf/QqklGCr8kt03/Yg2gJWxkyX2
         fyH28yoNOpA6efVm7iFpLGl0cHp/A+gEVAf6rCVxxt2S6DbuXoy+6XDJf1ZYzW0CyuKr
         mzUc3XWccbt6WnuCyTOEX5bIPg2f3ygOcjo8M/5H62QzyMBKHOOVaYuLbhSH9KO/p847
         /v/g==
X-Gm-Message-State: AD7BkJJjXuRFC3DsqeTymFe6G54y52kxvVs5L7llA4FECQE1z3JDDaarqgZbieQukjhsg9ZDKO+8EX72qQAphg==
X-Received: by 10.50.25.229 with SMTP id f5mr6711567igg.17.1457738336191; Fri,
 11 Mar 2016 15:18:56 -0800 (PST)
MIME-Version: 1.0
References: <CAG=SUoTdcn7kX9bUDD1dZbhSZgwWjULBVkSxzcoxOthsquh_9A@mail.gmail.com>
 <20160214170525.GD3965@htj.duckdns.org> <CAG=SUoS5YU9HO15LVTZWatrF=AS=FAYiWMehiEyHUOhNPfGocQ@mail.gmail.com>
 <20160215181743.GF3965@htj.duckdns.org>
In-Reply-To: <20160215181743.GF3965@htj.duckdns.org>
From: Shipra Banga <bangashipra@gmail.com>
Date: Fri, 11 Mar 2016 23:18:46 +0000
Message-ID: <CAG=SUoQ3c_9OwgRwPL3vqdFDDW+eSnah7tEKDjN8_Pda=oQS1w@mail.gmail.com>
Subject: Re: Contributing to Linux Kernel
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/mixed; boundary=047d7bd7655cb58843052dce27e1

--047d7bd7655cb58843052dce27e1
Content-Type: multipart/alternative; boundary=047d7bd7655cb5883c052dce27df

--047d7bd7655cb5883c052dce27df
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

I wrote the attached module code in order to check behaviour of workqueues.
It creates a workqueue , which I can view in my process log.
Also, I went  through the flags I can set on my queue from
https://www.kernel.org/doc/Documentation/workqueue.txt .
However, I wanted to ask how to check and debug the behaviour of queues
created set with different flags. Should I be creating sample work_structs
and assigning them to the queues?

Thanks!
Regards
Shipra



On Mon, Feb 15, 2016 at 11:47 PM Tejun Heo <tj@kernel.org> wrote:

> Hello, Shipra.
>
> Hmmm... can you please cc outreachy mailing list when replying?
> Having these sorts of discussions on the mailing list is useful as it
> can also help other people having similar questions.
>
> On Sun, Feb 14, 2016 at 10:41:24PM +0000, Shipra Banga wrote:
> > I was experimenting with adding new modules to the kernel and had a few
> > doubts. Where should I have this new test module to check behavior of
> work
> > queue. Also, can I install this module as a part of my existing compiled
> > kernel which I am running on my laptop right now ?
> > How should I go about doing this?
>
> You can just create an external module which is built independent of
> the kernel source tree.  Please refer to the following doc.
>
>   https://www.kernel.org/doc/Documentation/kbuild/modules.txt
>
> Thanks.
>
> --
> tejun
>

--047d7bd7655cb5883c052dce27df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Tejun,<div><br></div><div>I wrote the attached modul=
e code in order to check behaviour of workqueues. It creates a workqueue , =
which I can view in my process log.</div><div>Also, I went =C2=A0through th=
e flags I can set on my queue from=C2=A0<a href=3D"https://www.kernel.org/d=
oc/Documentation/workqueue.txt">https://www.kernel.org/doc/Documentation/wo=
rkqueue.txt</a>=C2=A0.=C2=A0</div><div>However, I wanted to ask how to chec=
k and debug the behaviour of queues created set with different flags. Shoul=
d I be creating sample work_structs and assigning them to the queues?</div>=
<div><br></div><div>Thanks!</div><div>Regards</div><div>Shipra</div><div><d=
iv><br></div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Mon, Feb 15, 2016 at 11:47 PM Tejun Heo &lt;<a href=3D"mailto:tj@kernel=
.org">tj@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hello, Shipra.<br>
<br>
Hmmm... can you please cc outreachy mailing list when replying?<br>
Having these sorts of discussions on the mailing list is useful as it<br>
can also help other people having similar questions.<br>
<br>
On Sun, Feb 14, 2016 at 10:41:24PM +0000, Shipra Banga wrote:<br>
&gt; I was experimenting with adding new modules to the kernel and had a fe=
w<br>
&gt; doubts. Where should I have this new test module to check behavior of =
work<br>
&gt; queue. Also, can I install this module as a part of my existing compil=
ed<br>
&gt; kernel which I am running on my laptop right now ?<br>
&gt; How should I go about doing this?<br>
<br>
You can just create an external module which is built independent of<br>
the kernel source tree.=C2=A0 Please refer to the following doc.<br>
<br>
=C2=A0 <a href=3D"https://www.kernel.org/doc/Documentation/kbuild/modules.t=
xt" rel=3D"noreferrer" target=3D"_blank">https://www.kernel.org/doc/Documen=
tation/kbuild/modules.txt</a><br>
<br>
Thanks.<br>
<br>
--<br>
tejun<br>
</blockquote></div></div></div>

--047d7bd7655cb5883c052dce27df--
--047d7bd7655cb58843052dce27e1
Content-Type: text/x-csrc; charset=US-ASCII; name="hello-1.c"
Content-Disposition: attachment; filename="hello-1.c"
Content-Transfer-Encoding: base64
Content-ID: <15367f6d8b14741926b1>
X-Attachment-Id: 15367f6d8b14741926b1

LyogS2VybmVsIFByb2dyYW1taW5nICovCgojaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+ICAvKiBO
ZWVkZWQgYnkgYWxsIG1vZHVsZXMgKi8KI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPiAgLyogTmVl
ZGVkIGZvciBLRVJOX0FMRVJUICovCgpzdGF0aWMgaW50IGhlbGxvX2luaXQodm9pZCkKewogICBz
dHJ1Y3Qgd29ya19zdHJ1Y3QgcG9saWN5OwogICBwcmludGsoS0VSTl9BTEVSVCAiPDE+SGVsbG8g
d29ybGQgMS5cbiIpOwogICBzdHJ1Y3Qgd29ya3F1ZXVlX3N0cnVjdCAqdHJpYWxfd3E7CiAgIHRy
aWFsX3dxID0gY3JlYXRlX3dvcmtxdWV1ZSgiZXZlbnRuYW1lIik7IC8vIEFkZCBmbGFncyBoZXJl
IQogICBwcmludGsoS0VSTl9BTEVSVCAiQ3JlYXRpbmcgYSB3b3JrZXIgcXVldWUuIFxuIik7CiAg
IHJldHVybiAwOwp9CgoKc3RhdGljIHZvaWQgaGVsbG9fZXhpdCh2b2lkKQp7CiAgcHJpbnRrKEtF
Uk5fQUxFUlQgIkdvb2RieWUgd29ybGQgMS5cbiIpOwp9ICAKCm1vZHVsZV9pbml0KGhlbGxvX2lu
aXQpOwptb2R1bGVfZXhpdChoZWxsb19leGl0KTsKCk1PRFVMRV9MSUNFTlNFKCJHUEwiKTsKCg==
--047d7bd7655cb58843052dce27e1--

