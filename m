X-GM-THRID: 6209338350434779136
X-Received: by 10.112.134.129 with SMTP id pk1mr6003281lbb.24.1446592095558;
        Tue, 03 Nov 2015 15:08:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.20 with SMTP id d20ls182915wma.13.gmail; Tue, 03 Nov
 2015 15:08:14 -0800 (PST)
X-Received: by 10.28.19.148 with SMTP id 142mr4014088wmt.4.1446592094726;
        Tue, 03 Nov 2015 15:08:14 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id g18si752667wmd.1.2015.11.03.15.08.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:08:14 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LfioM-1aEB0B24JW-00pLpx; Wed, 04 Nov
 2015 00:08:13 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] scsi: bfa: bfad_bsg: Use ktime_get_real_seconds()
Date: Wed, 04 Nov 2015 00:08:12 +0100
Message-ID: <4012644.7ErTP1A9Pc@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151024220358.GA17274@amitoj-Inspiron-3542>
References: <20151024220358.GA17274@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:So4HdwL/ncSUvnP8MNDp4GOrZGOzoLhm0pq7y/Aai3jq8k7qedy
 +WZqzO4Ae8sDCaJy51lGVf5uQVYMTEu2kPMurfD+vN9wZOuJrLvE0SYiXXPqCFjF/SnaWdK
 7DtkKRJ/6+UUXeeUELsE/Yts6Cms9NtFVpIN+DIaYVIOa1KrG69sFzFOwF3tdOU8Zc49pTo
 XzcPOcaMDsZEzI9mi37jg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:HusBliLK5RI=:lsSojXEBhzhjlws7mifdUP
 PIFqe+zJyj8EUKdaTUwfS3lcFb1nTJqKNjdse8j2sLIyLILd2ZTt++H4cW0wo7c+fp2rohMpN
 VVMZI4joX6Fr3FHsR91xXPIU3/ihZfg4eBRrqRqp63dp6eXbmDOlRTaHk+ef/4vb25WOxbnTZ
 JtM6mt0jAqqWvoOx52CrY49Si6j4DnCJzZMvM6gVEbddQMPCqn4/MfvJqiJhfTqDIRXOny87E
 XeMHA9Xm4BclM4Tn5R83Qr3/LUtsYxx03msf+pi83brFG2l2klAFwCO5i+QDhRCnTOrzfJ8BM
 e+YENFChHXfheVRrBZWlo63EQ2D6lGwZFq6zPXwNEGK4EvEqIU+Mk7WT2I/DrRugsaX5sRXc2
 tEKhY5oEajQIrh80almcL2lvvTzaxGRob7hNhFn7d4uzIZGZ7ci0OX5QhE6RARXp3KoHvYrvb
 tFjYpzwTZ36xNio08zjANlVefcCb5IiZ5Ki+P7C6R1S91mdgXeM67V7wsIaboqCRCcVYvv/sq
 BjrLlLJLTWUPWsvBiLmHfjbpvqvPXv8xPT8JOsXsNHlDIU4H0Qmj5y3IaEiqc7ga/E58S3nSk
 resf7yWCzJflLZRiHE0P1Enyo2jOVH8ZIoZdm99bmZjNjiYosHkfGhdFzIRm208mC4TFJO7zb
 CWAZd3kdM4yb5DYEE1Y5OQJ8Ra78TaCkEr+Yuka6EOJ/VrhcG4sewHLgUE060pLSKZxVHIWsw
 mVcsBTFkJUc9E3Bp

On Sunday 25 October 2015 03:33:58 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday() with
> ktime_get_real_seconds().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Sorry for taking so long to review this, I'm only now catching up
with my mails from the kernel summit.

This patch looks incomplete:

>  	if (v_cmd == IOCMD_FCPIM_PROFILE_ON)
> -		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, tv.tv_sec);
> +		iocmd->status = bfa_fcpim_profile_on(&bfad->bfa, 
> +						ktime_get_real_seconds());
>  	else if (v_cmd == IOCMD_FCPIM_PROFILE_OFF)
>  		iocmd->status = bfa_fcpim_profile_off(&bfad->bfa);
>  	spin_unlock_irqrestore(&bfad->bfad_lock, flags);
> 

bfa_fcpim_profile_on() takes a "u32" argument, so this will still
overflow in year 2106. As you did in the later patches, you need to
follow the variable to see how it is used, and whether it can be
extended to time64_t consistently. Try to do the conversion as late
as possible, and add a code comment about the overflow if the data
ends up in a structure that cannot be changed.

	Arnd

