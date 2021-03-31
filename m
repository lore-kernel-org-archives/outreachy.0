X-GM-THRID: 6945605171656261632
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a6b:e20a:: with SMTP id z10mr830719ioc.99.1617163593563;
        Tue, 30 Mar 2021 21:06:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:c911:: with SMTP id z17ls110894iol.8.gmail; Tue, 30 Mar
 2021 21:06:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUS0aysysz7qrd3sdxVIdIIUCf2bwbdIROraSqFIthbYM9daJCjo1DQ7VaUxFK3g9xdZ/T
X-Received: by 2002:a5d:9449:: with SMTP id x9mr897638ior.157.1617163592848;
        Tue, 30 Mar 2021 21:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617163592; cv=none;
        d=google.com; s=arc-20160816;
        b=PbVqPVoo8829sdKRp8mVomXWbXKi9knnyvZAW9u9zXggsL/Uc4IazwG8ob/NhwN5Pt
         8rcwlu3RGItBr6ksJMX3cNrMRTC/Vf+o9yonPl8CYYmtob34/jfgDiGvrWIGShlVtvYL
         LK2MNcyR5dixeAsZEM6KMi6U3cbgxl7oF3VVZtEBmsQtKSu6xmozWSHTZid1N52adinW
         hAG2I2lZKVNyrP7AKq/jKKLZEko94CBOBgGMdvfiYv9Q+dxn0VoLEFv+3xnCSnZeA7HV
         UszdZUOyd00Iiu4JjJeSaa5FZK0PBesLcE9yO3CD7XrsgXVDjmM5hLd5mnyMgOP6RCeX
         wspg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qmAuI2kHaLTLr9y/MeltuOI4jttvrSLZ6X9HDHuRvns=;
        b=YNT58IbWaItfWRPttUi9uiZqbZBnbtS5ucRKacKrxY70qBt82AlE0Yc7exCztenv1t
         mpJci4y+51dV/1QYnYuYSYC7IbPvYmvRKMlL2TOvtDaYZLrwg0/6A+YNqjEG0IF+kKO9
         I/2ssx1mCVwIZOMeCFx/tKf9zKUpckckP+SI3J520dWP61zVjx/feRZpu8ag6NapAO3P
         8mKVa36p3j2tTihXugfD+qJC6Ubt9plCk3fy5j0VWctNxXZ7OO3mtTp7qIOW7wmADWsp
         53B8XDxkGvQ8e82F4h/0MobLahLifPYwbfTkBcTWm84D9tDHdt3HjAdsByycaq41vTD1
         p69Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YpgghDi4;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com. [2607:f8b0:4864:20::934])
        by gmr-mx.google.com with ESMTPS id r19si41122iov.3.2021.03.30.21.06.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 21:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) client-ip=2607:f8b0:4864:20::934;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YpgghDi4;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x934.google.com with SMTP id h5so5739176uaw.0
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Mar 2021 21:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qmAuI2kHaLTLr9y/MeltuOI4jttvrSLZ6X9HDHuRvns=;
        b=YpgghDi4H6PGw1vl0PSQ1Fx3f71VfJ/sDgRWqcd2vMTBTc0g4+k2N7OX/qhStwmWCN
         azG4Bzqci4htOnCZKoLDlsXP+MTxZ2edIVSB+7Zb3nLlf83sNk3t/GmYrEyVx0ww8/HE
         OJChE8qW3keiFlQQYxvcmCGnew3JpOTArJNJe0Bb7wGTEsMQCvMLm5YPrEh86N4ZoeHE
         qCpsR7n+hDfabaIDywGGX2ddo5hQ8RlTyv5oC5QOPNHoBn44lcjx9YOQ33XK4T6DWFiA
         W3S6zhCRQik4BtSImowY1wuk3mycPeIEGDcXJJCguX3fXrLfGi+zGuuotK0GqP2pA190
         /51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qmAuI2kHaLTLr9y/MeltuOI4jttvrSLZ6X9HDHuRvns=;
        b=Y+J7KDa+zUnnAWJKiItXxJM7kKgKizC58Y24wP1AxZKwWSUwyLm/eK1BeMJrkmBlaq
         4jcRuoPzxGq0aU7fjLmTevpELz+Hb0In5y+PzYCX8avPNT5q8M8AQAUWec9aOa5+I1ll
         4xrIoSJO2KsPAHWQXi+TDqv7/+k+hqUOJCFa78SJGmfVPTPNcxU5e1bwVKDkyXx9oBVf
         07mX9pUjelTCV89leL2+S6N//BPluUyznNGREBwc1YkDgTajEX6CAUYP0n+COZVAbV0h
         Nl8GAn9K466qPyw1t8+NRcNKaABVMUV4VQU8wqPT4cLiOW7xenKEmuac0Bo/P9f0lt7H
         BMmA==
X-Gm-Message-State: AOAM533USxBGzrgCWPvSvrGrHlP4+UfebVBb3TvXHSnzqve2gsXzJ4tq
	ZNep7zjHTEhmPxWquUJwvLcLPa9jhiqIpiBnjD0=
X-Received: by 2002:ab0:7394:: with SMTP id l20mr427967uap.99.1617163592327;
 Tue, 30 Mar 2021 21:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <e00ba141-7636-4422-b83c-a21383d2c451n@googlegroups.com>
In-Reply-To: <e00ba141-7636-4422-b83c-a21383d2c451n@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 31 Mar 2021 06:06:20 +0200
Message-ID: <CAK-LDbL2Gu57Le7Ou69nZKAjKzdQq-6EKw4E4BNK-mQcKYWkgw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Cleanup patches to open mailing lists?
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 31, 2021 at 2:15 AM Deborah Brouwer
<deborahbrouwer3563@gmail.com> wrote:
>
> Hi everyone,
> I am trying to get a patch ready to fix a few small checkpatch warnings a=
bout "WARNING: Block comments use * on subsequent lines" in drivers/staging=
/rtl8723bs/core/rtw_xmit.c
>
> I noticed that the Outreachy first patch instructions [1] say not to send=
 the patch to the open mailing lists such as linux-staging@lists.linux.dev =
 (i.e. use the -nol option in the get_maintainer script) and I just wanted =
to confirm that this is still correct?  I should only send the patch to the=
 specific individuals named by the get_maintainer script?

Hi Deborah,

Sorry about that. It's my mistake. I haven't been able to update the
tutorial yet because of some access reason. So, count the information
sent in my last email as the latest one. Please cc the open mailing
lists as well while sending patches.

> Thanks,
> Deb
> [1] https://kernelnewbies.org/Outreachyfirstpatch
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/e00ba141-7636-4422-b83c-a21383d2c451n%40googlegroups.com=
.



--=20
Vaishali

