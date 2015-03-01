X-GM-THRID: 5512019050496
X-Received: by 10.112.214.234 with SMTP id od10mr3247977lbc.3.1425239198722;
        Sun, 01 Mar 2015 11:46:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls399749lam.53.gmail; Sun, 01 Mar
 2015 11:46:37 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr3358557lbw.4.1425239197296;
        Sun, 01 Mar 2015 11:46:37 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id cl5si530895wib.3.2015.03.01.11.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 11:46:37 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LcCMD-1Xl5JJ2ZoD-00jVca; Sun, 01 Mar
 2015 20:46:36 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
Date: Sun, 01 Mar 2015 20:46:36 +0100
Message-ID: <10593820.TmtZSAHF3Q@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1425233707-9585-3-git-send-email-tinajohnson.1234@gmail.com>
References: <1425233707-9585-1-git-send-email-tinajohnson.1234@gmail.com> <1425233707-9585-3-git-send-email-tinajohnson.1234@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:QaMhpsCaDXOpSFg0nownsMf6mrZpdtWWjmkhb2me/HsyKUsaEkW
 0zh/6ZbnGsmYl10/JHkJk2HRVw+g4XmVQCillHZ1wtpZL7C38kpzF9BHAfIJS76RW2H4DUu
 svSQFD5ASKFlSbyQ4O/VvFl9DdeFXaEFVxq5JuGGcCfOiKhY9ffSbYNy+4Kq/3hbHOO8q0W
 v1hIjjBt3oGGCRcNVw9WQ==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 01 March 2015 23:45:07 Tina Johnson wrote:
> 
>                         printk(KERN_ALERT "Lustre: trace pages aren't empty\n");
> -                       printk(KERN_ERR "total cpus(%d): ",
> +                       pr_err("total cpus(%d): ",
>                                num_possible_cpus());

Here it would be nice to move the second argument into the same line
as the start of the pr_err() expression.

>                         for (i = 0; i < num_possible_cpus(); i++)
>                                 if (cpu_online(i))
> -                                       printk(KERN_ERR "%d(on) ", i);
> +                                       pr_err("%d(on) ", i);
>                                 else
> -                                       printk(KERN_ERR "%d(off) ", i);
> -                       printk(KERN_ERR "\n");
> +                                       pr_err("%d(off) ", i);
> +                       pr_err("\n");

This is unfortunately wrong, although the bug was preexisting:

When you have printk that does not end in '\n', the following
printk must leave out the 'KERN_ERR' format modifier and use
KERN_CONT instead. These should all be pr_cont() instead
of pr_err.

	Arnd

