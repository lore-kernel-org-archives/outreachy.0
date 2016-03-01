X-GM-THRID: 6254894706255200256
X-Received: by 10.182.199.70 with SMTP id ji6mr17509550obc.32.1456853964834;
        Tue, 01 Mar 2016 09:39:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.134 with SMTP id 6ls238306qgz.70.gmail; Tue, 01 Mar
 2016 09:39:23 -0800 (PST)
X-Received: by 10.129.117.11 with SMTP id q11mr17070975ywc.3.1456853963942;
        Tue, 01 Mar 2016 09:39:23 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id v197si1983917ywa.1.2016.03.01.09.39.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:39:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id d32so91704976qgd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=VNJ/2Z6gfwVdl2JhpOsGRMIyJMQMWogs0durboK9knA=;
        b=uR9dw1PF8WNZ45A4P9dMytNy7kK3W0ZoG/AuBTi/kQ+Pf8toDHIungWnCGRuq33jrO
         zt+z/zMk04F/hz5XcbXlIicShxK3cXnI79wcF950kpOZz/a4MMP7GSt8RlpeMIeryypo
         ya9kOvMdBINN0bqTYMOTkJG92jU1BiMfp6tXo8ajXt4XwirtyYpaud2gk/Tl0LvnyW7E
         7n9PUORehq7tfII6leLeUz2HF/PUrpy0PekxAGd9DYvuwM6NeRndfo8Qr0Uv+SXKAh1Q
         wc/F4SWC1tQpwW5CXUAwONH6iNX39QKVIxWtWvCt7IkTeRdqDA5Wye1GtfbapGlgB3vh
         c85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=VNJ/2Z6gfwVdl2JhpOsGRMIyJMQMWogs0durboK9knA=;
        b=adekocqsCPDb+hNcvHpm18/w8rkVZUiT/xXDd0MbpsstWYBKjxVSKecpFq4B8GWa+R
         VCmDzgDh45HMPlYbwFfc38bj//dZKukjFvi7kbAYMVQ1nmXUzXMYpyi4JN6bAqpttxYO
         Yjh0eLSmENlo3/s62bn+1/oKR0GA4CWQGsZVgA919vxGaCYx9LIIlb6zQlnf0/Y0cg3J
         n7l+Mlkh4YxotP7pccFKv9K/npp7iVVLh34kMTTBCLz6j3x2ldrGMynYTyhMdAIloeT9
         2H/JjV567+ws1efAs4y0vnjH+og95kFuTuIluN9nKvbghen2QvSzCQcBjGvyXCMNu9ct
         O2Wg==
X-Gm-Message-State: AD7BkJIoGVTQZ2khahFRdqCPwyHjdfPOhievlNJUAx4YQXe9+bRRwpxrPQo8sbQLKC5KXfbM/2UiNftCnlgBJw==
MIME-Version: 1.0
X-Received: by 10.140.140.196 with SMTP id 187mr28562055qhm.29.1456853963731;
 Tue, 01 Mar 2016 09:39:23 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 1 Mar 2016 09:39:23 -0800 (PST)
In-Reply-To: <20160301172111.GA19740@Karyakshetra>
References: <20160301172111.GA19740@Karyakshetra>
Date: Tue, 1 Mar 2016 23:09:23 +0530
Message-ID: <CA+5yK5Fiph39gQUiJb4=wVsEH=Q7n50raTv2FQfQnp_61zq8rg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove unnecessary macro
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1137379cff7c66052d003e86

--001a1137379cff7c66052d003e86
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 10:51 PM, Bhaktipriya Shridhar <
bhaktipriya96@gmail.com> wrote:
> Replaced occurences of SUBMIT_URB with usb_submit_urb.
>
> This was detected using Coccinelle:
>
> @@
> identifier a;
> identifier b;
> @@
>
> *#define a(...) b(...)
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
Hi Bhaktipriya,

I've already sent a patch for this, see it here.
<https://groups.google.com/forum/#!topic/outreachy-kernel/g34QmWuTOis>

Amitoj

--001a1137379cff7c66052d003e86
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tue, Mar 1, 2016 at 10:51 PM, Bhaktipriya Shrid=
har &lt;<a href=3D"mailto:bhaktipriya96@gmail.com">bhaktipriya96@gmail.com<=
/a>&gt; wrote:<br>&gt; Replaced occurences of SUBMIT_URB with usb_submit_ur=
b.<br>&gt;<br>&gt; This was detected using Coccinelle:<br>&gt;<br>&gt; @@<b=
r>&gt; identifier a;<br>&gt; identifier b;<br>&gt; @@<br>&gt;<br>&gt; *#def=
ine a(...) b(...)<br>&gt;<br>&gt; Signed-off-by: Bhaktipriya Shridhar &lt;<=
a href=3D"mailto:bhaktipriya96@gmail.com">bhaktipriya96@gmail.com</a>&gt;<b=
r>&gt; ---<br>Hi Bhaktipriya,<div><br></div><div>I&#39;ve already sent a pa=
tch for this, see it=C2=A0<a href=3D"https://groups.google.com/forum/#!topi=
c/outreachy-kernel/g34QmWuTOis">here.</a></div><div><br></div><div>Amitoj</=
div></div>

--001a1137379cff7c66052d003e86--

