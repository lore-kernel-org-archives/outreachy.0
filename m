X-GM-THRID: 6208527977579282432
X-Received: by 10.194.189.81 with SMTP id gg17mr943660wjc.5.1445610100782;
        Fri, 23 Oct 2015 07:21:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.180 with SMTP id fl20ls158699wic.11.canary; Fri, 23
 Oct 2015 07:21:40 -0700 (PDT)
X-Received: by 10.180.82.101 with SMTP id h5mr927307wiy.5.1445610100113;
        Fri, 23 Oct 2015 07:21:40 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id o3si144646wiz.1.2015.10.23.07.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 07:21:40 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MbLNo-1a8GXP1EXM-00IhRg; Fri, 23 Oct
 2015 16:21:39 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Y2038] [Outreachy kernel] [PATCH v2] misc: ibmasm: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 16:21:38 +0200
Message-ID: <4334098.D135Jbk2rc@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5HXwj8fgv5wOmZgJ0hneotaaYvV+-r_DVB=GztoPtmG_Q@mail.gmail.com>
References: <20151023122206.GA16757@amitoj-Inspiron-3542> <3821582.4qFXg7Ezn8@wuerfel> <CA+5yK5HXwj8fgv5wOmZgJ0hneotaaYvV+-r_DVB=GztoPtmG_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:UVVvKSd8lh7y5Uz/PbS8+CtdwIQ898yfwrLr9dsAD28hlG8Is76
 gRQY2fvOzneW32FYfvH8D5Zvo1AWtM+a9mr72QazdcUDpqqNgbeM8OtM6oD21QiPKORG74v
 Ht8mQ4tgNlTXT3EF20wK1VbGuflIsad3gm1iwsFaqj9F/5f3L9jvDTjj6wufDT2HKmQnKgF
 gd5xfsujUQNXsvSG1yFqw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:RsA4gHm/l6A=:35hhIG7+Bat/gDE0L8UE3w
 qz9n+ZLVI23zAuFeYTjcwm178rDdBELNo/MwHIShHm9s8IE9GPYtxNlI7tP6f71VDaoXxQOxT
 4ulwRfZZJHw9mhs/0QxGCaavP1s51+See4GSsySmzXrjUSXLiI+VEzamBQq8Xgq68mtDnbLtj
 uyUW290oyrqtOVo/4raBDUAUNdlr5XKyagQv/cEnEiJEaR8iLCbwktpYkkzOCd4SdEI3OyPlq
 FIRal1oP3i0cojcHif+zEf21K+91HL6JMhhIpEbcuIUz+pmjVO5991KkIQI+fatvckFWgGhdN
 gvhV1g47SuwLpHpmkrra89yBWhbYgD0cbjYRhY1UKo1PD2hWDTSXxz4UpTUW0VbuoGPNg5sb0
 BcuL1fe30jRkdKpyUAElOEeqs5ckp8WygYoM6lbKO7IZtu0PTzQpxe94vBikyfaBsVGMh6WcO
 KHXAr3LLikoNCWgiT5lGGMGm/CJMcGPGQo9g5eYh+HaDN5NWcRL3+FYkgPHbXXD875AYvFSoA
 0KDw3iayt1TWjgjpr8d9c/Mz1HRpKJNoBAJDOKuQ/c5yDgSZuv3EKFiGKNYfdbihkvuS3NvKe
 l9pcw9ooCEKFJ9WkvNdoVjhNLEdoX+QzISNyPW1l6kWtKD4JQrhZz708E2kx6l55DZ2EeKChV
 Uqz2kSgY2ZufM/uI674WmsQwApEwhYAXSqrZWZHp2VNi23XkcLUtuYD8ufRXzkr+++lxANEND
 jgXUeSw2yoUgkZow

On Friday 23 October 2015 19:28:00 Amitoj Kaur Chawla wrote:
> On Fri, Oct 23, 2015 at 7:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Friday 23 October 2015 15:39:49 Arnd Bergmann wrote:
> >> On Friday 23 October 2015 17:52:06 Amitoj Kaur Chawla wrote:
> >> > This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> >> > will not give current time beyond 2038.
> >> >
> >> > The patch changes the code to use ktime_get_real_ts64() which returns
> >> > a 'struct timespec64' instead of do_gettimeofday() which returns a
> >> > 'struct timeval'
> >> >
> >> > This patch also alters the format strings in sprintf() for now.tv_sec and
> >> > now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> >> > leading zeroes respectively.
> >> >
> >> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >>
> >> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> >
> > I was going to suggest to send this to the maintainers now, but after
> > checking the MAINTAINERS file myself, I see that this would be Greg and me 
> >
> > Greg, can you pick this up into the char-misc tree?
> >
> >         Arnd
> 
> Hi Arnd,
> 
> I made a slight error while sending v2 which I caught after figuring
> out of my issue of compiling the module.
> 
> I'm sending a v3 after build testing it.
> 
> Should I cc you and Greg separately or let it be?

In general, it helps to Cc maintainers. We are good at ignoring duplicate
mails.

	Arnd

