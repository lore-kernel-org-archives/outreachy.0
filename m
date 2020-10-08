X-GM-THRID: 6881201522174066688
X-Received: by 2002:a1f:a551:: with SMTP id o78mr4160760vke.25.1602156188438;
        Thu, 08 Oct 2020 04:23:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7684:: with SMTP id v4ls111711uaq.10.gmail; Thu, 08 Oct
 2020 04:23:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRKD0D5T2S2/pHibGkdliERKT5TXe4kq/LrImb6n02VWDf4GmDKbkEkGErXRGMezN55tmo
X-Received: by 2002:ab0:292:: with SMTP id 18mr4421415uah.46.1602156186937;
        Thu, 08 Oct 2020 04:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602156186; cv=none;
        d=google.com; s=arc-20160816;
        b=DNFOD6Qb56WrDMFDTDk7qYJ7646yxu3YHvNGrLwLlWPZ+wPnbVb6zpNDNzHU+bpKXD
         2kCMmIdzJXb0uHP4WGO1oCuBEO7YBMw/7OGcvN/6En670BQxojTQ8OAaSGtidySQHMQq
         wZ/DNOseo+z+py1OvWneyzQdRJXci8UHNi99K8DUILMWbp8Y3vg8EcXCTLUxsaB/psSj
         Z3mu0soCPHqDa+62KtlU8yLzJNNg5SMKs1jr+H5c78VTH2n3wBRIYSBfuNXQBzE1Ew5+
         FbZmPNFVy9xgnDlsmbDGU1y6bXDzvnGTkPwYOkgRLCE5VUjqGuWDk6p1N1NPNQOM+MZn
         wc3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=2p68hOWmN+ET/t8d1ccpdvMxEydr+7IDd5OgIPe5+rQ=;
        b=NAubP6VSga3so51SrG9AfDkmFFQlSDpWj4WI3f9UwR6x+mm0btfr76FkuZQZXQs+Pg
         DLjn7Xx8pWh6GJLSXcDPraMaF4nEmloTAGozRMkmAX7xLJu9MExDwiYCogVOfPtXGtPN
         aVqbFH6X1nVxNL6XNZ6r7HDeBqWeRMIQDyK1GmMHGql+B0G6BqsR8NvBUtTPikMKrVv5
         LaOjydAXYC0Wnuszp5G0hunG+DKgkPMujp/205epjUQHbh/bDCpWG+KgiYaxJfFn36CN
         IleUQZsm21rJ7yBwQzmSJMi2SDivFwXYGkbcXZsmySIjU92U+Ig5RT/P1TIRPW6IoKef
         X5jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-07.prod.phx3.secureserver.net (p3plsmtpa12-07.prod.phx3.secureserver.net. [68.178.252.236])
        by gmr-mx.google.com with ESMTPS id y65si243733vkf.1.2020.10.08.04.23.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 04:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) client-ip=68.178.252.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by :SMTPAUTH: with ESMTPSA
	id QU0nkhCecvGI2QU0nkgOVG; Thu, 08 Oct 2020 04:23:05 -0700
X-CMAE-Analysis: v=2.3 cv=XvuExmN9 c=1 sm=1 tr=0
 a=DUWv+hUk7Cu2hlvKYqx6KA==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=VwQbUJbxAAAA:8 a=YgwN3AOMAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=ah4tFYJVAAAA:8 a=AFfvQUj85srtwFEc7eAA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=C7f44v_zKFsA:10 a=Z_LR4SPqmMkA:10 a=7n0O6t1364YA:10 a=-FEs8UIgK8oA:10
 a=NWVoK91CQyQA:10 a=AjGcO6oz07-iQ99wixmX:22 a=ztR1XV6QG-NWxUt1dNgd:22
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=Upar0pg2CrKrM9rf4Tky:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f181.google.com with SMTP id t77so5925072oie.4
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2020 04:23:05 -0700 (PDT)
X-Gm-Message-State: AOAM530Fn93G/R7Jg4jthlwZbgjyB0kWMcw+gmeVoWu8HeXLVYzvJcyn
	BzcOLCeUZOh8VB4ygR6YiWlHFoSxx9I8Q0TOZDo=
