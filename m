X-GM-THRID: 6208227682236235776
X-Received: by 10.112.202.165 with SMTP id kj5mr5961705lbc.5.1445675942632;
        Sat, 24 Oct 2015 01:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.66 with SMTP id c2ls77298wie.16.canary; Sat, 24 Oct
 2015 01:39:02 -0700 (PDT)
X-Received: by 10.28.87.15 with SMTP id l15mr190520wmb.1.1445675942049;
        Sat, 24 Oct 2015 01:39:02 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id q6si52488wiz.0.2015.10.24.01.39.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 01:39:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LbmDM-1aHa7j3lX2-00jGvt; Sat, 24 Oct
 2015 10:38:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org, Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] usb: usbtest: Add new ioctl interface
Date: Sat, 24 Oct 2015 10:38:59 +0200
Message-ID: <7242161.l7i2pe44H0@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <5042503.magIZkzosx@wuerfel>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com> <CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com> <5042503.magIZkzosx@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:AAwTYLz5+whKuwmiGyGCaI/Kogq4PQnxenXslNE6ABMBoC5LZiq
 eFLA7WQIcV1IhSRlhEmVftM1XZl/PFQBlOnAm86ixmwgiNSXtdYypM/D9SQYV4GY+FKY6EJ
 WSdSo0S0bRJXMTlvMOxs2dQ6zkDYMmhemIs1EyzKJjqRW4EMlPiEWPnj0KPseM1xdGS8Ryj
 6hrRrGKewxLrSSs6zB7NA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+ON8VBnCFiE=:w5Jl/CapswTdVvz0e2Das1
 U8kYzi5XROUvp77X0DuwXnroQQ5fVFwRmXXKrxcuK1+ECk7QXoyNZQc4iX+zU8xv9mwLUEzet
 0rRPdJKW/U9vQ7JEf5yh58C5Gvk2GscFnZokDj/semOCcggcQGh2VKYETxZPAU0dV9fFC98se
 FwgnDhBjbW89F6qkK9+ECanP8V2OPXYqVjFfSsF3PmNy297EUBDjGao0hPCYyWdFRoFOaRW0Z
 swVRrjd3BGZUtErNt1TJTOv11Tgrqf6kaINCu5DmImcFeqdkN3qaScowEKlHrS+l9JGbphoW8
 Kgjdc+iOuSMxtx5XkaW3kXWIHSODop5spQ7yRG3y1V988ZRhVyqdRgJMQTH8FHKbhMqMSPHos
 kxd8qb5qZyALG3HZ5HraNnmbzmPhBmoMbHSAY4XvyPUoQjuPFUnnhl6FTg2NVOVK6jAauVYWJ
 EdwF4yvN9mF782BkF6yq0G21VRWJ9iSeonXdbF/XWqfEcG8El0q41puuc4kVLRbT7dMXcuo0o
 LUqDzcecLOFZTgicy1ZjFgRVUY5/erCdEIBbOMsehTFIO1RMRLczf5/z0Bx8554qS6BObU0+e
 VFtY/wHoF3fdc2LYZdABziZq0c0HN9NNdAHKwKfipV7FNdgeT3pfMpygPV16rXX2jvsBSdVCQ
 Kwe/4HzvkZ1+rZob/00lGYYBhyUv+rIt3YYteTj5aYfr7Br5d5JaaA6DSZoMH4CN65ay08yab
 t76+hGceuO5o0BFO

On Saturday 24 October 2015 00:19:06 Arnd Bergmann wrote:
> > 3. Contact usb list about usbtest ioctl uses and about proposed new ioctl.
> 
> Yes, but don't make this one a priority. Adding a new ioctl is just the
> icing on the cake, and that patch mainly serves to highlight the fact
> that the original API was implemented poorly and how it should have
> been done instead. It's more important for us to avoid making things
> worse with the 64-bit time_t change.
> 

I've given this a little more thought now: I think we should support both
variations of the current interface in both the kernel and in the official
copy of the user space tool, for maximum compatibility.

If we add another ioctl, that means we have to support all three variants
in both kernel and user space for the foreseeable future, that's only
worth it if we can add some real value in the new interface. Instead of
a new ioctl, we could also choose to add a debugfs interface that might
be easier to use. Still, that is only a mild improvement to a rarely used
driver and a lot of work, so don't spend too much time on that one.

	Arnd

