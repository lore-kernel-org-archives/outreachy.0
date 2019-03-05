X-GM-THRID: 6664965756693774336
X-Received: by 2002:a6b:6603:: with SMTP id a3mr713695ioc.11.1551808267928;
        Tue, 05 Mar 2019 09:51:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls519274itk.1.gmail; Tue, 05 Mar
 2019 09:51:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqxGBOjEZmjWQ65cif7x2Y3muYB1iXiRB/aYoHExmVRQ1W/gVTU1HwG5SXXyx/Vm20HXiXyu
X-Received: by 2002:a24:2ed2:: with SMTP id i201mr3504755ita.3.1551808266988;
        Tue, 05 Mar 2019 09:51:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551808266; cv=none;
        d=google.com; s=arc-20160816;
        b=nugJhCG3p8N8Cby8PW3oEifO45hVHefiOIwO8lGZxsSG/BM5k0X7BInMqyXXkBCOVy
         aj4x6zkVBo/RukE742rhMexwnaM31lvVqGaxoHVjH5XHzjab1Z5QNx8V5iyI3nL7X0k6
         Rl0LC4ZmRzWnqbfTUwtonZlysumeE91CnwOwsm/Nn5jyLjVsYq7407HpOFyY5PG9MF1e
         pmw2ROSGmKfx/EKnvT/aqRoWoDA8tQw4hzNkCqbPf1Z3oH37yAcuJkGGrQe6j/aWEqxk
         fIc5P0XRkO4Xw/VGB7Kefb7wVlXcElavg4z2kbix/LynyWPjt1LJE6l7tE4uYWQ0mazu
         92Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=XxHWqXZhUnoVhfXjoB8IDp3Yc8qlKVGTmV5rSJ86z1E=;
        b=yGnHmE9P7UV12uEXzpvDtut/GHe30Y79r8Kupz73J4Qf0VlE93GfcgkHcyKSM++YKQ
         VCPvygnu1vSHxyR9zVRHpLrktJjU7lgrR1VYQhfuNpcYBY6nzqPaYB3nZ/ylkwrAxmQT
         4d84jSpdp/JQkWYzpOxkbcJG2GQH46DmD1Q/PLguhCixEThuU2+YKgH1++ygrGq/wHTy
         TLRpScsEomuaSXRP8OmRGs9V89xCrqHxQsM8Qmc+8g4sakX9YODMGHWDlGwZuzJTfwR4
         eMtkdbG/WRX20I2xO1J0rs/LF8Wd81ZaJFidr27VVdwAAdKAwMu6RsSbHTm10CWBG7Fu
         7qIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pm8B8oqj;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id e74si3150ite.1.2019.03.05.09.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:51:06 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pm8B8oqj;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id b4so7527701oif.6
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 09:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=XxHWqXZhUnoVhfXjoB8IDp3Yc8qlKVGTmV5rSJ86z1E=;
        b=Pm8B8oqj82frmK8pWbeujwKRUrhGHiLb5Nitd3Hl8e5k5CVJosjeSSGVCjeOaY1Md2
         j5qRH8/l/UsyYHnSVYCmamoZtaobwepVSpzmM7FId8lBdaQ4pdjEIHO8RYybYkuNMIFc
         08C7fL29KoQiK8B/sYd1UsJG+MZaEItVcglExmpBp994jD9FBjs0mBjoJXN97O3+8EQk
         ztuBKOnImqox4xAS3jNzFsQmL0eWo5FwZ99dZYraiFvV6Ed99nSvMcS8bgz8zrv4Mt8E
         OkTBQtA+WGtANfav5hH2hS+0nMme8BOQLyaisVXEut7attRjD4uF9VghNah0YvGM8b7x
         OXyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XxHWqXZhUnoVhfXjoB8IDp3Yc8qlKVGTmV5rSJ86z1E=;
        b=soPkUcXNZZ762cIhRKUvac+VLK+bDwHOKaYZjkb9zsY9ymrFrh8xmH64Pi5Z0fa0JO
         DP3cBjLRIV1T0W2ESpbmO0Ta+s4hSS7mxaT76QhgGmlaRTAtvM4e9gYpi+aKi8fWfd87
         hwwDGlsjppQ19/HTtWkFZ6h7Rh+VxJ9nTPC2nS4aq0Y4GLOw+HFlsnSThGWJA5WLApLI
         B7a/4hhCrmlzU6DR/IzNgV8NSRHue7gDBn/ADH3qGwoJva2T8IjlZjg3p/hiI2UFW4ci
         9Lxh3VdVuIHKo6tRJ1LqQRM879p0avoXVblPCEqT9d0pzaAuShSPLr8S/A5WS8iDnZGs
         RTew==
X-Gm-Message-State: APjAAAWbAlVdeCg9cBTkQJNZd8SJXmMhwH847ZMQIcYr7YFgFU6dlzH0
	plLwaxmDE9AJDM+0YMAypSImJFIYgATyuzS67VBODt3H
X-Received: by 2002:aca:b683:: with SMTP id g125mr2793459oif.17.1551808266566;
 Tue, 05 Mar 2019 09:51:06 -0800 (PST)
MIME-Version: 1.0
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 23:20:54 +0530
Message-ID: <CACw+u4H=4T8_daSPgAstpNFNUJ46zXw2DikwCeu4tzm-MQCSRw@mail.gmail.com>
Subject: Warning about ENOSYS
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007cff3405835c841d"

--0000000000007cff3405835c841d
Content-Type: text/plain; charset="UTF-8"

I came across the following warning in
git/kernels/staging/drivers/staging/vboxvideo/vbox_prime.c

WARNING: ENOSYS means 'invalid syscall nr' and nothing else
For the following line:
                 return ERR_PTR(-ENOSYS);

How should I go about fixing this issue?

Thanks,
Debleena

--0000000000007cff3405835c841d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I came across the following warning in git/kernels/staging=
/drivers/staging/vboxvideo/vbox_prime.c<div><br></div><div>WARNING: ENOSYS =
means &#39;invalid syscall nr&#39; and nothing else=C2=A0</div><div>For the=
 following line:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0return ERR_PTR(-ENOSYS);<br></div><div><br></div><div>How sho=
uld I go about fixing this issue?</div><div><br></div><div>Thanks,</div><di=
v>Debleena</div></div>

--0000000000007cff3405835c841d--

