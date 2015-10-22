X-GM-THRID: 6208409681994448896
X-Received: by 10.180.9.104 with SMTP id y8mr8168219wia.7.1445510295625;
        Thu, 22 Oct 2015 03:38:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.203 with SMTP id 72ls312065lfr.24.gmail; Thu, 22 Oct
 2015 03:38:15 -0700 (PDT)
X-Received: by 10.112.132.10 with SMTP id oq10mr3438589lbb.1.1445510295011;
        Thu, 22 Oct 2015 03:38:15 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id cm6si98378wib.1.2015.10.22.03.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 03:38:14 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0M3Sim-1afwN40mvo-00r0kJ; Thu, 22 Oct
 2015 12:38:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] ide: Replace timeval with ktime_t
Date: Thu, 22 Oct 2015 12:38:13 +0200
Message-ID: <6283563.jJXPJxPvGx@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151022100014.GA13736@amitoj-Inspiron-3542>
References: <20151022100014.GA13736@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:h0USrzpIKSUtMkwUPDxysT5HVwWlIaJn3kregtKZ1Ogd+x7rp+r
 5bJIqW3EFjtTfe5VXpXKrJw8b6vt0ykcdBpyl8gGolBndnntDIOooaHYBpKHjli9Zl+MVr+
 sf01v8gkoTm9LI5F+3QLHvjgt1d6gdAjIKUbn5I9FFWZnHGysZzF83UQKRY5Y4eQmfm2vUY
 tf0/P4w+zM4ZT6VigECRQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:3tTeLml+iPE=:jhu63+EtZeSQ8Q7LVgMdQC
 4yUGgXR5rSce3D2PKO1ofeUnXat6u1SzqiDhyhzV6RF+wBWPyidqQJHZkMre1PSn2w369tF4E
 yh0fEf3SwOUY4FGGGiA9tikvdT+2fsJtVq8vMg2Wz8R+vCVC7tc580USQJTuSIuz8YbzaJYKc
 Rc7vyTr3zpHseUfULAK3pBx/7YtHBuBTVKXkIUdCdOycOlaqxFmVOz4oSS1OdpuKu/V9QsIAt
 pxcFJr8uQ0TlAH4z1Li1Ps+LwRfV9gjg/TNgSDAn+zSjHCLxU4ikCQPyvp38fPU1qEo9y/f1x
 g7zF6feFXS+UQiDSoJFKR5RvBwToVNA/vOV1rv9Bec6ICyBQDdGtijQmeWSuhkooZCQcFfDaV
 /4wSQvVExXJMzYGoEtEWvEXTwxIdGCpJRAMywq9hZicuSIYU+C6L1SlxnlTpCEV1pkEe4JlEg
 0WWLokqYLkWLy69da/9QY/7u43o6HaLkYdQy6SN/3HpEZX1bDS7m1sjnyFJLZNw8BANQjBMBQ
 qRzsEsaaHjZtKnVlRoqtHRUrd/rmn9gU3cp1UKbiTwWDHZNu16rrL9zjKIhB75r5Fh5gTbDc/
 6w70d7K9qLO06Tagk7un3xvp7LS4ymH0XWD/mIfnzw6qrEEy/bbK7Ad3tgptXGb2e5kd0rA9h
 rI3IwX7Aa8rsfdlZBkqBeX5cT4g73Du4P7ac3cqyGgtLza7H8yydJy6OnLHNr+Ybq5L+mdOus
 2cAQs+NO7sIttK+x

On Thursday 22 October 2015 15:30:14 Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038 by replacing it with
> ktime_t. 
> 
> This patch changes do_gettimeofday() to ktime_get() because
> ktime_get() returns a ktime_t while do_gettimeofday() returns struct
> timeval.
> 
> This patch also uses ktime_us_delta() to get the elapsed time.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Very good,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

In the subject line, I would like to see the name of the driver you
are patching, like '[PATCH] ide: pdc202xx: replace timeval with ktime_t'.

Please always add y2038@lists.linaro.org to Cc with these patches. If
you want to send more of the same, you can also subscribe to the list
at https://lists.linaro.org/mailman/listinfo/y2038.

As the patch looks good, please send it again with the ide maintainers
on Cc. 

	Arnd

