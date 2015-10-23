X-GM-THRID: 6208527977579282432
X-Received: by 10.112.147.7 with SMTP id tg7mr4986156lbb.16.1445608034611;
        Fri, 23 Oct 2015 06:47:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.193 with SMTP id o1ls139770wif.12.canary; Fri, 23 Oct
 2015 06:47:14 -0700 (PDT)
X-Received: by 10.28.145.213 with SMTP id t204mr84372wmd.0.1445608033983;
        Fri, 23 Oct 2015 06:47:13 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id t18si10471wme.0.2015.10.23.06.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:47:13 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0LvtTJ-1abLYL2URB-017l9w; Fri, 23 Oct
 2015 15:47:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] misc: ibmasm: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 15:47:11 +0200
Message-ID: <3821582.4qFXg7Ezn8@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <13045188.atJMdLPVso@wuerfel>
References: <20151023122206.GA16757@amitoj-Inspiron-3542> <13045188.atJMdLPVso@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:5dVYbWypE5W8dos5/feCxZMZEZryDV2KHgzhwFCQxnedR/5WXcx
 +59w5YeL2P5gf3+R8/uLB6xp9oPGmy6Q92c48VMtnKQVZjyjmu6Ju6h3pXpksSZklgghFHC
 FDVxYrc7qfO3T79DH4UfVbxb1tK4C1Mnbwu6nLtEK7Ny/Hx6FHI3p9/3gNq8OuLo/73auXf
 rvqzOQjdvAgvAg1LpF3dA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vcKBmpaiRuk=:nmvJSELNZcHes5xlb7lYrW
 Y0tJLR+mB+0nsrbOh/YG7PfkuEP+4lVURLnvlPpgAwsHlt2fYxsE1Iipumz376ZdBoIjHZ9M3
 3ij6wF8yWanqmMx1NzSnVty7PbrBoGx/NfUXUU04/krJLsNsq7rcdbF+WfhNEVcAyTAjjLyFR
 XgoPgB3HI0zDaX11dy3bPs6RQoaY1BLBWyRsv4IVSFnFJ/t8N+G7Suwr7DtyraBMtLwwcbC3+
 3VJOgfXdrtLPOrSe6JfK6KGpY2VmcSeaEW3IuervSuUTfhAzVH49b7zuHZBMU+XFaCNHvKshu
 oEUgzjItMksow66yMmzhVP7c8WxlcFvZNkf1Iu0jKbE/BBuAp+JbQzRw5S8aqj91dgew9yxiy
 D9jTi5CujRasDyJW6GTC1egiVdY5h40v5NWBePSPPwKWgDJKatfhiKhLFTU9eX9lnFxkUR1us
 hkMSXqRSeeVrUNwmR+TVkdr0SUQVcJPbAkunwJzyyRw3604zJZkz7IkNHIq0svuAsHhMNTzVV
 kfqJavPdLKN1uD8VNCeA3/tv76NnjhzOhVOIRq5Np07v+0h0vUTgdWy5Kdn2Tk45T6alwZ2IU
 nOCD0ACju+gVFyxMhjdDmNbs+p+cEqW0Wzy9oge7woYMq0tr7d5hr9LxCce9bACSKkvW5eW9M
 wUuWav8ilYqLTT7xZccrwJeYPA+MOPnEtyyC2qL6Ie6ifyY3dbEYrp5S4f00frSCKVr+EUN5R
 SMjTxIIvv3KqTrJX

On Friday 23 October 2015 15:39:49 Arnd Bergmann wrote:
> On Friday 23 October 2015 17:52:06 Amitoj Kaur Chawla wrote:
> > This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> > will not give current time beyond 2038.
> > 
> > The patch changes the code to use ktime_get_real_ts64() which returns
> > a 'struct timespec64' instead of do_gettimeofday() which returns a
> > 'struct timeval'
> > 
> > This patch also alters the format strings in sprintf() for now.tv_sec and
> > now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> > leading zeroes respectively.
> > 
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I was going to suggest to send this to the maintainers now, but after
checking the MAINTAINERS file myself, I see that this would be Greg and me ;-)

Greg, can you pick this up into the char-misc tree?

	Arnd

