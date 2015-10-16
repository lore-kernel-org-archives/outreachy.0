X-GM-THRID: 6205668721559601152
X-Received: by 10.180.105.98 with SMTP id gl2mr1791740wib.0.1445038261473;
        Fri, 16 Oct 2015 16:31:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.197 with SMTP id a5ls237319wik.3.canary; Fri, 16 Oct
 2015 16:31:00 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr4211463wjb.5.1445038260903;
        Fri, 16 Oct 2015 16:31:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id cm6si267016wib.1.2015.10.16.16.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 16:31:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0M2YnR-1aen3J01iP-00sJUG; Sat, 17 Oct
 2015 01:31:00 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: outreachy-kernel@googlegroups.com, Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [Y2038] [Outreachy kernel] Re: [PATCH] staging: ft1000: replace timeval with ktime_t
Date: Sat, 17 Oct 2015 01:30:59 +0200
Message-ID: <5068430.5O6VKJJBka@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <9822706.yKCeF9F5MV@wuerfel>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com> <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com> <9822706.yKCeF9F5MV@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:CkCYGD7TxU3jA47qXDumKgobcO++tV0aI/MT80LOM8j2S/TXM7e
 JTvO05jicyHT8t5WjR/It475BLCYlyxk4Z+qodHzdB9DcUV7o1wsyV6qSzQ2XouLFe7nneE
 2L5nI6Gze8PK+V6TAFyFkNkyhjWSPYQzZlTLchtKYb1kq8gDevoSd4ZMPmUQdk05g5GaF9g
 NaFLW5NSTZ4D46OER0glg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:lzoGPgISifk=:KIhLAVglAqAcVMBvYFFPTs
 y0ruIim/b6AseUFMTaAFdgJajCaP0o+lMCcFygAmjpDXts1nyNF2XJhKkxE1PsHfK+K1J+/JQ
 6xkSTXTZN8/5t3F+aVJZiEhNpeB5Yn4SJou3nsCfK/edJrjatRa1kWr/5w/ID3YsIad9/iSO0
 +ogLCta8T9t2rdFZfi0N/XdRldDCNnvRwBjXRIN0Ohf8LJYvOBJ4vFH9qyV/alQuEI+5daOvR
 VqFz70h8uSFLKfttaPKzamoMBC6iO/v5Ymkj+D62qxacnjGw9d2Fn3b8mHkHOn2xPeKCdn/tz
 acLpq4R+VvfpaWAh160mF9KiUVkEVs2bZMlTQ/zTei30bdqncZ4MCji95sNT9Eymoz3omsy58
 /xsk3CB9aVJAGtKFcoVfh6ZgEPS8znlgpKBMnLMiGntqW11d2FArWH7sYvn47FGcBeUXnoWdH
 f+u6MIFL2VpTL/jJLpocU5MPN00G08q5etEcaDFkS05+jqKdJMxWUFhlR3p0bvDKDTVkxnaGn
 Pp8xsBbtNkXpLpkoK4xaAMAytf5NFI1B4WxPxJ4OuxZwFRxYKIPmGm6V1pwp+34XgLMjbJUaG
 UKrANdLDzQKAVrNGucBaye/x0Fr8niiAJdQgKd2bxDuzuJNdA30NhgHmYNAPp2v4mpIXEcljp
 WmI9TqWbiyUWpgqRV9UoCSY1b4RdU27QYXNMLdjtXmtJqnuwKXkvWwMsBaSH1UEgUBPq4+m9c
 /NRSfAOusCrgl/gT

On Saturday 17 October 2015 00:57:45 Arnd Bergmann wrote:

> A more likely cleanup would be the removal of the debug interface,
> replacing it with something completely different.

A little more research shows that we can probably remove the driver
from the kernel really soon, as the only remaining operator is
shutting down its service:

http://www.gtigroup.org/news/ind/2015-08-18/6996.html

They just went from a nationwide service to one that is only
available in the two largest cities of the country, and they
already offer much faster LTE service there.

	Arnd

