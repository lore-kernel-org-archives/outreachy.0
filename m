X-GM-THRID: 6659640267598987264
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr190919wmc.16.1550568469112;
        Tue, 19 Feb 2019 01:27:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d17:: with SMTP id t23ls252797wmt.14.gmail; Tue, 19 Feb
 2019 01:27:48 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbRaEDZDcPuEPo3krQ68F5G4dKCOaGpbXgy5AKdT5cNSY5lTabSpgVRWUnuoPCFcoS7z4fc
X-Received: by 2002:a1c:96d2:: with SMTP id y201mr196520wmd.3.1550568468345;
        Tue, 19 Feb 2019 01:27:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550568468; cv=none;
        d=google.com; s=arc-20160816;
        b=yt++unu7ral3DoxgRHIufIafiaa4+XOlekUqrcQVJuCSiVgEet+l9GEw/WxGIUCPwL
         j9F+gA27d+cU2X9Bq8R9pGslzoMVRAjki3fbwsDBZmrbWiCqjR3Vd4HAv/ywdf+6K+si
         WpmhXfB4HumhRfa3pjbLU3pwPH/8MmEdCgi9GAPKA6i18aDnRHOBRJ831diOn5l0vy6U
         cO10PvLTT5H2p/FSxVOcMEm8+eO6E/kxr0Zqg+lnAtBdBh4BRraEahWNUHNCGOlKB4MW
         Qs8BBuKuiFnwt+fbvAPb1aMZJM7jZG+3eW6blG9NAyZPuDOuVTfxUoGrKY8BldapUYf+
         C3Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=86xo9LNDuvSOZNwNKbI26NX684rALxQozPBlS7VWbqE=;
        b=TqVuBbaLGqn2N9rvu3Ihp1uYAVSKamLZuwkcspulR6aIseeeMwW1u9ROESG/Wr/Rna
         wjMqHiqbtE/1W6cS9CcnCjiZDV9m6KCqK1uZpQpsmcG9vWGrK6e/u7C0taX4fq+4llrL
         3hFsT4P5k4O5ugLyPMmx0C6I/Izm/lPBUcvJLX51ZWgNAnpBR3jItCwTi3aSNTDbVZIa
         G4PCZx2uhwwH4EIdQIW9rU6el4Gu5xjleZbhPTsPZas2Dr5lz5yheoapFKvtg9TBCj/Q
         ohyMSKBnvOxZQsl0qnw2Ydna45QKHpdEiAxVxNVeE3DWVnxfSdXw0mEYOWjC19ZM0IBa
         hSdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t25si64954wmh.2.2019.02.19.01.27.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 01:27:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,387,1544482800"; 
   d="scan'208";a="369978269"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2019 10:27:47 +0100
Date: Tue, 19 Feb 2019 10:27:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, Gao Xiang <gaoxiang25@huawei.com>, 
    Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v2] staging: erofs:
 match alignment with open parentheses
In-Reply-To: <20190219092525.GA4474@bhanusree-MacBookAir>
Message-ID: <alpine.DEB.2.21.1902191027150.8574@hadrien>
References: <20190219092525.GA4474@bhanusree-MacBookAir>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Feb 2019, Bhanusree Pola wrote:

> Align code with open parantheses to improve the readability.
> Issue found using checkpatch.pl

The subject line and loge message look better now, but I wonder why you
still have [Outreachy kernel] twice?

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>
> v2: -modified log message
>     -corrected spelling in subject line
>
> drivers/staging/erofs/dir.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
> index 833f052f79d0..e1955703ab8f 100644
> --- a/drivers/staging/erofs/dir.c
> +++ b/drivers/staging/erofs/dir.c
> @@ -24,8 +24,8 @@ static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
>  };
>
>  static int erofs_fill_dentries(struct dir_context *ctx,
> -	void *dentry_blk, unsigned int *ofs,
> -	unsigned int nameoff, unsigned int maxsize)
> +			       void *dentry_blk, unsigned int *ofs,
> +			       unsigned int nameoff, unsigned int maxsize)
>  {
>  	struct erofs_dirent *de = dentry_blk;
>  	const struct erofs_dirent *end = dentry_blk + nameoff;
> @@ -104,9 +104,9 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
>  		nameoff = le16_to_cpu(de->nameoff);
>
>  		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
> -			nameoff >= PAGE_SIZE)) {
> +			     nameoff >= PAGE_SIZE)) {
>  			errln("%s, invalid de[0].nameoff %u",
> -				__func__, nameoff);
> +			      __func__, nameoff);
>
>  			err = -EIO;
>  			goto skip_this;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190219092525.GA4474%40bhanusree-MacBookAir.
> For more options, visit https://groups.google.com/d/optout.
>

