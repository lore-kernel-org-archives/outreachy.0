X-GM-THRID: 6251802816159940608
X-Received: by 10.194.85.169 with SMTP id i9mr2340623wjz.4.1455612366863;
        Tue, 16 Feb 2016 00:46:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.59.86 with SMTP id i83ls741063wma.27.canary; Tue, 16 Feb
 2016 00:46:06 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr1749397wmt.6.1455612366054;
        Tue, 16 Feb 2016 00:46:06 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id w10si525413wmw.3.2016.02.16.00.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:46:05 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lawjh-1a7VnY0ivh-00kfzf; Tue, 16 Feb
 2016 09:46:05 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: wilc1000: host_interface: replace semaphores with mutexes
Date: Tue, 16 Feb 2016 09:46:04 +0100
Message-ID: <2441828.Ytg91CRYb7@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
References: <cover.1455609607.git.amsfield22@gmail.com> <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:dFn7ZZgr+hKisoGDKs33CT/Yx7wB40+cccGc5Wo1RxfD5zsxSuA
 FJAhnawoXxwiWalCYBIxFqtzVM+psCpN4QvE20ObRumkkha1bGP1Gr/X0xU7yM9tTBo0VWJ
 OxKUPLni2Z640Hxjp/vsgdsQs4U/VQY9JHs0+rWta9re07UoruDgvq9H7KhRvKvKuslEy40
 zp30t5GT0w874jvtlYJKw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ZmXFC6yk/lE=:vqudg7afTae6bTZSeeVue2
 FWj+3ZA9O27S4zd1RQbTq0WGacF034aqyC1aXmOz8RyNzVWeNVwu/H5cY+Oyb3OsaJIfNNFYa
 1uR8AEX1UrnhVItgicQwaXlWigLRqNE8PxPiQ4y0apRRVHVRuPdeHPxe3bqJgCgR45Rc63Y7q
 2VXMDO0uiYXxJeWb1kmlCvQg46rv92scbxCYD3atJ3Bub4yR1Kr0045wC/ku7IGwZaGrCMiS5
 l+GSwmmNyv1C/JmHiPH+n5JyUk0zKnL8k6WFQ5BMHpLU0CRU8EyK19XXIh7YUFoboj8CGiSbV
 llE1Y7EkbNjqWjFNOKyUiknX2Bgf79letITznD679ZwoO25HS3Fb/q5YX2kFN09sHLPMDFMmm
 H3+UsSYxtInxJz2IDfjfkNNwWl9QOd7/swPpOKf3RuFSd/0Up2Kv90FLjcgOVQBbTlaGvdLhI
 qAnWgBYzzGyrLFiyZ7T7RN0SXMt8NjnzKvKKGPPj2bB6CTuDZEMunhwj/IqpSYlk0lx1TiEcR
 45v4vWSGkM6rbt+X/C/ZyglCTvQs1Qf5bgLElk3bljVzlvOSfZiIwrughzUmMuvjgakAsX8Vc
 kfqL/DZYJyDnqevr+y+An072V2FXCBs4ZbA9aUmnCNvZv+biLax2mGGcFe/EGOYvLdlzNjt+5
 b1aSo2QWG4q/vAaCJGnA1tceIg+LtWV0nZ9UQag77zL9QjykXubXrdbAzTCppITWSS6XQ8ql8
 YQEMOvs1q9KRGbZe

On Tuesday 16 February 2016 00:31:42 Alison Schofield wrote:
> Replace semaphores with mutexes in the host_interface driver.
> 
> This is a safe performance improvement because the usage model
> meets the principle of ownership for mutexes: the thread that
> locks is the same thread that unlocks.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Good stuff in general, but it's slightly hard to review because you do
all at once. This might be more obvious if you did one patch per
semaphore.

Also, some of them look wrong:

>  
>  	if (clients_count == 0)	{
> -		sema_init(&hif_sema_thread, 0);
> -		sema_init(&hif_sema_driver, 0);
> -		sema_init(&hif_sema_deinit, 1);
> +		mutex_init(&hif_mutex_thread);
> +		mutex_init(&hif_mutex_driver);
> +		mutex_init(&hif_mutex_deinit);
>  	}
>  
> -	sema_init(&hif_drv->sem_test_key_block, 0);
> -	sema_init(&hif_drv->sem_test_disconn_block, 0);
> -	sema_init(&hif_drv->sem_get_rssi, 0);
> -	sema_init(&hif_drv->sem_inactive_time, 0);
> +	mutex_init(&hif_drv->mutex_wep_key);
> +	mutex_init(&hif_drv->mutex_disconnect);
> +	mutex_init(&hif_drv->mutex_get_rssi);
> +	mutex_init(&hif_drv->mutex_inactive_time);

Note that some of these are initialized to zero (locked), others are
initialized to one (unlocked). When you have a semaphore that starts
out as locked, you need to be extra careful to ensure the lock/unlock
comes in pairs, as it equates a

	mutex_init(&lock);
	mutex_lock(&lock);

and some of them might be unlocked elsewhere first. Looking at
how some of these are used, I think there are some that get
released in hostIFthread(), which is a kthread and taken in
a function waiting for the kthread. Those should be converted
to wait_for_completion() rather than a mutex.

	Arnd

