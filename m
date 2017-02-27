X-GM-THRID: 6391540020415561728
X-Received: by 10.13.254.2 with SMTP id o2mr338607ywf.50.1488202910350;
        Mon, 27 Feb 2017 05:41:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls13318529oty.0.gmail; Mon, 27 Feb
 2017 05:41:49 -0800 (PST)
X-Received: by 10.157.26.51 with SMTP id a48mr6575715ote.120.1488202909900;
        Mon, 27 Feb 2017 05:41:49 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id x124si665990ywb.1.2017.02.27.05.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 05:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id s186so96524286qkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 05:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=kMWZNSfxsFFOl3xoQsGqkvnWlzlfrCNaLOtqC8oDTiU=;
        b=knOAqdapXyX2XiQFv76SXEocYI2nOEioGGpKDXUTJ3oBrJchEycMrtmy8Jcpvu5jdd
         kykaJEd2SenY5sMWe8TKuhNwtitb6NxwS9kltEpPBF2W7lpFLefgPdNYrgRPyV3Bju53
         VF5J1pa7qUjMR+bNTRbB2f1WUNMlBHHSD2OD1UvrkShzLAWWQY5ZaM/OCIEp62Jhhlhc
         gMtIDspLgOewhFIq/NGQAsD7gVMyWgbiuZpVMR8zul4BUS3HVba8MibuyhFRWySA+2UN
         uRYOc4P0hW4oE/A+obmJRtVu63uBdWRNQLdRd581q2L7wpfasWLYKJ1PHFi4Gx0FBuVc
         Etug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=kMWZNSfxsFFOl3xoQsGqkvnWlzlfrCNaLOtqC8oDTiU=;
        b=M6yzESXL83LS3CU9IR2DWDA0u1sbctBtW+6zON9Sh9TtP2g1rtpwdCrFi4S0YFO1Xg
         5XjO/zL2b+Qv0Gz0nqNUISoX1Cf9yR9HTbHrpGoMhDOD5MwVWpr83ySn932ZsOvqrWBf
         Z9OH2JWINsgx/+4/K4Lgt+NnMiAshzgWzfBryGlrdGO9VRTaEwG6r86dzMqZODNxWjDl
         EMNwBLtUtmcaAjpANBpu7Q6LtZJxgJFfnZ8xzhKw4wNhI7069Gocuaf13vaUZ5qOiSL4
         kCC5xNJOan8Nz+BO5zsIOqK1VxR40YWss3lbLOec4g4E2sFfoxMV3uF6e5ieVD1tUpsF
         kgbg==
X-Gm-Message-State: AMke39mfgu1WRfExvqlHqKwzforjc4TgcSNh4vRcNFmdOoLmlJOx1DwP+9gvgSpqTRQPFUpRG7EoV8PUeBzHOA==
X-Received: by 10.237.35.138 with SMTP id j10mr8870599qtc.255.1488202909642;
 Mon, 27 Feb 2017 05:41:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.42.71 with HTTP; Mon, 27 Feb 2017 05:41:48 -0800 (PST)
Received: by 10.55.42.71 with HTTP; Mon, 27 Feb 2017 05:41:48 -0800 (PST)
In-Reply-To: <b587366e-dec9-c550-3617-2a6d76200423@metafoo.de>
References: <1488146361-14383-1-git-send-email-narcisaanamaria12@gmail.com> <b587366e-dec9-c550-3617-2a6d76200423@metafoo.de>
From: Narcisa Vasile <narcisaanamaria12@gmail.com>
Date: Mon, 27 Feb 2017 15:41:49 +0200
Message-ID: <CAEdesYZkN4+ZXCycyP71FTEKYC750TtPAQMtF62FyYUp+fZCFA@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: ad9834: Moved contents of header file to
 source file
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: knaack.h@gmx.de, pmeerw@pmeerw.net, outreachy-kernel@googlegroups.com, 
	gregkh@linuxfoundation.org, Michael.Hennerich@analog.com, 
	linux-iio@vger.kernel.org, jic23@kernel.org
Content-Type: multipart/alternative; boundary=001a11370d7cc880fe0549833dd9

--001a11370d7cc880fe0549833dd9
Content-Type: text/plain; charset=UTF-8

Pe 27 feb. 2017 11:21, "Lars-Peter Clausen" <lars@metafoo.de> a scris:
>
> On 02/26/2017 10:59 PM, Narcisa Ana Maria Vasile wrote:
> > The contents of the header file are used only by this single source file
>
> Same here, platform data should stay in its the header file, everything
else
> can and should be moved.
>
>
I'm attempting to fix this patch and I want to make sure I understood the
right way to do it.
According to the TODO above the platform data struct, this struct should go
to include/linux/iio. So, is it ok to create a new header file with the
original name (ad9834.h), place the platform data struct inside it and put
this header file into include/linux/iio/frequency folder?
Then, in the C file, I will include this new header, remove the platform
data struct, but keep the defines and state struct.
Same for the other file (ad9832).

--001a11370d7cc880fe0549833dd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">Pe 27 feb. 2017 11:21, &quot;Lars-Peter Clausen&quot; &lt;<a=
 href=3D"mailto:lars@metafoo.de">lars@metafoo.de</a>&gt; a scris:<br>
&gt;<br>
&gt; On 02/26/2017 10:59 PM, Narcisa Ana Maria Vasile wrote:<br>
&gt; &gt; The contents of the header file are used only by this single sour=
ce file<br>
&gt;<br>
&gt; Same here, platform data should stay in its the header file, everythin=
g else<br>
&gt; can and should be moved.<br>
&gt;<br>
&gt;<br>
I&#39;m attempting to fix this patch and I want to make sure I understood t=
he right way to do it.<br>
According to the TODO above the platform data struct, this struct should go=
 to include/linux/iio. So, is it ok to create a new header file with the or=
iginal name (ad9834.h), place the platform data struct inside it and put th=
is header file into include/linux/iio/frequency folder?=C2=A0 <br>
Then, in the C file, I will include this new header, remove the platform da=
ta struct, but keep the defines and state struct.<br>
Same for the other file (ad9832).<br>
</p>

--001a11370d7cc880fe0549833dd9--

