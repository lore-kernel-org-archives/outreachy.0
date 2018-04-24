X-GM-THRID: 6547933385592930304
X-Received: by 10.80.202.200 with SMTP id f8mr8134823edi.2.1524559893476;
        Tue, 24 Apr 2018 01:51:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.159.200 with SMTP id c66ls11293252edf.8.gmail; Tue, 24 Apr
 2018 01:51:32 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+G7RBbxmtiYOX9upuFiqJLy6QZH2t+YkI/oz7b3A1l2dV80pIaU3CO8JUmSHcU6kcW7qoX
X-Received: by 10.80.144.253 with SMTP id d58mr8144356eda.12.1524559892238;
        Tue, 24 Apr 2018 01:51:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524559892; cv=none;
        d=google.com; s=arc-20160816;
        b=dXxq1hqfRHio9m/chD3AwPmmBwXoohwAPaf0ChUL9mdRV3MqNdlic6rh1Hid9J6QVl
         G4k3MNj1DlLRVAG5RcCArOTHG/nBo7VlCgX7yold+05XLJCoV/ot5TGdYrlea48qYPeZ
         PZEnaxXz2mf5F6hqWfVBN64dzGzxzL1AKeSoqD0Eo6QrCpzWZEMLOMg22hKv+ZmyrBtn
         Iizh8WjH2+zYjdLF0nA5C+XFy/C06WH3E+sZWwtI92bXctJDnTz/P6LX2os8J9exMTcW
         1Du5+IwEM4+6bYt5xUKFp1uaSYaj0qKJ0aNu3ZhAgDBx3YNDNDlJ/YqREwVquj3VEksw
         OHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=mrAJYyz2cBWHp04J2gBE4ZDmCcDmoP3VF+TCSc99bQQ=;
        b=FUOVuVdqLGcj95BjM9uUR4AabhU6r5L4By+eTi/5wMqAYWDG6H2hP5r+UcoMJrJBZS
         ALhR9ThQ60FRHnFRLRxdchbVuNGnve9OQudAmo3cmZNGC2XIbeGHrua07po4ZSuBrUao
         s7PictB9HO5rC8mYeE9AEqmlFgfAeYKUzzVynO4eiwMC7pJl8RDMMmOFnINYULsEFIYh
         BDTV/Azxj+nAAnjhQ6ndQKgmBQCuzJLBKUJg0VeSQmkp86DVdZSHSMPdfrawjUpA3n5n
         +wRwvyVwwBgNay9AEdSdx76SswRtt7QpCrR1a9EQo4hF8hC16p5t1sXqAXKo+XRmbpWb
         i8jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.48 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com. [209.85.215.48])
        by gmr-mx.google.com with ESMTPS id v10si614475edf.4.2018.04.24.01.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 01:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.48 as permitted sender) client-ip=209.85.215.48;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.48 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f48.google.com with SMTP id q5-v6so19049104lff.12
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Apr 2018 01:51:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=mrAJYyz2cBWHp04J2gBE4ZDmCcDmoP3VF+TCSc99bQQ=;
        b=egtu+1o8giijwtDsXTiplpaStE5lNOAHDzxMANjrZrEm2EnPWrvmK8pgXb3AFeRsOl
         u77nA5lgwmkNin+0lnNeM+ueGRqj2B1ZH9D8APSYgMngclg0poVBWf67jKx0HY1W7qen
         d1a7m2Uus/BTGV0jwt7Sv+n1K2TipVA7xETv4uxP6NlGJhBGTXi4q5TQ1XOhOlgFS/EU
         hbMC+49oojD7ZpSa9uV+HBBQDpyfpDsCJWTWLa1LvexKAVNdqbR+Rf7G4DcQ5uuiMTOM
         PyOaEHL9KvUiZ1CyNJWufIPIlA3M9FkiRNox3e41ugWdu6iXgUC4HBSjqyOpAsIcHata
         yikQ==
X-Gm-Message-State: ALQs6tAYo1+J4VpkcytWmeF62bOwf8wG5EHXsSEL62sovNeERIcLOZMa
	/MgZ7+phmmgsrAB81itTfGTpQSh4
X-Received: by 2002:a19:c793:: with SMTP id x141-v6mr8432849lff.32.1524559891281;
        Tue, 24 Apr 2018 01:51:31 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com. [209.85.215.49])
        by smtp.gmail.com with ESMTPSA id j24sm2733548lji.89.2018.04.24.01.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 01:51:31 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id p142-v6so19071587lfd.6
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Apr 2018 01:51:30 -0700 (PDT)
X-Received: by 2002:a19:5a1d:: with SMTP id o29-v6mr10564250lfb.93.1524559890869;
 Tue, 24 Apr 2018 01:51:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.156.1 with HTTP; Tue, 24 Apr 2018 01:51:30 -0700 (PDT)
In-Reply-To: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
References: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 24 Apr 2018 14:21:30 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLj8GqQm2yLKP5086hvJF-e8ByHgrRW5Kx6NM0U1uGMHQ@mail.gmail.com>
Message-ID: <CAK-LDbLj8GqQm2yLKP5086hvJF-e8ByHgrRW5Kx6NM0U1uGMHQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Continuing Contributions
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 24, 2018 at 2:15 PM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> I would like to continue contributing to the Linux kernel, without
> waiting for the next Outreachy cycle to begin. Would that be possible?
> If so, do I simply send my contributions to the driver maintainers
> (leaving out the outreachy group), or should I send it to different
> addresses as well?
> Additionally, if it is possible to keep contributing, should I
> continue submitting cleanup patches for staging drivers?

Hi Nishka,

Glad to see your interest in continuing the contribution. Yes,
we use Outreachy mailing list during Outreachy application
period only. So you can just go ahead and send patches in
other subsystems [including staging itself] and can use
get_maintainer.pl to get the list of mailing lists and maintainers.

Thanks.

> Thanking you,
> Nishka Dasgupta
> Undergraduate Class of 2018, Ashoka University
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

