X-GM-THRID: 6887787795583074304
X-Received: by 2002:a9d:41:: with SMTP id 59mr11945194ota.216.1603688065017;
        Sun, 25 Oct 2020 21:54:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:53cb:: with SMTP id h194ls1829364oib.4.gmail; Sun, 25
 Oct 2020 21:54:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzc8XjXb9GUzvX95aXnOPSEcsMcIF4H5YSDvA/k94KynjCoxEK0YPJaa5A8ulx7veTVxo4
X-Received: by 2002:aca:5883:: with SMTP id m125mr11410282oib.21.1603688063795;
        Sun, 25 Oct 2020 21:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603688063; cv=none;
        d=google.com; s=arc-20160816;
        b=g/NWoCuJTM9Igp13lvf/hmY+4tmNaDwZFD8LeUWVkZnC0lz3Bkmc4g7VbWGOKHIS1r
         JZ7fqrqMJ7Hx41rbj0ObxcHc+ItTmyhUNmlXVaVf9NyIJuPky9MOZ8L/JCg2XcAvpeEK
         b8xF5DRSNHj1knflXs9Mu0Sv1RSiG89fC+MLm3hzG4uwFSqPe/i+TB+Xyjt7SuPcXnjb
         W9KEYrN1bKR+TFvs6vUtEXIzB6BCuPug+51H+QwW2PejmZcn4P2pI+gSu1m61y3BxnMX
         Pc/ChNGmpwhLVvj9PRgi7oymsBsbL+mMGnSm2xU7Fo/4hu3MiN+WhO+AbpPLG0Cv0RI+
         c8Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=PgaIrxkHY4NV21i5meF9tzF+N9+5VCk0DWVKFF7iUBI=;
        b=EireD45n9rW2Zl2HrGf3VWc5f+zZzAV8XCCg4QGGSWQdtRzOxatSbh+BwhkLnwjYxL
         wB8wEvH7CwIMlpxlc2CZ+8p+1e1F0KueDmjyARmNAe5/mw4nWJ2TbnI29FRWMmkcGdNB
         d5MEE5xvNSO82M2fXiJucr3sVMaUClbsvFD3i3udviwJ+Y+pLu6WL+3S/yMvdbemeTKB
         tn8cOlOkmu26I8GIj/YyIeufKR9bYE+tXsR/bJpQcAX+8n0DHAiOzrqU8H0tUiBbVgII
         wDbF4f/iscWmzRlFISDohAq0Hz6t+yhqOzvn3t3RSGj4OGjvMoP8E2j9sFRM5n7JYY3c
         CBNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-10.prod.phx3.secureserver.net (p3plsmtpa08-10.prod.phx3.secureserver.net. [173.201.193.111])
        by gmr-mx.google.com with ESMTPS id a7si601421oie.4.2020.10.25.21.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) client-ip=173.201.193.111;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ot1-f51.google.com ([209.85.210.51])
	by :SMTPAUTH: with ESMTPSA
	id WuWUkEX9hdfFdWuWUk6VcB; Sun, 25 Oct 2020 21:54:23 -0700
X-CMAE-Analysis: v=2.4 cv=BJZ2EHcG c=1 sm=1 tr=0 ts=5f96567f
 a=kJHSKnc3PKXu5vo30El/AQ==:117 a=MKtGQD3n3ToA:10 a=afefHYAZSVUA:10
 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=VwQbUJbxAAAA:8 a=gOvrHQTniBLpnvw3s44A:9
 a=QEXdDO2ut3YA:10 a=C77T2_seYBgf6JihhiwA:9 a=9jflVbqn1TFY6mtt:21
 a=AjGcO6oz07-iQ99wixmX:22 a=pHzHmUro8NiASowvMSCR:22 a=Ew2E2A-JSTLzCXPT_086:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ot1-f51.google.com with SMTP id m22so6932003ots.4
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 21:54:22 -0700 (PDT)
X-Gm-Message-State: AOAM531vNpP191OFGnAnPzntPYL40r608l7SzXQZ41F++u6zNfM3Um2u
	G2EpIN2l5uhwPJqUNkr9gTDIDY6efIs1nYF8OZk=
X-Received: by 2002:a9d:3f44:: with SMTP id m62mr13284203otc.364.1603688062480;
 Sun, 25 Oct 2020 21:54:22 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 26 Oct 2020 10:24:10 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJA8JE8RUjny8zKnG1eyaMp7twHyLNpD67ngfub7H0uaA@mail.gmail.com>
Message-ID: <CAK-LDbJA8JE8RUjny8zKnG1eyaMp7twHyLNpD67ngfub7H0uaA@mail.gmail.com>
Subject: [Outreachy applicants] Recording contributions on Outreachy's website
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000004b763705b28bb960"
X-CMAE-Envelope: MS4xfJiJ7yUJibJJJWrKYO1lamc9FRVs7yYXGyKC43/y4VQIYOwk/VW0fuu2bDmk7SoS+D5FqKyvEE0mKOW7udMsPqNQOL8n8O8VDYP1gWaSRS2XdlQaivZv
 TnUlO2Jz5PsNtNydpU2+rtJl/8psiRUbJrUfoouyJM8Ksx5F7CzyylWPQON/4IP2Grq3hvDIjZ4xuJMTJ8Q6OdyDnk/Ur7OvAmFG2drnxeCxGH6BpwWJTDe0

--0000000000004b763705b28bb960
Content-Type: text/plain; charset="UTF-8"

Hi All,

Outreachy contribution period ends on October 31, 2020. Greg has picked up
patches over the weekend, so make sure to record your contributions for the
projects you're interested in. You can use this[1] web link to find
specific commits of yours which are now in staging-testing and put it in
your contribution.

*Note that you can put all cleanup patches as a 1st contribution for any
project*. It means that you doesn't necessarily have to complete a
project-specific task(s) to apply for any project.

Also, please rebase your local branch on top of staging-testing to send any
new patches.

Thanks!

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

-- 
Vaishali

--0000000000004b763705b28bb960
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<br><br>Outreachy contribution period ends on Octob=
er 31, 2020. Greg has picked up patches over the weekend, so make sure to r=
ecord your contributions for the projects you&#39;re interested in. You can=
 use this[1] web link to find specific commits of yours which are now in st=
aging-testing and put it in your contribution.<div><br></div><div><b>Note t=
hat you can put all cleanup patches as a 1st contribution for any project</=
b>. It means that you doesn&#39;t necessarily have to complete a project-sp=
ecific task(s) to apply for any project.=C2=A0<br><div><br></div><div>Also,=
 please rebase your local branch on top of staging-testing to send any new =
patches.</div><div><br></div><div>Thanks!</div><div><br>[1] <a href=3D"http=
s://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=3Dsta=
ging-testing">https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/stagin=
g.git/log/?h=3Dstaging-testing</a> <br><br>-- <br>Vaishali</div></div></div=
>

--0000000000004b763705b28bb960--

