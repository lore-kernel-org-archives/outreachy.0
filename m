X-GM-THRID: 6808287066247397376
X-Received: by 2002:a1c:4987:: with SMTP id w129mr1721434wma.168.1585207285671;
        Thu, 26 Mar 2020 00:21:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls2578769wmj.0.canary-gmail; Thu,
 26 Mar 2020 00:21:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuoACPlTpZ17WNuGtCl3TecA6kZAylcuDlphZzLTTv4N2MyUdJ/IBazkIcP2AnGpqnCpKU2
X-Received: by 2002:a05:600c:2146:: with SMTP id v6mr1737188wml.155.1585207284284;
        Thu, 26 Mar 2020 00:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585207284; cv=none;
        d=google.com; s=arc-20160816;
        b=skYJGhZjOpCsZW0yXsPdB+bDWHWrVT+y4jofKJ/3Q2bAWQffGrQh0SnXsLUIGYygdu
         lol2DGL9iRAHVpS4xZfu53q5qiPF1OXFGI5eqeqeyFuEbKjSBPZkTRlIasmTs6OV8U4W
         DSEAwbiASLheD91zgJJjGgpsRiURkcy7JWRLqJtukZGMtMozMSrCqPqlM1+YF3uM6QUJ
         niHdqMlBxFqzfYXfsz0Lt/ol3+Gy/REjuSb1A/GHdEn+MEIOnipeVltRIsd/W4VTNKLC
         yCuw4pkQlWWyWNp0R80nVqh4qjz9n9oRQEDsXDxua6lWbPNoIwW8/Uvwaw/L+ntR2yRQ
         ZMQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=js5q/wQCHErFmprozurKpNC+kTTXxCB/4v9M9LkpNVk=;
        b=SDSELyO7lP5OQsVHIKxE0lhxXLRL4N2xH06abXQqtydiB25N6zRvfItoZXL38vtLca
         +ER9b0xQ1zUdUnxHkX8doaB4a52+dizQnM1n17KUD8oeUy+lJKrW7j7g4CPsYzg8+XqS
         +vzDyaKvQZInM/MUBtpvG/8oo3rTnosIDwZYn1fqY5v7u7oMkElc6YOiKTzF+xs+rwwD
         bpfYVgRcCAogcqUXGqmlj55g8GnGZfwEwiCNWCEFdm09aHXoPfkPS5ieUQl7kgSUfFzA
         yzpzUpaOfW1aaXfe2UkskUcPPnucdHbI/gbGWfd5mqe0HZhqSe3bM/YemViTjk8wyv4P
         rX1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si72736wrr.1.2020.03.26.00.21.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,307,1580770800"; 
   d="scan'208";a="343773683"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 08:21:23 +0100
Date: Thu, 26 Mar 2020 08:21:23 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Block comments use a
 trailing */ on a separate line
In-Reply-To: <20200325231055.GA29122@siyah2>
Message-ID: <alpine.DEB.2.21.2003260818140.3019@hadrien>
References: <20200325231055.GA29122@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 26 Mar 2020, Gokce Kuler wrote:

> Deleted more * for block comments rules.

The subject line and the log message should be in the imperative.
Actually, your subject line is quite confusing, because it describes the
situation one wants to end up with, rather than what should be done.
Something like "Adjust end of block comment" would be fine for the subject
line.  The log message could be "Drop an unnecessary * on the last line of
a block comment to follow the Linux kernel coding conventions.  Problem
found by checkpatch.".

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/qlge/qlge_mpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
> index 60c08d9..31322ec 100644
> --- a/drivers/staging/qlge/qlge_mpi.c
> +++ b/drivers/staging/qlge/qlge_mpi.c
> @@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
>  		/* Signal the resulting link up AEN
>  		 * that the frame routing and mac addr
>  		 * needs to be set.
> -		 * */
> +		 */
>  		set_bit(QL_CAM_RT_SET, &qdev->flags);
>  		/* Do ACK if required */
>  		if (timeout) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200325231055.GA29122%40siyah2.
>

