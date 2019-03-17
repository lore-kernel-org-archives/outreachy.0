X-GM-THRID: 6669200248940789760
X-Received: by 2002:adf:8121:: with SMTP id 30mr483473wrm.22.1552806964694;
        Sun, 17 Mar 2019 00:16:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls1618481wmg.7.canary-gmail; Sun,
 17 Mar 2019 00:16:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw2Nz+D4lyiG6wIcSG/JMAIEX8a2m4sQMPgqvvhCiKhgQxjJO0GMyTABYBa67yVRye3AHPd
X-Received: by 2002:a1c:7518:: with SMTP id o24mr204425wmc.14.1552806963955;
        Sun, 17 Mar 2019 00:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552806963; cv=none;
        d=google.com; s=arc-20160816;
        b=VI/2Tuyi+IooiwlkvJKc1gSvV4DYBWuo/szOV9ju+7iAI/7hscLk2xn68oxb9mjuDj
         mdCoobKX/7ksI6PJjdJCNK7Z98+SdXyDGnvuDJ0O2FLsvIOdDdmn+3pLAxazDsU+P7w+
         4NL+FHRNlQJGbavsTUBnft4u/lYzS/3Z1NZDpDPRmyAKba4AWODpTdVN+rHvspMmmlSY
         WPlk+31uFBdo+ni5Cw6d4VmcGG3BugEILb6SZ7yzJDpStm2yPpL2+KzqeOwG5g4ivP5O
         kgITegSTDUCRpBZP6CerjOPW1ns8e4U00jthK0xNCQAJs4oP/U72WY8GVr/4VYgsdMtz
         587w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VuQowg3idkScVMiGg59S5Sa/qY9Ka59rc1fqsdlwds4=;
        b=tzLvhqGuxHjgGy57zVT7ZFs1SsgQsn/m4OXx9fYGOYyyQGi9InIPaQS88YjvmHSbdu
         MCK5UHiSnvHIc6Xu1JfG1wYievC/gDMrF626cROhpgQZe631V+IheZSzzwtQ1Pzh5N69
         VN5Y22hIOhJix8uV+n/OSnSXUvS1/0DqvFPZmL8jL3OkonxoOvnthjweWEjZF3cZJzzK
         H+PIe6WjFlB0fZk/9GevibMW570oPc8HOOywCCAXTMKTYJlvLS1VGD/kBFgjvJ4eazYj
         eyDg5q+DRZAGG+KIA3otSAnjmx0+eLv8ky7oDdY/4e0Ryl7eC2BU4roQQjFdkPWI0Agx
         cjKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si277101wmj.2.2019.03.17.00.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 00:16:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299669121"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 08:16:03 +0100
Date: Sun, 17 Mar 2019 08:16:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: fix line over 80
 characters.
In-Reply-To: <20190317033946.12585-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170815310.2588@hadrien>
References: <20190317033946.12585-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Jules Irenge wrote:

> Fix coding style issues, which solves checkpatch.pl warning:
>     "WARNING: line over 80 characters".
> ---
>  drivers/staging/speakup/kobjects.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 2eb5af3debb3..abeab64899db 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +/* Do not replace with kstrtoul: here we need temp to be updated */

It's only a few characters over 80.  Maybe you can rephrase the comment
instead.

julia

>  		index = simple_strtoul(cp, &temp, 10);
>  		if (index > 255) {
>  			rejected++;
> @@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +/* Do not replace with kstrtoul: here we need temp to be updated */
>  		index = simple_strtoul(cp, &temp, 10);
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317033946.12585-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

