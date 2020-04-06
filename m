X-GM-THRID: 6811040563999014912
X-Received: by 2002:a05:6638:f0f:: with SMTP id h15mr10720805jas.142.1586157359490;
        Mon, 06 Apr 2020 00:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls5329117ioa.9.gmail; Mon, 06
 Apr 2020 00:15:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypK4TmPuDDer8YwZXoIUKfc4neiUYcGyyZsgnLjlQF8SfymUXMO5eYBC4sfwjbzaQRug738R
X-Received: by 2002:a5e:de45:: with SMTP id e5mr8398168ioq.37.1586157358162;
        Mon, 06 Apr 2020 00:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586157358; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/jsncFFubyTT6KHlANQ33b8oZ4jYMRosM+WOKDhJ1r5cZxTqogVUz8aKCxkDqkVNu
         t7RB91DoI448VV96Agu59C8l4BX/yOc1wqilxLPp6lWKOs7EEj0+78wGPQ6ilaL/slqF
         zHMdveFdzSPUcjTSmh3kSc9oeGSbEE/uQeimkTrQNIdnCDkZKhseBilwi7RbEoola9nm
         Ynr44OidL8WEaVjTjuEdkeufGp9wTy5bKk5mNEj/XtUQpM99ZTB8if45MReW7nocuD2P
         kvUXRa+NZlUiDf5WxbsYYAnK96PY4ZZbcvRRMEOi8dkGOl/8s1vfPModc4C6APbObPnZ
         CINg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=zZXKcSny5AfKXZ4aFRnF4oupt+riduqCunOo/OwfO00=;
        b=NfFtvvMCe7L/02pSYvZ00oLABwSNIGLDmPu2zDEjZcpb9KgYn+Uv/1i5PTr/+M+V4n
         yJIcqV4ERlEq1jOvxx0lcuOA+m3uMO5zcOnEXgCZqhvWhyA9SHAHDMjITbcQY0odLkeL
         AAYRQNVS/xummvVIyFwVyuVq4j0heXZkfQRsD80YoW8eOZ0r6lr5xKkcGXtv//pDH+q5
         BypD0xPn/y8NKjg94glCcHLLZA229jqTq5pak3ZedQdAFjoCYaOF99dL1KSwx8h/ZidB
         q5OD4Lsph1OKg/+bmVbobcPycfhiXe+1OcdvvxavJJOFBmXhDEsFlNHYft4TKHfjVpmW
         TfuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-08.prod.phx3.secureserver.net (p3plsmtpa11-08.prod.phx3.secureserver.net. [68.178.252.109])
        by gmr-mx.google.com with ESMTPS id s201si1097478ilc.0.2020.04.06.00.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 00:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) client-ip=68.178.252.109;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.109 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f44.google.com ([209.85.167.44])
	by :SMTPAUTH: with ESMTPSA
	id LLzAjWSXnXQ8FLLzBjRyra; Mon, 06 Apr 2020 00:15:57 -0700
X-CMAE-Analysis: v=2.3 cv=ArmQI91P c=1 sm=1 tr=0
 a=CHzBpAoX7KV5uG9H1SVGrA==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=cl8xLZFz6L8A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lf1-f44.google.com with SMTP id h6so6406978lfc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 00:15:56 -0700 (PDT)
X-Gm-Message-State: AGi0Pub5bLVd+OhZL852/yki8Fb5sJPaZwgT8ct489QvcHCdarbEdMh2
	zPeofJZdtSKzx9vPD+Foc1HpKCyKFdjBlOzy9oQ=
X-Received: by 2002:a05:6512:79:: with SMTP id i25mr12513463lfo.87.1586157355949;
 Mon, 06 Apr 2020 00:15:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <9c10e8c19d4df6ee5a4b04e21829a7010f218ff9.camel@gmail.com>
In-Reply-To: <9c10e8c19d4df6ee5a4b04e21829a7010f218ff9.camel@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 6 Apr 2020 12:45:44 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+Yzx4Z0H2MyD92bwa-=8eUkiB-jdbdGrcEW0ws9vOHYw@mail.gmail.com>
Message-ID: <CAK-LDb+Yzx4Z0H2MyD92bwa-=8eUkiB-jdbdGrcEW0ws9vOHYw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy reminder - final application deadline
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfH8P2G4Phcg1jnb7XvS8Px5yOQoJmPmdB60iRMzrPAOKLeTXMkmJppnN2fI/s2DKCF8+/9FyLzozGFEXQuZdrmFJe+WcD7jbP2BKWnqZNOsj8aTIt/+R
 PEO94F3548pQmur8+0/A8U4dRmAMd7mPHAtjvb0ZK2+bWXfyj+mPustOyo/BNBXvLgvmVNBYC+gYSdreN/M+cB6HFBFNQ9VlK4A=

On Mon, Apr 6, 2020 at 4:45 AM Sam Muhammed <jane.pnx9@gmail.com> wrote:
>
> On Thu, 2020-04-02 at 14:45 +0530, Vaishali Thakkar wrote:
> > Greeting Outreachy applicants,
> >
> > Thank you for all your contributions in the Linux Kernel. This is a
> > reminder for you all that Outreachy's final application deadline is
> > approaching on April 7, 2020 - 4pm UTC.
> >
> > Now is the time to record all your contributions and apply for the
> > projects you're interested in. We would advise you to at least apply
> > for 2 projects of your choice. And please do not wait to apply on the
> > day of a deadline. You can always add more contributions until the
> > deadline. Don't forget to add links to your patches while recording
> > contributions on the website.
> >
> > If you have any query, feel free to contact me and project mentors. We
> > wish you all the best for your applications.
> >
> > Have a nice day!
> >
>
> Hi!
> Are we allowed to send patches to the linux kernel after April 7, 2020?

Hi,

You all are more than welcome to continue contributing to the Linux kernel.
Although we won't be moderating this mailing list after the deadline has
passed. But you can use get_maintainer.pl [as mentioned in the tutorial]
to send patches in the appropriate mailing lists.

Also, to keep it fair for all applicants we don't count the patches you submit
after April 7, 2020 as part of your contribution for the Outreachy application.

> >
> > Helen Koike and Vaishali Thakkar
> > Outreachy Linux Kernel Co-coordinator
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9c10e8c19d4df6ee5a4b04e21829a7010f218ff9.camel%40gmail.com.

