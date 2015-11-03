X-GM-THRID: 6210404372409483264
X-Received: by 10.28.87.15 with SMTP id l15mr4046472wmb.1.1446593569664;
        Tue, 03 Nov 2015 15:32:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.71 with SMTP id 68ls175297wmm.48.gmail; Tue, 03 Nov 2015
 15:32:49 -0800 (PST)
X-Received: by 10.194.203.33 with SMTP id kn1mr6139406wjc.3.1446593569307;
        Tue, 03 Nov 2015 15:32:49 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id g9si737361wmd.2.2015.11.03.15.32.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:32:49 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MPoeo-1ZpvaU1u9C-004yzC; Wed, 04 Nov
 2015 00:32:48 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] scsi: bfa: bfa_port: Remove struct timeval
Date: Wed, 04 Nov 2015 00:32:47 +0100
Message-ID: <3941115.s4qDOCKptR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <3925576.zb40mlY0GR@wuerfel>
References: <20151027190041.GA12697@amitoj-Inspiron-3542> <3925576.zb40mlY0GR@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:QF9a6iLlMJnooVb8t7E7T10sCXkfxm7BsXJN62LEI4mEYDDH8dq
 tcAebvsojACYioc2LNVbw2mfrA0p8M7sRgbCemZF5e00l+bZY1Z+PgRJOksYAQyP1t6abX7
 +Yczz3uFxmiudRj800d2Okd3zoOX8neN0pJ35LquieAUsQFgGIrbYA5Q038S3WX96je9Y5W
 mGylXDpExLvZwhdGhUmoQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MSYE8wPDKFo=:/j31Eb8+UOmB5arIMLnQfY
 ZVW0E3D4/xl5PYprzp5lW0l2W7jqz0gyoFkuaN7duxZrUaKwQnLL7NzEVIDuOLjXPiOWprFnS
 9W5nNOIwqwi8kFfhyYAVLeE05ukjj74IrLHTdFVDfCU4wVvByQhfVP9+oGug62X83PiZYuXtP
 cq5Wrc5oDrR5StG7bR4wgzN7kRPuTOwpK3hJG0TdzBuyMAC/GfPfMyJoq8XQUuzfdjgFb8BX7
 KlRvyk0yBfuTPd8IxRCKgMQ8T61war0t2vSZqO1thi0JY8HnfeBxHlipJWv7d1GUmL9gXSpWf
 o9Tcs1i8ls2GTFZOwt2L8CxZSfC0sVCzUjovmks5WGj18zdn/0reojPS+QX9NWUaZmYgZVmxe
 uMlHE8pDyaswXhVWEzWBggO/evFkGqDxQ8m/2Mhbc3PIp3+I3P2hZilXGgE2TxcGRq5Dhm3Yb
 /GfnQ7rz7QJZH7RSAvn0VXrDmjKVNKdy3RofqVvLUlSS0zyoMmV01ijVaYWr57pqR4NrHpBzk
 mKxMFtc5NFoHN4ZPsAbRxZcrHz+kwLpGWWSF3pO5/JMai2dsWsOgRxS43/gEMRiHhJeOXkqFl
 k4kZXJtFD8COBaQiSkv1nv0KrO18QDbA6niCIfoP76Khvn1MIetndUVlVo3fOIS5RTZIfd4XL
 7ACTzCPxfnRh1NIrYfvzvr0FAW6owFjaJDlCjAhkUkHRd1yB5GJZtrClKfc02AaFyKkRGhNCQ
 Vyn7jSZi/eYXFwiR

On Wednesday 04 November 2015 00:29:42 Arnd Bergmann wrote:
> On Wednesday 28 October 2015 00:30:41 Amitoj Kaur Chawla wrote:
> > 32 bit systems using 'struct timeval' will break in the year 2038, so 
> > we modify the code appropriately. 
> > 
> > This patch replaces the use of struct timeval and do_gettimeofday() 
> > with 64 bit ktime_get_real_seconds().
> > 
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 
> This code looks like a copy of the bfa_svc.c file from your earlier patch,
> and the same comments apply: Make sure that stats_reset_time has an
> appropriate type, and convert to monotonic time.
> 

To further clarify: when you change to using monotonic time, using a 32-bit
variable to store the time is sufficient and you don't need to change
the type, but you should still explain that in the patch description
if you do it.

	Arnd

