X-GM-THRID: 6205612297408217088
X-Received: by 10.112.55.69 with SMTP id q5mr6728183lbp.24.1445261228773;
        Mon, 19 Oct 2015 06:27:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.138 with SMTP id p10ls646914wik.21.gmail; Mon, 19 Oct
 2015 06:27:08 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr4201556wic.3.1445261228233;
        Mon, 19 Oct 2015 06:27:08 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id cm6si598067wib.1.2015.10.19.06.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 06:27:08 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MNyAB-1Zvb7Y2A03-007V2h; Mon, 19 Oct
 2015 15:27:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] Staging: lustre: Use static inline functions instead of macros
Date: Mon, 19 Oct 2015 15:27:06 +0200
Message-ID: <6422089.hfNKf1xMHR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
References: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:DvTm0jnza6Jvofe90a8uBn032dTkaIdW2yA/wYyBqKkQNn6XtfR
 7ZNJFBhizSkFg0Y/TKP1SId1FnMilf97jJysuNH2PzmOHCIZ7zu5mSX/W8e75QM2zLb7uzs
 MDlesNf8mY3Qti1uPwxo3cuiUejuSRaIjcjA5PIsbsshYVaTmqGFtWp/P03oWeDOBfMQ7m3
 2HRjIsRFZyT6vjDco4VzA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:yoFsBTfJV3U=:76MPxJB01EG1jG4kJKUdyY
 GulTIeXww8Z6yut86Rr/WrDiLSiDBY+VRBENCsMNfQv3nqUvztFBtr1GiM6Q4BbBGOos4/lWz
 tK2y2XJo2Zdrx6TRmhRmbQpEMgSSdoNSk5tok6ajZApLrduJT2onrndG8VZY8+nJcoNYg8snK
 Uce6KGUjfdwkpzhH8ABYmvxlFm7yRwFHjSrmKbtDmc66DlJwPZlTjaI/tKZKgbOdxTLeQR/Gl
 DT0TBknM9KHs+jLXT/AhvOK/2cG5x7a2fC0aI4ehYJXGZgvf8ULW33B9AK3WunVR5olRmgu/v
 qnlJvbvaYfT9f+Q8MnuFycFKmcyeqZ1jQ5VwXwIOfZqUVYVw7AnoOJt66ZpwU5p61MsSIvEih
 rQeXPgmC4nJrumQe7soMtc1eTBOECSdKNN9grqaEr4iFUvmC6f/0cvEP2sdmOofJDG7AnZ5YT
 3HlLkr3BTKJXuW6XpaMubDXwrFEqYfY0QxQB2I4DD43YbxLpDRQOGgnYe9gjtABJxnY3b52Ux
 jHh9hmpqf5N7/wzW9XEbzDhfj9gecUGLKyPOhcC6smNksGTdjROYeXuZmQLhHIFXbMNZCf74p
 +A3X0993YGWTQNUOBfKfgG4LJON3Y5igCxCXhAvBeN19npY3C2H2r7kUylgEnpH7bNN877mBM
 p7lJtpsXYW7XrycPhh2cnZ7sznTuj8VQ2mgoi9imCu0w/MoytGfGdjkCqSUsYf8auukoVyP/r
 qazZ5Jq6dMGMBlC+

On Saturday 17 October 2015 18:13:15 Ksenija Stanojevic wrote:
> Convert macros class_export_lock_get and class_export_lock_put into static
> inline functions and also remove some unused macros.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Whole series,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

