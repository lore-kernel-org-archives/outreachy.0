X-GM-THRID: 6205668721559601152
X-Received: by 10.112.136.99 with SMTP id pz3mr4872517lbb.11.1445081357235;
        Sat, 17 Oct 2015 04:29:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.189.104 with SMTP id gh8ls317516wic.51.canary; Sat, 17 Oct
 2015 04:29:16 -0700 (PDT)
X-Received: by 10.180.10.135 with SMTP id i7mr2392727wib.2.1445081356915;
        Sat, 17 Oct 2015 04:29:16 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id m4si241921wib.0.2015.10.17.04.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 04:29:16 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0Mhl9H-1a9Bow3UnL-00MvDl; Sat, 17 Oct
 2015 13:29:13 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [Outreachy kernel] Re: [PATCH] staging: ft1000: replace timeval with ktime_t
Date: Sat, 17 Oct 2015 13:29:13 +0200
Message-ID: <14714669.cmuInrGK0Q@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151017055511.GA30187@kroah.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com> <929BCFA7-B28D-4B76-9006-A488345D945F@gmail.com> <20151017055511.GA30187@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:aP0kNSj+a6f9Hz0+qG3hvnv4NJWvtE/n8l/6S0cushVavw2DzCq
 wpON63bnteATE0V5V1hOXWL7MquLh22CL6oEGuHMOJe61ddwdV8Iu5nehMqRMFgjJXRkADM
 ETj5Qx6+sQdUCi0bwADN+FRCUOrUlnMUpVqWEy7NZv+eQYo4v+p567u9TVTXqDmMKQLMazI
 ocTYcEAgdO2cFtNDyolzQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:1WlR0ab/+WY=:xxW9i0U9KS38qMWQnm0hAr
 MX27/Vcv6Z1ByQxbyvHtIfOLIHar1pfp2uljPMjBOtaDM7sg1yJO1AzSp7WAPwSTLkX279ReU
 zzmbjscHUoHnGbmFUSdYXllV9BMwo81afKBJawHBFGpayUOKrq5NqDc3XY7QmXeSdpzaFI0do
 4RDe/NxnPF9E6qT1oiGkURUR2wCxUz31efi0mX9ple70i628ShqsTsAFWUVCkmDbU88+Cybbh
 845r2fuGmwU3wz9bKHe2Ub3eDCmAIfY3F6OHqQZG8O2gASmsmPwY04DQIA322uZJ0B8EbtGM2
 4ejUJRRa5aWWDLSXZIJH+npZRWIPMpjfWQOzaTRLpCEKbBsowZi8lZOfNnMLPASKDJ734W71B
 G/Ims3bXG0UHUfcxSy2Pu8J7cjZ9ZaV45rky53CUY2VWpGQIL6gb13mXk5mv9BpKFaL41XYiu
 JAwJkbc+3eGIkuVxLS7lXBmLgjDanxKp+MfYo+/cu8IrVJUYzI85nr1CpxIqtCqaqo5svlPln
 piY/57lZibPpPGGeDjVX8SVDOEr7fUIvfGmOukvPHBmXskgu+jzQJidedZ3Fjq4q9FkS4eugh
 vdo+KqOLs6fljR2knQ/iEPE0k0xIx2CM+cgqkB12kRloVL8cK3idAviMWvGl08lWit0M/shpo
 Skcqbmr4iz4+ojvOa05WAwW+A5Is7vR3CQhOd6Ga+Ko4iNQ2+SwOnuBNdZHWJQwTSAXSBaEES
 vn1o0cgGSVGCIuVH

On Friday 16 October 2015 22:55:11 Greg KH wrote:
> On Fri, Oct 16, 2015 at 05:32:25PM -0700, Deepa Dinamani wrote:
> > Should I then fix this patch as per your suggestion or let it be?
> 
> Let's just delete the driver from the tree.

Ok.

Deepa, can you send a patch to remove the driver with an explanation
of why it's no longer used?

	Arnd

