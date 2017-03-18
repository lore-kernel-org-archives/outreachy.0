X-GM-THRID: 6398699223421812736
X-Received: by 10.99.116.17 with SMTP id p17mr1118002pgc.111.1489855391118;
        Sat, 18 Mar 2017 09:43:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls10570658otc.47.gmail; Sat, 18 Mar
 2017 09:43:10 -0700 (PDT)
X-Received: by 10.157.31.115 with SMTP id x48mr8894872otx.95.1489855390626;
        Sat, 18 Mar 2017 09:43:10 -0700 (PDT)
Received: by 10.55.215.130 with SMTP id t2msqkt;
        Sat, 18 Mar 2017 08:06:22 -0700 (PDT)
X-Received: by 10.46.22.16 with SMTP id w16mr2835436ljd.18.1489849582325;
        Sat, 18 Mar 2017 08:06:22 -0700 (PDT)
Return-Path: <rjw@rjwysocki.net>
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl. [79.96.170.134])
        by gmr-mx.google.com with ESMTPS id i76si425506wmh.1.2017.03.18.08.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 18 Mar 2017 08:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) client-ip=79.96.170.134;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Return-Path: <rjw@rjwysocki.net>
Received: from adks173.ipv4.supernova.orange.pl (79.184.252.173) (HELO aspire.rjw.lan)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.81.2)
 id 428692da5f56f82a; Sat, 18 Mar 2017 16:06:25 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Viresh Kumar <viresh.kumar@linaro.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] Documentation: cpu-freq: boost.txt: Fix typos
Date: Sat, 18 Mar 2017 16:00:52 +0100
Message-ID: <8773090.1B80uslkPj@aspire.rjw.lan>
User-Agent: KMail/4.14.10 (Linux/4.10.0+; KDE/4.14.9; x86_64; ; )
In-Reply-To: <20170318050042.GA3760@sayli-HP-15-Notebook-PC>
References: <20170318050042.GA3760@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, March 18, 2017 10:30:42 AM sayli karnik wrote:
> The patch corrects a grammatical error by changing it's to its.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  Documentation/cpu-freq/boost.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/cpu-freq/boost.txt b/Documentation/cpu-freq/boost.txt
> index dd62e13..b919f30 100644
> --- a/Documentation/cpu-freq/boost.txt
> +++ b/Documentation/cpu-freq/boost.txt
> @@ -8,7 +8,7 @@ Quick guide for the impatient:
>  controls the boost setting for the whole system. You can read and write
>  that file with either "0" (boosting disabled) or "1" (boosting allowed).
>  Reading or writing 1 does not mean that the system is boosting at this
> -very moment, but only that the CPU _may_ raise the frequency at it's
> +very moment, but only that the CPU _may_ raise the frequency at its
>  discretion.
>  --------------------
>  
> 

This file will go away in 4.12 and there will be a new cpufreq document
under Documentation/admin-guide/pm including the information from it.

Thanks,
Rafael


