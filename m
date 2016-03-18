X-GM-THRID: 6263480963249995776
X-Received: by 10.25.160.207 with SMTP id j198mr2462602lfe.4.1458331986854;
        Fri, 18 Mar 2016 13:13:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.91.84 with SMTP id p81ls252904wmb.24.canary; Fri, 18 Mar
 2016 13:13:05 -0700 (PDT)
X-Received: by 10.194.236.230 with SMTP id ux6mr2459909wjc.4.1458331985677;
        Fri, 18 Mar 2016 13:13:05 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id 71si36718wmp.0.2016.03.18.13.13.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 13:13:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LzJvV-1Zm8nJ3nU1-014W3A; Fri, 18 Mar
 2016 21:13:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: comedi: drivers: amplc_pci230: Convert macros to static inline functions
Date: Fri, 18 Mar 2016 21:13:04 +0100
Message-ID: <5409630.80pkvU6136@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1e269638fb21f156d5f9d2c6af2a6551bb50a2c3.1458330202.git.bhaktipriya96@gmail.com>
References: <cover.1458330202.git.bhaktipriya96@gmail.com> <1e269638fb21f156d5f9d2c6af2a6551bb50a2c3.1458330202.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:F4s20hWgoTE0OKxh7A/BfDi4CZhB/Q020wOlfZHQWeWbfSdZ47/
 jlO9x95Bi0sIGRHmwG7NgFseHcQwbBci/a3G0kPXpe6+K6tczcjrOrFTwafbhtaelvkshhj
 WZwIilJNf2W0ipFp/yKnIlgqryxLuH7DU98IB0C7axkDYVvwVof8i71DTqxG6Ry9kZiW9LZ
 sk2FUczJgSnBwaxrVhsJQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:CcBi9D6e4Ck=:ZHYa44a9DIIAVbKRZOGr2s
 ueL7mhxXiTF/a05CMhM1WJXuO4aYstfzsbLkaYYYlfaO+wTYbujgTe98qasedCRgMWGwR0HX1
 HcZAANYKmkJlcqUBpvz1tOruhoeCNHHVPa7x9LzDiGpnGOKMAQVubt/yYXMqbG8WCL5ihIvTg
 yptau8VeDb7Te3pUGgJO5lk1wWXgDTYvF000GHlRosEz4kefYCm87pYA4b/V3OVzJNp5646Ji
 uNwKFM1A4xYVmc8/Tz3LpNPPJ4ySYBzTLosvBfq7McmfYSCDQBjunRr8D9wymVDcmb4VJOs7Q
 Hf0Qw4dx6kbg5jTZTapJ1kVxwhftH5oVjr6bh4gVf28EAiXqntmI/1ve1cOvg7DPgRVlwlvP6
 Keq+Ted2a/zm2H5ANz+/P/GWBbVnijYOXeHwl76yKcEK2hI91kIX7DlyIpFwhqiGFDDT8q5z3
 UoMJ0jueuzW5Qiu39JUA+Hf3+kKwZsYmTCA8kRP/KNSFrpPUYu8GAc/7uUF5AeypM80fzGow4
 MvHo9ZT6pe3SWh1zm01GbpbGSPS3SpsMGsX4+zfLhIbXtCsjKVNx+3J/iK1Orf5eL7pDmFP95
 onKo5cQckaSCsdPebFQieNeg+g/XlUDCFJLDHH6bSQV8wBI9y1IoOdz0hk+Ev1z9t04PkaQhi
 lRyCmf/05xxhUPbCk0z4IdOz3Pr5mjnaITZeYPJQmYU4hYYvzJQXeVZRpsBdYtDlwB86dx4xf
 k9mhqR+6jldGYIOd

On Saturday 19 March 2016 01:16:32 Bhaktipriya Shridhar wrote:
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index 907c39c..051787e 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> @@ -370,7 +370,9 @@
>  #define CLK_OUTNM1	6	/* output of channel-1 modulo total */
>  #define CLK_EXT		7	/* external clock */
>  /* Macro to construct clock input configuration register value. */
> -#define CLK_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +static inline unsigned int CLK_CONFIG(unsigned int chan, unsigned int src) {
> +	return ((((chan) & 3) << 3) | ((src) & 7));
> +}

We often use macros for cases like this, as this really just puts some bits
in a particular position.

With the conversion above, you should remove the extra () around the arguments.

>  /*
> @@ -687,7 +691,7 @@ static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
>  	/* Determine clock source and count. */
>  	clk_src = pci230_choose_clk_count(ns, &count, flags);
>  	/* Program clock source. */
> -	outb(CLK_CONFIG(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
> +	outb(clk_config(ct, clk_src), dev->iobase + PCI230_ZCLK_SCE);
>  	/* Set initial count. */
>  	if (count >= 65536)
>  		count = 0;

This won't work: you have changed the user from uppercase to lowercase, but not
the definition. The change is ok, but you have to do it consistently.

It looks like you did not build-test this correctly, otherwise you would have
run into the problem.

I also see that every single user of this macro passes the argument into
the outb() function, with (dev->iobase + ...) as the address. I would
suggest merging the two calls into one when you convert it, and do

static inline void pci230_clk_config(struct comedi_device *dev, unsigned int reg,
				      unsigned int chan, unsigned int src)
{
	outb(((chan & 3) << 3) | (src & 7), dev->iobase + reg);
}

which lets the caller above get simplified to

	pci230_clk_config(dev, PCI230_ZCLK_SCE, ct, clk_src);

	Arnd

