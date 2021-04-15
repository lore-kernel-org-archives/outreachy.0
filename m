X-GM-THRID: 6951097380954439680
X-Received: by 2002:a17:90a:e28b:: with SMTP id d11mr2136776pjz.53.1618467540711;
        Wed, 14 Apr 2021 23:19:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:d385:: with SMTP id e5ls2640779pld.10.gmail; Wed, 14
 Apr 2021 23:18:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxW7h2shAzLCIaVGXSxyDBFnlDu9Ojm7nEvanodzOYVO+KMGaCTbNRjASiVttO1Yl7I7Gk2
X-Received: by 2002:a17:902:a60c:b029:ea:c9fd:a170 with SMTP id u12-20020a170902a60cb02900eac9fda170mr2116211plq.14.1618467539437;
        Wed, 14 Apr 2021 23:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618467539; cv=none;
        d=google.com; s=arc-20160816;
        b=qPKC5AWnvg0kG++Snx3k6JEkbhP4ET8OkEYRkR8R8zxWYtp1hY0yON5/zfGGr1Zfog
         3+jlmSIlinvu1jkV0mrp90Ik3uQ+d6yx1ZeTYzrO/RczSjO/RmNgqYiqsKHG+JQtBZtJ
         fI/dWUrlachjdmaQ/Qms+M/8Y0u0k9skZpbjDQ4ygHLRRmU+l26qVaXt2yAT5yo+hkAc
         GFiNuSL4Kkhem8IM1EAvqgU0x/omsFY+NHL/nQogUis1nczjNnrgYpeuXPEpEGwU7ZEU
         +lstQWWyLF89tGAT7uZBdIuKlCwq2TU3WUCaoEOTgXAPMKUEqcRU6/NldHVsEUulMsjR
         9ZOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YSR/bJFh2mvMhX/zMdUBo3DXfUzk0k16L5u17xrwzL0=;
        b=QeqsAIXnPacxX29/v+AatcaVUgLbkzGqzxErqRlJetxRC6LLPxLDpLSk44q+n3AfOG
         +Oo52HmgCXt47ZK0d/b9OFdYIfB2To5/Og9Hm9LiOe5DxhaoEIXq7PIZLGdababFOfVC
         QMTrm9bAacTXfMKpf1PYluInrAxURyqCXJSjyzZb4Qo3ofOvC3mK8JTir0DXDqa7z4fN
         5QABC1/zuje7+qTsctQJVhIqxcjRDGtD3BpEHF/mir305GA5PtjloHARyxEIuxtKRP2n
         jj6KPOR3TqKvJH9OBN/v4CQXhWQ1zeJMLblLuo518GCaqWsNDHoREUmDvE6v+hh3k3jL
         rs7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=t2WWrQ8l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si172754plp.2.2021.04.14.23.18.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 23:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=t2WWrQ8l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E10A6161E;
	Thu, 15 Apr 2021 06:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618467539;
	bh=yAwJdgvdGo1K4qqIU8Iah7hDuZCsGWgH2RBATLQes5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t2WWrQ8l4666zQUTM5rMqNGnBw3n6ZmtJK/oE6OgYFnyUlMdliktavfoRiaZNnOCG
	 rYA/P2rXmJstL3CsTT+s/MCKYYst7X0HGQEjTWaqZJJ3TekiI/raTg8t665IFPb/Hr
	 iLuwJS0VlRshgBK2a+Otmzaz805XL1g1F8Ep7jWc=
Date: Thu, 15 Apr 2021 08:18:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: rtl8723bs: Remove
 everything related with LedBlink
Message-ID: <YHfazks3NlaUE8tg@kroah.com>
References: <20210414192750.4974-1-fmdefrancesco@gmail.com>
 <20210414192750.4974-3-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414192750.4974-3-fmdefrancesco@gmail.com>

On Wed, Apr 14, 2021 at 09:27:50PM +0200, Fabio M. De Francesco wrote:
> Removed struct LedBlink_param. Removed LedBlink entries in
> rtw_cmd_callback[] and in wlancmds[]. Everything related to LedBlink is
> not anymore needed. Removed extra blank lines in the two mentioned
> arrays and changend the numbers set in comments for having them in line
> with the shift.
> 
> Reported-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v2: Added this patch as 2/2.
> Changes from v1: No changes.
> 
>  drivers/staging/rtl8723bs/core/rtw_cmd.c    | 27 ++++++---------------
>  drivers/staging/rtl8723bs/include/rtw_cmd.h | 14 +++--------
>  2 files changed, 11 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index f82dbd4f4c3d..a74e6846f2df 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -22,7 +22,6 @@ static struct _cmd_callback rtw_cmd_callback[] = {
>  	{GEN_CMD_CODE(_Write_EEPROM), NULL},
>  	{GEN_CMD_CODE(_Read_EFUSE), NULL},
>  	{GEN_CMD_CODE(_Write_EFUSE), NULL},
> -
>  	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
>  	{GEN_CMD_CODE(_Write_CAM),	 NULL},
>  	{GEN_CMD_CODE(_setBCNITV), NULL},

These blank lines are there for a reason, please do not remove them.

thanks,

gre gk-h

