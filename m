X-GM-THRID: 6205270918308036608
X-Received: by 10.112.150.229 with SMTP id ul5mr821793lbb.2.1444830291262;
        Wed, 14 Oct 2015 06:44:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls43922lfe.60.gmail; Wed, 14 Oct
 2015 06:44:50 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr817161lbb.13.1444830290733;
        Wed, 14 Oct 2015 06:44:50 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id bh7si899580wib.1.2015.10.14.06.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:44:50 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MZhl4-1a01rb3B9C-00LSqF; Wed, 14 Oct
 2015 15:44:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
Date: Wed, 14 Oct 2015 15:44:49 +0200
Message-ID: <5441107.ufuLX31Obu@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQG9oEj_d1QEPrxPrG+nevXHM0SYn=oxO8_Gr_rk7s148w@mail.gmail.com>
References: <20151013230010.GA16506@ubuntu> <6287823.a8MvGuEn0R@wuerfel> <CAKHNQQG9oEj_d1QEPrxPrG+nevXHM0SYn=oxO8_Gr_rk7s148w@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:NaFvXW1rrMRTIGWx42oEDxKCzHmuDyh4yFlyGJwamn+RNNmQgDv
 Rrwa/y+rHdAPFvwm6NvTvcdvN/dlJLJkJBfNq4q+F+vb3GfmFFmTB+co00zgxWErrII1DH+
 uwHgh9k+LuryG6CNbcglca9yqdw8Btobo6YFNwBZfDOulG/auYeL2/7fWBIlmtyS9xHyjY5
 WZaD1qWlNW7xeBuLp1b8g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gP/R6/v5CAg=:OKS9xq1jhEc/0T9ri2bo3C
 o+tDciroHg5OSpd7CvXgHPNzPTBISvDvEc7Cyv/awfgfnMv885EvWNJpJhn5NVCY/ab5smCTr
 Y9kL4gtxRVnjWHfj8BvATJ0Re8RMpo6n2DzqKKmlrGl/CHwdz1aWHJWN1ky9hcx5BTQaW51Qe
 1sN/OmtOKx1q3aSUmP+Kw+Zp0K8RcMPK71oTZ5byBMPnnX2vIzdgNgALVJ0MY/ZwZxsZG+TS0
 0IGI4V+yU98rVl3mB6a1Q28L/voYWpLBOibLIWpr/M/hSoocOBaVKj1JxVrF5Dpq4/x7+EQEM
 xFoOztxPeTZ4LN/FSbMue10U334/EEWe5meaKAOsM/bwUVgzYKUcCpcW/yNW0UKRnjhmN3HjH
 Tqe0OTmDUQsy9FZDZrYir7QD1xpsW90zw2daTSI7Usc/4me9kfQtqC8rNCmbwmNXnsz6O0JZ0
 5nOi/KYz3kJX0BxsXCtZTHErGVFYBHb6mOVgvFh/8qV5jjrXsx6ogMvcSkvu2AcaxsiAQxtoT
 OQpg5eLLT45TocD2FN1uH5s8jWAOgazUfv1Z6Xame4J3r++N4H4zpnV6CfLHlWO3YvySdQ/vI
 Ub4GhEeU/ol09iYvNj4ON5yDF5LO4EwGszn5JlAqaBe8WOgsgGkjQ1Azf2CqKoe6i4/NuX0pg
 bO78qbkljhT/6pagQIph6trBvoEUUkOQD1THqCPASbVgSvaWrorsrSnLWm9sHOJ2qFh8K7VSQ
 rMyEXn4DkBQceLJq

On Wednesday 14 October 2015 15:46:09 Shivani Bhardwaj wrote:
> On Wed, Oct 14, 2015 at 2:54 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wednesday 14 October 2015 05:15:12 Shivani Bhardwaj wrote:
> >> On Wed, Oct 14, 2015 at 5:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >> > On Wed, Oct 14, 2015 at 04:54:45AM +0530, Shivani Bhardwaj wrote:
> >> I don't think it should be a problem because that is what we
> >> ultimately want in our code - to clear the memory card subject to
> >> constraints that one of the two if conditions is wrong. Now, if both
> >> the if statements, that is,
> >> if (hi_cap_flow) and if (rsp[1] & 0x40)
> >>
> >> turn out to be true, they set the cleared sd_card again.
> >>
> >> That is what we wanted. If both the if statements are true - set the
> >> sd_card else clear it up.
> >
> > I guess this would be easier to verify if it were not obscured by the
> > SET_SD_HCXC/CLR_SD_HCXC macros 
> >
> > Your change looks like a correct transformation, and it would be logical
> > to remove the support_1v8 variable next, as it can never be true.
> >
> > However, I wonder whether that is just a bug in the driver, as UHS-1
> > cards are required to support 1.8v operation, and there is clearly
> > code to handle it here. Maybe one of them should actually say
> > "support_1v8 = true".
> >
> >         Arnd
> 
> I do not exactly understand the role of variables here. But, as far as
> I can guess (after having checked the secure digital)  support_1v8
> should be true for hi_cap_flow=false.

Yes, that seems like a good guess, but it's impossible to know if that
is correct without having a look at some datasheet or specification.

> That is, if capacity flow is
> less, we can allow voltage to be 1.8V otherwise it should be 3.3V.
> However, I really do not understand what the array rsp is for. So, I'm
> not sure what its status should be.
> Please correct me if I am wrong.

'rsp' here is the response from this command:

         retval = sd_send_cmd_get_rsp(chip, SD_APP_OP_COND, voltage,
                                      SD_RSP_TYPE_R3, rsp, 5);


This is a standard SD card command (ACMD41) that is documented
in the SD card "Physical Layer Simplified Specification" version 4.10.

I have not looked any further, but the answer is probably in there.

	Arnd

