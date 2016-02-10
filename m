X-GM-THRID: 6249445155877683200
X-Received: by 10.31.168.130 with SMTP id r124mr36270075vke.10.1455087336048;
        Tue, 09 Feb 2016 22:55:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.198 with SMTP id 67ls140870iol.48.gmail; Tue, 09 Feb
 2016 22:55:35 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr37541096iol.7.1455087335625;
        Tue, 09 Feb 2016 22:55:35 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-io0-x235.google.com (mail-io0-x235.google.com. [2607:f8b0:4001:c06::235])
        by gmr-mx.google.com with ESMTPS id i13si137540igt.2.2016.02.09.22.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) client-ip=2607:f8b0:4001:c06::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::235 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x235.google.com with SMTP id f81so12310207iof.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=TQnO+Qrk1P4nfOQXAVEj7v5pBdUZhltN7fuPjk8+NXc=;
        b=E46PhiuLoikyZGW5nslE9T9QlrKJh5MpNVdPQx4UT4hx/AprdbQaOddgdqPgM6IzHx
         tdwvamZIwL3ToRgO7a/PO8aBYEoOC9YSi/F/v6Hp58QOrIsmfC9vlu5ljpqGiAiT4Cg3
         vx5VMKe49ij5W2UekxTLUXOAoDcfHUtNeizJeHVVHWoSSTZTrYe9rfwXD0irEiIAz0rG
         O1FUaJNt6quw1UgwINhCvZQioSGWypbBGKyJJxFKRDTSxTxjfvk5jz+Ridnfbim26YHV
         jS+xyDmd6XUre0+jQ8fVQ93m0nn5Ma0YIp54nFNT7fOsbA6P3Mv74Y1EBGsNVYGKhDLT
         rUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=TQnO+Qrk1P4nfOQXAVEj7v5pBdUZhltN7fuPjk8+NXc=;
        b=L0Fw5EJ8n09n193be33OvBq+raUMDbhwQDFlFJ5cMobrCTHrnoOZ+76DcS9O7uWSge
         xEP/ylIPqMc7sWcMAvL2pr4m70pQy6DnvT4hmKG+34ZbjEtsZDzyoYdC3YcbGFx2Y19o
         g0PkIszXXY810m7a5Z9iKyq4fFz6hBXAqpdBHn/8NT69T8NIwcKr+z8Q3UBxv2OnRMdY
         TJGyNqQCXDixGFemAEKsLWxusblg4fK9WZQfSF+rFYdhrmUQefbyZ1W997f1aZ6ePRRY
         2UA/83/x4O+ZU9ErogTLMJifj7KePZL92vArkbLeRMVI8QOb2GXaZF2lBv6LQk4DfdzN
         unfQ==
X-Gm-Message-State: AG10YOTmoibgoolAI5tsHKDsG2G9UTORI2kxIYSYounmU4QGuuuob8j+XG3A0yCz8EFmPnB5d52jS+JY/rv0DQ==
X-Received: by 10.107.12.226 with SMTP id 95mr15079482iom.70.1455087335485;
 Tue, 09 Feb 2016 22:55:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Tue, 9 Feb 2016 22:54:56 -0800 (PST)
In-Reply-To: <20160210061455.GA374@sudip-pc>
References: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com> <20160210061455.GA374@sudip-pc>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Wed, 10 Feb 2016 12:24:56 +0530
Message-ID: <CAMnyiXsk1P19XHUCx11=s+RtwXSDL-fMxAJdkSaaqdrD6hFSyw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: lustre: lustre: lov:
 lov_pool: Fixed a warning
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <Julia.Lawall@lip6.fr>, 
	Daniel Baluta <daniel.baluta@gmail.com>, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary=001a113f8f8ebfb7f6052b64ebde

--001a113f8f8ebfb7f6052b64ebde
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 10, 2016 at 11:44 AM, Sudip Mukherjee <
sudipm.mukherjee@gmail.com> wrote:

