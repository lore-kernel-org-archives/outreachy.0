X-GM-THRID: 6664058472293728256
X-Received: by 2002:adf:9d22:: with SMTP id k34mr655166wre.0.1551597555309;
        Sat, 02 Mar 2019 23:19:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cc03:: with SMTP id f3ls1004128wmh.3.canary-gmail; Sat,
 02 Mar 2019 23:19:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqzL9eExSEKJaLXQdS1FGQJ2IPG4l7/Id3qXzJucGuAaYod4xLXoWjKRE7YL6laeacv8Qxh9
X-Received: by 2002:a1c:7c09:: with SMTP id x9mr786460wmc.19.1551597554370;
        Sat, 02 Mar 2019 23:19:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551597554; cv=none;
        d=google.com; s=arc-20160816;
        b=C2PrpYbLbd7CeHr+ltPhPnrJdS+E954Aj7U0V+5ExK8lujfuw+7dttmYBa0mn5cwHO
         49ouxrxdrAIs3HkJLMZdKgiVmlmVXogi1l+fm2ihakxI7xXb34nPGuXpSFZ9eqKQdoI7
         rUp8Q6AzLsk+S1uJKabBRvXn2aiLqRdN1fVNkejfPshhKPGWK2b2CmjWRrgvRmlOlL1j
         1385tWvJUZlW2ra3r8aFtf2cqchddsNmzyLP3XE2le+WCFpeuPOnXjjowgH6hySTSHav
         21IPs8LGESq3o/H18hfDLROX89NvSTM4IDgVp8A55yG7023VljV8ojy5f596tVV4e+hR
         FrTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iSSfuFd/nLZzSH0nu4ZN/67wvuJ9zjqTLtOT3f5oPTI=;
        b=nkGu6V/Mug40CtTV6eSJq7gZjCTJk9qohpVc3DVplQu1v3Y8DVSOF6KT6aQYCXXQ/Q
         MGK/O17rgaS2eIR+A4ryxr7CqgiXyDXY3WFlHpDrE7HgBcqKThNgoGQ61fRYKosXdbq0
         kUnxJsCKLJTeHeRzzuFeMWsP1REcEzjBMRmDu6qg/Y6vGIehgUV4uc6N84Ez8FX/VmVi
         QomrQpaBxSLf4hCJw5G4lwujTbdAZqM+NYBxk/OeXfwRSyV1H0IQA3e5A78W/KShHY9y
         N7Y4njy6iW3MbQb542DpESzSoHO6yIHG3TEom2v2NUqEfBnPQ/OUP7R5J/S2UaFqUWY4
         F58Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j43si86469wre.2.2019.03.02.23.19.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 23:19:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,434,1544482800"; 
   d="scan'208";a="371658059"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 08:19:13 +0100
Date: Sun, 3 Mar 2019 08:19:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: pi433: Fix checkpatch.pl
 issue
In-Reply-To: <1551596995-2999-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903030818190.3207@hadrien>
References: <1551596995-2999-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is not good.  It doesn't give any information.

On Sat, 2 Mar 2019, Debleena Sen wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: line over 80 characters

The log message also doesn't give much information.  What would you say if
you were forbidded to use the word "fix"?

julia

> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/rf69.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index e19b9ce..0c189a7 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>  {
>  	switch (flag) {
>  	case mode_switch_completed:
> -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> +			MASK_IRQFLAGS1_MODE_READY);
>  	case ready_to_receive:
>  		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
>  	case ready_to_send:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551596995-2999-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

