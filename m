X-GM-THRID: 6205270918308036608
X-Received: by 10.194.118.65 with SMTP id kk1mr497691wjb.5.1444814677169;
        Wed, 14 Oct 2015 02:24:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls17399lfb.43.gmail; Wed, 14 Oct 2015
 02:24:36 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr496199lbp.21.1444814676704;
        Wed, 14 Oct 2015 02:24:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id c1si272868wiv.3.2015.10.14.02.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:24:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MPMZc-1ZhsRf0IeO-004UlS; Wed, 14 Oct
 2015 11:24:35 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
Date: Wed, 14 Oct 2015 11:24:33 +0200
Message-ID: <6287823.a8MvGuEn0R@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
References: <20151013230010.GA16506@ubuntu> <20151013233902.GA9458@kroah.com> <CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:CGWhYPzBTVMZaUgqvwn+yUhFsgJq0kIsP7gyh29FSKYth6WRbJ4
 uarQE2PO8WoQd9FmknGGZuLQF4L64r67xumd5JgjfsKV/BPiFApziYu774Tf2g7YNvZT031
 VoU5/uWZHLsUgRw0MbplLuBuFQ+Sd/YMdVfiz2lWCJ6mei5k7eqnmxtxUlPR1LmwWiFpK35
 /gzM/lvFkVj7wzgKVVxqg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:36u0nkAfLeg=:dSg3HrPsLSH8GaFT9pcUOY
 XWp1Kw24c9kPIiI0l8uR8dQvVFNZe9TBquIxrgW0JWKxnsUrsCXLU6uDgQ6eiDSQse3nnXJFt
 t/t1IkDwSBXr+hEULsMHkwm8WKPD5Uu+yfjXNiDbimklZQiNiuiNJdn5/dc40IGwDoafs+zMm
 QKL3BRLMNvGL4uPCBXE1KnSnUS5JsfC1Wh0tVNB2G2GvM1G+eo5Q5gwFzBtUgQH9edoxs9XlA
 Z76+hBsOV87lHmZtutyrzTvmTTGhA8Dn9pygaI2SwcYxebaNqNWI9Wpwa7xqALDuX3dKihxW4
 YC7js8wMiBvgmGctWPGAKRbzIuK4JSC+H6KasWMySKHks7+lkrVs1ckX6hGtqYTHEq6JC6QfK
 ewVT1G/XRvXO/aCG66bQSZpyo9+fO2+Djw/9ALv7hXMe+1VZbb2fZjEYWmy507mgyU2o2vwnU
 AHBYMe7o/mQgH+cBhNplUkHh4QO/vSQJ7l31unKiKXF53VRcJpWBQK4qc5KLaNd8XOo21S1Dy
 DjF8A+KoNClNv6uT1fka4tZtfjOKYc7/IGa8vEzCYtTPyyPIkf0kHscUrfCBoIS4Hl84DTEJS
 6pBOjRRos9rKE5KT31+ZmqhcndcHv28MA49ACplG6tPRsYqFeopunIQyKh9zfPjRuSyyIlAZ2
 flfOyCeFfy6REhTiOHXusG5vDqMAU+DjSfAz0SXIPEKA4Yv6ZISnrEgbxiIcRPv1KhY5ZGVRV
 pm14i5Q2rlzz0iqb

On Wednesday 14 October 2015 05:15:12 Shivani Bhardwaj wrote:
> On Wed, Oct 14, 2015 at 5:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Wed, Oct 14, 2015 at 04:54:45AM +0530, Shivani Bhardwaj wrote:
> >> On Wed, Oct 14, 2015 at 4:44 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >> > On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
> >> >> Change the order of statements and remove extra code.
> >> >> +     CLR_SD_HCXC(sd_card);
> >> >> +
> >> >>       if (hi_cap_flow) {
> >> >>               if (rsp[1] & 0x40)
> >> >>                       SET_SD_HCXC(sd_card);
> >> >> -             else
> >> >> -                     CLR_SD_HCXC(sd_card);
> >> >> -
> >> >> -             support_1v8 = false;
> >> >> -     } else {
> >> >> -             CLR_SD_HCXC(sd_card);
> >> >> -             support_1v8 = false;
> >> >>       }
> >> >> +
> >> >> +     support_1v8 = false;
> >> >>       dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
> >> >>
> >> >>       if (support_1v8) {
> >> >
> >> > Are you sure you didn't change the logic of what is happening here?
> >> >
> >> > Why are you making this change?  What prompted it?
...

> I don't think it should be a problem because that is what we
> ultimately want in our code - to clear the memory card subject to
> constraints that one of the two if conditions is wrong. Now, if both
> the if statements, that is,
> if (hi_cap_flow) and if (rsp[1] & 0x40)
> 
> turn out to be true, they set the cleared sd_card again.
> 
> That is what we wanted. If both the if statements are true - set the
> sd_card else clear it up. 

I guess this would be easier to verify if it were not obscured by the
SET_SD_HCXC/CLR_SD_HCXC macros ;-)

Your change looks like a correct transformation, and it would be logical
to remove the support_1v8 variable next, as it can never be true.

However, I wonder whether that is just a bug in the driver, as UHS-1
cards are required to support 1.8v operation, and there is clearly
code to handle it here. Maybe one of them should actually say
"support_1v8 = true".

	Arnd

