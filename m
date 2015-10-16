X-GM-THRID: 6206160535830921216
X-Received: by 10.180.10.135 with SMTP id i7mr904806wib.2.1444989338186;
        Fri, 16 Oct 2015 02:55:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.74 with SMTP id p10ls98523wia.13.gmail; Fri, 16 Oct 2015
 02:55:37 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr908478wib.0.1444989337801;
        Fri, 16 Oct 2015 02:55:37 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id cm6si174997wib.1.2015.10.16.02.55.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 02:55:37 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MMamg-1ZvI8641La-008L1e; Fri, 16 Oct
 2015 11:55:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change the variable to be checked
Date: Fri, 16 Oct 2015 11:55:36 +0200
Message-ID: <9667273.8SQsnSMdnh@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQFXZ2rqkbig2hwPSd=nHg-OZt3c6JiaGAHao6mkXPsUQQ@mail.gmail.com>
References: <20151016083218.GA2815@ubuntu> <4275207.TTHHeQE8pW@wuerfel> <CAKHNQQFXZ2rqkbig2hwPSd=nHg-OZt3c6JiaGAHao6mkXPsUQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:S6GKCHsoOKexuKWVfVNSJ+RtTsj4qPLPbCRL140txTYteTLRdCC
 7UdZxLfit/pu+LBq8SJu8q7NJhVTr0ZGwwwKmt08XETNZNTESIstozlnpcNGptuB2VMskte
 cJI0HZyh0ytuUAykgTbPJNXNACwPceVuFm9DP/Q2x0Df5TNDDfETgRnJhsoWpL9v0XxXG9U
 CXbJPv/TdBdxZgNVdyBlQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:1p0ldZ5PC3E=:wYGHgfykROurkCZsIvnHoc
 lp7tddQoIvdszIVC/iG7D81ia0gGVki1Nb03AFxQDSwgDj+77U2C6JPmWzzVNrdROPWa7jXpZ
 K1yBjmd0IWwW90jDZOfgcU94bwdUrv7y5XYuKmiwxupQFYPka8Q6FLkrvSWP7F1Z8OJgs7Fof
 yYnVW91kz0iMj+nKkoUi6xQsiwIpAcaF0NL4sO9GjFQlDTIi1oZotgi1C1y4gnLSxAUwrTEWF
 MXs90VI6XCfJUDANiJ2GGWKJnAtkeHXs60TTgEhXIo9t4myJTCXDx7x5ehY7KNr41Yg/ITMVf
 X5yedAb1UZxEhEybZVWz3YJA4ynBQtETwU+8yPp+6Wm13AHP4Rul6fcw2P9hpdHcOYyd+I2Mv
 0Zhgr097sIB49R9FJADdV2oZuIrolZ9sOocU2mqKP+o5jqjIR+ap1C4lpB9zwNmuNGc0ftaR6
 qNbszy/a54RK1qcTFuCGy4vsczCp9a/TV3+ZFfwDICsjVFE5vFPlslUfKRhxXAgSYAbqHtwP2
 Wq98MgOh/u+cF8yZzQh1bNWimGlU5nla+awYS3ngTAHqqjrFOvb9aZB56G23UXPs1lHB0OxTk
 tW7zhf+vZdvc5HrV8hkw4TAnu6lV3b+ppbpQ7+sh/xgdrL8DDc7pYc+kKTUeRgGNdw1Gpzr8n
 1rQ94K/DvY+POGMvE+PhYHTg34eq/h52TH6EcPZtRb+QyrfycNf65KjxL/qqijjlCy84rTaib
 wz/N9SE0KzlI9u+X

On Friday 16 October 2015 14:27:35 Shivani Bhardwaj wrote:
> On Fri, Oct 16, 2015 at 2:11 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Friday 16 October 2015 14:02:18 Shivani Bhardwaj wrote:
> >> index 053d508..cdc7f88 100644
> >> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> >> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> >> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
> >>         unsigned long val;
> >>
> >>         rc = kstrtoul(buffer, 10, &val);
> >> -       if (rc)
> >> -               return rc;
> >> -       if (val < 0 || val > 1)
> >> +       if (rc < 0)
> >>                 return -ERANGE;
> >>
> >>         /* opposite senses */
> >> --
> >>
> >
> > I believe the intention of the code is to return -ERANGE if anything other
> > than 0 or 1 is stored here, which no longer works after your patch. The
> > range check in kstrtoul only ensures that there is a number that fits within
> > an 'unsigned long'.
> 
> This means it is never going to throw out of range error?
> If that is the case why do we take the variable val as unsigned long?
> It can be typecasted in the function kstrtoul. We can take it as
> simple int. And still
> if (rc)
>      return rc;
> 
> statement is never going to be valid, is it?

A used may still write "aardvark" into the file, which would return
-EINVAL, and writing 999999999999999999 would return -ERANGE.

> Plus, why base 10? base 2 should work fine to check for 0 and 1.

Right, it doesn't matter here. 'base=0' (autodetect) would work too.

> And, if everything above is wrong then, since val is taken as unsigned
> int it can again never be less than 0 so, shouldn't the check be made
> only for val>1?

Yes, that would be correct.

	Arnd


