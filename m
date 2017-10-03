X-GM-THRID: 6471841659603648512
X-Received: by 10.36.98.194 with SMTP id d185mr9309971itc.15.1507037226598;
        Tue, 03 Oct 2017 06:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.15 with SMTP id v15ls3942047iob.5.gmail; Tue, 03 Oct
 2017 06:27:05 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCloLkrTkn1BZ49gMsgAUjxPmLXtnqWijzPLsZZHitugrx7+h4vr4BlS/C0Pj8dE4i1CLGh
X-Received: by 10.107.83.9 with SMTP id h9mr11758602iob.96.1507037225355;
        Tue, 03 Oct 2017 06:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507037225; cv=none;
        d=google.com; s=arc-20160816;
        b=V7msPMCQd1SSF96FGjc6Z54POqjPpX5lkMKNOsnkmLfeZKzgh5SRtUQHibYehrEFwr
         FO9PEJT+9sYxGmB6355uVU5UEFibH3INXCHL2XzcXIMw3hBqLHs9/e92ZnJClHLd0OCu
         DTrFG6uV+lepU1jI0ixXsuXN6DOdIUDxfVinv8mHgytdmE/9aEU7GQD2772MI+I0cyQ4
         aLAQI/LkZkwV1m5SYfXtiJd41cJhC9BCk6JaKWdck8GAq/GqAwajo7udHqDLV+/Q7s1s
         imqEAzfGo46S6FkdEhonfQreYRiBQcexaIjSgQAYmkSlSE8y8uF7/86VzUYX4QCcUhV4
         sQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=CVqfVdBIIjc2c6imr31mh5hN0hTzla/9STXz8cp0x40=;
        b=ebMRUto+lOBEXcfIDJwDr9E9CCPFte/jQqqmNuDl7D55EuON3a87j8qHWxzqAX/pdi
         E2gfDZgceY6W6AKLQRNBRQtIVe3tHsYOugDAZFVIHGK8KLByvJIMHqlTiTPkhBELAgUs
         yT+Vt7OQbxfJIulVR+hwLEV19RoDrsWJ7fQ8eVDz+gk+Zgn7RlO0LXjI3Xevf2SZz7Ir
         bRV0E9AO79NHdJ4isMLM7l1bIjVo4z5vSzxnmzyswSF+DixkjO0BnmaF2MaI37H4oT0S
         M34CkzUHzEzKWZKYcprZIj8xgA9lInqESCG0F5tDvo265sH7HYB+sY+gOSkUlySQb7O8
         DZqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id e184si565637ite.2.2017.10.03.06.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 06:27:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=212.227.126.133;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw01.schlund.de ([172.19.249.18]) by
 mrelayeu.kundenserver.de (mreue006 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 0MLmZb-1dyYHG1y8h-000qtM; Tue, 03 Oct 2017 15:27:01 +0200
Date: Tue, 3 Oct 2017 15:27:00 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Phil Elwell <phil@raspberrypi.org>
Cc: Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mihaela Muraru <mihaela.muraru21@gmail.com>,
	outreachy-kernel@googlegroups.com
Message-ID: <299205136.69039.1507037220618@email.1und1.de>
In-Reply-To: <a36fb164-9403-c812-af14-d234bfec28e5@raspberrypi.org>
References: <20171001073056.GA7890@domino-MS-16Y1>
 <625751478.62338.1507017318331@email.1und1.de>
 <f14d5199-1cd0-5dc2-dad1-86c3b64d6598@raspberrypi.org>
 <1129250939.68869.1507036321889@email.1und1.de>
 <a36fb164-9403-c812-af14-d234bfec28e5@raspberrypi.org>
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:QAG4e6AxXGV3WPKXyPpeY8guU6Q3bnCp3T/+VfqdPuhL+LJ25Y+
 FcHpGVl1Ji/pOU/ngdR5QfWLBOes3YMqOw94JErS3c01AwyVHXisHxcMk57WG0Ls4jcNg3i
 QBViqlmB3PwGt8dJ4fUQPpV61vQL1nTSui/11Lh8hpgnjopBlj07dRzKx+4KNhplL9uolwE
 JCrGlrgRZwnRkbmCIYuXw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:IF+VsbDTUH0=:Egly4fOVywpSYPfRM54aht
 Hqwir7LhLFyrws0Z0gdBYv6nuJZXVJTwfjnB3DmykoGbbGTKPgOJPdViuqtpQ9XTi+pVPSvnl
 1PHVkyd42oSz8T6xUw2d6k6rqHSlm3qr+DA2+O9QxaGWAtfnkIJO8H+2cKv3yezlGxZqJvLp9
 2mf+8WKHcATjiWASkcrRuLTL2C7WGxsG09/2DPZpZtaXMfkKlIFBzeDQS7SRMRRSSVExSnSdz
 CLLrKt8/QAp7hsYeEfqEI9Q9JkMscFwGGVu9ZJnLrjgRU0FQ8baRdUhxJ2AWXjrI3gexdXF70
 57qnMq1/Q+fNBXhzzflmIad9cwS10WGw+GusESc0di+6h08kXq5IFIzZEp7J2rNQirRjnQj6m
 /OHaQ/QkX+Ri4D0TzJF3KYQEVLHcuYLUqV67NaGpKJ91qIcd296w4IUzYkMXk7CQ5toemusyA
 Q8SH0WNQTBdY0VyPyVtdvzldsLxNjL4xOW6tGaWeX+wnVsJP0/O0qfUxOvtMM24ppnjz4LYlg
 3md35TqBl0Fp2uxZqVTPjyRHLaeS6AMdwCKJCcI0IlzZl2LKEbjyX2WPec0eZc6pFsLbcvZwX
 de6L7j+rxrH5aP3A2RaYyDclWHrtKewabw9CGIDMJXkHIcfni1xBIrs1UGzYQh8APy6MG+0Ea
 s5wx//X4mugGQaBiU3RBtgJ3U0uA3y0Ah0jLqHkhgCOTl+T+nsuszsXBCjPZu94z6kqlKjlYZ
 d0/6ZntlXBF9nDNo4JPUkAT7j1SkNg2R49Lt71JiA01QVZ/NF3/I/0KjrUk=

Hi Phil,

> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 15:22 geschrieben:
> 
> 
> On 03/10/2017 14:12, Stefan Wahren wrote:
> > Hi Phil,
> > 
> >> Phil Elwell <phil@raspberrypi.org> hat am 3. Oktober 2017 um 10:15 geschrieben:
> >>
> >>
> >>
> >> Hi Stefan,
> >>
> >> On 03/10/2017 08:55, Stefan Wahren wrote:
> >>> Hi Phil,
> >>>
> >>>> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
> >>>>
> >>>>
> >>>> Since msleep() will often sleep 20 ms for any value given in the
> >>>> 1~20ms range, use usleep_range() for a precise wakeup.
> >>>>
> >>>> Issue found by checkpatch.pl.
> >>>>
> >>>> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> >>>
> >>> the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:
> >>>
> >>> 1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load
> >>>
> >>> 2) Increase the msleep values to 20 in order to keep the current runtime behavior
> >>>
> >>> Do you have any preference?
> >>
> >> I have no preference in principal - the decision should be based on performance
> >> measurement using the bulk test. If checkpatch is correct then using msleep(20)
> >> should make no observable difference(*).
> > 
> > recently i made bulk tests because of the page_address/kmap issue, but the results wasn't very stable (especially for bigger buffers).
> > 
> > I did the following:
> > 
> > time vchiq_test -b 4 10000
> > time vchiq_test -b 8 10000
> > time vchiq_test -b 16 10000
> > time vchiq_test -b 32 10000
> > time vchiq_test -b 64 10000
> > time vchiq_test -b 128 10000
> > time vchiq_test -b 256 10000
> > 
> > Could you please provide some reasonable parameter / cases for bulk test with vchiq_test?
> 
> 
> Bulk performance is affected by memory fragmentation - it is quicker to transfer contiguous pages. I suggest picking one size - 128KB, say - and running it once for a large number of iterations. If you were to reboot and retry I would expect a relatively similar result. Then reboot and try the other configuration.

Thanks

> 
>     time vchiq_test -b 128 10000

are 10000 iterations sufficient?

> 
> > 
> >>
> >> In this case the precise delay is not critical, the aim being just to relinquish the CPU for a while, but it seems there is no way to express that - an
> >> msleep_range function would be useful here, even if it was just to keep checkpatch quiet.
> >>
> >> Phil
> >>
> >> (*)I don't really believe this.
> >>
> >>>
> >>> Regards
> >>> Stefan
> >>>
> >>>> ---
> >>>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >>>> index 631ff73..daf18e8 100644
> >>>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >>>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> >>>> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
> >>>>  		if (status != VCHIQ_RETRY)
> >>>>  			break;
> >>>>  
> >>>> -		msleep(1);
> >>>> +		usleep_range(1000, 2000);
> >>>>  	}
> >>>>  
> >>>>  	return vchiq_status_to_vchi(status);
> >>>> -- 
> >>>> 2.7.4
> >>>>