X-Received: by 2002:aca:bc8b:: with SMTP id m133mr5006857oif.10.1602156185087;
 Thu, 08 Oct 2020 04:23:05 -0700 (PDT)
MIME-Version: 1.0
References: <229618f9-397a-4985-b099-02d54aebacban@googlegroups.com>
In-Reply-To: <229618f9-397a-4985-b099-02d54aebacban@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 8 Oct 2020 16:52:52 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKwKKO-cjfJ5mCbgsX1vRn=MzL4MYCjFdT01CpQ=KK6xg@mail.gmail.com>
Message-ID: <CAK-LDbKwKKO-cjfJ5mCbgsX1vRn=MzL4MYCjFdT01CpQ=KK6xg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy Application Process
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4wfE9S81av32k+p1YulH0IIp9QlB4ApIRYBU/2vFUgSS1FL3TfX5RbpiyeDA8bCj6QcFUyW8bvuwP7MeXLMIPkXHZi+0a8WXYYRDyx7t9bAzA09n4qNsUP
 3c7pknbkHtLni3O9L9QsfYEE8LtTBDzLiwcuo/XTpLBpOYAOCWobYEObOQRn/QF7xnC7yqGmW3LAXBKMk5tq3Qxi+JjSiJChlTs=

On Thu, Oct 8, 2020 at 4:26 PM Sumera Priyadarsini
<sylphrenadin@gmail.com> wrote:
>
>
> Hi,
>
> Greetings of the day!
>
> I am Sumera Priyadarsini, and have recently completed my undergrad. I wou=
ld like to apply to a Linux Kernel Project under Outreachy.  I have a few d=
oubts though, before I get started.
>
> It is mentioned that all interns need to submit ten Staging driver cleanu=
p patches and record them before moving on to project specific tasks. Over =
the last year, I have contributed a few patches(outside an Outreachy applic=
ation), both to the Staging driver and  more recently as part of my Communi=
ty Bridge Internship- Make Refurbish Coccicheck.
>
> My patches can be found at the following links:
>
> 1. https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log=
/?h=3Dstaging-testing&qt=3Dauthor&q=3Dsumera
> 2.  https://systeme.lip6.fr/pipermail/cocci/2020-August/author.html
> 3. https://systeme.lip6.fr/pipermail/cocci/2020-September/author.html
> 4. https://systeme.lip6.fr/pipermail/cocci/2020-October/author.html
>
> Please let me know if I can move ahead with project specific tasks or sho=
uld I first make more cleanup contributions to the Staging driver.

Hi Sumera,

Glad to see your interest in Linux kernel projects for this
round of Outreachy. As you already know the process
of sending patches in the Linux kernel and how it works,
you're not required to send more cleanup patches. Although
I would still like you to send ~2 patchsets[it doesn't have
to be cleanup patches] just to give mentors an idea about
your communication style. But other than that, just feel
free to move ahead with project-specific tasks.

> I am also  a tad confused about the Internship Tasks section in the Outre=
achy projects. Are these tasks that are to be accomplished as part of the i=
nternship after one is selected, or are these the project specific tasks re=
quired to be done during the application period?

As Outreachy doesn't have a specific section for the tasks to
complete during the contribution period, most mentors tend
to add a general task list that needs to be completed by an
intern after they're selected. But we do understand and
acknowledge that every applicant is at a different level.
So, I would advise you to directly contact the mentors of the
projects you're interested in and ask them about the tasks
you can do during the contribution period to better understand
the project. Generally initial tasks from the internship tasklist
can be picked up during the contribution period by applicants.
[Please coordinate with mentors before starting them though]

I've asked mentors to add some tasks for the contribution period
too. So, some tasks may get added in upcoming days [given that
the contribution period has started from yesterday only and some
projects were added right before the deadline :)].

> Warm regards,
> Sumera
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/229618f9-397a-4985-b099-02d54aebacban%40googlegroups.com=
.



--
Vaishali
http://vaishalithakkar.in/

