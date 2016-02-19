X-GM-THRID: 6251802816159940608
X-Received: by 10.25.18.227 with SMTP id 96mr2154243lfs.4.1455915798363;
        Fri, 19 Feb 2016 13:03:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.52.199 with SMTP id b190ls16599wma.28.canary; Fri, 19 Feb
 2016 13:03:17 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr1511409wmv.3.1455915797576;
        Fri, 19 Feb 2016 13:03:17 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id s141si584629wmd.1.2016.02.19.13.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 13:03:17 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Lto9d-1ZnTGL1Gyb-011ERm; Fri, 19 Feb
 2016 22:03:16 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: replace semaphore get_inactive_time with a completion
Date: Fri, 19 Feb 2016 22:03:15 +0100
Message-ID: <7033322.t2AdqAmFLg@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1455911140-9055-1-git-send-email-amsfield22@gmail.com>
References: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com> <1455911140-9055-1-git-send-email-amsfield22@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Bu8FfV2ENM1Oj4oJxAgIrWkWTYOZtsQ3Min3zuI0MkYLovcgRKa
 f06uHqtuZrmeMwZRbT3reHh5xYRH3pyyvVzCYvG5pZkgsLkHcDIFnt52n49bxiQqAKbZNMX
 FNhDk5He7+/ccAhav1YTV4nTlinRUw9R9wpwjJWOsvDnLgnBNZma1bAwdVMVAMkv+JNBbxM
 j7sYBPIee+EWy+NEYHwAA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:3yvJ8sV0Ofo=:UwJE6PhMYdKVnvQCtEuv8k
 wKaiz9uBOSr+mN7Vq9C0UoroTQCiy7J8gWMAvenjJV87k73VtQA/h/NHA/2bGloCLaoCQ0JbM
 ZNPBF1qYCidkgfkE54Gylgh9WCqnGqdvQgYDvdhiQiVJEFzHmlHE7dJyX6Sokg6ylqP2AbsNG
 TBcq6kx7b0id1JiUOMoNflMcEPYBuGpHbVuLp1MEBhZxizZnfkSIFbz69yGo4kITGsGVUTK4Q
 te/4VAFVxQUSyYXIQalpFwBgLKVyvVe1l9TxMjZV3qkepdoEdCrP8a20QAy7iRQgcA9vgIuN5
 O+g76oWyIGZJxKgr/xUXFALtWMx3ke2onOzGy0yWGDooqssBcgrveFuWPtqImYjx1kVrMeufH
 MxT1yTgLQpINrxlKhjSDVoJtDuE9Pxm/iPsr2VrFGTvbh5kUVZLiqpKo5UfnUDBjtscuRhNVX
 HHZArQ3ZhhHX0+yGn2xca/9Kd7ggl1gSODzrt+RzPSWuCMrKrbTpTIbc/TjR3ncfr4a8RF+ys
 v2zSW9/zZfqUQwgGhYTPKYvN7Nzzd/EWEiOVM7bD41XK7qrX6hAA29FIpzyNmdjshlbYhGTjU
 SDV0r1NxsDU17kfF6MCE0oetI9vCLZ23IzmclYzEBGKsIUHTPFv11Mw3rXmmFNDoDsu9aKuve
 SnP1Hc5pTQ0cVnGlm5sz5ANlgj6TcO75aueILpVpVFqlJrxJyO3kEhlRv+Lay1XtHExoZiuD5
 MGzjuUpoCp43Hprb

On Friday 19 February 2016 11:45:40 Alison Schofield wrote:
> Semaphore get_inactive_time is used to signal completion of its host
> interface message. Since the thread locking this semaphore will have
> to wait, completions are the preferred mechanism and will offer a
> performance improvement.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Very nice patch!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

