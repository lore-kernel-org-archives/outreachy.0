X-GM-THRID: 6201390323940196352
X-Received: by 10.180.106.197 with SMTP id gw5mr1435001wib.7.1443987052049;
        Sun, 04 Oct 2015 12:30:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.197 with SMTP id c5ls199522wiy.33.canary; Sun, 04 Oct
 2015 12:30:51 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr4539969wja.7.1443987051623;
        Sun, 04 Oct 2015 12:30:51 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id q6si239741wif.2.2015.10.04.12.30.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 12:30:51 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M1Fnc-1absWJ17e4-00tCe2; Sun, 04 Oct
 2015 21:30:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: most: Use module_platform_driver
Date: Sun, 04 Oct 2015 21:30:50 +0200
Message-ID: <6498111.CeIiP0D2Ox@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443873690-30847-1-git-send-email-shraddha.6596@gmail.com>
References: <1443873690-30847-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:VfWpBCcRDdk0Juec3blyay8gKlfw4Ub+WSWWcZgSBfyrBxzfr/2
 CyIkrIlxrjJUnUwzngtQYj89RA+RDT9J4vZiO5AhGGbRkHy1TUgVvhhKgryr0Y7xo34b4pI
 OvWUP65/r3MLty7jInaqF7jj3Of6eXg6jZQbZbXu0tphWzNTrSVv+XE9RRLaBP6dWAQB32M
 tkCjXTOIVNFg2eJsOeDUQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:GWIFtBIvkqk=:vQ8VRCeXOsa6ULDAFH2nI6
 jGee/BTjAJVaF/iR0JbXnPGA7COvTmO0bRcXErXRwJDJOKuLTpvfgeDyLyNI3SDWxADd/GPLP
 6VHpPI1D/kcqIN3sTadqC18GFSEAwV4d0+NueS9U5SyAOaBt49T7KiEebJPZp/7BP3Kb+8Ss9
 Yvf7gfEQ0tDRYSLkSsXPiABaN4p6Tw91ws0VqNv5EbwGY/XZQPDVcw/Ax96k7RvQ/Gb6ucqFj
 EtbE0M/qWeeYQH2aDmPFbSus0fUZaglqKTxcyOoOfdXIS9Q2K/Y+B+ueVUgUbGXhvTqhXrJn2
 qw3C7wnb2Kci1JN0EAbVsSL1p34b4ZVQjGjQBHnpICSKf3maFSqljAU8O7XphhVxjiOeXl8ap
 mXQfhn3NuQ/KcSzNgqQVmHsUTDnCHS0ynfn/GgvYwAABaalTYT/tLnTdNzbTtnyEozCkxyM0u
 grlc0W1lJhhzxLcUBOnaVIYTQw+LECXicwSCllCfefqYcG548qc0ZAD++7qeubUyb9jXhikCC
 wGQUDsrxw7yOVtiby3JLFyncDFZDZ8v2u5fO+je8U0vVMdgqxfsuXESImk9b5c5r/m+vu0po3
 zA3jXjeZ2LomrFTgD7piiw94rDGvBfPwg5kQ+z9u+IClZj5UyyMYoty/sVShBfa4IK9ge29Mc
 D5DD4dj4qVVjrV3bojueRj8QD7ZqJR/PmedJwzcLSUJltZC41FGj4pbg2OdNT95WaB0+vjlA/
 WPbBxDGNmKPzBKaS

On Saturday 03 October 2015 17:31:30 Shraddha Barke wrote:
> 
> -/**
> - * dim2_hdm_init - Driver Registration Routine
> - */
> -static int __init dim2_hdm_init(void)
> -{
> -       pr_info("dim2_hdm_init()\n");
> -       return platform_driver_register(&dim2_driver);
> -}
> -
> 

Your changelog does not mention that you are removing the pr_info() lines
in the process of the conversion.

Removing those lines is a good idea, but that should better be done as
a separate patch upfront, possibly removing other debug statements
from the same driver as well.

	Arnd

