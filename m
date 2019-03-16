X-GM-THRID: 6669000631583244288
X-Received: by 2002:a1c:7611:: with SMTP id r17mr16626wmc.0.1552750917678;
        Sat, 16 Mar 2019 08:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e005:: with SMTP id x5ls1455369wmg.2.canary-gmail; Sat,
 16 Mar 2019 08:41:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQqL+RxhEUw/tLdP2m3vx2SJPDhSxN0sJbtBBSFxFvqJGmqDK6U+BIbRSIzTQGb29/utTO
X-Received: by 2002:a7b:cf0f:: with SMTP id l15mr547487wmg.7.1552750916756;
        Sat, 16 Mar 2019 08:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552750916; cv=none;
        d=google.com; s=arc-20160816;
        b=FiJhKvbHA5JXyyC1XYbKfnPpwt2lhkbHh/2ZcF62k+9dc5jg0os3oR6GuNv+wBOKbi
         5iPvoqh8sTMyAV1ohYPKZ2hCMQsD+N+Mb4GigB/D5cHQTrGbENBn0Ki2HgKEMJr49HW6
         cNdI917I33P50jk+kZK3f3OxI74Z+btzG4Cb3lG9JoBVdk+AkPGCnt1ZJv/G4sTrg7Be
         MLxqu6RJuW96DdKGJWy+U4cYIo3Ux/ITers9SRWYvoC9NiMmTSQwXu8C57kUgKZyWBV7
         jQv8Gi7N/8eLCdnKPYQ2TjwS8umG4X1sXByYT0nSxjxzxI6uWYvwbfInWbrfkQ/O/YYS
         hz0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PFHZ7YCu+UoqHmczpCMwu0nHKVpH6tWABDTm643SiSc=;
        b=h4ghO7dMn7qFxuCu3u2DtcF0l0JHPpdrEHE3lS2WNMBdNZtWpv8q/F9nOZFGR9wpKm
         HuikxqWsP2J8MSQSLUD5jfoRmCXi3FRt5SWttLmyB5puFoXO2s0SU+k9fN4/wkRqb2iT
         E+9G5+IrtgLIQHqA5/sStLpDRdRKu8V1WvGPh0ldED9ocv97CcOpotA8vQhwBGFBrOYh
         hs26IwW4glSyHuiS982HU2Kbbf+whkCMBQLMi+UhIZQXPiPZP13mOxaEQkVU6U9f44xg
         JwJfcZu1pJtRq4e4eCl+FBh7NnrZh+xHMrU74/MGwlo36QJPFZ1jo+iWEUa+tPSLlZfP
         zW4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si286282wrj.0.2019.03.16.08.41.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:41:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299582704"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 16:41:56 +0100
Date: Sat, 16 Mar 2019 16:41:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: mt7621-mmc: Fix ret.cooci
 warnings
In-Reply-To: <20190316152015.7879-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161637410.2487@hadrien>
References: <20190316152015.7879-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 16 Mar 2019, Bhanusree Pola wrote:

> Return the value directly instead of storing it in local variable err.
> Remove the unused local variable err.
> The semantic patch that fixes this problem is as follows
>
> // <smpl>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
> // </smpl>

It could be better to say the semantic patch that fixes the first part of
the problem, because the semantic patch doesn't drop the declaration of
err.

> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
> v2:
>  -dropped patch series and did all the changes in same patch as the
> first patch introduced the problem.
> -Commit log modified.
>
>  drivers/staging/mt7621-mmc/sd.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> index 4b26ec896a96..8857cdb9dafd 100644
> --- a/drivers/staging/mt7621-mmc/sd.c
> +++ b/drivers/staging/mt7621-mmc/sd.c
> @@ -752,7 +752,6 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
>  {
>  	struct mmc_command cmd;
>  	struct mmc_request mrq;
> -	u32 err;
>
>  	memset(&cmd, 0, sizeof(struct mmc_command));
>  	cmd.opcode = MMC_APP_CMD;
> @@ -763,8 +762,7 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
>  	mrq.cmd = &cmd; cmd.mrq = &mrq;
>  	cmd.data = NULL;
>
> -	err = msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
> -	return err;

One can observe that this is returning a u32 variable (unsigned) when the
function return type int (signed).  Actually, it seems that
msdc_do_command can return negative values, so int is better.  However,
msdc_command has return type unsigned int, which seems incorrect.  It
would be useful to clean all this up.  Basically, you have to check the
function definition to see what kinds of values it can return, and then
check that the return type matches with that.

julia

> +	return msdc_do_command(host, &cmd, 0, CMD_TIMEOUT);
>  }
>
>  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316152015.7879-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

