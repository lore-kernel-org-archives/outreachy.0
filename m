X-GM-THRID: 6251884349314039808
X-Received: by 10.112.157.164 with SMTP id wn4mr2547867lbb.5.1455630341847;
        Tue, 16 Feb 2016 05:45:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.16.198 with SMTP id 189ls780720wmq.45.gmail; Tue, 16 Feb
 2016 05:45:41 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr1958135wmd.7.1455630341172;
        Tue, 16 Feb 2016 05:45:41 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id w197si794745wmw.3.2016.02.16.05.45.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:45:41 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MLRLO-1aV7yw0xwA-000ZLM; Tue, 16 Feb
 2016 14:45:40 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: osc: osc_request: Declare local function and structure as static
Date: Tue, 16 Feb 2016 14:45:39 +0100
Message-ID: <3141763.faVHMgUmWB@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160216134412.GA18001@amitoj-Inspiron-3542>
References: <20160216134412.GA18001@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:rgZuZ8+qHu7IaV+r0Bmw52cuNieAB/75se399FGjBDKrH0tMq3S
 xAzqVtOer0EikPNcw9TO3YWeaB/T0BCMXX56QenmSripKTSLlUndYS4dcbxHFMEjrcaBZ0E
 NBgqLhki01NT0LKmuID6F2w2NbsXyx8DcXJZjX9GEQvvVK0TE8Kz4JWglr10ZSjBFysPGqg
 rnvv7oj/95RqAvvBMMwvg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:9hyDtKTybes=:6BX59W9Nh0PC8lx4DfGMNs
 cxT9DyhbWehTTAZaopQkimL72qlPdShmh/n6l8lISi+5t0nWDcw0WcLuPcJlLkosgVIZnknqV
 04l4bOj+owhGnJyhGDiZQYfDcoUWx8mWfme/1oY5GUT6ASSpBmWEwRbH6uR3iib4cDuqjfNuZ
 tkIRWx+fh9xf/LKrCW4KRBlP5seHzra6rHzLx28V26UzTrbwu7tIq7nSdRwfPc/3yikYYgxHb
 xd/Ur6EJlJbkVRngvB3YVdPXRaLayaAyoXyiIghcsYZbUNrfsYuGTwGWfXPcEDLJC27jfSUyN
 AQFWUItCbMp7+jWAUM1N02oVsPNa/FPwtBCUZ16SwlWnaoTTx8Bvt8m++c6d9j7Ef+et960nN
 5vCmxiqEQ5EffmcPdf2vJH13dqJETMyB2eAO7OgEUvpFpmJlNZiS/viX/yiAFzVQbGxI9UGQz
 RD1oh8EPa4xbHffI58LVwaGE1IXCV3H+me9eK+TV8Zt2eK7P6VWhJ1uOBVMRTRdikXyfUMQfv
 JJ05MoALTZEg9qf6vPOhU9ozgD9y15DkbRmEE1bYhPcmTF7LOymiyrGE39RnmX0ktJmXuD6B9
 tDBcnAjzvQ3qZzmcMBc4IhiXvxOnh80ghWj5zfuXQTe+l/EcWU0Dgjk3xXDhU6IzgY3QopHLI
 GfkwVIKPUV2OgSKuUtl4XHqfC9BqRkWfj6XBxh3My1l/O9GNWSiieB3Cnx5ygoyynyPQkkk5P
 AZcf169X6zb8f3pW

On Tuesday 16 February 2016 19:14:12 Amitoj Kaur Chawla wrote:
> Declare osc_cleanup() function and osc_obd_ops structure as static
> since they are defined and called only in this file.
> 
> Removed osc_cleanup() function prototype since it wasn't required.
> 
> This fixes the following sparse warnings:
> drivers/staging/lustre/lustre/osc/osc_request.c:3210:5: warning:
> symbol 'osc_cleanup' was not declared. Should it be static?
> drivers/staging/lustre/lustre/osc/osc_request.c:3259:16: warning:
> symbol 'osc_obd_ops' was not declared. Should it be static?
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