> On Wed, Feb 10, 2016 at 05:28:46AM +0530, Rakhi Sharma wrote:
> > Fixed a checkpatch warning.
> > WARNING: struct file_operations should normally be const
> >
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
>
> It now adds new build warning:
>
> ../drivers/staging/lustre/lustre/lov/lov_pool.c: In function
> =E2=80=98lov_pool_new=E2=80=99:
> ../drivers/staging/lustre/lustre/lov/lov_pool.c:438:7: warning: passing
> argument 4 of =E2=80=98ldebugfs_add_simple=E2=80=99 discards =E2=80=98con=
st=E2=80=99 qualifier from pointer
> target type [enabled by default]
>        &pool_proc_operations);
>        ^
> In file included from
> ../drivers/staging/lustre/lustre/lov/../include/linux/../obd_support.h:43=
:0,
>                  from
> ../drivers/staging/lustre/lustre/lov/../include/linux/obd.h:44,
>                  from
> ../drivers/staging/lustre/lustre/lov/../include/obd.h:40,
>                  from ../drivers/staging/lustre/lustre/lov/lov_pool.c:49:
> ../drivers/staging/lustre/lustre/lov/../include/linux/../lprocfs_status.h=
:547:16:
> note: expected =E2=80=98struct file_operations *=E2=80=99 but argument is=
 of type =E2=80=98const
> struct file_operations *=E2=80=99
>  struct dentry *ldebugfs_add_simple(struct dentry *root,
>
> regards
>
hi Sudip,
Will you please help me to understand why this warning produce? Is the
const I have put there is wrong? but as I think it is ok there.may be I am
wrong this side, please let me know how this is going on?
thanks
Rakhi

> sudip
>
>

--001a113f8f8ebfb7f6052b64ebde
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 10, 2016 at 11:44 AM, Sudip Mukherjee <span dir=3D"ltr">&lt=
;<a href=3D"mailto:sudipm.mukherjee@gmail.com" target=3D"_blank">sudipm.muk=
herjee@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"">On Wed, Feb 10, 2016 at 05:28:46AM +0530, Rakhi Sharma wrote=
:<br>
&gt; Fixed a checkpatch warning.<br>
&gt; WARNING: struct file_operations should normally be const<br>
&gt;<br>
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
<br>
</span>It now adds new build warning:<br>
<br>
../drivers/staging/lustre/lustre/lov/lov_pool.c: In function =E2=80=98lov_p=
ool_new=E2=80=99:<br>
../drivers/staging/lustre/lustre/lov/lov_pool.c:438:7: warning: passing arg=
ument 4 of =E2=80=98ldebugfs_add_simple=E2=80=99 discards =E2=80=98const=E2=
=80=99 qualifier from pointer target type [enabled by default]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;pool_proc_operations);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>
In file included from ../drivers/staging/lustre/lustre/lov/../include/linux=
/../obd_support.h:43:0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../drive=
rs/staging/lustre/lustre/lov/../include/linux/obd.h:44,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../drive=
rs/staging/lustre/lustre/lov/../include/obd.h:40,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../drive=
rs/staging/lustre/lustre/lov/lov_pool.c:49:<br>
../drivers/staging/lustre/lustre/lov/../include/linux/../lprocfs_status.h:5=
47:16: note: expected =E2=80=98struct file_operations *=E2=80=99 but argume=
nt is of type =E2=80=98const struct file_operations *=E2=80=99<br>
=C2=A0struct dentry *ldebugfs_add_simple(struct dentry *root,<br>
<br>
regards<br></blockquote><div>hi Sudip,<br></div><div>Will you please help m=
e to understand why this warning produce? Is the const I have put there is =
wrong? but as I think it is ok there.may be I am wrong this side, please le=
t me know how this is going on?<br></div><div>thanks <br></div><div>Rakhi=
=C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888">sudip<br>
<br>
</font></span></blockquote></div><br></div></div>

--001a113f8f8ebfb7f6052b64ebde--

