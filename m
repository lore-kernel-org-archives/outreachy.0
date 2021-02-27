X-GM-THRID: 6933876231124287488
X-Received: by 2002:a67:cfc9:: with SMTP id h9mr4162398vsm.34.1614420203025;
        Sat, 27 Feb 2021 02:03:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:c89b:: with SMTP id n27ls215506vkl.1.gmail; Sat, 27 Feb
 2021 02:03:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJygzW1q3O5U1zFXGAY59jReiMiApiIT3NQKzVvShTOHICHioVi4ktIsL8hEgxnNrzv+BMTK
X-Received: by 2002:a1f:9d8c:: with SMTP id g134mr3896954vke.20.1614420201761;
        Sat, 27 Feb 2021 02:03:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614420201; cv=none;
        d=google.com; s=arc-20160816;
        b=kPMrMn0VXAH27Ph/Ep6lMj3VgGL/QUYBkfaGVaN1nTQ46qREBmPJiPE1hWvmY7ien0
         Z0xYq5uzCa1q/ca47Q/IbXgO6eOQc/6i/vZamGQ+MemAz1GXWm7GIYXVQfljl+Q3h1Rd
         LCVLM3y+CfXFY4Eb1D9gUzLdVit+gc4h/B0Zsbp88kLV+r6n2iCPdlv9Prm9mMgDCsfr
         eqsuczSvgABalcwTYbjMc/vZ33SxGcnxuKAD/9ZPoZtjmBSjs/9i26wmX+MYnsuhebAx
         vafs4YTGaagAIgwrmxpvnsFR7u8saumPtVYpBe3QREwqXfYfzMH/p9DuhpgkC6p8ZisS
         j6Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=xmrfChUIiG7nm9ilHY+DbiXhIZp+qrbtWBs3QT74wlY=;
        b=gEok+fhU2oC8Ql4lcaEPAQ1bIqpGIs1ze3QXJMiN1yj9rKi6z56oI/DzshEloCsuBH
         Elhlw0klMpq40c7Sojy4peykkpzyjJcP+5zQXJWU3p3lIKlfelikjdwf6bTlg5/2Soio
         5QEUx34pL8mHKknDWV2ka1GU5ukjsT3u1oczOikLPR83NG+CPODSvNkbF3N+QKNKQlyc
         4O+E1Y/N/UCTRnHFl8xQKf0KemR+utRWDir93QpOA8J09AKChCGgwVastbktr5ncYE9R
         ceIoR3GE/dXf/NqpUdnLX2i5IOlhNeUazZROSVyAcaUMgAWAR1cHeMcCp5IMAzdiWKga
         3Izg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-07.prod.phx3.secureserver.net (p3plsmtpa12-07.prod.phx3.secureserver.net. [68.178.252.236])
        by gmr-mx.google.com with ESMTPS id i20si842712uan.1.2021.02.27.02.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 02:03:21 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) client-ip=68.178.252.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ed1-f49.google.com ([209.85.208.49])
	by :SMTPAUTH: with ESMTPSA
	id FwRTlWSr683tOFwRUlVVqT; Sat, 27 Feb 2021 03:03:20 -0700
X-CMAE-Analysis: v=2.4 cv=ONniYQWB c=1 sm=1 tr=0 ts=603a18e8
 a=fBpEYY1kl5IeR6+UsC6mGA==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=qa6Q16uM49sA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=SiqW3_QkAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=0-oVHmElw7bdUHZZ8WX8:22
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ed1-f49.google.com with SMTP id b13so4750633edx.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2021 02:03:20 -0800 (PST)
X-Gm-Message-State: AOAM533YFzeWziLkFk3UQ4eOfRrYoR1F6H632pU62+LTcb9qRiFEucvt
	8zKCuGHAq1e7zeER8FL1YfLa/4LHeHnrxC32K6Q=
X-Received: by 2002:aa7:cb8f:: with SMTP id r15mr7595910edt.130.1614420199591;
 Sat, 27 Feb 2021 02:03:19 -0800 (PST)
MIME-Version: 1.0
References: <313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n@googlegroups.com>
In-Reply-To: <313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 27 Feb 2021 11:03:06 +0100
X-Gmail-Original-Message-ID: <CAK-LDbLWKurtKDV7QDH1PY3w1b2pofYQmAaFKLMmSoEBHXMOcg@mail.gmail.com>
Message-ID: <CAK-LDbLWKurtKDV7QDH1PY3w1b2pofYQmAaFKLMmSoEBHXMOcg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Need help with compiling kernel
To: Ankita Pareek <ankitapareek2000@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfBD40OO9bDWjz51zULBQjoFrNxtpOHhZn8WDvhkeZtRkSg2doOaHuhV9ozWKBq14rf3O2N47b7aDhyvPgwLUQimkCt/6pu1E9evu7MTOIsZXHRIlWHDi
 Vpvr18bPOgj3Lbb1U/mJhhqgmWiJC8AU0lFpbfyhUNp4aYGYzEfvYPZ6z0Zy0r/pgnPcX/HmZHaadvcQkXxivrtueosgosoWFa9EYKkb96GAuyws+2uDV+5f

On Sat, Feb 27, 2021 at 10:41 AM Ankita Pareek
<ankitapareek2000@gmail.com> wrote:
>
> Hello everyone!
> I'm Ankita Pareek from India. I'm applying for Outreachy this year and I =
would love to contribute to Linux Kernel.
> I'm a newbie and thus started off with compiling my own kernel following =
this tutorial --> https://kernelnewbies.org/OutreachyfirstpatchSetup?action=
=3Dshow&redirect=3DOPWfirstpatchSetup
> I'm able to successfully build and install the kernel on my native Ubuntu=
 20.04 and it also gets updated in the grub boot menu. But when I try to bo=
ot into that newly compiled kernel it gets stuck at "Loading initial ramdis=
k ..." and I'm not able to boot into it. Here are some things that I tried =
to fix this problems -
>
> I waited for almost 2-3 hours after that to boot into the new kernel but =
it still showed the same message.
> Then I tried changing the 'GRUB_CMDLINE_LINUX' parameter to 'debug' for c=
hecking the log messages but couldn't find any logs.
>  Some answers on Google about this said that it was possibly because Secu=
re boot was enabled so I tried compiling and booting by disabling Secure bo=
ot but still same problem exists.
> Then I tried compiling the kernel on a VM and it was successful and I cou=
ld boot into it. But the VM makes the system very slow and thus I wish to c=
ompile and run the kernel on my native Linux machine.
>
> What could be the possible reason and fix for this problem? Can someone p=
lease help me with this? I've been stuck on this for almost a week now so a=
ny help would be really great!

Hi Ankita,

It's strange that you have been able to boot itto same kernel[I assume] in =
VM
but not on your machine. Probably something went wrong while installing
the modules on your machine. Which rc version did you try to install?

I'm free for few hours right now. If you can come on IRC, we can try to
debug the problem. I'm 'vaishali' on both freenode and OFTC. Just ping
me there.

> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/313f5f12-4bce-4f6d-ae23-d76cf0ff60e2n%40googlegroups.com=
.



--=20
Vaishali

