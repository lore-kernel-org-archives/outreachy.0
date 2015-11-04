X-GM-THRID: 6210359704363728896
X-Received: by 10.28.11.65 with SMTP id 62mr4074180wml.6.1446596232219;
        Tue, 03 Nov 2015 16:17:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.198 with SMTP id x189ls81916lfd.51.gmail; Tue, 03 Nov
 2015 16:17:11 -0800 (PST)
X-Received: by 10.112.138.66 with SMTP id qo2mr6233194lbb.2.1446596231534;
        Tue, 03 Nov 2015 16:17:11 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id l1si728511wmb.1.2015.11.03.16.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 16:17:11 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MYNd3-1ZxsWd2lBR-00V4ts; Wed, 04 Nov
 2015 01:17:10 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 3/5] fs: nfsd: Replace time_t with u32 in nfsd4_grace
Date: Wed, 04 Nov 2015 01:17:09 +0100
Message-ID: <5919340.GhJnFQNPk1@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <450ff5ca919b9c63b57d00d29f41024624c4cbed.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <450ff5ca919b9c63b57d00d29f41024624c4cbed.1445960986.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ji3Xlj2pNJY++wy089/kGUbDwbTCTC8gsHWNXOXZ1ZIFFwTQYDM
 CR3SdcyQz7j75v3ipv7kWyBnwbDO8uIJCq7yGF8fArg9fqelJoAdef2/YLKsMHvcbDFBk1C
 QAMAScVc8SEHQw2u7V8cJN7sCN/KZLBDUDhC0ZUitwg+7es7XgIKcb9Fb1+UQHP8vRm11qt
 K/CupCuqL3K5/QegnxwxQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:6uMZ80uVxuk=:M/sUfQ2/ImCzxXh2/gY20B
 O9kibzAS/PDKDeQxVfnNMHqueWwRzUsP6CHtbif4v2o1ZNEAA6GXSdZk0fGoS91WT5gplrS7C
 Qbd710iVmxn1v9JP5Irf5d6ANAxz9OLu3aqzpAIHe7RW+WosTkPMRLfNvEeMUx5pc5f2iV/9r
 tuGpcMj99LWxqjQ+F8l7liVSWCP0QKX6giwMMxzFb2bDp8JdsM00Yh193rn2eYyGijLYbim8d
 uzOj15417DOm9ZXx3iHlOW4drwjOmRf0FKlI4yKAa2IDjk9zU2YEklc7hRGUYNqiG/YLlSgKb
 VEn8JY+jxmFKJkHyTNIgPWxnezMWXc3Q6suzMAY5HTaVVQw40wHWiLeewIthbPJtpHrB/Daf5
 YbBO9iGX7M4euMSFX66E05wlF7zT0aH2XSVnV/p2PLTGRWDnOTOXVNT7qL62mepLFiYFnh74Q
 ubswa+XSGIbIn2zylstqg3SP1ZaimBD3ahXqOxYkRx4M4/d/oZ+M0dXs4ehO8G8o+orUhxCcS
 VudM0LyyRVK6ZR0nr3r2Sy6H6yc1LQTOyYkSnxix7O8Nke/OWQ7lj0XKhv5vbC9yLz9EshG5T
 Vmv9ULxGNI0LannuhbM844t5AqNB1a90dVic4zuMAvK2gEcAcGgauQQf3SLLrY7N0I5JBG6yg
 ngpNwrqJKbdflH8H2UhSOxjDrfYrOX5VZ/dKalQfIroQSPfylgzdljN5qDX5ksstHSNqBb5Yk
 E0EG23RoAzMObu9C

On Tuesday 27 October 2015 09:10:45 Ksenija Stanojevic wrote:
> Replace time_t type and get_seconds function which are not y2038 safe on
> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
> time and therefore will not cause overflow.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

I think this patch needs to be folded into the patch that changes the
type for nfsd4_lease, as mentioned there.

>  	locks_start_grace(net, &nn->nfsd4_manager);
>  	nfsd4_client_tracking_init(net);
> -	printk(KERN_INFO "NFSD: starting %ld-second grace period (net %p)\n",
> +	printk(KERN_INFO "NFSD: starting %x-second grace period (net %p)\n",
>  	       nn->nfsd4_grace, net);
>  	queue_delayed_work(laundry_wq, &nn->laundromat_work, nn->nfsd4_grace * HZ);

>  
> -	return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%ld\n", *time);
> +	return scnprintf(buf, (u32)SIMPLE_TRANSACTION_LIMIT, "%x\n", *time);
>  }
>  
>  static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t size,
> 

You change the format string to print the time as hexadecimal. Is that
intentional? If there is a reason for doing it, explain it in the changelog,
otherwise leave it as "%d".

The cast of SIMPLE_TRANSACTION_LIMIT to u32 looks misplaced as well.

	Arnd

