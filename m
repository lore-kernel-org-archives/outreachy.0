X-GM-THRID: 6212130591636193280
X-Received: by 10.28.55.135 with SMTP id e129mr1134432wma.7.1446676995179;
        Wed, 04 Nov 2015 14:43:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.55.204 with SMTP id e195ls422627wma.50.gmail; Wed, 04 Nov
 2015 14:43:14 -0800 (PST)
X-Received: by 10.28.211.201 with SMTP id k192mr5192949wmg.3.1446676994780;
        Wed, 04 Nov 2015 14:43:14 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id m135si196713wmb.0.2015.11.04.14.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 14:43:14 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MGmEX-1ZhEkS3xkv-00Db9O; Wed, 04 Nov
 2015 23:43:14 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] block: sx8: Remove 'struct timeval'
Date: Wed, 04 Nov 2015 23:43:13 +0100
Message-ID: <4781813.jWfSbMho3x@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151101103918.GA28639@amitoj-Inspiron-3542>
References: <20151101103918.GA28639@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:3JnATyUdPePdyygRvuOMo2wVSdj/iSx4HHu6R9dF1bUpbDUXA/4
 PTtD1ThXGCwI24GbzFTAiWor5iiDIOL8FO79MiGa9/oZgCAlqRz2Qebpod4Y2kYAfKJoWVW
 ktyrEGA8SlQIWqtA3aJhBalJtOcdpjy4Nnpp6kAKQwSUPdlEo3SZ0enigpokVkXNpTliEpJ
 jTUUeqwsFs9FR6IlOWTMQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8s3lMCvwx08=:Lqykv+U0X+i4s6Sx26+llr
 3uqOhShsG6kqM95TVhnAa9ElDrVZ/2Dwa2OFGR3/RDUYjGh0NRxTc4JCd6BcbIynXDTQciubs
 ZjCUAhkjPcazMmMAlmzVyAhJSuQBzvAM3tPD7ponDZ1wrsqnZzQhmDeK19Xv2yTdlfIeLh5Gu
 hpxaRkvBTAjupUSeN2bTUYlTuZCL+6XVF39tetq8lexjTNY8bvD1iH5BQ4GGE0oyuMKD30CJD
 kJHEN4IoCzKhQZxUOUAz/IfhuEKLPW5ynONKhcmC4uK7YjZpQvORWjll3Rh7kFes6WUb3qHqK
 JH8cglJhoHj3r1Y4EqBAbnCu1bDxF2Zxxuy1jcGuOL0EWBQFDrDi7ws+oLHDnkpmwPDKqeHZV
 EenU6GX4zjq0olQ+c7xccHB8ev1tKkBj8Ot+sqO1OGEabKZZ9+Mfot2Pfrgri2kY7FHUb0dzq
 7rimw5B8iRq2UpSRFg2VGgGt7QDLxhhK+VAX57d8vEdOK6ijQGzid2RyIIZ36BQjaddWKb7ZB
 cF3qKCX+y8ZCE95lmBJfSYviR3d8xBw7S23TPqT4LLIYis3q1yph+BNV/hJEuJ//N2QauUGxU
 L57DDrdFnIgCY2I89a5+KxkljhEJmztgB9jOWNkA05SPDNU0XfU7CmKukAAD007uGf4Qd28SJ
 3SJdREKX1tSe4mzewj+o0T1cXqyXfygs1ryiMsYYnABVoemEuCP4AMG4pWI7llhxhLDhJi1Wy
 gr3OyecPtnfZv18b

On Sunday 01 November 2015 16:09:18 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval'  will overflow in the year 2038, so we 
> modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday()
> with ktime_get_real_seconds() which returns a 64 bit seconds value.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/block/sx8.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/block/sx8.c b/drivers/block/sx8.c
> index 59c91d4..cf87d9d 100644
> --- a/drivers/block/sx8.c
> +++ b/drivers/block/sx8.c
> @@ -361,7 +361,7 @@ struct carm_msg_sync_time {
>  	u16 reserved1;
>  	__le32 handle;
>  	u32 reserved2;
> -	__le32 timestamp;
> +	__le64 timestamp;
>  }  __attribute__((packed));

This data structure is shared with the firmware, which means you cannot
change the layout. Better truncate to 32 bit and add a comment about this
breaking in 2106.

	Arnd

