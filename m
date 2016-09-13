X-GM-THRID: 6329721618764398592
X-Received: by 10.25.141.85 with SMTP id p82mr3340133lfd.10.1473753533590;
        Tue, 13 Sep 2016 00:58:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.16 with SMTP id u16ls160985wma.12.gmail; Tue, 13 Sep
 2016 00:58:53 -0700 (PDT)
X-Received: by 10.28.208.134 with SMTP id h128mr2438404wmg.1.1473753533107;
        Tue, 13 Sep 2016 00:58:53 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id v132si309628wmf.1.2016.09.13.00.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:58:53 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MDgeU-1bodDZ2Ffa-00HB4r; Tue, 13 Sep
 2016 09:58:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Anchal Jain <anchalj109@gmail.com>, gregkh@linuxfoundation.org, lidza.louina@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c: usleep_range is preferred over udelay
Date: Tue, 13 Sep 2016 09:58:50 +0200
Message-ID: <3010989.B07XkbaqhU@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <20160913075211.GA6959@life-desktop>
References: <20160913075211.GA6959@life-desktop>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:c6vdfN03k2mlQsI1Qk8Ur9jsK/JOS2Ap4f+BQ1mO+0Ik1Wia6J7
 uYJbUAkA1fDfiILE1KCpXnHF9GFJe/UTw3L6VWXWTLJXu0UzbsPpbrXncpIBnY3Ox7W69QS
 j6HFCFS+DcMDyPK31VSIslkFnQwX0UeKzZtZsHFu7Tvs3wepYo2k2HuxJWUiU3PVI44Qu8J
 r9x1iPuC8gdPM7e6p3WXA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:neBfo1I277s=:4j3ivK4Fedjt4hbLj1sU6x
 Swe5RutsHYQNhPrh5OXFF1msjf1xBHlSWd9LqW/6oSfweTO1eJtbPidhVvAHtxKua9+4ykfV8
 ekf/ObN7+sTg0hw0gS7DGcNJtRSLSJ/oE93mxC0Cxpszfy04iETcdqvp91W6etNsZaNu36uLq
 5JXE21IyvSGRv9dLh26c9JPTepnO07PmAr3tZeEJiXGk9kOptwfbzhw4nriIsZ6gQ8LUqJr1n
 WJTcMDC4v6cs25o4EQWXPJZtI99sbjrrWKNDO5XxhjUQ80LkhBOkI6OM19nn0ql9YhntWQYfU
 RBCd9YA8GMpuqkUEV6hY43jLQktSLONDLK5Alkd13OHQLadM9EDh3qxeOz/z95hsEfrehMEIc
 JVaHtTzmwU6bZgnrFT+3sRl2tR4R5LKcd9qZSvmSvv+qCZlyLuoUxzs+1reRAxGUqfEosO37r
 XMeB3tFx56HrGKbEuzTnkdhlnejAy8Q0Y7/7exJz74p/jGfGxyKxlL5LkcMcJtb9jLwrWxtWp
 821Tgq/dZLgHwFAg3NISoJs6CDzgxQLDwAZUs5dIujLy7M86dF+A+c5YzyL66qkKt3BjVITN4
 3iyfLk9FSlR41UqAF32ltSmRybnmLnUylkK7L2AKh1ndSpBnP4qAYxzQO5LxsV/lWmkP5BeUx
 z3QMJkarSlbW3XtDTCkUPiC5CpalGvE6GjxVxbPZws2VF0/bHY/h1iTJivzRWhXBRwEOsyTr/
 7/5uz+cuwbm6dPgi

On Tuesday, September 13, 2016 1:22:26 PM CEST Anchal Jain wrote:
> According to Documentation/timers/timers-howto.txt"
> udelay() is only called once from a place where sleeping is allowed.
> We can replace it with a call to usleep_range()
> with a reasonable upper limit.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
>  drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
>  2 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 4e1e0dc6..1b07255 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
>  	writeb(out, &ch->ch_cls_uart->mcr);
>  
>  	/* Give time for the UART to actually drop the signals */
> -	udelay(10);
> +	usleep_range(10, 20);
>  }
>  

This gets called from cls_copy_data_from_queue_to_uart() under a spinlock.

> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index 242f82f..22f7684 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  
>  	/* Get WILC header */
>  	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
> +<<<<<<< HEAD
>  	/*
>  	 * The packet offset field contain info about what type of management
>  	 * the frame we are dealing with and ack status
> +=======

Clearly doesn't belong into the patch.

	Arnd

