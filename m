X-GM-THRID: 6209280550027395072
X-Received: by 10.28.138.83 with SMTP id m80mr3693823wmd.7.1446568744846;
        Tue, 03 Nov 2015 08:39:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.66 with SMTP id r63ls109660wmb.35.gmail; Tue, 03 Nov
 2015 08:39:04 -0800 (PST)
X-Received: by 10.28.87.15 with SMTP id l15mr3712377wmb.1.1446568744216;
        Tue, 03 Nov 2015 08:39:04 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t18si652096wme.0.2015.11.03.08.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 08:39:04 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LgL5M-1aGbQJ1LQS-00nkk4; Tue, 03 Nov
 2015 17:39:03 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com, Tapasweni Pathak <tapaswenipathak@gmail.com>
Subject: Re: [Y2038] [PATCH v2] staging: media: lirc: lirc_sasem: Replace timeval with ktime_t
Date: Tue, 03 Nov 2015 17:39 +0100
Message-ID: <5227439.VKfeZbEDzt@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151027074702.GA26499@amitoj-Inspiron-3542>
References: <20151027074702.GA26499@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Fkdht3itLC5vTAPLzhYO/NSMvbLPKghEr0GD3M3u21ZR+4Liak/
 3/BIM+HB4HIiJ98D5KvsDGDSoBOc9DZtW9AOqVf6a8kvK6wHpJTCDTPfCvCXThdVYakznWz
 IeF/2lZHoGA4l0TMkQfoQPZsLGGB1huHHKEvtQ6e+fUUqfOrMC/419QdWETuQp9RpNFdnzt
 4sAvdTHw2ZrG+l94xhbpw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2VrSHiLiJB4=:AhO1RVMXOEl7b9zh0HIYbN
 VJ3nf+gIJMpqFPvqV0eTs3tTC2IKP5KGbgeRtqDL7U0Bzazw/ZA61A3KvNGQfJv2/ergav5Ux
 rlx4vZGFjqsGomIXj6J/5NLY5wXYEuaCKBkyg1NMDxH8Wk/KTPDRwRtLrJJE42MvhW0THT3z1
 qG8xzq4f0/jozH6EQuElaKKeVHlovvFPHoDCktxCIG/PSa88NKtxWCeVh2qLjF/+NXYCAzNKM
 mfUfWVBD7pIjDWyu7vDwKCPMVhR3Q7BYS26hg4dzKA2weNltcSyEQxtoAO18+qvSgQZl/M6YS
 qpiiNYge55HM1g3lT/kn6wtlCBlTVz7HhU2Vzhj4sXFNLPoS+v+b3b1Si6IwyZF0qc6+hoLF6
 TrgYUFBrAZtfvMrYcHnI0Bzsuw/4oUkG6ScPsg7V6llhwmk1ChN38Bw+lbO4HvnUA1MsIQJFz
 uvQiqAZsajzGD02xWZShSeVAXWgOulbAwfooHxUj8cslUj5pfHPjJ33q7Pl60pu/ieVCjeBqm
 Mlo7bI1oghtpk/e7Jpc143xp8O8uqorexgqcLn8l/vqGkCDZyyNm55U/1h5M8D2IviHR3lFVT
 mLE+7CQzmgZuXeOgbH1g6pirGtF0TcfFWCaFAYdCj5xA8LNZs8jijHM4XWBp60OaGpLPr27ZI
 G+fO+09PQ2yoTeYP3t3McIH3I4INMLeB8UOYoBhb+cgiB7oqi2Ge1/Tg0cWexSaMzm9U6ZPHd
 +TGYFSkLIXYvWxzF

On Tuesday 27 October 2015 13:17:02 Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038 by replacing it with
> ktime_t.
> 
> This patch changes do_gettimeofday() to ktime_get() because
> ktime_get() returns ktime_t while do_gettimeofday() returns struct
> timeval.
> 
> This patch also uses ktime_ms_delta() to get the elapsed time in
> milliseconds.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

The patch looks good to me, but after checking an old tree of mine, I found
that I already have a patch from Tapasweni Pathak for the same thing.
For some reason Greg did not apply it to staging back then. I'll send it out
to the list for Greg to apply now to ensure this doesn't happen again.

	Arnd

