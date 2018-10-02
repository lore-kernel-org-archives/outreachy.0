X-GM-THRID: 6607095314902941696
X-Received: by 2002:a17:906:3590:: with SMTP id o16-v6mr3659084ejb.1.1538511445929;
        Tue, 02 Oct 2018 13:17:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9593:: with SMTP id w19-v6ls1662268eda.11.gmail; Tue, 02
 Oct 2018 13:17:25 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60s3iTTDY+iOEM6njPlPiuBMuNOFXFJhPBhpE9aaIIkQMEcepzXjS8vXM2pHQz5Mm1sB5Xi
X-Received: by 2002:a50:89fc:: with SMTP id h57-v6mr2512479edh.4.1538511445226;
        Tue, 02 Oct 2018 13:17:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538511445; cv=none;
        d=google.com; s=arc-20160816;
        b=mXgqNB6cRLJfTuhGeEc1GqEcyHyI8Qgab4MRQAiwFjLWVh2Rdj6BaD28ZUxrQSWnOR
         ktYKYMKp+BiU/gFXNDbb8RBmG2JniXxd3gSfzktsI23Ao61DxcwN07NSFtomaYZh90qH
         I+EBssC0kTahNpa3ASZuuhc/UNwZnXJEHP33QnOJRSRnCYJvNZmqX2eCAw50rjwDxGem
         51sHe5K1fOmXEXq81oUxqLAiXVzk8Uba0tJrwM2HHTOK4HmNHFWLeObMpHYOc8jmYaGr
         OPHUMsbB8Z4/yj1LH1L8yDWZZ5Ooe1rz1o1QczE1AgimRwyiz3tHQHQRqYyl8xkdrKSE
         aCWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yV0mYXGkTQXbHTtnnGE/TzTQxLdkck1H2ixaBPlIFqQ=;
        b=sFkNWtaFTZzhgTnU1pRSrzLaPWlo9SxkclS/yyUfrjsFOffVmXx30PgCrDYA8CUkCp
         wuXnM6zmSwgg8wpBoyPrpoj5Ly01d8kS0dA6KQxDnYJYVYJEHA97DnapqKK71VMIv8FQ
         sIGDvTvk9dphyAAawRJODzRZDQgmgwC7lE4wz1KLOGVTVY5w+2mVOASzQNhjandbSvMC
         2jeRZtTi+DYXbbZR+QuZtaS/36cN/qSxSbH0gNg0J3K2IITAsO3kYt7Iqegpz3Gfui5T
         CXgT4UUW9RIOGWXocGZffcJmDwccNhB4Ku4XGR/gq/tl1YnH33i8StyWJcoj5t4Vxz1h
         MZcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o8pUqc4Z;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f18-v6si520475edj.3.2018.10.02.13.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 13:17:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o8pUqc4Z;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id e4-v6so3667643wrs.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 13:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=yV0mYXGkTQXbHTtnnGE/TzTQxLdkck1H2ixaBPlIFqQ=;
        b=o8pUqc4Z7G+fCrohvNBIL5tEMjVoUwD0eLljjecy3rjUg7e05mAfu0P9qpL2GNUtuQ
         fyCuM/63FxMXirnuaL9xfcKVPZvG5Ms6pPgSVOWMeNmKIgjiGJUApj5YJY+bhPeXLe6H
         ZtVzJL6SGFORN9H9QVYcB9kNAUWUxsviFPI9lg36a2VY9BLWoCeqt08DjJDsjZlhg4aQ
         LDr+wPb6db80gndgyYwyBmlQQJxmYb/uW4rX0ztQFgFH7de5jJ2QqX0c97hWX2yc5W5g
         jUAJ5UgdC+UU1lyj1bB7Jx6LiWHIi+Zz2VPCgS1ha3ouWo7FijFaZ7GYvhB2ykwzPalM
         P8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=yV0mYXGkTQXbHTtnnGE/TzTQxLdkck1H2ixaBPlIFqQ=;
        b=ok4auiPH8mBd6gB1MROlEdr4OPmTqNcXCdtFXEE3ufY4uEfEWBjrXofo9ZK/NUrA+X
         MemvHdLQym+q4/WCbF334EuyxJ9wl0PeosrR/Eujyh51QtcBVzvSN7DQL5RJwzP9UtNY
         wp1isMehF2EKxoDV/mLe5dxibHmffwl6smn9tAc39eo96Rf44QeiZVJdyv7IhLUeKaV3
         YEcOnlnNHgbB8CaUiPSHK7YnnK7OuqpJ3dFyWgvIX7eUGv2OkaAebKDaDjnfVW6VRVWB
         nhHQw3RHVjhlCssnHdTDyOrCNB4ZtYtUAP3q1neBjkw2ggJRHZrrCHkdH94KTozD35ug
         kCWw==
