X-GM-THRID: 6607095314902941696
X-Received: by 2002:a19:c4cf:: with SMTP id u198-v6mr503264lff.15.1538513822687;
        Tue, 02 Oct 2018 13:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4356:: with SMTP id m22-v6ls175297lfj.41.gmail; Tue, 02
 Oct 2018 13:57:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63AdX/Zqvp6IcvA/lB//ZNjb/ZwcT3TT9eVj4QumJ/4cZvBAxAIYw5P5Vj1hDcCMGtZF5C0
X-Received: by 2002:a19:d7c6:: with SMTP id q67-v6mr377179lfi.12.1538513821318;
        Tue, 02 Oct 2018 13:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538513821; cv=none;
        d=google.com; s=arc-20160816;
        b=zI1ycGeA0Sg62PhEU/Yl0cYWLAhiLKFeR/OCu6vqoDzL6qiaYVH0v+RwHtGC5CrpiB
         XQ5/rxAwM61cug5fs3XssqMK3ZPdEdLojSM8mkhIe0a5T8suDKs9tv0Pc8l+qVxrbaMV
         FiK4twHznyRa6m/5Fv0jBaBv71FL/RDA+7iSnhsb3HUqJs6jPwubUvp/6obhs4Rhi+Wa
         sVqq95M9A+2a3+SM3DkIGvZIpm7/ORoxhLcTqWzfwnIhvfDm7jL3eyGMQqeEiXiIo5K0
         d9BEvVznHFaCPsWHX39eQzCqfdpNEuzaGz4Qk/lYRcdLXgvfqiQYUt18fIUQPwiNRJbE
         kHew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8KqxHkK+xalMUJ5Ol0n8kzok1q4pDiKUfaz3m1GDD/k=;
        b=MeoafkFX1iVeU+GxUewGkLtXZ/PvZVrf3u52leI1EY1h64DEhQc9gCcf5xKsmiU4mE
         LJYW4RNELEAILGl/qQ5siSfv5ZN309zBcMEl1ufwAhhy5ZrsGypxXECmUG22XX7JXXsM
         LQoLQ2wLhOoSxeIuSN1VtcCX+Hp/QH5UTTwZfp0MyyoPZXLd8wlcf9nkz4hV9Dk3TSKO
         +soDvUFWDYmKa85vHcRJCy9dyCDD8gQpZhpT+1L5II8kjs+ewwqrjw+9bHHx0bp+70NJ
         eXU+MN0ETQ1hzZBUlA6Vr+KHFMR11SPX5UnGnzSPLdb7/hVmW5QMGikgaUTSWqlRpS8f
         FiiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsdUTOvt;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id h192-v6si512083lfg.1.2018.10.02.13.57.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 13:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dsdUTOvt;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id n1-v6so3736380wrt.10
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 13:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8KqxHkK+xalMUJ5Ol0n8kzok1q4pDiKUfaz3m1GDD/k=;
        b=dsdUTOvtMW8UNGLwzc1m9dlWnut8E9ZpTENKWA/nM7zr6EFgoZlc0j8j66B9F/Rv/O
         Kw/EfEK9XkXJCOTdq9V8oaEDhfMx12SbgCvPt4ubWq4X+aUDlJwoIxWUhwAN7OjdjpJR
         RWMrf+WbbYxbkHYkZxROUf5bN428gL6KRaXK8+paxlVzhjTAv1s2StqkuLuG2Ah255vg
         YssX2ojR9hCYVCOcrLKq6jQ8eoBIR0aX0Jy13Gp2Og4OBCMWktGcmC1wLUjunqdI7UuF
         0tWAwC3i2QKc2pK123YpitoQZDChQieAfwxwcIVRgQsBtUrnCICSWkImHAMY2+DXSBHt
         1NJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8KqxHkK+xalMUJ5Ol0n8kzok1q4pDiKUfaz3m1GDD/k=;
        b=NJk+KElaORsmjIr7+RbjFMKbbJpfzUGMzpHNA8Psp/s0c+noszD6cCZ27QToxtyhLx
         W0kgE3BZgA+Lxf5wnrlb5Uy6Q02Nmd/6UCQCvsKym75px8mqmYVLSIU6AVGBVqgRCFpL
         zIUuYHAkDwNliK/04YJbfiCS0kVLj0FXyfQTBxS4ivf9v7ue7L+u3e79jxpMrxe6Bhe4
         wuPOoBOrfXdME/SfeqxQ+vyRiH+7YhH9tmysDdaHnLJVxba2u7RQzmz5EPkXhKltbfXi
         61oRjs4wSbfyw4E8+wOzPQChUktm1qoUfzfuCfNlYPJsZLrO3zZvJ/Je3wQv+x1i4LCD
         7cQg==
