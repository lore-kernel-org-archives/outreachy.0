X-GM-THRID: 6205878038435987456
X-Received: by 10.180.208.7 with SMTP id ma7mr2337539wic.5.1444919163492;
        Thu, 15 Oct 2015 07:26:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.143.209 with SMTP id r200ls179956lfd.6.gmail; Thu, 15 Oct
 2015 07:26:02 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr2225594lbb.0.1444919162796;
        Thu, 15 Oct 2015 07:26:02 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id c1si479197wiv.3.2015.10.15.07.26.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 07:26:02 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lghtu-1aOU873rjK-00oFYw; Thu, 15 Oct
 2015 16:26:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: mdc_locks: Remove extra test expression
Date: Thu, 15 Oct 2015 16:26:01 +0200
Message-ID: <5102490.D91ZYVuE4I@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151015141605.GA33977@ubuntu>
References: <20151015141605.GA33977@ubuntu>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:sXdgl/JTBX/Ws+Kphln65FhhmWpvXLv0jAFDV34gym7fwKm6QV3
 ZULRR9a3NQOi0anbYMBHd3mVgmcNA+KyHSb3Cv34vzt8QZPQ86B31T+9GQsdmqRRqlUeiGK
 CGLwI0Ag0pMLiG3eyVaV16xPGmtTOiXpROJj3qsi0aMDiEh/B+mJbw43U+OyJEcEKkSs0o9
 nttj4ccEsyBjY5FDxnd+w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:n8thQPqPrvQ=:bvCwxfp/1wJcyfLhA/E4/t
 WKrPJ/NfaTCEdCkLLv25Xlxdq26UBjHlPHjiME6sHL66+XjV4MlUwk4EkYlX5R/6Xxui/+Up6
 jXKTTfkQdm2bQZTWv75Sre/dRSncgpKBaaYa+B5XMHgxvnDS2sYm5Skg4RNLoQ6VWYoq68jui
 CIxP+/P141YAMvRqZbFE9mE61lIyc1/EHKw5g+8X2t0niWGGvp2duDxT05JVAs7STDVVww5Na
 6NDqHTcukIrVE4Z9o/rl4ETd+LE5SIJGf1/cIB+SgUd0RtvnweSNV7UZBy2clnCBaON+1tLsv
 yHc5yDMx7L3tiuSoNURNM7WIWDxSL6SBJTvo1Ovgci71pU54uF7JONQ9gPMIRGLr6UWmq/1Ro
 wd/0T3tHoy03wBslZvA/hEKyUrblxjj7jutQFa4Jehd5eUOOsRp/D6OcmBVogkdBFH64R+6W8
 8jojV76OLULPGNd6ez47XeEfs33RLs5DMz9syCAo6tejIlAkSR3fBo10WSlnmMT5dEIi1ZuTp
 uvUmCqsbNStSc70ySXPusgGEBas7X2nqv5FGJj8DEeHUUDLO1TZcP4I/GiPJI+N1ydIgMEe79
 d49F/svpg4bglw2tEb/ParMzDsRgvhUMWmVgEPpBaLauXmIe/ylIPkSyGLwB8E22QbnPJLCB9
 uGzpCpzv7KSlya8Kx8RwzT5QpFkv88c16bxEHRe5XdB/xtTkkTVQPHl9LPk/0ZeAmu5qkAiif
 5yx1hegMkKSAscBU

On Thursday 15 October 2015 19:46:06 Shivani Bhardwaj wrote:
> struct it is already NULL tested before so, it should be removed from
> the if test expression.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/mdc/mdc_locks.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/mdc/mdc_locks.c b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> index e0b81ee..d4bf34b 100644
> --- a/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> +++ b/drivers/staging/lustre/lustre/mdc/mdc_locks.c
> @@ -885,7 +885,7 @@ resend:
>  
>         /* Retry the create infinitely when we get -EINPROGRESS from
>          * server. This is required by the new quota design. */
> -       if (it && it->it_op & IT_CREAT &&
> +       if (it->it_op & IT_CREAT &&
>             (int)lockrep->lock_policy_res2 == -EINPROGRESS) {
>                 mdc_clear_replay_flag(req, rc);
>                 ptlrpc_req_finished(req);

It took me a while to figure out that this is actually correct, but
it is.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

