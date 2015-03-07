X-GM-THRID: 6153646899200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3322242087056668
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.41 with SMTP id x9mr2888476lax.10.1425725736249;
        Sat, 07 Mar 2015 02:55:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.33 with SMTP id ld1ls146718lac.16.gmail; Sat, 07 Mar
 2015 02:55:35 -0800 (PST)
X-Received: by 10.112.13.228 with SMTP id k4mr2842005lbc.8.1425725735821;
        Sat, 07 Mar 2015 02:55:35 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-lb0-x233.google.com (mail-lb0-x233.google.com. [2a00:1450:4010:c04::233])
        by gmr-mx.google.com with ESMTPS id xl7si1215623lbb.1.2015.03.07.02.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) client-ip=2a00:1450:4010:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x233.google.com with SMTP id p9so39423058lbv.8
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2015 02:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tftJ/CbxUCrroOX/+5CboApDjaIg1AL3/tZs8bnNbbw=;
        b=uEbOfxuFCE5o7w8XVbmCIlcdAqPpPAS7poC4oop6NvUkNWUCSy1+yKDE6qMIUxoAKy
         hpzkia6LQKnBO0C8ufbg58nxH4rLjBjyIZ1Q0Rh65RAYeXGsbgxTX5DlEHH7zjINK8Cz
         ptyszUQwfww6C3BcH06Su5OQm/K54N3oCartcCclfZaNxnOrsMaqQIOqf6xfIrdBM0TF
         AdF+ov3fL5KbCzOe7b7zMxTRM73XdBvxgqMoWmvTQkFInYBJljXQXn4fWt5MunuyLl0w
         IIWLUgIfsdhBv7Itiq8moiByUYIWZgUcxdJUSLcp8Uqwr1QUqMAkDuEQ8L1tNIKAE64U
         Sxuw==
MIME-Version: 1.0
X-Received: by 10.112.235.10 with SMTP id ui10mr17152057lbc.77.1425725735728;
 Sat, 07 Mar 2015 02:55:35 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Sat, 7 Mar 2015 02:55:35 -0800 (PST)
In-Reply-To: <20150306181026.GA7323@kroah.com>
References: <20150303060621.GA5148@akanksha>
	<20150306181026.GA7323@kroah.com>
Date: Sat, 7 Mar 2015 16:25:35 +0530
Message-ID: <CAHjTdYf3s33WTVGKyapDwyww2AS7=WxDE9E97ts6W23m4Ksong@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unnecessary
 type cast.
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3d8ca067a4e0510b0a45d

--001a11c3d8ca067a4e0510b0a45d
Content-Type: text/plain; charset=UTF-8

I had checked that the patch is valid and then used --in-place
option in coccinelle and git format-patch to create the patch.
I'm very confused at to how exactly the directory name is different!
I'll redo it and send in another one.
Thanks!

--001a11c3d8ca067a4e0510b0a45d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I had checked that the patch is valid and then u=
sed --in-place<br>option in coccinelle and git format-patch to create the p=
atch. <br>I&#39;m very confused at to how exactly the directory name is dif=
ferent!<br></div>I&#39;ll redo it and send in another one.<br></div><div><d=
iv>Thanks!<br></div></div></div>

--001a11c3d8ca067a4e0510b0a45d--

