X-GM-THRID: 6889622613644017664
X-Received: by 2002:a62:2c16:0:b029:15d:8d2:2e6d with SMTP id s22-20020a622c160000b029015d08d22e6dmr12286022pfs.52.1604115267384;
        Fri, 30 Oct 2020 20:34:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls2914862pgd.4.gmail; Fri, 30 Oct
 2020 20:34:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzR/F/k5EAOXG2v7r82XIxZAkIeCiJXrkXSq3YyQnhxl+Jzh1QpWLU7wbg1xLc9HQdPp8sL
X-Received: by 2002:aa7:9009:0:b029:154:f822:27c9 with SMTP id m9-20020aa790090000b0290154f82227c9mr12212558pfo.48.1604115265766;
        Fri, 30 Oct 2020 20:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604115265; cv=none;
        d=google.com; s=arc-20160816;
        b=MTwQmqygad/mmxEhhI2UMrnsLgpZqdUN/FuOP2Uj6rLnvi4U3QPiRflT82bwuN+ntd
         EMnGASx3oC+hujH/uPLzDushUUSQMmCpCAzzM0u3tjaJpDQp+xx9VcSAE84p5d1o68NQ
         uFVmKrxZUYvyJpCZvpZyBtmeCju49pSMh5/+3nLx+oEwWN6FdicLB0FLFL5E1Sh2zDUJ
         2G6VGc5ZlPqCfEWbF1MHlEONFUssU7rfJYZaqGoLfhB/Wpg9uVpK3vm6WHoybC6W7P0e
         tb2yctEQnfxpHbD4MWL1rRXVRV/vrytLTGX5PvZOjDvIxH9VdtUtO21oEfyu0bxzUoU9
         6NUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=yu7ntYNGhkt4YcQ7hdHSDAigvhvRDmNU+vdKXF/2/CE=;
        b=C8fWhrab1ZF8w/9MYRW7kYemXPtxiZit5U4zVHu+rnAijyri5wwg+8yjBRmT62ufsa
         ANfOwbTOQCnM4eMsfT4xOQqnrG6+FEThUnMrVu1fIYEXz4BvV2QS17GaEwarD4dvnVg2
         I2Gh0S57R8M0tiXH4arIsTbj3qCUoF26RGDpSJbi6lnWbzZB/v3YdIEBYYFtCVEf1oUR
         snSMj0NcRcirHm/vpLI/iCZ+3iPh/UJN3+o6skmR2N9Cwi7r0RKExvyvVGRhF+YwLpc+
         cBvWNtdCuZAZ04EYLD6Iho5Zjp2v3SkPCHsBjk0E2w1GU4XWhuEfYURwu6Qt0qDE2QRx
         JPKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-07.prod.phx3.secureserver.net (p3plsmtpa07-07.prod.phx3.secureserver.net. [173.201.192.236])
        by gmr-mx.google.com with ESMTPS id v8si570905pgj.1.2020.10.30.20.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 20:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.236 as permitted sender) client-ip=173.201.192.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by :SMTPAUTH: with ESMTPSA
	id YheqkKBQ9S8ZdYherkTR1O; Fri, 30 Oct 2020 20:34:25 -0700
X-CMAE-Analysis: v=2.4 cv=X/eXlEfe c=1 sm=1 tr=0 ts=5f9cdb41
 a=QTHwUz1q9nAP9ujD9u6kvg==:117 a=MKtGQD3n3ToA:10 a=afefHYAZSVUA:10
 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=8bMTZW21wpUy6gVavZ0A:9
 a=QEXdDO2ut3YA:10 a=iZWPitFKWedwLwi9xLsA:9 a=D6fLMSGnBaOArDSp:21
 a=pHzHmUro8NiASowvMSCR:22 a=Ew2E2A-JSTLzCXPT_086:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f176.google.com with SMTP id k65so8742868oih.8
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 20:34:24 -0700 (PDT)
X-Gm-Message-State: AOAM5320fILDbj7QWHqoOUHz/GkuDg2dS2vmYpzCodIZey4F0mcQSG7a
	2Dr6JxRdrGTx272V4ejaQXcIOhLiUiCV1F4Tn3s=
X-Received: by 2002:a05:6808:578:: with SMTP id j24mr3808103oig.10.1604115264565;
 Fri, 30 Oct 2020 20:34:24 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 31 Oct 2020 09:04:12 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKsVT5cJ5iD=wTzZw5_GDxm4vKQmPGUWs-mkAA8L-Ov0g@mail.gmail.com>
Message-ID: <CAK-LDbKsVT5cJ5iD=wTzZw5_GDxm4vKQmPGUWs-mkAA8L-Ov0g@mail.gmail.com>
Subject: [Applicants] Outreachy contribution period deadline
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000085f93c05b2ef302d"
X-CMAE-Envelope: MS4xfMDwh1Az+QezLtqQWxUcg1tgQVm3mxCoRp82dZv0tgTc9z2pWsCk6VhKQRCSO6Ri29frjJg24mhXcYj1KUzGjtCL2J7qAFLlNOBiGBW/5q0o+UL5uFlF
 aoPNVdJ57Y3C12nEQmu8GoqyCmvEr5Z/+lvOlRmVfuVEuju/YEp8y/L+JahAxtEIWVSY9jZyXTpokXLfH0j3Zc+FgTVx/WFyZ+IpCMjCW9IxqhtzyXKV9EgU

--00000000000085f93c05b2ef302d
Content-Type: text/plain; charset="UTF-8"

Hi All,

Contribution period for Outreachy closes today [October 31, 2020] at 4pm
UTC. Please make sure to record your contributions and apply for all the
projects you're interested in. For the patches which are not in Greg's tree
yet, feel free to put the specific mailing list link. We understand that
this contribution period has been quite short so feel free to apply for the
projects as far as you've sent some cleanup patches.

Also, if you're applying for the multiple projects, please put your project
preferences as an answer under 'community specific questions'. If for some
reason, you miss the deadline by an hour or two, email me.

All the best and thanks for your contributions!

-- 
Vaishali

--00000000000085f93c05b2ef302d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>Contribution period for Outreac=
hy closes today [October 31, 2020] at 4pm UTC. Please make sure to record y=
our contributions and apply for all the projects you&#39;re interested in. =
For the patches which are not in Greg&#39;s tree yet, feel free to put the =
specific mailing list link. We understand that this contribution period has=
 been quite short so feel free to apply for the projects as far as you&#39;=
ve sent some cleanup patches.</div><div><br></div><div>Also, if you&#39;re =
applying for the multiple projects, please put your project preferences as =
an answer under &#39;community specific questions&#39;. If for some reason,=
 you miss the deadline by an hour or two, email me.=C2=A0</div><div><br></d=
iv><div>All the best and thanks for your contributions!</div><div><div><br>=
</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr">Vaishali<br><br></div></div></div></div>

--00000000000085f93c05b2ef302d--

