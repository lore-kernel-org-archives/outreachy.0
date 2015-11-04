X-GM-THRID: 6210537290712743936
X-Received: by 10.112.144.105 with SMTP id sl9mr853392lbb.3.1446676002414;
        Wed, 04 Nov 2015 14:26:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.92.138 with SMTP id q132ls436458wmb.25.gmail; Wed, 04 Nov
 2015 14:26:41 -0800 (PST)
X-Received: by 10.28.216.206 with SMTP id p197mr1127571wmg.3.1446676001793;
        Wed, 04 Nov 2015 14:26:41 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id l1si193500wmb.3.2015.11.04.14.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 14:26:41 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0Lsi5p-1aa9VZ3fYX-012L63; Wed, 04 Nov
 2015 23:26:40 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 1/2] scsi: 3w-9xxx: Remove use of struct timeval
Date: Wed, 04 Nov 2015 23:26:39 +0100
Message-ID: <5302705.jCLlGngFsR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <ec04096c9bb3827a9f51f8fd43788b75db0a2198.1446003130.git.amitoj1606@gmail.com>
References: <cover.1446003130.git.amitoj1606@gmail.com> <ec04096c9bb3827a9f51f8fd43788b75db0a2198.1446003130.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:vcfCHydBNkLPwgobzEAvAtZBdzlKodRYE7Bkk4UATmSeWBDcuxl
 +WUsHekWZFvOEh0uD+uwSRPVST6lHT20faidHEENyd93LS/u8DnwcrerrYoLN13T9QtfADh
 u9MEmWdvUyTzEZBnP2ULCYUet3DXSM32ZOS97U38d6yZnq4x6ml/wu6tbkbAiXnHO8W+fXX
 Y6mcYFhQEPl2z0Ol6RMbw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Rn+RO/al2Go=:VnPrvKorkh0zZOI04Xmie8
 cPSCPDa+Vytz4NrKHjSD7I6mn3qld65vxBPZISf9GYWAsedWwjs64WtaXYwmAs2INi1JZk8AY
 I0t08mNHLxJQPZSxZusPut2mbZ6OgR/WByouAhhtMnnXRWK1i1zx7sRnsFJclSWn1TbjuCdT5
 0p+rvKAq4/phrzW3cgLBYCeWcVeEy4PAM/Rzh+vAFJbE1eVpUk9HxEtrWv1F0Pp9flUy1l0OI
 IGOvd4ZbVxOGREX3ANixyfyPv7Pn9rVIW7cgikCyXYC5wL0Ol7Ek7h9eotLLE0FUYAaoSrLwH
 AksISsR5yBhHJIWlAGtD2Z8RjRaDjUZv7ZbZ/9Nqq06s7T8iE9ZvjxZqbC79mDIx6ZuSrW9JH
 y5aHjXZngjdI+DpILk6rfRbX+2PK2NCu2aywmluRuOCRhngKEDtKatHsogY9vKEplWuiLfjh8
 XOYEi4bnQ51l/lLH155cOPFBu1z+/lTcJRCcMs2Ub07yp5rMnGSDrcsY0N9IyOIVaLXgvKg+K
 90Dduohba5o4KAyal1LGUVLX7WeG7mCNHkW4hjxiOet12AcigtT5MEYSWNIHLA3tN99SI82ht
 Tw+/GrNHZ4goPcVfZzTvpPl9TEfv6M0yabbz6FtmPvwEifQot/IG7Xg2KGaEFexyxbAb0Q3bS
 OGRilkqa/yBMg0g0M2t6/sOUIi5GqCaOTD36aXXPtApJem3vEPzm/buuPs6TXiEFSOX5wt0gk
 T8676JWUxji+gPlg

On Wednesday 28 October 2015 09:10:58 Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038.
> 
> This patch uses ktime_get() instead of do_gettimeofday() which returns
> ktime_t type.
> 
> This patch also uses ktime_to_ms() to find current time in
> milliseconds.

It looks like you are doing two or three things in this patch, so it
would be better to send multiple patches. This driver is a little harder
to do than some of the other 'simple' ones I have listed in my table.

> @@ -384,8 +383,8 @@ static void twa_aen_queue_event(TW_Device_Extension *tw_dev, TW_Command_Apache_H
>  	memset(event, 0, sizeof(TW_Event));
>  
>  	event->severity = TW_SEV_OUT(header->status_block.severity__reserved);
> -	do_gettimeofday(&time);
> -	local_time = (u32)(time.tv_sec - (sys_tz.tz_minuteswest * 60));
> +	local_time = (u32)(ktime_get_real_seconds() -
> +						(sys_tz.tz_minuteswest * 60));
>  	event->time_stamp_sec = local_time;
>  	event->aen_code = aen;
>  	event->retrieved = TW_AEN_NOT_RETRIEVED;

Unlike what you write in the description, you use ktime_get_real_seconds()
rather than ktime_get().

time_stamp_sec is limited to 32 bits, and you handle this correctly, but
you do not describe in the changelog what causes the limitation and
what this means for the overflow.

> @@ -491,8 +489,8 @@ static void twa_aen_sync_time(TW_Device_Extension *tw_dev, int request_id)
>  
>  	/* Convert system time in UTC to local time seconds since last 
>             Sunday 12:00AM */
> -	do_gettimeofday(&utc);
> -	local_time = (u32)(utc.tv_sec - (sys_tz.tz_minuteswest * 60));
> +	local_time = (u32)(ktime_get_real_seconds() -
> +						(sys_tz.tz_minuteswest * 60));
>  	schedulertime = local_time - (3 * 86400);
>  	schedulertime = cpu_to_le32(schedulertime % 604800);

I think here you have the math wrong for the case that the 'u32' overflows.
Either explain why that is harmless (if so), or use do_div() to get the
modulo from the 64-bit seconds count.

> @@ -832,8 +829,7 @@ static long twa_chrdev_ioctl(struct file *file, unsigned int cmd, unsigned long
>  		break;
>  	case TW_IOCTL_GET_LOCK:
>  		tw_lock = (TW_Lock *)tw_ioctl->data_buffer;
> -		do_gettimeofday(&current_time);
> -		current_time_ms = (current_time.tv_sec * 1000) + (current_time.tv_usec / 1000);
> +		current_time_ms = ktime_to_ms(ktime_get());
>  
>  		if ((tw_lock->force_flag == 1) || (tw_dev->ioctl_sem_lock == 0) || (current_time_ms >= tw_dev->ioctl_msec)) {
>  			tw_dev->ioctl_sem_lock = 1;
> 

The conversion looks good, but it seems there is a preexisting bug that
happens every time the current_time_ms variable overflows, so the
current time ends up being less than ioctl_msec. You could try to fix
this using the time_before() function, when converting all the ms variables
into 'unsigned long'.

	Arnd

