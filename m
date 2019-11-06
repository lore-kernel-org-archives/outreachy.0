X-GM-THRID: 6756281946886635520
X-Received: by 2002:a17:902:d910:: with SMTP id c16mr4478080plz.102.1573069474827;
        Wed, 06 Nov 2019 11:44:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls762625pgo.16.gmail; Wed, 06 Nov
 2019 11:44:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxurxgnqxTDW7PqdHAhF12JnQaw8HFwBBBQkU0Q3XBxVPo8pPBSyM3+46pdG+lCajajD3k
X-Received: by 2002:a63:e444:: with SMTP id i4mr5060212pgk.247.1573069473937;
        Wed, 06 Nov 2019 11:44:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573069473; cv=none;
        d=google.com; s=arc-20160816;
        b=h4hTHlRnt5qOHY090RU0ONZOAU1afjAZEHfxAfM3iP9CY//xnQv6uAL5syCiyAArk9
         BT8qVe3hTaGGLRJuFBflNMkgICw3rLztzXcy3CqJ2fIiYmGqhdZgsqvdMc9BIlN+v21O
         KZoe8fScN0O10OEh384aR3VpCaA3ee2mjJupevnghuBxTzhNJsoVmm5BMm32MHNBNH5T
         O9qb+xZvm5OJWHyVATR8pgGO29WUQp4hrK1fi92eA3/wum+AcuffNHhHtI6zqRF2D7U5
         hVFkzElmZDdfGkvh8n9XQZ269i53Cm2JiyDHaXv0WAiMTdahHqfBJjBRgNhWdWb+kwep
         3VFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=Xjjxm+9VhSilUqgTgFWt+DQ1z2/tnfJP+BUsv6NePX8=;
        b=lZziWCjbs8Dn6YLpdvxY6hkVSaheTF5phwC/ElBhWQUA2Af4wDYQtAWWqW3McymzJb
         RVdb4UMMrM8Wgfo/XbufysDlaVLckf0juddQWRYs9xpnZXOKDICDXS3eO9Sj21GS+DWu
         v6FSN6CrU9g6L6xdHeFds+ORmuFiA6UFy4lzTuDhGZA5na1Bg0Z1HyjfDE3XXed0fWZr
         OSXUMvWBRXmzwgtIq6YWtLp+6Snz1GqJdauFfDaSo47npC95Ol5Kgsm98NeBzNXJF96C
         DrIMfgTR1qP4RuzaTCRqFFM+DW+xjvi4ASGMbwvDxh1Acq4P9ZQyt7Iy4hGydEVa9fNa
         XFwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-07.prod.phx3.secureserver.net (p3plsmtpa09-07.prod.phx3.secureserver.net. [173.201.193.236])
        by gmr-mx.google.com with ESMTPS id ba9si42431plb.5.2019.11.06.11.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 11:44:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) client-ip=173.201.193.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f52.google.com ([209.85.167.52])
	by :SMTPAUTH: with ESMTPSA
	id SREGiBGad3heuSREHi9XeX; Wed, 06 Nov 2019 12:44:33 -0700
Received: by mail-lf1-f52.google.com with SMTP id v8so18937990lfa.12
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Nov 2019 11:44:33 -0800 (PST)
X-Gm-Message-State: APjAAAV6df2UMrjUnTa327thllDbeC69J74TeWN2/GJDdXiW0nqEJfPd
	23z2w0hg17BjbJq0YOc9rUHEiq32gh/ua/nJCJM=
X-Received: by 2002:a19:4848:: with SMTP id v69mr25419291lfa.6.1573069472275;
 Wed, 06 Nov 2019 11:44:32 -0800 (PST)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 7 Nov 2019 01:14:21 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJFRHfFWpTttLn9RgyuM8KLDf1zw9Zuca=HHvq2xQ93JQ@mail.gmail.com>
Message-ID: <CAK-LDbJFRHfFWpTttLn9RgyuM8KLDf1zw9Zuca=HHvq2xQ93JQ@mail.gmail.com>
Subject: Application closed - December 2019 to March 2020 round
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfPHjGG8kPCBerBI2DTUMAqnyhFfUzCltmQc9eRfj1FPnDKOAKLpg0mOTdyfWfwmzXZXXKmy58JTtPakNAK/KHY7ywHJOwj1m1Edz8hVIhgXP5sckUp4P
 0y5Aa/khtQFtETJ1KZteXyhSvXLd4OrNSQTtHpQbyLFQdW2/IzVnFbW7NMnVmsRaVv3IVbJMDurSpeUKtpWNLBktG6k/KggNcR4=

Hi All,

Thank you for your contributions during the application period. Final
application deadline for Outreachy is passed now. So, we won't be
moderating this mailing list and reviewing any more patches sent over
here. You are still very welcome and encouraged to submit it in the
patches in the kernel mailing lists [use scripts/get_maintainer.pl].

Hope you had fun and all the best with the results!

