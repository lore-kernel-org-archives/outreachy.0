X-GM-THRID: 6471841659603648512
X-Received: by 10.28.7.85 with SMTP id 82mr1187160wmh.8.1507036327018;
        Tue, 03 Oct 2017 06:12:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls2673021wmb.12.gmail; Tue, 03 Oct
 2017 06:12:06 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCBAuUEz8DV0281vDVKDD4FU8rlAPy88urW6HFW72RVpFFbul2YuBIckZhKFPoabZsm/8n3
X-Received: by 10.28.147.133 with SMTP id v127mr1131538wmd.18.1507036326040;
        Tue, 03 Oct 2017 06:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507036326; cv=none;
        d=google.com; s=arc-20160816;
        b=jZHhYehN5v71M8Mki0TJ8cxx6g9RfuWpSlm4WTEUDhcKNdki4GcfrsYxs3SLSvay1q
         ZOt1JK7QZnb4QvLEPrba+1COYt4tEWlLmLqJ4kxBhuRZxsLxAiZdYfk4zZlabIuy95+H
         RJBC+mLlfUwmn7cm2/S0/evnUEfnICn5qW35BcyEVSf4gfhhi6lKAebxrfiBhTSXaCq3
         HSAMFvjFyA+LYAI4Gc0+M5b8lK2T1CK89jsm0XppAoDb5whBWQGeUzVKJmMjVwKTWtRs
         XH62XWC/+M+IteF3qwkqnDi/AixQGuHlr85V7qwft0X/PfVw+yvg17BwczM1q9GD6yAh
         alUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=iiOekBqp3m1K/pdh6Oa+0E4CT7bcLsnhTsw+NfImVZw=;
        b=NbeG7+ZVBkV739dIGq3SuSGrSTQu15AJ/piCXlbA+KEja6nqlEzr4zFYa4a6/TCZ6S
         ry5PsQFQbm2bwi3QTn8k8dI+Ct+5OgdZmCuYwDMk2tsz2e3EiVdw9PtDF2X9sHnwNkgv
         l77Xidq7mSSD/WL84CCEzztCJZ/anL6EgcWxW/FsOgq9yv8wWmYSnWv5OqweV6bD+KQ2
         couBaSiS9rczHS+XUVmwubBPenUVvlGtHIk5fagyRs5MHK5OenErEW0pwJ2Qyg2xEjpj
         qSgnOmu/mydS46WIrC1ffKC4+jhX/yEAO6OgvWZGbgwosnp4Pa7+JBDu8TUy1AhaXGAl
         ItEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id l133si1585081wmb.3.2017.10.03.06.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:12:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw01.schlund.de ([172.19.249.18]) by
 mrelayeu.kundenserver.de (mreue003 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 0LnFtp-1dOfGg2Xfx-00hKDv; Tue, 03 Oct 2017 15:12:03 +0200
Date: Tue, 3 Oct 2017 15:12:01 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Phil Elwell <phil@raspberrypi.org>
Cc: Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mihaela Muraru <mihaela.muraru21@gmail.com>,
	outreachy-kernel@googlegroups.com
Message-ID: <1129250939.68869.1507036321889@email.1und1.de>
In-Reply-To: <f14d5199-1cd0-5dc2-dad1-86c3b64d6598@raspberrypi.org>
References: <20171001073056.GA7890@domino-MS-16Y1>
 <625751478.62338.1507017318331@email.1und1.de>
 <f14d5199-1cd0-5dc2-dad1-86c3b64d6598@raspberrypi.org>
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:n5wtlyoVb5px/Gy32UfRVwIpd5q6LyCjE/EbMh/1a5nPRAtnyVS
 b1Arj7bUotwisXd5Pb606a60UBao/mH+xzvqEZF1Rp0rjV4mXxD7Xyw9wi78TQkI1J5XJzc
 66rWskkAWl1un8H8VvFdruir9FWe7VqfufdTj815oztMqdN5HLdjGeb/gbwWVQiyLy9fFSQ
 r1nIVN7rTmOrtdCklgCZg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:zoir69CfrsQ=:Xg4hzq9coaRKzUBp4jph6F
 JsehdAmIFjVM34dvEFOTeHAtpB5dHfsz4I6r0kdKwXzrF3cnxryc01YsaT+zcTfMQ/DZf6PHR
 gh6i10HGL2PwfYMXx/g09gPSRWtJPYEK15w2pf+UgITq3fmseyRTY8p7NAjwIckwyXbkgTXi8
 TU8p+taBsDEAu41+kNkHn/B4mxxryWbK73/xtF2aN7jarFHUmIXUwMBK+ZgGgUPLX230XtVBU
 Q/egjMUx1CRnREHFyIQpzxNxyEc4/a3AA2M4jPQsXG7e2zbYluJpjad0mzXL7MOXKno4JpYD5
 mwXi3AXFmCiQ0WoCIIno/sWbFBxWmhLlWejTzsgoz6zNnEt4hYTzFUJJtW2jFnBzLdJETxWgi
 BRb7oLPYdkCrQEq2MNi0u+A3wMjdyeeSzupdnysmyGwmBxjRsNzck1+LwLMDPzBOwdQHsJvQ5
 V2pcopZwjN12d0BtqaC6cnm5B9SjnplEHVYXbPuaT5J7std67jAxa4AkcpdC3RNJ+2bUItePI
 Fj/g3IuuKuWBKnkJ6gjfzZldAIEPFO8scv/15WrEp+aZMZL6/WhgXNmHT4c0uhnN1ywuR2KcJ
 VJMNNOTcEkBL0faYkMvE3/o7DLN4EY4U+UgeGmECqp+B0v+VtlKlGgB8gB7vpH79GCceX+RdT
 J6yFq3mh22ciImANe0p5Hmp/poQVezhIWALUM9dV2gAiHcWd7xBqmL0r8BfPsAS1r4w2xPWkF
 tRJ1Q6q0L6FwcnUqGVd+i5Sv5+IjFZghjvBc0HCO92+lBWb5XyHXozwNdmk=

Hi Phil,

> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 10:15 geschrieben:
> 
> 
> 
> Hi Stefan,
> 
> On 03/10/2017 08:55, Stefan Wahren wrote:
> > Hi Phil,
> > 
> >> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
> >>
> >>
> >> Since msleep() will often sleep 20 ms for any value given in the
> >> 1~20ms range, use usleep_range() for a precise wakeup.
> >>
> >> Issue found by checkpatch.pl.
> >>
> >> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > 
> > the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:
> > 
> > 1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load
> > 
> > 2) Increase the msleep values to 20 in order to keep the current runtime behavior
> > 
> > Do you have any preference?
> 
> I have no preference in principal - the decision should be based on performance
> measurement using the bulk test. If checkpatch is correct then using msleep(20)
> should make no observable difference(*).

recently i made bulk tests because of the page_address/kmap issue, but the results wasn't very stable (especially for bigger buffers).

I did the following:

time vchiq_test -b 4 10000
time vchiq_test -b 8 10000
time vchiq_test -b 16 10000
time vchiq_test -b 32 10000
time vchiq_test -b 64 10000
time vchiq_test -b 128 10000
time vchiq_test -b 256 10000

Could you please provide some reasonable parameter / cases for bulk test with vchiq_test?

> 
> In this case the precise delay is not critical, the aim being just to relinquish the CPU for a while, but it seems there is no way to express that - an
> msleep_range function would be useful here, even if it was just to keep checkpatch quiet.
> 
> Phil
> 
> (*)I don't really believe this.
> 
> > 
> > Regards
> > Stefan
> > 
> >> ---
> >>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >> index 631ff73..daf18e8 100644
> >> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
> >>  		if (status != VCHIQ_RETRY)
> >>  			break;
> >>  
> >> -		msleep(1);
> >> +		usleep_range(1000, 2000);
> >>  	}
> >>  
> >>  	return vchiq_status_to_vchi(status);
> >> -- 
> >> 2.7.4
> >>

