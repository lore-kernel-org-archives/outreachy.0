X-GM-THRID: 6208227682236235776
X-Received: by 10.182.236.4 with SMTP id uq4mr8468826obc.3.1446238853294;
        Fri, 30 Oct 2015 14:00:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.176.227 with SMTP id cl3ls303398igc.6.gmail; Fri, 30 Oct
 2015 14:00:52 -0700 (PDT)
X-Received: by 10.107.134.102 with SMTP id i99mr9524211iod.34.1446238852965;
        Fri, 30 Oct 2015 14:00:52 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id tg5si202318igb.2.2015.10.30.14.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 14:00:52 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0Mefy0-1a7Zgw00UK-00OCcZ; Fri, 30 Oct
 2015 22:00:50 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] usb: usbtest: Add new ioctl interface
Date: Fri, 30 Oct 2015 22:00:49 +0100
Message-ID: <27629683.AOlbHP47a8@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvrMNR0vs6iH2Hb5xbeobhzuHQrCSnMdme19AKyNVviuEA@mail.gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com> <CABeXuvrS6bRH0cxP8Uan35vtWZxZLJvcut2ZWvrM=1bYKrjoPQ@mail.gmail.com> <CABeXuvrMNR0vs6iH2Hb5xbeobhzuHQrCSnMdme19AKyNVviuEA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:s4AgMs8ZchVFI3LQ2ic+9YPeRVxQGPf5qJfwDZ5s5wn1TkoV80g
 9Ev6CCpRExsM/hgbCc7g5Mc41vXF/YLFNbCs4TKHrUsJEgp2htxgG0XAHzK3zJaB0/hfFJr
 Ny62jGvWM0cPy/22r0dMC4nM0vlWY9UbFtDKgM6eBJHYM3r6Uz5U6unx5+6+8jJXU1h8CY3
 iH1B/ZGExNN+cph/TGc1Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:C13HjWxJArc=:th7ivLnBnymptTbaaespPp
 NXoTFTDwZB8T5EX87QNpJHB9UIBkoLZUO3pgePg1Kdakkd3sqtwTVsxZCNwgN04vVrHPiHJEn
 67Lci1BEyuXhuY4F8Vd/yPsf6BJLuChH6awQzsSv3anuBl52Kg/B7/uPQtPi1+45NQr7KKN9L
 3YHhjkSrYNnazlPHeYp62zEDDb/VwNZdah6lbyUpPhAau1+RpUSKN+3/R4DBjZO+yeIv6fZ9G
 0hmuVUoujoDqscQLc8KsnyOkOZWQPCfFxrlbxWP0toVZqJcZVlYKwSvp0HqcTPYncn8VjW4fa
 lFt0iT0vuHXD47vCIm4sis+m/c36qNcugqh43geRj/T5+Q9cP/AYpqFmqDDujsyTZrbirnPBG
 wJOQbS5COYOXuS2bgXcmKyrb6feF5GAlxpA1wTQWT6XNLUPSDEIR60s+1gN+BOuBkBXqnizcZ
 LFe4nF+hyM9I4Fw+d5DzhEQVrKwtbOYZgbUn1v+gexXJVYM74As5NG9vI0qMhMXklIb7KmpDL
 VJj3GZe+xUnvUn3eLZSpGTqOLgF+YdLa0YzZHoMTLVPIVvS90Q/zM1Xa0MTM6aUqFmXxm+W9s
 GCAOg/+1PoYPgJMxAQcFA3OO6631ppjUPmF1abky7fjMP2LPlmryJRxvFLAzygk9a7Z1pHOoP
 52FCYwGzK/n1HLPYK5Z9x+B1FiRX5VNdleCvAWZtkr4BORgQkxxCJFm2Le8ip7XhS7O8jOGJz
 qsSH/pgzA5XAQ/gM

On Friday 30 October 2015 10:55:10 Deepa Dinamani wrote:
> >
> >
> I looked at the spreadsheet(sheet 3). Nothing else actually needs timeval
> being exposed to userspace.
> Either whatever uses timeval, is only using it internally or uses time_t to
> user.

Ah, excellent!

I think there are a few that might not be on the list because I've already
addressed them in another patch: 

* include/uapi/linux/can/bcm.h (my patch is already merged)
* include/uapi/linux/input.h (hard to fix, working on it)
* include/uapi/linux/videodev2.h (also nontrivial, has been
  discussed at last weeks media summit, patch under work)
* drivers/char/ppdev.c (patch exists, needs to get merged)

Each of the above is a bit different and needs a custom solution
anyway, but it's definitely good to know that there are no others.

> I submitted a v2 of the patch that doesn't require a new timeval struct
> accordingly.

Thanks,

	Arnd

