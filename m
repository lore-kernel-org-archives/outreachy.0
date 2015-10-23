X-GM-THRID: 6208922267806597120
X-Received: by 10.50.225.106 with SMTP id rj10mr1137583igc.8.1445630008665;
        Fri, 23 Oct 2015 12:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.87 with SMTP id l84ls1194293iod.73.gmail; Fri, 23 Oct
 2015 12:53:28 -0700 (PDT)
X-Received: by 10.107.10.22 with SMTP id u22mr3283217ioi.19.1445630008423;
        Fri, 23 Oct 2015 12:53:28 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id fa8si2454672pab.1.2015.10.23.12.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 12:53:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MLFy5-1ZpzW92FSD-000LtB; Fri, 23 Oct
 2015 21:53:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com, openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org, minyard@acm.org
Subject: Re: [Y2038] [PATCH v2] char: ipmi: ipmi_ssif: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 21:53:23 +0200
Message-ID: <13551056.Ff7RbB6trk@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151023195104.GA32677@amitoj-Inspiron-3542>
References: <20151023195104.GA32677@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XDBhuVnihmpHc33vZSQJ/U3eX24QGbgW4kETl66nEWxMmxHh01H
 quaqJZRRz+tWQ5XLGuAUh8ZYCqTVWyiGZvSn8d3TzSKtuqu4LCalU71ZRP0SpH+DhAa1Lq6
 ePVagka3I2jFGxXezdHpe2leIFjVLB9qJA+d7dIZwt+ZRX4CZP48JlzGzXuUAKHWLOVUIMy
 weBe6hCRSx/hedGT4A+gg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:TvodXVfjWZw=:jO8FA+6PJfHTtddOmkaXdf
 DjC5FuKZyh3XJcJSinwQTe06jDb7CAV7FIVnv4t3DeRwp9pm07tvUoNBWNzqVDm1M+JEv/BI2
 3nmLDpyXzLOon1hRmHJ0GP4FFnv+ZVEYUj6xJ2GWsIBU6r97afXkEwnqMfS5wWsTCIabUTw6y
 cA+ZW2vHYCoVXn5KIhMHnDlpOdIle3JWhJ+Da3PTTun9O9wUe8GTxAYh99iCYpcg38EhljYzg
 Qx6fIEN0OSDF3Ei0NIEllSo9viOkuR90SU/e5oDMFo0Q6gyis6VOk75RwrClUlJE9NXPGBNbn
 QaIZMjTbfFIzXV3ZiEDT/hwBicA3aBoV6HkLMBj5T3oXlX79o+aWEBiYoCWrmE4ClycN6cRe/
 R4UWa9RDZbjadf1zgePFjMAnCnXQEzM6suArTuSXhtPvUGyVbliulJ9/irx98FCGsTLdpBwAs
 YOffY0wiqfsdLahY1YrkXkGRFvLjg9bUns3QGtsDadIGHyLpDefV1U1dypLAOY0D3FphiJFtU
 Sq0sSOncSI06EUWsh+iIUCEQr/nsp5jAHXf7QM5p8otZf+8p9ZoJuzyxnN8gJITpg9/uY1hkk
 bW+re/5WTmJAgP5uL6k7kIKq20nr4CX2Wa66lAGqTGIFA5NDRIrERZx9GDkBrjJaD793caW9O
 3/jxtNTBp2BssMFSP2ga0e0rkA1bU4MUA8atqKnJHkwvyb2kJnFwgB3q9GWC1AwNPDIXd/MEY
 j1R+q6hMoRnuSokJ

On Saturday 24 October 2015 01:21:04 Amitoj Kaur Chawla wrote:
> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> will not give current time beyond 2038.
> 
> The patch changes the code to use ktime_get_real_ts64() which returns
> a 'struct timespec64' instead of do_gettimeofday() which returns a
> 'struct timeval'
> 
> This patch also alters the format string in pr_info() for now.tv_sec
> to incorporate 'long long' on 32 bit architectures.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

