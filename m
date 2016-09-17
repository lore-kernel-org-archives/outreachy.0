X-GM-THRID: 6331255217033576448
X-Received: by 10.129.122.9 with SMTP id v9mr12414345ywc.51.1474135951109;
        Sat, 17 Sep 2016 11:12:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls8127864ota.23.gmail; Sat, 17 Sep
 2016 11:12:30 -0700 (PDT)
X-Received: by 10.157.1.134 with SMTP id e6mr12407804ote.9.1474135950795;
        Sat, 17 Sep 2016 11:12:30 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id d206si1084733ywh.3.2016.09.17.11.12.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id b204so7439737qkc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 11:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qFDVPPTmI6WoQe/OYs2gdBwnHiyVfEW1GoK6D4q1xtI=;
        b=IsnzqGOI1F0EwJGvocqZRFREqVyhApdDI/6Yt2txiS31rrsoEggSwM47r4POS2OJFP
         +YG/uQk96P1QLGWYGmqjjlJ+HN2NlCyVuMVhImUC2l9f1G7MM6UWejMWZQLP6pvOeQjl
         PRXZD43flDyfOCpHXk0FrZ3pYBZ9mREcjixEDmbfE1sCySZS08CHQ2nWvDbQVCpUY3G+
         FlsMhV0KD7jdF69qGcW+2DfsUI2jYHE2/+ulkROIVeza82YCqiaEbTr/g9jczIEFFcfe
         42K8CYty9ScF3IWeD7S+xkUTsNYQzgElM7Cg9jUW7XCnMMWHJCr+IQvzSbwnIiKCnoXc
         sFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qFDVPPTmI6WoQe/OYs2gdBwnHiyVfEW1GoK6D4q1xtI=;
        b=IRCaD1x+fnwSJ8qy04Xhiv6aqhhMoMF1h2oF8tq7OAa/rallUZNS93RaNpSDRYxCJK
         8vx+DKDMRycConiQg7BXaVS+MF5oD5Ohf/sE6Ry7oMHhZIEjD5MyxdD7ZR/OSYbipFoI
         +v5Aqp9hreAo8ZGJgqErKTnYC83YRmhes6QJuGe2RrnNMgqKH2xiQpRpfv1RP46eDel9
         GtnnEkuax2Q3CNP+4wgxYvYZRjCetwYZJ0W2nSqnE4PuupNJlNQWrwFGRmTgPuNJEDhH
         87o9w9Yy9iSzkp5l3VVtiA+WactjCUqmG9ISFBNG4mKFx4XVuVR5Uj9ba00AG1ARZSwk
         btvA==
X-Gm-Message-State: AE9vXwPmxqP/4HUglMf5q9SVgtg/tWW+2kF2bajHIiQjHd0zKMeMCJTRD2ItjkSRvk4FEjsbmcn5DlL/hht7Ag==
X-Received: by 10.55.121.67 with SMTP id u64mr22906231qkc.114.1474135950601;
 Sat, 17 Sep 2016 11:12:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Sat, 17 Sep 2016 11:12:00 -0700 (PDT)
In-Reply-To: <20160917180632.GA26747@kroah.com>
References: <cover.1474119676.git.gs051095@gmail.com> <20160917180632.GA26747@kroah.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 17 Sep 2016 23:42:00 +0530
Message-ID: <CAOCi2DFumadRFFKSUyMSema5KucJSG3oKiqzrLb8Z8uq+-wSew@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] fix multiple coding style issues
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c0578d0afec7d053cb80500

--94eb2c0578d0afec7d053cb80500
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 11:36 PM, Greg KH <gregkh@linuxfoundation.org>
wrote:
>
> On Sat, Sep 17, 2016 at 07:48:19PM +0530, Gargi Sharma wrote:
> > Patch 1 fixes the issue detected by checkpatch. Patch 1 modifies
> > multi-line comments to follow kernel coding style guide.
> > Patch 2 uses kernel coding style guide for macros.
>
> The subject line here is odd, it doesn't say where in the kernel your
> patches are for.

I'll keep that in mind. Should I send a new patch-set fixing the subject
line?

thanks,
gargi


>Next time can you fix that up?  Don't worry about it
> for these.
>
> thanks,
>
> greg k-h

--94eb2c0578d0afec7d053cb80500
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sat, Sep 17, 2016 at 11:36 PM, Greg KH &lt;<a href=3D"m=
ailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:=
<br>&gt;<br>&gt; On Sat, Sep 17, 2016 at 07:48:19PM +0530, Gargi Sharma wro=
te:<br>&gt; &gt; Patch 1 fixes the issue detected by checkpatch. Patch 1 mo=
difies<br>&gt; &gt; multi-line comments to follow kernel coding style guide=
.<br>&gt; &gt; Patch 2 uses kernel coding style guide for macros.<br>&gt;<b=
r>&gt; The subject line here is odd, it doesn&#39;t say where in the kernel=
 your<br>&gt; patches are for. =C2=A0<div><br></div><div>I&#39;ll keep that=
 in mind. Should I send a new patch-set fixing the subject line?</div><div>=
<br></div><div>thanks,</div><div>gargi</div><div><br></div><div><div><br></=
div><div>&gt;Next time can you fix that up?=C2=A0 Don&#39;t worry about it<=
br>&gt; for these.<br>&gt;<br>&gt; thanks,<br>&gt;<br>&gt; greg k-h</div></=
div></div>

--94eb2c0578d0afec7d053cb80500--

