X-GM-THRID: 6659606226174738432
X-Received: by 2002:a1c:761a:: with SMTP id r26mr163259wmc.1.1550561260476;
        Mon, 18 Feb 2019 23:27:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c843:: with SMTP id c3ls209053wml.7.canary-gmail; Mon,
 18 Feb 2019 23:27:39 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia2S7POnMqKR+DxFyqKyai7JWoBRreCo3SYep6JtXZNicUmqxwGMY8SALCI0RcW5uWn/88A
X-Received: by 2002:a1c:7e45:: with SMTP id z66mr149208wmc.12.1550561259506;
        Mon, 18 Feb 2019 23:27:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550561259; cv=none;
        d=google.com; s=arc-20160816;
        b=kUExGqmJYbmv2CouogO7PL31Kzf8SMEgtIQCB1vfLgAVkHeO/fYVZitDYYYZquh+a0
         HxRntK2vy0uCc/yEqZDwl18TVY8U98pLt3j3cNNhob++9zwuCQsrVemomU1raJdHJa8f
         S4193MwHCWMKaUPMBoYekTr9r/KrvAbszcyOUqZETGGL9pAJmWhKqrtUwg5V+65EqbTy
         k4YgoYM4EkYfeQWfOpMPVAYtu6Wbokf6WyU3TlFWJd4GPwVSRUyC/Is5dP11G74IguzY
         6qJZAw4+ARPm0pegCNR0uMsp7Q9zuaKvVPfGEibkFPW6lN0/P5hBagc1UpKi3oqnukxC
         020g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tIk63aO+M0/UcdC5tC7C5OyHQQq6i18IVHFUpxlUIpE=;
        b=KEKZlZIBhm3KtNn8P0OufPKANhZPvnJGtDqblVOZ0c4/+2VLQbXqTHkhVtRH0Vytg+
         IjntBGv2g5t9T8zirJ0Vz7kYD0QCRz7uzkPLr6qlGbvSy1bcjnUfap6R3hjFyfMEXecv
         t/NTafOoLd3IQ7mSieGKwEcxEK1SZ4lU/QEi76AuTjCLgC7OydSELnIY5zm6mouTyZEI
         Iv7oLaNvVGo8ZhrzO9DAPPsD368w4yGIl7BPnpunniQe7v2BPuUF3E+rWfZ2pZsQoOaO
         qMkFPzBSiO5vKhB9NizY5SAqa6mPqps608QX/FUDGOvhoObucdXL/mvx/xE+C9iUqoI6
         LoXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t25si54412wmh.2.2019.02.18.23.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Feb 2019 23:27:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,387,1544482800"; 
   d="scan'208";a="369954864"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2019 08:27:38 +0100
Date: Tue, 19 Feb 2019 08:27:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, Gao Xiang <gaoxiang25@huawei.com>, 
    Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH]staging:erofs: match
 alignment with open parenthesis
In-Reply-To: <20190219071320.GA3265@bhanusree-MacBookAir>
Message-ID: <alpine.DEB.2.21.1902190823280.2570@hadrien>
References: <20190219071320.GA3265@bhanusree-MacBookAir>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line could be improved.  If you look at prvious patches on
this file, with git log --oneline, you will see that they all have a space
after staging:

Whenever you send a patch, you should use the above command to see what
others have done, rather than picking a subject line on your own.

I think you have also added [Outreachy kernel] to the subject like, in
front of [PATCH].  This is not needed; the mailing list will add one for
you.

On Tue, 19 Feb 2019, Bhanusree Pola wrote:

> This patch fixes the checkpatch.pl issue:
>
> CHECK: Alignment should match open parenthesis

This is a pretty trivial change, so the above could be OK.  But in
general, the log message should say what you are doing and why (and the
why should not be just "because checkpatch told me to" :).  So here you
could say:

Align code with the right side of an enclosing open parenthesis, to
improve readability.  Problem found using checkpatch.

julia

> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/erofs/dir.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
> index 833f052f79d0..7a5daf8d8372 100644
> --- a/drivers/staging/erofs/dir.c
> +++ b/drivers/staging/erofs/dir.c
> @@ -24,8 +24,8 @@ static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
>  };
>
>  static int erofs_fill_dentries(struct dir_context *ctx,
> -	void *dentry_blk, unsigned int *ofs,
> -	unsigned int nameoff, unsigned int maxsize)
> +			       void *dentry_blk, unsigned int *ofs,
> +		 	       unsigned int nameoff, unsigned int maxsize)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190219071320.GA3265%40bhanusree-MacBookAir.
> For more options, visit https://groups.google.com/d/optout.
>

