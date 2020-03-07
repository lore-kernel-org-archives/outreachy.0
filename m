X-GM-THRID: 6801564551927037952
X-Received: by 2002:a2e:9885:: with SMTP id b5mr5627805ljj.83.1583613950333;
        Sat, 07 Mar 2020 12:45:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls1093156ljn.10.gmail; Sat,
 07 Mar 2020 12:45:48 -0800 (PST)
X-Google-Smtp-Source: ADFU+vvArdzm7IMYDscFMMdzXG0H5txgct7PaaiGuxFdsjhTfQE0KubA5+I9yzW9QixAFJvAPQcB
X-Received: by 2002:a2e:8250:: with SMTP id j16mr5529180ljh.274.1583613948664;
        Sat, 07 Mar 2020 12:45:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583613948; cv=none;
        d=google.com; s=arc-20160816;
        b=JX0jHiQJ4fEyZQG0pNZecpp/gwgR4+rIrQ5jMfJ5IAT6YvR1pc9TG/pxoc2gcS59Co
         i3WfwzAUlZgnUVwOwhDm+BXIuJlzaBf5stzd/fmkKvGy/IAhoxOgNikYD8ByD7xSHDBc
         3BGvKOaF8lLHTRRggf3I5HHCZUK+kocpW2waBIMq5tSlMIvteVKDjvq1bvNzimI0zTyR
         /wZurEQAw6k17AoHLAjIJJkWKBonhPByXywalXKqZbXNNu0G+9samv2ZBJmAcD8armeJ
         BqPYw/v5A3KdJNbvTbaWHujCLG4/Vu525sGAReNeN0P8liIEwEds0Ls7mmDiV+oE/ChN
         iZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kMxvbavVpPNEcrE9/7Co7admFfWet7QIQg5X1m9HajY=;
        b=fdl82GqCHmGoYD/nIRxwjijYzyTX123D9j66MPDmed6ouzwO9QpEAf34oKRS7TDWwO
         UlLwgwSoJjIInaCKkStltHbmlzzK3+a4nvjBuJuXIxPBxUDZADt2vJXdG1cx8Odu+w8D
         CGNlzgLZgX6VivXWnKJ5YhrD49hX/f/pnW6Os5WKHEAdGofkp8hNpb4fp2A5mC7BPedd
         G72UkPXWpJMZEz+X04l3Jhg/YNJHI1UKC2nVAw70RG/BBreBH8qHVVC8J/wVPR5VRxrv
         87+3WKU8J8rlAGYg5xXWT32bQAd2FRMPR92c5n/IHk6TOlMbXG9SMB+hZL5k+f4NlgeE
         NYKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u8si266013lfu.3.2020.03.07.12.45.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 12:45:48 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,527,1574118000"; 
   d="scan'208";a="341622021"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2020 21:45:47 +0100
Date: Sat, 7 Mar 2020 21:45:47 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Fix line over 80 characters
In-Reply-To: <20200307202409.GA10517@siyah2>
Message-ID: <alpine.DEB.2.21.2003072143020.2294@hadrien>
References: <20200307202409.GA10517@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 7 Mar 2020, Gokce Kuler wrote:

> Fix line over 80 characters
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 1ae5a77..37e424f 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -2161,7 +2161,8 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
>  	mutex_lock(&p_fs->v_mutex);
>
>  	clu_to_free.dir = fid->start_clu;
> -	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
> +	clu_to_free.size = (s32)((fid->size - 1) >>
> +		       	p_fs->cluster_size_bits) + 1;

Maybe the changed code is more confusing than the original, because now
the ( is on one line  and the corresponding ) is on a different line.  One
could think that the whole second line is the right argument of the >>.

I guess that the 1 could be on the second line, but it would look a bit
lonely.  So perhaps slightly exceeding 80 characters is actually the best
option here.

julia

>  	clu_to_free.flags = fid->flags;
>
>  	if (!is_dir_empty(sb, &clu_to_free)) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200307202409.GA10517%40siyah2.
>

