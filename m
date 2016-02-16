X-GM-THRID: 6251868693669609472
X-Received: by 10.112.135.234 with SMTP id pv10mr2511715lbb.24.1455629507913;
        Tue, 16 Feb 2016 05:31:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.159.212 with SMTP id i203ls226284lfe.66.gmail; Tue, 16 Feb
 2016 05:31:47 -0800 (PST)
X-Received: by 10.25.163.210 with SMTP id m201mr2548261lfe.8.1455629507197;
        Tue, 16 Feb 2016 05:31:47 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id c143si626179wmd.1.2016.02.16.05.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:31:47 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MZQm9-1aHAid0stZ-00LF37; Tue, 16 Feb
 2016 14:31:46 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: osc: osc_request: Fix sparse warnings
Date: Tue, 16 Feb 2016 14:31:45 +0100
Message-ID: <4150761.jzR6z8u4D3@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160216124326.GA1802@amitoj-Inspiron-3542>
References: <20160216124326.GA1802@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:rIjE2yVZ+sYdGLKeatN0OXGf+DapUW2NtUdoeO2B/4iYOZpvHIz
 k3NlWtlPVALvpCQrn3h+7GcTP3geW6thjjkHf4dnMaPC1a3JTCaktLbvERj+hQ3x1RCm7Yc
 1JD/9Qrcx9+NIs2rzSiUUmQjV+TvdAk6xczRBNHbWsWNXjO4IIX1wtX6RazCy3i8xvZUm+F
 piJ+db9ERSQWfNK9Kh9Lg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:juMQWQEVwf0=:WTmmeLv7sqxJtEb57d9r+w
 bI1CYM2WxEhhDhO+3w804NVMejy0SPQ7fsdT+s85xA9PS5wvJPQ0RRJMGkfukGcSSG9h5Nr3I
 U19BebgeszmO0298U7G4LWagYA/8L47276TQQwXBUKGJhWpxw40HE0yBNPOvGqozXtq/dX4py
 RwfTXGt2nv8CHp6ROZdEZgrKLxI0JySuTYFLCKcm4xsYHvj69eDq8b11enYXgvk6FMLGL5kic
 odB8SU9VO+mx8DQHCk+s+LfSV8G9W/Kt8uVSuMEkFDjTeYIu4ustZOHvtkF7W3SgCk2whx2KI
 W/wtfS1AtHURmH7Vr+tLgVtofHT0G98DpyYfST4ctnpWIHIe1p6T+7NZJrI0E/xcCfIcsZNeB
 HN/iT+jRSQpgtgiQ7IgAOwoxMh6QIo1l0g5Liy6rt5gX9Bqj7fyg8PnYqAIBNic0Akth6Wpm4
 /FGRSqffYT61/QBqQK1qnI261dWhRWz/1HSlC0hPeuNo/ZWRLfr1mjO+rC4A6qkCewnqNNRUq
 ZHJNW+gFFfS5ixjtnXL0nGlGZigF+Wtr/xCnLnwqslVTGd0j3t6Y1Tyl5gKIbhJWGscaCXKsr
 IHBG7llDjVkYTeoWmeon5L2K8cUzP0Ognr0S1iFfkXYLARb+5+ZNPWNBIKpK3QDXjY4jOVGuX
 PkVbU5tmCEWNJ2z2yR6vSSvr2zTCxieC3dT2kcY9u4NruEOzCU5a6KrE3iJJi2uolOC3h3mDf
 H18V1jaowMYoMMoL

On Tuesday 16 February 2016 18:13:26 Amitoj Kaur Chawla wrote:
> Declare osc_cleanup() function and osc_obd_ops structure as static
> since they are defined and called only in this file.
> 
> This fixes the following sparse warnings:
> drivers/staging/lustre/lustre/osc/osc_request.c:3210:5: warning:
> symbol 'osc_cleanup' was not declared. Should it be static?
> drivers/staging/lustre/lustre/osc/osc_request.c:3259:16: warning:
> symbol 'osc_obd_ops' was not declared. Should it be static?
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

The patch looks correct, but I'd suggest using something a little mode specific
than "Fix sparse warnings" as the subject.

>  drivers/staging/lustre/lustre/osc/osc_request.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
> index 3ae00fc..47b4e8d 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -3207,7 +3207,7 @@ static int osc_precleanup(struct obd_device *obd, enum obd_cleanup_stage stage)
>         return 0;
>  }
>  
> -int osc_cleanup(struct obd_device *obd)
> +static int osc_cleanup(struct obd_device *obd)
>  {
>         struct client_obd *cli = &obd->u.cli;
>         int rc;
> 

I think you can now remove the forward declaration of this function. There
is already a declaration that makes it static, but having it in the function
definition is indeed nicer.

	Arnd

