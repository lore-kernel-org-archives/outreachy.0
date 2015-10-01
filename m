X-GM-THRID: 6200616774953598976
X-Received: by 10.129.132.1 with SMTP id u1mr7312509ywf.58.1443693876645;
        Thu, 01 Oct 2015 03:04:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.84 with SMTP id g20ls191890igq.36.gmail; Thu, 01 Oct
 2015 03:04:36 -0700 (PDT)
X-Received: by 10.66.194.136 with SMTP id hw8mr7117827pac.39.1443693876367;
        Thu, 01 Oct 2015 03:04:36 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id w5si811051pbt.1.2015.10.01.03.04.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 03:04:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0M9LFi-1ZngKK1TmY-00Cl6h; Thu, 01 Oct
 2015 12:04:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove unused code
Date: Thu, 01 Oct 2015 12:04:33 +0200
Message-ID: <1706291.yNGMf0Mpo0@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443693585-10537-1-git-send-email-shraddha.6596@gmail.com>
References: <1443693585-10537-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:OR8aJesVkwR3NnQLLCe7RQRb0t4j56wDn/tjG7k+Qr+flNH85/D
 V5nZ62wFdWyzViRXEdQoVzZTMuOz5fmpI+Q6yQp73WdO67OC0YgQoZKjTGOpjl5heuoKQpU
 jUgwAWGTClx+sVJvjzXXI12oHXioUW4zGAY1Jf20/wo8/kZeipd2mCbZniW6cdvxxun3ayO
 H8ulGZjqwWSe1d89pujjA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:3pPbdwcZGjI=:qbl9Nnjudm0T2RYuvFOsav
 MiMG5gKVNwGSBDZizsWhBgN34tkcDc0OpxBMNQwJU2bdfh1QYs7W2hu1AwgLh2ZR7EcodYaWI
 +LfBiaSppDojf0rX9LiXQ+RR7veinmQLHNP3EI5wXec8rXMdKpbo6vur9ks+VKxyHkgr1gpR0
 1+d6SC41ut9Mim7yMsfdqBnjV4tNZ2N1Wc2y4eEooXOc15Ezqb0D8Bsi6u7shxVuv/JKana0L
 Da3mTcTDEt/b/i96Ds7hmZwFsQeu1g8yTKxpTfpjqKj4kezTiwD5z+jIYV04uwy2CX1lIGyDI
 Yrw49P66WZSHVD6a3r4ksIHBJVJx4pt7gJLlOBFxnJV0AYEp2GLAfVLoVWGyJa1LgISiECdqK
 ZZjyP9PO/JnTeUpg9kZT2uTD6g5027GKMfnfysqM655118CurUXa5HlvL6OTVQgS9p/jl9J6i
 1uwNZKwmC18g09wWIIeLQqe4hfcpKX8T96NmHjGo1V5GRrY7M8FjBWvXaCnpgWWsoi/zVqlq7
 ADRPsdwv0OjT70Z3bzOR8xZVZE/AzK8679SQWwMH8trA1UHybUdBJ1GERrwIQRzRB924aAjHs
 3AkfEq2UoQ7f5fioEC6zP+4ZwstvYKAzo85xkiqKqVgRQbTHLKQsP+U5oOUXscFLOeb9Rzd3R
 34piJHCahKKlYlHPfk2Sxge5U7Oet1dFUdBrWjgqK2rWEf/ewl9SX+N2ba4QDrdXtnE6yoOGO
 lnTQR8HdrmRNsYX7

On Thursday 01 October 2015 15:29:45 Shraddha Barke wrote:
> 
> -/**
> - * Environment to be used in debugger, contains all tags.
> - */
> -struct lu_env lu_debugging_env;
> -
> -/**
> - * Debugging printer function using printk().
> - */
> -int lu_printk_printer(const struct lu_env *env,
> -                     void *unused, const char *format, ...)
> -{
> -       va_list args;
> -
> -       va_start(args, format);
> -       vprintk(format, args);
> -       va_end(args);
> -       return 0;
> -}
> 

This was already removed from staging-testing on Monday. Please update
your git tree to today's version.

	arnd

