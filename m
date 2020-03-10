X-GM-THRID: 6802299057078272000
X-Received: by 2002:a92:b61d:: with SMTP id s29mr11563717ili.305.1583825228641;
        Tue, 10 Mar 2020 00:27:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9cc6:: with SMTP id x67ls318335ill.1.gmail; Tue, 10 Mar
 2020 00:27:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vul+ttIW0kablV23QSS4kF0B8e5PRBjlB8qeLyfUvGEEL9Bm6ktFQgIkrPx0j3l1AzW7GSP
X-Received: by 2002:a92:9ad3:: with SMTP id c80mr19487521ill.141.1583825227258;
        Tue, 10 Mar 2020 00:27:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583825227; cv=none;
        d=google.com; s=arc-20160816;
        b=VtvxhBLhDuOIGMHItnaPnPqIqVnMopCPTjpcwilLfdw57njPk6yveUKocA9WuNHXvR
         HuB+JK6tR/VVaTPND0lbwlPApXva8yY9VUuHlOzKo6O54mjBHEweBmxZ5FG7iwfps7GY
         hpMvRBQJz8vkLdHSq4+NgFM/BOraTlO8uytxLxzbdU+CBhiXAGhB6EYC+kFzPzHt+6Ls
         w1OV6Io1tw8Taekfd7gYZtYkGxvs2pI230PRa0xdEzyknHezoGFmgB5yGOBUylp0gCHD
         XX/TZTheqxnxYKIzu+bhDUnUW6OhqS5ze33tN2i5Vq7MP62WWFC7zulPIDBLnBVdnYs3
         VeOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=zOiK3Q8X97Lb6Mghx8r9yDQpc/irF3j1Um37xDGqRVE=;
        b=nVkfeGWY6E7SvSz1rBZgkYNOo1c7VLEisq0eXQAZkWQlkIeoSw5j/yb2q5PdxS3xbs
         a1aEiOdkAlIcelnqc1AiUiZx1czT/0t/gOeXlmOJZd5R5j+4Ljj3+05r5kzwewvZfm1y
         ubIB4Agq6pGwhRvC5kDSXDU8JOqX+fkmL+LCNLB+f5tB9P0wLyqWGJIT675Zmbhp/74U
         W+YeJcVlZstYZ10UycAnDsTOmlF9/QH11YCpwvvcfd1MzwLhCw0K2oNXW7AcIKYzBQwe
         3pGJ/QT3NaH/Uz5eK+8a8mBea+UAy+DNH7wqed4WNjDc38X9tmunGeQfPoita7vK9nE2
         k35w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.105 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-04.prod.phx3.secureserver.net (p3plsmtpa11-04.prod.phx3.secureserver.net. [68.178.252.105])
        by gmr-mx.google.com with ESMTPS id d26si656009ioo.1.2020.03.10.00.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.105 as permitted sender) client-ip=68.178.252.105;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.105 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f181.google.com ([209.85.208.181])
	by :SMTPAUTH: with ESMTPSA
	id BZI9jsZlkBmStBZIAjr2kA; Tue, 10 Mar 2020 00:27:06 -0700
X-CMAE-Analysis: v=2.3 cv=NOWrBHyg c=1 sm=1 tr=0
 a=yddmuxop3eaF2vhkAzXwyw==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=SS2py6AdgQ4A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=Xbn4kQIpAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=ILJjHVj0aWZh_QbchXkF:22 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lj1-f181.google.com with SMTP id s13so3693643ljm.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 00:27:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3sgnsaz3Btk77XLhX11fWIJn/20Npyw13rzNPmuz0j9bM1zPyB
	CecNFjHMcfABkNPtjowp0FP1HKVW0Gj+xiqools=
X-Received: by 2002:a2e:b60d:: with SMTP id r13mr3236858ljn.185.1583825224953;
 Tue, 10 Mar 2020 00:27:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200309195423.GB6565@supernova>
In-Reply-To: <20200309195423.GB6565@supernova>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 10 Mar 2020 12:56:53 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLNpCEPrzzCC+=wNtCSew26U4X=RLa-6OdoYjQqz8F+6g@mail.gmail.com>
Message-ID: <CAK-LDbLNpCEPrzzCC+=wNtCSew26U4X=RLa-6OdoYjQqz8F+6g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Some questions about Outreachy
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfAjwBZZYponndnj0yMoofYAg5vK4rH7/aflvEP2m7qhRM0/XU0zkUDBw0hw5ViO5q06m1w8A1Q1Xb+GltOIMhgYUA37fxv+TuVNdw8e+T7S7wqrjkNOP
 De6zkjInjVIE6Oq0jV3pAJgIJ2qrAy2/WLAJC/f/JGbQBkFxCpW58A336Am+rA4MtmLDa27RivcyU245UPEFB2G1Cgwffrf+Ovk=

On Tue, Mar 10, 2020 at 1:24 AM Lourdes Pedrajas <lu@pplo.net> wrote:
>
> I have some questions that are still unclear to me:
>
> In wiki it said that one have to make 10 patches and 2 patchsets. Is it
> 10 patches plus 2 patchsets, or 10 patches 2 of them are patchsets?
>
> Linux kernel is accepting 2 interns. Is 2 interns for all sub-projects or
> 2 interns in every kernel sub-project?

We'll be accepting 5 interns for 5 projects listed on Outreachy's
website. I don't know why it is showing 2 interns on applicants' side.
Since Outreachy's website is usually under heavy development, it
seems that some features affect how information is shown to different
kind of users.

Can you please send me a screenshot of where it is showing that
we're offering 2 interns? I can then check if I need to update any
information from my side.

Thank you!

> Thank you,
> Lourdes.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309195423.GB6565%40supernova.