X-Gm-Message-State: ABuFfog8J3Ahf71kTBpM5Q52r9igtE7wSmaHEvp9tbn8kTcnXscDJhRB
	Ve8QxCN0msWAXjMEXRBbSw8kkC7qUSa4h7XzTLA=
X-Received: by 2002:a5d:4101:: with SMTP id l1-v6mr7729122wrp.45.1538511444646;
 Tue, 02 Oct 2018 13:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559> <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
 <20181002200507.GA26645@himanshu-Vostro-3559>
In-Reply-To: <20181002200507.GA26645@himanshu-Vostro-3559>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 3 Oct 2018 01:47:13 +0530
Message-ID: <CAK-LDbJBE8=TeQkVrspFH620=pNrVFgqTZfAnMaOpLEQhv57pg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: dafna3@gmail.com, Julia Lawall <julia.lawall@lip6.fr>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, hdegoede@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 3, 2018 at 1:35 AM Himanshu Jha <himanshujha199640@gmail.com> w=
rote:
>
> > > Hi, I choose the CONFIG_PCI option, it did solve the undefined symbol=
s,
> > but the file still does not compile starting with the error:
> >
> > drivers/staging/mt7621-pci/pci-mt7621.c:496:27: error: =E2=80=98port=E2=
=80=99 undeclared
> > (first use in this function); did you mean =E2=80=98ror8=E2=80=99?
> >   list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
> >
> > I saw that in other usages of list_for_each_entry_safe, the first param=
eter
> > is a local variable.
>
> Correct! Both port & tmp should be a local variable of the same object
> type.
>
> > > > Then in run "make menuconfig" again and under "Device Drivers -> st=
aging
> > > > drivers" I chose "MediaTek MT7621 PCI Controller"
> > > > Hoping it will solve it , but it didn't.
> > > >
> > > > The files I prepared the patchset for did compile ok , is it import=
ant
> > > that
> > > > all files will compile?
> > >
> > > I think for these changes just use that .config supplied by the distr=
o
> > > at /boot/config-*
> > >
> > > But IIRC `make allyesconfig` should be used(not sure though..)
> > >
> >
> > But I compile on ubuntu on x86 and I want to compile to a specific mips=
 SoC.
> > I tried it anyway and it did not compile the file  I prepared the patch=
 for
> > (drivers/staging/mt7621-mmc/sd.c)
>
> Cool!
> You found a bug while cross-compiling for MIPS which would not
> show up on x86.
>
> Btw, the Cc list should contain developers who might give you
> a better feedback. Therefore, use `get_maintainer` to list all
> those people.

Hi Himanshu,

For Outreachy applicants, we usually do not advice to use 'get_maintainer.p=
l'
when it comes to sending cleanup patches and contributions to staging drive=
rs
[unless driver specific maintainers have asked for that].

>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/20181002200507.GA26645%40himanshu-Vostro-3559.
> For more options, visit https://groups.google.com/d/optout.



--=20
Vaishali
http://vaishalithakkar.in/

