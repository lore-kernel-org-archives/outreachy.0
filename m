X-GM-THRID: 6805922771293437952
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr4400131wmg.151.1584630711238;
        Thu, 19 Mar 2020 08:11:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls1321749wmk.2.canary-gmail; Thu,
 19 Mar 2020 08:11:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv9IBM4ivDoSSGzwxlm0WvkLl3AZdPnS5dzMFI2SmyJCv6Rx9dKa31CUFWHb/MAosgEhhk9
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr4420556wmk.56.1584630709477;
        Thu, 19 Mar 2020 08:11:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584630709; cv=none;
        d=google.com; s=arc-20160816;
        b=YbXl0OjsnB7Z2Bd/bZjPqs7AzRYyZ2SAaGgDlK7uZ5KGuOPmOVIrtjb/cwM8OFp8OY
         sWzzNe98aRu8ljSIPz3535nEbbcKfy9ODjucBO0Jzl5eFoAOxb/g/WjhZwIpAZEj3n0Z
         QOR9SQMaRUmZ1a9isLXCeFB0d0O8RlGX4stE2voSjoiyLDk/Ffw3+/htkAAxyYId7Ccy
         3EtRv5j5iw/4Ou/rddyNcJRHjI9fwwWGur5bzqxnumTCp8XxIaqwkcJJIdHZ2ptjssy9
         Uv7mTyP2TdZCfR0n2Fo7dn96XyCijF1UgNC1+jFCQ/rLTb+n8ANwMne8OsJsmf4n5yKI
         9dIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ofagcwvtx/c+pzZsvRMbhMol/eJCFi+aGzu1j5h9GRc=;
        b=myhh1TaQEGjcNheG+IbcfH98+HV2EhmTIeNkpWGOJqFAauFF9v5xC/ZwJrHLlX7Vf7
         VGbSamtPm0pb7pdlC48fRU/jYbSTa4LDBZYrY98cj4Vh/CvXXFJn3rkPoFhj2EhShMDS
         6BPPZoF3qqMR2qsodiSFaceSChC+ic9UXMAEX45j7SSnZGWl29wWmGWGt/X9wUEKntUQ
         Ufpv2EzzDQXp+758J4/Lt7y+x7C7jgV3o2G5sy4/GkinjVjALeEVtGl+4K2I6r+eCvff
         n0uE5wxa5MeFtbbWb4r5Q/JzjpFwzkngu/4DngFWlTVqKkpY39/cPOXCLQPhE8XxL6en
         l7Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d16si113843wrv.4.2020.03.19.08.11.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,572,1574118000"; 
   d="scan'208";a="441207517"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 16:11:48 +0100
Date: Thu, 19 Mar 2020 16:11:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: rearrange line
 exceeding 80 characters
In-Reply-To: <20200319141612.GA11981@siyah2>
Message-ID: <alpine.DEB.2.21.2003191610430.2312@hadrien>
References: <20200319141612.GA11981@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, Gokce Kuler wrote:

> Moved to the bottom line after << operator for it exceeds 80 character

The log message should be in the imperative.  So something like "Move the
right argument of << to a new line to stay within the 80 character limit."

If you found the problem using checkpatch, it is nice to mention that as
well.

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index bbbef27..b67c545 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -116,7 +116,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
>  					opr = mask & color;
>
>  				/* 2 stands for forecolor and 1 for backcolor */
> -				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
> +				data |= ((opr & (0x80 >> j)) ? 2 : 1) <<
> +				       	(j * 2);
>  			}
>  		}
>  		iowrite16(data, pbuffer);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319141612.GA11981%40siyah2.
>

