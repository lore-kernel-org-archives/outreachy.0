X-GM-THRID: 6620096919809032192
X-Received: by 2002:a2e:3805:: with SMTP id f5-v6mr1627605lja.24.1541361966452;
        Sun, 04 Nov 2018 12:06:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:42c7:: with SMTP id h68-v6ls560122ljf.3.gmail; Sun, 04
 Nov 2018 12:06:05 -0800 (PST)
X-Google-Smtp-Source: AJdET5dbfyxWFYKaOa/Ixl/PG3EuxacrHv2i9FAQuNW48gDbdk6ebn/o/p4Oqe8f7qtBadp4gK/g
X-Received: by 2002:a2e:9e95:: with SMTP id f21-v6mr1110602ljk.4.1541361965469;
        Sun, 04 Nov 2018 12:06:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541361965; cv=none;
        d=google.com; s=arc-20160816;
        b=J0UiL4Kk/q7cc3/NKI87LZnzUqvEcMK/1NGynjH3h+AJoBJUU8DuNNugKhvbJQLn8x
         K/TEpLwIhfVz6guQQRN1HwZG4knoyHeKhjKVsSmz+mPEEaD9a7ddy8w2IToBa9vhmGZI
         VMXYcEBq/etd6ptdmIcGz4fEhhvUMwSdStJb0o5K6eSkafafh1JLtoI8IzBXWdguVZI9
         PegYUOf3x2ferre0tdrXzyJrD6nz8HNTjs1L8wkCe+x7BV12xEmvfCoepYaoWZkK9ZKH
         E0VG3wzxWOqSKceyAoQ+XldHM1XDqxr51B347YqAzBHMJtWTCvv6yVyqGT7DDWYHUXqX
         01zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=P6uSqFS9Zl/d1C41uQGafhLDBlfZKENxAxJS3c5otjk=;
        b=gupGT5nmfM20FOXTzjW1eWeuL/PaDgYfapc65UC8uLV5YzcMNBjybDjIgtKshjiTG0
         hmDYB/vz3RsVKiOudIBzjiUGydlj2f8mikLnVvitUhbnZIU/BO3sQOOeROsXMRoIADZh
         QvuKJIc+vLVYYODnoIu15dV1dpJbkLYMVal/5nIyxk/FKx0vrVXNfyoclOBWiKd0S+WX
         fzaat+kB3dtvG91l9p6IBpYn+yna/Y/+LnnrQIARzndSxId4G+rQ19J+6tkMjMaPBj8C
         +Ex0UUylGQ6b0/HfecRg7zkomRcsOtpk6HzWNnPBfyjsu4IhiWOcpIrNN+uiCwObgZxH
         pBKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w13-v6si1464677lfe.3.2018.11.04.12.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:06:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354059152"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 21:06:04 +0100
Date: Sun, 4 Nov 2018 21:06:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Sasha Levin <sashal@kernel.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>, 
    linux-erofs@lists.ozlabs.org
Subject: Re: [Outreachy kernel] [PATCH] staging: erofs: Modify conditional
 check.
In-Reply-To: <20181104195701.GA18201@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1811042100420.2360@hadrien>
References: <20181104195701.GA18201@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Bhagyashri P. Dighole wrote:

> This patch includes modified condition to check for bio struct.

The commit message is sort of wordy and imprecise.  Don't say "This patch
includes".  The commit log message should be in the imperative.  That is,
it should start with a verb.  Here, the first word could perhaps be
Modify.  Afterwards, you should explain what was done and why.  Here you
could say "Use ! for a NULL test rather than explicitly comparing to NULL,
to be more concise and readable".  Then, if you came across this issue due
to checkpatch, it would be nice to acknowledge that - Issue found using
checkpatch.

Finally, if you are going to send the other changes then they all need to
be in a series.  On the other hand, for your first patch, it is fine to
only send this change.  But in that case you have to work on something
else until Greg picks this up.  If there are multiple changes on one file,
he needs the series number to know in what order to apply them.

julia

>
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/erofs/data.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
> index 6384f73..a671ad4 100644
> --- a/drivers/staging/erofs/data.c
> +++ b/drivers/staging/erofs/data.c
> @@ -240,7 +240,7 @@ static inline struct bio *erofs_read_raw_page(
>  		bio = NULL;
>  	}
>
> -	if (bio == NULL) {
> +	if (!bio) {
>  		struct erofs_map_blocks map = {
>  			.m_la = blknr_to_addr(current_block),
>  		};
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104195701.GA18201%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

