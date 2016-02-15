X-GM-THRID: 6251571233793507328
X-Received: by 10.112.137.102 with SMTP id qh6mr2165379lbb.9.1455568125943;
        Mon, 15 Feb 2016 12:28:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.79 with SMTP id 76ls640449wmo.49.canary; Mon, 15 Feb
 2016 12:28:45 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr1514415wmg.6.1455568125209;
        Mon, 15 Feb 2016 12:28:45 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id w197si671889wmw.3.2016.02.15.12.28.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 12:28:45 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lsc93-1Zq4ZR1kTp-012KwT; Mon, 15 Feb
 2016 21:28:44 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: llite: Remove IS_ERR test
Date: Mon, 15 Feb 2016 21:28:43 +0100
Message-ID: <2405863.O9LuuHLRW6@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160215172909.GA24050@amitoj-Inspiron-3542>
References: <20160215172909.GA24050@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:3v9X3Zv/qeX4rwH7uyyOLrhbQO6VuSzxYj/dqPr/5DHpIwf/zRp
 M1hyT4/EFxLbEtkuijglS8p+LSqoAQu924fE68XnG4CdhcwiLVYOluytdWI79X3sdYqSiJO
 r5BWb8/pF+CVRfYWmfjNzwb7dEFbbbrwhJvIjbQ8mDWEXDWZbDyYcdWwq3JzXSajWPFfA0T
 DWRcCyBniYUXysWGh5PPg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MTLK6HhlrSE=:1Y5moGqQprRBy1DucJcDjR
 soW19uU7g9IVVcvXBF9oipT4JIWmIUAVQjJdde5mO07yscHwDlTRCBWkSnnqp9/hN1q6/QIQP
 XUdTNq/St/yq6jVVcHSC8eMFE+Xasxzwe+QxJAEUxb6TyQ9bPMmuNm1u6lv6Z4ZGMw1CLOe7V
 PsjcFlQp0L6VzZ6QP+fz7nKm0bbXJ6qtjdPpIw8MLMkDORdYGZGJ2eawh2TzISMLvwrZoYMpq
 LQcwUBIQDbnoC9zTOxAJuU6Njqd6BGWlEkKiuGG/iLb5JteQXjUs+AP07hT0i/hShvdc3905L
 tw5LV4EAAxEEid3jPtlRgN48zAK0AcoU5ad0sqK4z/5B9j3agqmVj/X1lFolVhQunayQtCWAU
 8iC8Ie9hUr6yWIXUbasBRY6FD6dSvijo5d+J9M1DDSz+xoIoyCuvfPTcMtio5TZpUWDAP9Uvy
 cVjjtN1IwBL40hqrknkp7+VDimBuUM3LzjmzZqNeaG5EjVrzwq0amk7qV47QwaLP0lRYJY63H
 KE1NEaZHcAFLNU7x6HJvPkmn/OVPpjXM/e4fPhIlb+DWXOreJtduSQ1rtDGhpHUOlmkfNjFBS
 OVjS9d/rnmifBDWq813ThPUzSoS51A6OXgXo9+G6KgAStsCxQEqXEwhjUvPTwSTkrB9XVFULB
 UlGpJOEj497si4szmDDojuvVapLxlvWLyRhCFAxuK/kuLMuee9oGFSes9Zh0kI/nWOcoaPhCx
 PN+Fk7YYmrYBTeb4

On Monday 15 February 2016 22:59:10 Amitoj Kaur Chawla wrote:
> Remove IS_ERR tests as ll_iget() function can return a ERR_PTR.

I think you mean "can not return ERR_PTR", right?

> This patch also removes checkpatch warnings:
> Comparison to NULL could be written "!root"
> Comparison to NULL could be written "!inode"
> 
> Additionally, reinitialising root and inode to NULL has been removed
> since they have already been tested for the same.
> 
> Lastly, in the first case, the goto has been removed since iput(root)
> will return nothing for a NULL pointer.
> 

I don't understand the removal of the goto. Doesn't it break
the error handling if we continue without a root inode?

Otherwise looks good. I have checked that the return code handling
is correct and it becomes much more intuitive this way.

	Arnd

