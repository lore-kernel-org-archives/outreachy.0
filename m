X-GM-THRID: 6210868560555671552
X-Received: by 10.112.144.105 with SMTP id sl9mr923503lbb.3.1446154836616;
        Thu, 29 Oct 2015 14:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.13 with SMTP id 13ls432842wmr.23.canary; Thu, 29 Oct
 2015 14:40:36 -0700 (PDT)
X-Received: by 10.28.170.75 with SMTP id t72mr1208728wme.5.1446154836315;
        Thu, 29 Oct 2015 14:40:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id l1si183161wmb.3.2015.10.29.14.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 14:40:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MUhql-1a0Xlg2Ljv-00RKp2; Thu, 29 Oct
 2015 22:40:35 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Fix sparse endian warning
Date: Thu, 29 Oct 2015 22:40:34 +0100
Message-ID: <3936694.NLtiS3J4cs@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1446080515-29734-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1446080515-29734-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:fJwWC3pHCmqlkyBQf12HyFl8dN6rc5/bLcdbqLNKsiwUflcDAbW
 JqaJRPYRULIzTkrFqrsYcsKGXdbnwREBFwbO8VDkFhvOQB08fSy632b7gxSFzY2VwcLXrb0
 0hsFJBUGNcpQLUKHaTWFRb0RdAQmSCkwCoY6ZZxsGE7r355XqlzTpMnJfMdfd2SZY6ZNb02
 Dq5qZAsDsxA2v9XyiC/8w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:hh/5nUAaOhY=:PzhbBEFFM/SAdXp5Nj5Zmv
 8Re7PwRHO/0dIrPb9Tn1SxuWA9ypV3OzvGstiMhQv2AZfoJDW+FokiEdT8TkS+SBgL9su+pft
 PUMi5YZllqb8ztJEjimaXjVg2tyHIKYh8jbszzxIYGiWuaaDEC6d9BJl7je3MmACz4yFhl2yn
 ACo7lsZ6/2WalNZFOKhB5moA6vt7BbzINCWI+c+5fWoUr3dn2dx95ABjIUrhO7HpvrPRmNAE4
 mGzfeXwMVNRQZKCetiDD3lzlcuuqPI2dKrSZGjYl7dtDhLTXe59YYt3jswkendwyOC7c9yRxn
 YcNZU43ckwy1B4onxOlpylCB23euV2UImCc/1fncFO1I7MdnxIUQzwO/83hRYUnR+vngwAsjb
 9ocqryD9B9aFVdkFdQmEkX7UmGdbqi8mk57P0EpDQGN7wrT0akQfjPA9Z8TfimE8d1D/JZ8Yh
 HTujgedaOLoqIRgeOoszyYgYf2cXzDVRvO9rCZFgeKgm8FmBWAou3QtWH3HFcq7ECy/fmVpyp
 ZaVtLR7Q+reYst/Dj2Szw5vMIyI3DMOY3d+9ce0OEf84LYSOkeXjEEz4pGcs6FRVLNlptYiOY
 hUgzXbXgYNg1VIWehTBXoJFhvQh0gNDQKrmfa27Ge7Cu5ibfbJbBT3FTD6Dlg/GeYsV1eCSLg
 5Q/ahWvSTZV4G2IP4ZAdH5GNlTyLvIqcqC20td9OfRf5YW+iUdqXhETWivs4uiFOf0xfEoMgM
 6R71Q/7AJOUYzd53

On Wednesday 28 October 2015 18:01:55 Ksenija Stanojevic wrote:
> Fix following sparse warning:
> warning: cast to restricted __le16
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/comedi/drivers/das16.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
> index 056bca9..fd8e0b7 100644
> --- a/drivers/staging/comedi/drivers/das16.c
> +++ b/drivers/staging/comedi/drivers/das16.c
> @@ -801,9 +801,10 @@ static void das16_ai_munge(struct comedi_device *dev,
>         unsigned short *data = array;
>         unsigned int num_samples = comedi_bytes_to_samples(s, num_bytes);
>         unsigned int i;
> +       __le16 *buf = array;
>  
>         for (i = 0; i < num_samples; i++) {
> -               data[i] = le16_to_cpu(data[i]);
> +               data[i] = le16_to_cpu(buf[i]);
>                 if (s->maxdata == 0x0fff)
>                         data[i] >>= 4;
>                 data[i] &= s->maxdata;

The patch looked wrong to me at first because you use the same
pointer for both little-endian and cpu-endian data, but I checked
the function in more detail and think your solution is correct.

However, I think this needs more explanation to why this is a
valid solution here, and it would be good to do the same thing
for the other handful of comedi drivers that provide a 'munge'
callback. Most of them seem to have fixed endianess and use the
same code as this one, but there are some examples that currently
do not do endianess conversion, and it would be good to check if
that is correct. I suspend those only work on little-endian
machines.

	Arnd