X-Gm-Message-State: ABuFfog3OrxbL6wlbVyLIg+Hk6bcgwcwenFccWYVwe6Pz3T92ODRNBff
	oFFPLKXNA8d1mwiiERUq7HBKKrd1AGtAEh9/h2Y=
X-Received: by 2002:a5d:4101:: with SMTP id l1-v6mr7817238wrp.45.1538513820834;
 Tue, 02 Oct 2018 13:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien> <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
 <alpine.DEB.2.20.1810011047210.3464@hadrien> <CAJ1myNRcjyn+GoR--7uoq4iK4Go5adEkEitX=gDd4FDPnbqPeQ@mail.gmail.com>
 <20181002092816.GA7179@himanshu-Vostro-3559> <CAJ1myNQrZqex6nFfq9Uh1qYK94PVOE_mxUZf7wK0chDXtP74iQ@mail.gmail.com>
 <20181002200507.GA26645@himanshu-Vostro-3559> <CAK-LDbJBE8=TeQkVrspFH620=pNrVFgqTZfAnMaOpLEQhv57pg@mail.gmail.com>
In-Reply-To: <CAK-LDbJBE8=TeQkVrspFH620=pNrVFgqTZfAnMaOpLEQhv57pg@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 3 Oct 2018 02:26:49 +0530
Message-ID: <CAK-LDb+gTJxKyaxCHndwzW3QpmSOraiZaT4SVNZNTukc_OSBqg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: dafna3@gmail.com, Julia Lawall <julia.lawall@lip6.fr>, 
	Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, hdegoede@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 3, 2018 at 1:47 AM Vaishali Thakkar <vthakkar1994@gmail.com> wr=
ote:
>
> On Wed, Oct 3, 2018 at 1:35 AM Himanshu Jha <himanshujha199640@gmail.com>=
 wrote:
> >
> > > > Hi, I choose the CONFIG_PCI option, it did solve the undefined symb=
ols,
> > > but the file still does not compile starting with the error:
> > >
> > > drivers/staging/mt7621-pci/pci-mt7621.c:496:27: error: =E2=80=98port=
=E2=80=99 undeclared
> > > (first use in this function); did you mean =E2=80=98ror8=E2=80=99?
> > >   list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
> > >
> > > I saw that in other usages of list_for_each_entry_safe, the first par=
ameter
> > > is a local variable.
> >
> > Correct! Both port & tmp should be a local variable of the same object
> > type.
> >
> > > > > Then in run "make menuconfig" again and under "Device Drivers -> =
staging
> > > > > drivers" I chose "MediaTek MT7621 PCI Controller"
> > > > > Hoping it will solve it , but it didn't.
> > > > >
> > > > > The files I prepared the patchset for did compile ok , is it impo=
rtant
> > > > that
> > > > > all files will compile?
> > > >
> > > > I think for these changes just use that .config supplied by the dis=
tro
> > > > at /boot/config-*
> > > >
> > > > But IIRC `make allyesconfig` should be used(not sure though..)
> > > >
> > >
> > > But I compile on ubuntu on x86 and I want to compile to a specific mi=
ps SoC.
> > > I tried it anyway and it did not compile the file  I prepared the pat=
ch for
> > > (drivers/staging/mt7621-mmc/sd.c)
> >
> > Cool!
> > You found a bug while cross-compiling for MIPS which would not
> > show up on x86.
> >
> > Btw, the Cc list should contain developers who might give you
> > a better feedback. Therefore, use `get_maintainer` to list all
> > those people.
>
> Hi Himanshu,
>
> For Outreachy applicants, we usually do not advice to use 'get_maintainer=
.pl'
> when it comes to sending cleanup patches and contributions to staging dri=
vers
> [unless driver specific maintainers have asked for that].

Sorry Himanshu, I missed that it's been changed in the process for applican=
ts.
So, now driver maintainers need to be cc'ed and need to opt out if they don=
't
want patches coming from Outreachy mailing list. Sorry about the earlier
correction.

Dafna,

Himanshu is right. We have this text in the tutorial:

"News This year, we ask that you send all patches to the appropriate
staging driver maintainers, as well as to the outreachy mailing list. See
Submit a patch for more information. For IIO patches, be sure to send them
to linux-iio@vger.kernel.org"

> >
> > --
> > Himanshu Jha
> > Undergraduate Student
> > Department of Electronics & Communication
> > Guru Tegh Bahadur Institute of Technology
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/outreachy-kernel/20181002200507.GA26645%40himanshu-Vostro-3559.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
> http://vaishalithakkar.in/



--=20
Vaishali
http://vaishalithakkar.in/

