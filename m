X-GM-THRID: 6210404372409483264
X-Received: by 10.28.132.75 with SMTP id g72mr4047076wmd.2.1446593384598;
        Tue, 03 Nov 2015 15:29:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.143 with SMTP id 137ls80032lfz.41.gmail; Tue, 03 Nov
 2015 15:29:44 -0800 (PST)
X-Received: by 10.112.63.165 with SMTP id h5mr6192776lbs.18.1446593384021;
        Tue, 03 Nov 2015 15:29:44 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t72si724626wme.0.2015.11.03.15.29.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:29:43 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MJ0Dl-1ZrI340y8f-002YXM; Wed, 04 Nov
 2015 00:29:43 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] scsi: bfa: bfa_port: Remove struct timeval
Date: Wed, 04 Nov 2015 00:29:42 +0100
Message-ID: <3925576.zb40mlY0GR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151027190041.GA12697@amitoj-Inspiron-3542>
References: <20151027190041.GA12697@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:WLwMCQ/3edcpkxmneeXwxNbkcPillRNLP7+Vx+v4NR+XsOhgT57
 SreMELgWy9VwclQxNsOy5+SmagsONoHDmTnp3pb2HeZncVDCI4hRT3c/zrL1i1rW203hsZq
 tVZPxRC0+M0GhtbA5O0+MBareXjA/22KSgV+dgSmzCxDTeZWzUWsUessLB8PXdTKAer9vfK
 ENDeBOEJ4rMpYzsvjVl9w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Nbs68v7XGl4=:xdgQ86rDVtFB5Mp1eLrqwp
 6sHmX5PfQi65Pxyb43pO6GWGmvVPUxKt+J0y5GBMKXBOLO4MJrax2M0aOkoOCBML4w2pixPiC
 9qwcYOe/dKbDd/i0+60r7tAGQi/V8OkPriEn+pVIELTSuxNsRZ+gB3HB6oq1lsH7G7MjUP37T
 LTCPQIYbqTCCakSz0qXQAcJslHP+xAf7S3faytwlhXGOfQRD1Afv7Zpw81RMiJF2uIfLpPDn+
 4F+TjRIongr5glYP1UF3fQSR7KbFkjM0QhPeMAVRG7LQC/N0tPRrKxBeJvEBANBgyreH4FbKu
 SafImd+OvJLGad+z3Pom7QlHm5TLxKrbrKXn6hlHgTI1/3zlt+7Gm0kjC3xNw7gQ1mLYZ2TUy
 KseGVmNYXogEDHIjPdRSKH5QPArmxdvkTvvTfLIYPjPGBvb/qwFMa6Qb/u0gXzor470g5AzJm
 GGT1nj/3Ojuk6sroiOzBlK47OBbkJjeTcCA/UfIaJ3MLWcqGoE+AsK0teHrXPJDXz+V1B9MNg
 n6YuaoKFg0uMtXwlsjpuap0eAmYxm25YeLQJhYm7wBPKzmW/6vZ03/M+/hy0mz+GJkh83MhCi
 tKblXHTKC8HvctVct6gCu/aOthdgrrPQy9tqM3Bb1bjhwQtjAXfhHRjVThrqS0aS4NshjjaV2
 Uqf4FB5cuzZPf4Qq2x8YsmkHYQwt1noROfs9zWNoGrBmPzMu1xCJ9IwvBaEHOur0vYMHfsyQ4
 olnTrOAMhbmglSzd

On Wednesday 28 October 2015 00:30:41 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so 
> we modify the code appropriately. 
> 
> This patch replaces the use of struct timeval and do_gettimeofday() 
> with 64 bit ktime_get_real_seconds().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

This code looks like a copy of the bfa_svc.c file from your earlier patch,
and the same comments apply: Make sure that stats_reset_time has an
appropriate type, and convert to monotonic time.

	Arnd

