X-GM-THRID: 6210359704363728896
X-Received: by 10.31.3.23 with SMTP id 23mr26502421vkd.13.1446604074306;
        Tue, 03 Nov 2015 18:27:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.85 with SMTP id o82ls235210ioe.67.gmail; Tue, 03 Nov
 2015 18:27:53 -0800 (PST)
X-Received: by 10.68.92.35 with SMTP id cj3mr26356501pbb.11.1446604073949;
        Tue, 03 Nov 2015 18:27:53 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id x8si1193107igb.0.2015.11.03.18.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 18:27:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22c.google.com with SMTP id d200so39840652iod.0
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Nov 2015 18:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=LS2U/gUDDswYPBl0DKo3AP46jtadeKFB74cllf/V9Xo=;
        b=Ak+E4ovpOTUhQWA3JWx0HdtzcMQF2xkcFyKLB8cv3RlTQBqG6x8lrvCge8gtcBFKaR
         S8wz7w/hI18/U4McG4qk54C6z8e4pGJH5wan1RsrHwQqxYS0ZYNKpiaOrU4DltHKLkeV
         L7yfiD9n1uaGpoOBvCXkxroapnz73RwH9T3QjFkuosZuJwY28SFDuzrA/8QR4EFam7Lb
         jfsRq8S8/ukAQjIpvcgAcP6/0IioVPaxplD0Ywb/Q6gQUKKKJlWTrhXk4z4uYIpDkYpT
         UsxO7ztlzLOHU7YLq7qcctE8TUwlrtJ5v3s+8LPcFIKm9qF8iVuo/+Tmdb0RYvkb3xKB
         yU/A==
MIME-Version: 1.0
X-Received: by 10.107.4.83 with SMTP id 80mr449738ioe.150.1446604073812; Tue,
 03 Nov 2015 18:27:53 -0800 (PST)
Received: by 10.107.149.205 with HTTP; Tue, 3 Nov 2015 18:27:53 -0800 (PST)
In-Reply-To: <5919340.GhJnFQNPk1@wuerfel>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
	<450ff5ca919b9c63b57d00d29f41024624c4cbed.1445960986.git.ksenija.stanojevic@gmail.com>
	<5919340.GhJnFQNPk1@wuerfel>
Date: Tue, 3 Nov 2015 18:27:53 -0800
Message-ID: <CAL7P5jJUV_0zRNQwBviCZMPDNtZuHONGL3WU+VX6fvk9MsYifA@mail.gmail.com>
Subject: Re: [Y2038] [PATCH 3/5] fs: nfsd: Replace time_t with u32 in nfsd4_grace
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 3, 2015 at 4:17 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tuesday 27 October 2015 09:10:45 Ksenija Stanojevic wrote:
>> Replace time_t type and get_seconds function which are not y2038 safe on
>> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
>> time and therefore will not cause overflow.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>
> I think this patch needs to be folded into the patch that changes the
> type for nfsd4_lease, as mentioned there.
>
>>       locks_start_grace(net, &nn->nfsd4_manager);
>>       nfsd4_client_tracking_init(net);
>> -     printk(KERN_INFO "NFSD: starting %ld-second grace period (net %p)\=
n",
>> +     printk(KERN_INFO "NFSD: starting %x-second grace period (net %p)\n=
",
>>              nn->nfsd4_grace, net);
>>       queue_delayed_work(laundry_wq, &nn->laundromat_work, nn->nfsd4_gra=
ce * HZ);
>
>>
>> -     return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%ld\n", *time);
>> +     return scnprintf(buf, (u32)SIMPLE_TRANSACTION_LIMIT, "%x\n", *time=
);
>>  }
>>
>>  static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t si=
ze,
>>
>
> You change the format string to print the time as hexadecimal. Is that
> intentional? If there is a reason for doing it, explain it in the changel=
og,
> otherwise leave it as "%d".
>
> The cast of SIMPLE_TRANSACTION_LIMIT to u32 looks misplaced as well.

I got following warnings with original code and I was trying to fix them:
include/linux/fs.h:2908:61: warning: format =E2=80=98%ld=E2=80=99 expects a=
rgument of
type =E2=80=98long int=E2=80=99, but argument 4 has type =E2=80=98u32=E2=80=
=99 [-Wformat=3D]
 #define SIMPLE_TRANSACTION_LIMIT (PAGE_SIZE - sizeof(struct
simple_transaction_argresp))
                                                             ^
fs/nfsd/nfsctl.c:963:24: note: in expansion of macro =E2=80=98SIMPLE_TRANSA=
CTION_LIMIT=E2=80=99
  return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%ld\n", *time);

but I see now that changing %ld to %d works as well.

Thanks,
Ksenija

