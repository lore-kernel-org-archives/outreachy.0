X-GM-THRID: 6660904414895669248
X-Received: by 2002:aa7:8718:: with SMTP id b24mr1277451pfo.139.1550862662754;
        Fri, 22 Feb 2019 11:11:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9881:: with SMTP id s1ls3555480plp.3.gmail; Fri, 22
 Feb 2019 11:11:01 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibj3OEke/UFMqQ9E4IdB58gZXR/QANZTYSDLCQ8eK0WFvIWq1I3uxnDFwL2PY8g+wpzOj3C
X-Received: by 2002:a17:902:3225:: with SMTP id y34mr1720303plb.90.1550862661940;
        Fri, 22 Feb 2019 11:11:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550862661; cv=none;
        d=google.com; s=arc-20160816;
        b=mfIZaHFgV8wod5A+NpaYG/LUGBF20SZx93Bj8p5Bo9yLFVLYAs9zd3RAjTtYiMAkd6
         joJ810fEfvLVb9k/CEV85j9aFOHyg9mkfzcncG884ceISnEzcMF2p2t54P5ARq6Hj2y8
         vJg1SF4S41Fg4jWDeKtMerZNl+SV/9bvkwvVasFJ09EzoQ3qTSY+7D9qsK+jwQ4BTd3W
         fualPWh1UAfNR9YBcJay9zPx4fEdvKCTW9kLL7wkPZe0u6RxP1Sx//EfCuWVfEB3Hz1r
         ibOCmpez51TY+EP8u6ahyuhelkERp8DcI/Ihup35iz5xZ95aKaS5kQT6y86vR5Rgd3JM
         PMAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=SgM8jQD/CbhO1QIWRhFH1pMgu4C6fO/x9SIGF450nSM=;
        b=IGmd9OfYkuSFtsXIappcm4rVeurlP+JPsSip7/lS1euFksLA4cavU/aRzvOuC07u6i
         /5gTyFn1S9QsRIFSs0ycQSWBCHR9TYGTKZGhQ4YBO7PVplmYIjOsPMVWw9IjPDvrDs+i
         wflK7v6ZKfeTV+jFakscWSGeaiSBYnYXoDagVX0k8h9R450Fru+Giiv8aNnlKrjkE12E
         Xl8f0gWOvsiE4k6zvcF7J69anVladcP8BTMJJ8CO96OReykWTLkpiFwdioTlcVpgtIN5
         TBSOZ+48WP+Wt4Xl/d7o7pjfh1ckmRwFnyBYbb/UdKx0c7mGcldmRXc37xLafv+kWAsh
         vo1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2swQmQj;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id f79si119776pff.4.2019.02.22.11.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 11:11:01 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2swQmQj;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x730.google.com with SMTP id p15so1794033qkl.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 11:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=SgM8jQD/CbhO1QIWRhFH1pMgu4C6fO/x9SIGF450nSM=;
        b=g2swQmQj/PaSq+PHAHiRVHUhVyMn28L0TjcWK9gpu4UI8JK8zEIfvUF7HUV6Zm36uz
         dj9w9IswEm8eApUpLrJvMlNvG17AUTy09Gndjg/CY5TgVM8dCij8TzITeXBsD8l7UZNw
         CcThtjNiyqX9Oxo+80IM2l768NinKOmEqpTjWGqv/C+5a/+BCexPU9Svx7TQ6iORumDZ
         AuWsCyj5zOOXphp0Y+egjdMIrpLDDBTxT5JkL5dSRbiFxjyEnzbhLzvw2FQs90ifcOF8
         zT/jtJtp7oTwMYPzsv1sqxdGaRMIvLmK1Kf/QsZ+gpwTkrp8d64TedHig70WQ29pu18C
         +GaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=SgM8jQD/CbhO1QIWRhFH1pMgu4C6fO/x9SIGF450nSM=;
        b=eGWZqUUcXio0LeHEA6oHNwgTgI2ohyGKyvLZlaiwY/ueJmV/KES2AAZErB8SzOAwwD
         fD0vPb7udfs0t82QtIBW4bNrL5C4Rf9ihqgqJlm3zBBS4OY5BBWyjvmNIw5nLm5+sGlC
         UP0dqazIUjOF1plY4ZJlznYpFNiooGgfLm/HKyepSQ+o6xaDpyKGtSSxELhZXI1f/ljZ
         5ensqY4RVLqmGK774dEfBGKFhNsrPBXzop9la+GeG8oZDA2TYWGAOP1JcqG7zoYtcsfT
         nSPdwFhuYET0Jxw4EPrWBcpdXxGAhm0WJnScXL7KoFKQGpJEhqwa2S61oEB169zB7YEt
         u5Hg==
X-Gm-Message-State: AHQUAuZ2aTj8ExhSj3qjE19NRbE9kgKpgPzPcYEdIGagVL5hjnC4hBsI
	3IOO18w3I9qJV+qnMJRS3PA8QTKSSFO+VNxorQz5Gg==
X-Received: by 2002:a37:a4c1:: with SMTP id n184mr4095044qke.229.1550862661298;
 Fri, 22 Feb 2019 11:11:01 -0800 (PST)
MIME-Version: 1.0
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Fri, 22 Feb 2019 11:10:50 -0800
Message-ID: <CAO393AB_5nQNfDjScrU5v25SJ_iNz1kHpPHXJGJ8t9ZyC2V31g@mail.gmail.com>
Subject: Projects will be posted soon!
To: outreachy-kernel@googlegroups.com
Cc: himadri18.07@gmail.com
Content-Type: multipart/alternative; boundary="00000000000005b0ca0582805a20"

--00000000000005b0ca0582805a20
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

Linux Kernel will be posting projects for the May-August round on the
Outreachy website soon. Meanwhile, we encourage you to submit cleanup
patches and get familiar with the patch submission process. We will notify
you when the projects are live here
<https://www.outreachy.org/apply/project-selection/>!



-- 
Shraddha

--00000000000005b0ca0582805a20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>Linux Kernel=
 will be posting projects for the May-August round on the Outreachy website=
 soon. Meanwhile, we encourage you to submit cleanup patches and get famili=
ar with the patch submission process. We will notify you when the projects =
are live <a href=3D"https://www.outreachy.org/apply/project-selection/">her=
e</a>!<br></div><div><br></div><div><br></div><div><br>-- <br><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Shraddha<br></div></div></div></div>

--00000000000005b0ca0582805a20--

