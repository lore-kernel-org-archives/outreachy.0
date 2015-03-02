X-GM-THRID: 5891768188928
X-Received: by 10.180.89.194 with SMTP id bq2mr2138779wib.4.1425298411466;
        Mon, 02 Mar 2015 04:13:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls426542lac.73.gmail; Mon, 02 Mar
 2015 04:13:30 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr3670062lbb.24.1425298410835;
        Mon, 02 Mar 2015 04:13:30 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id ta1si654957wic.1.2015.03.02.04.13.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 04:13:30 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MD2VX-1YKSjK284R-009gBO; Mon, 02 Mar
 2015 13:13:29 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Replace kref_put with kref_sub in function
Date: Mon, 02 Mar 2015 13:13:29 +0100
Message-ID: <3242339.DZ3W2sgIGv@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150302120655.GA29851@akanksha>
References: <20150302120655.GA29851@akanksha>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:NxLzSzsfNKkxSBNDvUF/e6hOfvYuFoYb3CRW2NJZJYfTsZa767b
 E50PitPJcUSHuv+mAOaOPurgwaS9D2lG9E95PO/CWtRL/2cjAGOqNsGx44p4fnjS/XEwW2u
 dc52iVsMZXqBCuUuOu9oO5U2QyRI94ZM1G8WgiX9q4AyXzDyKB92nOtdhyBzUtFvjQQbDuP
 ZeWy/wKC5mZtqDqmnjs7g==
X-UI-Out-Filterresults: notjunk:1;

On Monday 02 March 2015 17:36:55 Vatika Harlalka wrote:
> --- a/drivers/staging/comedi/comedi_buf.c
> +++ b/drivers/staging/comedi/comedi_buf.c
> @@ -157,7 +157,7 @@ void comedi_buf_map_get(struct comedi_buf_map *bm)
>  int comedi_buf_map_put(struct comedi_buf_map *bm)
>  {
>         if (bm)
> -               return kref_put(&bm->refcount, comedi_buf_map_kref_release);
> +               return kref_sub(&bm->refcount, 1, comedi_buf_map_kref_release);
>         return 1;
>  }
> 

I don't think this is a helpful change: you should only use kref_sub
if you subtract more than 1 from the reference, otherwise the
kref_put is the right interface already.

	Arnd

