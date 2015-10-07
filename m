X-GM-THRID: 6200341306580926464
X-Received: by 10.112.63.165 with SMTP id h5mr636656lbs.18.1444249173698;
        Wed, 07 Oct 2015 13:19:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.72 with SMTP id t69ls100337lfe.56.gmail; Wed, 07 Oct
 2015 13:19:33 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr603240lbb.17.1444249173365;
        Wed, 07 Oct 2015 13:19:33 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id h2si168496wiy.0.2015.10.07.13.19.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:19:33 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LpkJD-1aE0fb3Ox5-00fgqm; Wed, 07 Oct
 2015 22:19:32 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v3] Staging: fbtbt: Replace timespec with ktime_t
Date: Wed, 07 Oct 2015 22:19:32 +0200
Message-ID: <23031547.v4VOJpOG07@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444248415-16249-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1444248415-16249-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:xe3RI8VyeFTY9txJYLec26XswYIt4O7FWZvxnqotpGOnn3wFje8
 0EcwRXOMmWfNbS5E41NkkCGu/twzggvffv0mcbYTPOBv5TT4HaViMVKLS89xURfrHwQZ0br
 xw4G/Ai5gOfvrvGoZpmz4z7Sz0VsUNDYObC/JzjohSOZiPiCbtIot+udazgV/wR9TvpmrJh
 wIPhVPAh6F6U7KE2lCEHw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vJhCimsPJe8=:++bCfxqhZUW//mUaQCrFGp
 Eh2AJsLOS3aEUBq52+bcLSd/CIPIVfrW4NomxnIbGPUs8tmCNMysDl4HAbQOR7orAT8yrKAO2
 wJg8po9Wc9yFpFTlNPlT5OqyFs1iQl+wnIWAD4PVwFpVdfDCaSlSDPEIWkZN+kG6bLFRHO1UX
 Ww/JZ4m5FqBHd85gy66/eDvZJBS8MihFFVxhm1MitdpyfJ/4f7Xo9gW8oybcnUl93ixHIzxqc
 XdnFKCSd3v0ZztVu1BngJUv5KcJ3k8LZr9pY96EL/JlSUlfNoqlZ6aOzpMFDz1mUhUD/un/AD
 DDQGyWXng2n8a8H0qov/OVqwuZdSbFXjkO9YyGVTDcRj3BSr/Ou/AR6u9G56+kptVOuu+F//x
 23hNsMqVYjwPDvHdHpSlknv+ccy9cToYle+5SBfZ00L8CaS2LlMySTjRIPq28rAUG2TOwmG+I
 yweEYV7NByeVTNxUlfO9KgfuRW/d0nmkuBj9NhZE8CW8PFzdCw6asKu4uEZ6GtBSicJtwnned
 o8pltp1cAhUZdMK/Mf14UhLIN+x5bpkT8KjT1I2rQW0NUxc7wDiS3x3cYjAyLpGDfCRzG1aXu
 H4rJUAslkkqnQSiaaRo7LUuHhTyak3zJGuKXuoO/bdrvL21i7TTO6pQvSfNdQwk0ICXmn7pwY
 wyM988VA3RvoHeMb+NIXMilBUhWhaYLiMBLXHnnhgd1yUM1vBFwL0C3UeQqU43VDdvVBOleLU
 0DGBXYSosaKlo8VZ

On Wednesday 07 October 2015 22:06:55 Ksenija Stanojevic wrote:
> struct timespec will overflow in year 2038, so replace it with
> ktime_t. And replace functions that use struct timespec,
> timespec_sub with ktime_sub. Also use monotonic time instead of real
> time, by replacing getnstimeofday with ktime_get, to be more robust
> against leap seconds and settimeofday() calls.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

