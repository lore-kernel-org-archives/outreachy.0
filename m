X-GM-THRID: 6250792352904904704
X-Received: by 10.28.156.83 with SMTP id f80mr375182wme.1.1455393367309;
        Sat, 13 Feb 2016 11:56:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.72 with SMTP id d69ls478797lfb.81.gmail; Sat, 13 Feb
 2016 11:56:06 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr959027lbb.3.1455393366694;
        Sat, 13 Feb 2016 11:56:06 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id w10si231348wmw.3.2016.02.13.11.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 11:56:06 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MgJKE-1agJn93WOU-00Niyo; Sat, 13 Feb
 2016 20:56:05 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
Date: Sat, 13 Feb 2016 20:56:04 +0100
Message-ID: <4143065.OBkRWe7lv3@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160213150641.GA26097@amitoj-Inspiron-3542>
References: <20160213150641.GA26097@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:upd7f4c5Nnr4VoUCa0FyplVFX2OvgTqTbRkZhciZAQIxzPoPX4h
 NrbBhyfpy35sbq35vPTigDzYK+wiWyFLIQljfDELQdFN8fQtAEnsX9SZso0PSKVC8p0k1bd
 hkhuCWmc0dB7Eu+2bA2+XjQjIMmp9Cii39edrk8ES4kUlqM25nOFyE4tYhUbeg/FnNBjGNu
 FBrr8VjxCTbpokmTUzfKA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:KyRfa1lJQHY=:fdEeNBuUTeWjekhmt6vOxd
 vpi8w4XnXvG+jSYOe1kV/GqX8A3lqVNOnWS00lET9zzcJoy6F35xiwXBPU6Um30nefyUg8osh
 KZr8ld0s37TQAptxVHkj5/GUmK+em2f1LS1u9wEspceXAZMfAus86IULKuQf5ccfTjgdJikp7
 NC5Tp/Q4TIoLrQ++vckgUDvHZ6oHzEMknEMSVnGKAaas5hgy/M9uO2OLBhztfwAC+Ly5GJUHH
 3I2phVzvEKdlTxqXaiG2ugODvw73Qf/zymbPRR9oDVVhGscREc7f4JnefRkXXnCAbrRCEbwSQ
 43G+BXwb+GyB81NsCOnzHBHcOMwKFnZ+OfI/GS0AQiPHTZjxnjh7bvn3kQMyOruqGFgRHdxYW
 aQqR6kRqF+ItwAfzuL7rZ4aHSD49U2xwLaTa/UZR6xcqka3IDJz0Rvsfe0HRlEM3cjc6f98Jx
 VwhLl6aaHmAYGUNXXNDBARXM4J8l+s3jiA3VrKhfHnPskWjEcST7tw9QwOkyeinkryZQx+rf+
 4GN5Jyhn9kaTZ0Cj59xMSoaiB8oWVgPNHNIEnmwUtfJodQi00IrLCTLcj1amfdBZJIbIuvHoK
 L6SK+80IKFkUCPrYJ2Xw2G8KsP8DiivvaAokkz5KrMSk0liE6PrMQXTPKEQEoFLw9gHolSEF/
 JkZ9egNfNuBYqni/M4kKcNG5lzsMNpQjhqK+dx/n0Zy/2UgqUydyChCugqWoX7TCbA6xTcLuC
 nx32RGQ88MtbDZZP

On Saturday 13 February 2016 20:36:41 Amitoj Kaur Chawla wrote:
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 446e4b8..5a32f9f 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
>         md_free_lustre_md(sbi->ll_md_exp, &lmd);
>         ptlrpc_req_finished(request);
>  
> -       if (root == NULL || IS_ERR(root)) {
> +       if (IS_ERR_OR_NULL(root)) {
>                 if (lmd.lsm)
>                         obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
> 


There is almost always a bug if you have to use IS_ERR_OR_NULL().

Please check if that is actually required here at all, any why
the two cases should be handled the same way.

Normally a function that can return an error pointer should
never return a NULL pointer and vice versa, so a better fix
would be to change the function that returned the root variable
to have a consistent behavior.

	Arnd

