X-GM-THRID: 6929404332115755008
X-Received: by 2002:aa7:9881:0:b029:1e7:177:96a0 with SMTP id r1-20020aa798810000b02901e7017796a0mr14714362pfl.30.1613377949519;
        Mon, 15 Feb 2021 00:32:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:4f84:: with SMTP id q4ls8185919pjh.0.canary-gmail;
 Mon, 15 Feb 2021 00:32:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz6jkErKca4+DGbC65YB0HgDgMZ4KZIzuGBe3/FQdSh5qPPbOjLdYMVv/SX8gINGQgMhAzm
X-Received: by 2002:a17:90a:7108:: with SMTP id h8mr10731926pjk.98.1613377948228;
        Mon, 15 Feb 2021 00:32:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613377948; cv=none;
        d=google.com; s=arc-20160816;
        b=e9vXIRoSaNYxbLhoAMGNdJ9cZq7K4zWHH8zEcWDaza1X1ocXvWwo64JQq6apNnZPfg
         ndf0gvT8FA+BFFXpO3jGz3KPwr0LWHHOdDSOINwYYKSI0fkIa8++5xGbfZeS/9/3zu2o
         2N0qPZebvZ1B5Eux1Nxb10zWRm1y4eEb48JyjdkwUYaSwKtpWBHefv1Aii4jLx1VQG/d
         JgaUbU9hnc1mcukqoXndiAkoAnryFHQv76w9gHvp3d4LNUnwDe2FSxNoqGJA5vPXj39P
         gESO+Av1SC5AaJB9/AD+MXeq2dziFvDExlwr/bRTHxLUoDp8yV/5ihRvPizF1FrujtoL
         uuxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=cPQrjHRhkkkSg5jY2oQ2Rt3MyQPhI0sD9qkuxWEq298=;
        b=V7DK1rduzxwzNLP/VugROCJM0SXplBJnBKsO2W9DSsYP/h4vjplV5gkrG/6yRsmwsq
         SdPDHCIdd4vQAPGHb1buquwneGDFFUYO6A7jJmvaAJ7+VuH5BZKs2G9UiW3qRk4hpiRG
         n0rfVmn58XquIvH9EV4CBZV/McrFWM8JfvzbuTZ+Fr9xFni3CnE+I9ZopTmlcfYtDmzS
         3YMDG9vffOfDE1/SvPP8l3lBz7DH4C+Id1fF18T0E/WOl715RTVAgcMV8nXxRXH/+DcM
         /gGos14ZlOESjgOx2mv+SZXHCyivp9iYHqzS3qFeFrJDdPmSK3EjylW4Sgbslg4Ft7X9
         7yKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-05.prod.phx3.secureserver.net (p3plsmtpa12-05.prod.phx3.secureserver.net. [68.178.252.234])
        by gmr-mx.google.com with ESMTPS id nl3si660784pjb.0.2021.02.15.00.32.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 00:32:28 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) client-ip=68.178.252.234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ua1-f47.google.com ([209.85.222.47])
	by :SMTPAUTH: with ESMTPSA
	id BZIxlMO1L5EyQBZIxliZGA; Mon, 15 Feb 2021 01:32:27 -0700
X-CMAE-Analysis: v=2.4 cv=LKaj/La9 c=1 sm=1 tr=0 ts=602a319b
 a=QmUuetlIBXY8myAB8zC7nw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=qa6Q16uM49sA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=SiqW3_QkAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=gGoZYPkk75cA:10 a=0-oVHmElw7bdUHZZ8WX8:22
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ua1-f47.google.com with SMTP id i3so2143105uai.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2021 00:32:27 -0800 (PST)
X-Gm-Message-State: AOAM532Lgp9Zdp1MzH9KbvJwYyHjj7mfSc7/TwX6QwGL4rldFuHqmz0N
	BLfIA2Gr4a6wMVK6P9vDDbSNYUeHvwgGEMK4PY0=
X-Received: by 2002:a9f:3649:: with SMTP id s9mr7883194uad.105.1613377946979;
 Mon, 15 Feb 2021 00:32:26 -0800 (PST)
MIME-Version: 1.0
References: <e36af443-8cb6-47b1-9d53-830e6b3d583an@googlegroups.com>
In-Reply-To: <e36af443-8cb6-47b1-9d53-830e6b3d583an@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 15 Feb 2021 09:32:15 +0100
X-Gmail-Original-Message-ID: <CAK-LDbJTM5ssdrWYAdcnWGSAhvuSz5cpiQwSy-=3CR=QLcdSZQ@mail.gmail.com>
Message-ID: <CAK-LDbJTM5ssdrWYAdcnWGSAhvuSz5cpiQwSy-=3CR=QLcdSZQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] How to start contributing ?
To: MAHAK BANSAL <mbansal@cs.iitr.ac.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfDhvksjj5Reuu5C4fTB6cZy2Wn6S3TqvbJJSBbRVkKcGEsWj3APTxiygimv1TAfA6RJcE5DyY2ycyQtsFFz3LJ1/YjvVO08KWMjfgvDUtgIZLv39x1Aw
 H2QVX4OPC1xeE4qrvSbBOLWBAtupIjwTk1GhO1wZZoJm4VGjcOGsE1qLoi/5ojjBGkdfoeMKcGM0ouek4OdGhoM9AvM9+8Xm5sQtovfH0xWlwwViURXdKYCh

On Mon, Feb 15, 2021 at 9:27 AM MAHAK BANSAL <mbansal@cs.iitr.ac.in> wrote:
>
> Hi!
> I hope everyone is doing well.
> I'm a newbie, Can anyone tell me how should I start ?
> I'm participating in Outreachy this year and would love to work with you all.

Hi Mahak,

Thanks for your interest in contributing to Linux kernel.

For the Outreachy, the contribution period is not yet open
so according to the rules of a program we can't share much
details with you. If you'll be eligible for the program, our orga
link will be automatically visible to you after March 15, 2021.
Until then if you wish to contribute to Linux kernel outside
the scope of Outreachy, you can check out this kernel first
patch link:

https://kernelnewbies.org/FirstKernelPatch

> Thanks
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e36af443-8cb6-47b1-9d53-830e6b3d583an%40googlegroups.com.



-- 
Vaishali

