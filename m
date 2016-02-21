X-GM-THRID: 6253357236964294656
X-Received: by 10.66.193.225 with SMTP id hr1mr20482096pac.34.1456032354126;
        Sat, 20 Feb 2016 21:25:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.148 with SMTP id e20ls515411ioi.25.gmail; Sat, 20 Feb
 2016 21:25:53 -0800 (PST)
X-Received: by 10.66.231.4 with SMTP id tc4mr21537641pac.14.1456032353381;
        Sat, 20 Feb 2016 21:25:53 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id g136si1072692ywb.5.2016.02.20.21.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 21:25:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id y9so92046400qgd.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 21:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=RVwP4bv9viOWFRG6UQ9Jyqph66wl94f0h4PS+nS7o3w=;
        b=MdrOZK1dpFruomtDucxxKCD4radj5eECYBZIX8L/yocUGswwkWcX96Cdz6jfI1Nq9q
         eljGd5ilfJDB+twAmFB+FYG7UzMxxTXSwpu9Nd7NvJlI/wRfT05D8a8raaYNoZHbtXaM
         Y0tW5CObTqFqpMloQbUh0NYbX307jMEz0C9MFgHKknxYw/RcVvlhhdFcBkng3jNvVs9E
         GZ/ceEF3zuDCu4fs81rKUar6Zx2/XYx5ihHItbxp24bamcinkEtg05KkXPJKi/BbeN+r
         mcgDQVTC5sStSSLPIl9mGqo9kK2uO99N5HSsWWll+0CNALFfe9EGygB/Pn6x4Qcixq25
         3zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=RVwP4bv9viOWFRG6UQ9Jyqph66wl94f0h4PS+nS7o3w=;
        b=bYspbkp2pvIxJf1kcBZdAU7nLsAfspBAwZt6y4EEWQTTz5WFgI+XXzuqAycEYcYxVi
         GRHk09jtz2bg2h6Vb7s0KFZviljNWssjnJpb+GuDK5k5783lidqRPDAm1fnfUF98Tdwo
         ss7c131Zg1iQaEyWYQ4DGh7qf3tkdqbrLm5tVMV/E2M7MmEcwLXjnwJIgoFMjRY0jSeT
         +1B/5gU1cxOwbm5yRcWkxHw0bHDv8YJrkoaksRwlkSa4Xdkw36L+rBypaOIKd/txnrVE
         0vMWNJxGh0fu8azzobTXH5uY5PUEStAhNuBWUY8tJKZfbxNNgOaI8CKaRWoLAiA2TxFq
         U42A==
X-Gm-Message-State: AG10YOTUNNmDyKEgNNUJy61wj7pbVUvdgn5LoVChzqYe+X6mu9Rd7KxGreN5TyBMDY5/k8F4rRtGxb/Z05Gspw==
X-Received: by 10.140.248.135 with SMTP id t129mr27855081qhc.53.1456032353234;
 Sat, 20 Feb 2016 21:25:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Sat, 20 Feb 2016 21:25:13 -0800 (PST)
In-Reply-To: <20160220225805.GA4024@kroah.com>
References: <20160220131552.GA3543@Karyakshetra> <20160220225805.GA4024@kroah.com>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sun, 21 Feb 2016 10:55:13 +0530
Message-ID: <CAFNHFT9XGFtNctr74MVwHu9fLrEf0odN3m3Q+_mhsc2dqoATzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: rtl8192u: Use system_wq
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113a8622323590052c40f372

--001a113a8622323590052c40f372
Content-Type: text/plain; charset=UTF-8

Hello Greg,

I have sent a v2
<https://groups.google.com/forum/#!topic/outreachy-kernel/FTxdRzT0jE8> for
this patchset, this time with different subjects.
Thank you for the correction.

Bhaktipriya

On Sun, Feb 21, 2016 at 4:28 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Feb 20, 2016 at 06:45:52PM +0530, Bhaktipriya Shridhar wrote:
> >
> > This patchset removes create_workqueue() usages in rtl8192u.
> > With conccurency managed workqueues, use of dedicated workqueues can
> > be replaced with system_wq.
> >
> > Bhaktipriya Shridhar (2):
> >   staging: rtl8192u: Use system_wq
> >   staging: rtl8192u: Use system_wq
>
> Both subjects were identical, yet the patches were different, that's not
> something I can accept, sorry :(
>
>

--001a113a8622323590052c40f372
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello Greg,<br><br></div>I have sent a=C2=
=A0<a href=3D"https://groups.google.com/forum/#!topic/outreachy-kernel/FTxd=
RzT0jE8">v2</a> for this patchset, this time with different subjects. <br><=
/div>Thank you for the correction.<br><br></div>Bhaktipriya<br></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Feb 21, 2016 at=
 4:28 AM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfound=
ation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Sat, Feb 20, 2016 at 06:45:52PM +05=
30, Bhaktipriya Shridhar wrote:<br>
&gt;<br>
&gt; This patchset removes create_workqueue() usages in rtl8192u.<br>
&gt; With conccurency managed workqueues, use of dedicated workqueues can<b=
r>
&gt; be replaced with system_wq.<br>
&gt;<br>
&gt; Bhaktipriya Shridhar (2):<br>
&gt;=C2=A0 =C2=A0staging: rtl8192u: Use system_wq<br>
&gt;=C2=A0 =C2=A0staging: rtl8192u: Use system_wq<br>
<br>
Both subjects were identical, yet the patches were different, that&#39;s no=
t<br>
something I can accept, sorry :(<br>
<br>
</blockquote></div><br></div>

--001a113a8622323590052c40f372--

