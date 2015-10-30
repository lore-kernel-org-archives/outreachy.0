X-GM-THRID: 6209266424669536256
X-Received: by 10.107.153.146 with SMTP id b140mr9221665ioe.30.1446240763509;
        Fri, 30 Oct 2015 14:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.38 with SMTP id c6ls265637igl.2.canary; Fri, 30 Oct 2015
 14:32:43 -0700 (PDT)
X-Received: by 10.66.253.37 with SMTP id zx5mr8387687pac.37.1446240763057;
        Fri, 30 Oct 2015 14:32:43 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id y206si656321ywd.6.2015.10.30.14.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 14:32:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0M9tPw-1ZleVN0GSW-00B7FF; Fri, 30 Oct
 2015 22:32:41 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Replace udelay function with usleep_range
Date: Fri, 30 Oct 2015 22:32:40 +0100
Message-ID: <5775905.RiZkvh7Klu@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445707491-28304-1-git-send-email-eraretuya@gmail.com>
References: <1445707491-28304-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:GVNhpO4edQg6X/2/rkXHZCr4WQDFy1539Oe+aARFmdkVXusNnHO
 X47YN15cn62YU6OCho9OAZGRNZDjWC+iQRBiVkfjqntE59QJeUU3bempL+KLVlHmY6BxNgM
 grA07XWNDUnoWKoYY5L/UaAg95EH54Woobo67nZsIr3Pm8jL4OsreDqykZWrAdnrJFIEAch
 oKW6IPrNM8UDyKBEpokyw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ekotZkQPWiU=:RQ79hn/7HYtSY3Mi5RFno9
 BR1ETPaSf+3/gkZ4LffB2VPh3QDrw/o7ERti7jkMHzccliZAMqAKKkeJFzuJqeHNRuFeTqMix
 vDRU4tyoHgyRVdSgIREqsXiDAmqCr0bYiDuuau1oU1VSrGnkikC61MQfZ+yp95UPkFfJUzCN8
 QbR5xor3zYtEU4nj6q2sXfsq3jzX/sCab1OV4WgTgWADnQkXGM5IQ+zBycVRjMH8GCjr2mVL5
 NOhlKuaVb5dHI54fwXeW1rXrGe5QzzibHwJaXrLOtR15h7sZOVtv3AGcCxEMwl7Uv/d2zE5Q2
 2pVVCoeedWR36L7gjP+qIIKqLwYkJTjhSbjz8MCg3VVIETTLGtTXyfeLS0Jx3+NA0Udpt1kSH
 OmVyE1e4qe4EAHoOmVS3SqwCg3bVdZO13nQG37btvGsB8wQAR5rpHOFrF+7HS+UlORsNzxXVG
 eGyHWcvCzXOXmXTO6tkyBitx9lEA3DATodP8MU5AZck3j8+zQTiqKfHfTvP8D4bKbAzqnuEBg
 lgxeDShxkgm50XcuvO5zgyGsVxIDJrVbQnNAI+5k94FLYPQYW1pIR9qNkDkjV7louI1ztBlgP
 zdv6IwE+9lvAgsQbFeMctkgH/GEsP+AhbOoIu923EK3Oca0Hszw+pYnCzNKq4gbMsiqAZzpGy
 gCAiVbUxV916M8JgI/Ttq4mXx3bZA9Uls+lgsyY+5oibM7kh/HuAkk6crmtt3jazHXLpV4lFa
 /Y36rC7tV8NfIjXE

On Sunday 25 October 2015 01:24:51 Eva Rachel Retuya wrote:
> Use 'usleep_range' instead of 'udelay' to elapse time. For
> spinand_reset, define the upper limit by a factor of 2 to keep the wait
> short while still allowing a "good enough" range for wakeup. Define the
> range 250us - 1ms for spinand_cmdfunc to provide enough leeway before
> issuing spinand_reset. Checkpatch found this issue.
> 
> CHECK: usleep_range is preferred over udelay; see
> Documentation/timers/timers-howto.txt

You are missing here an explanation about how you verified that the
conversion is safe: Are you sure that the spinand_reset() function
is never called from "atomic" context?

	Arnd

