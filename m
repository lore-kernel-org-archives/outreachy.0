X-GM-THRID: 6669200248940789760
X-Received: by 2002:a17:906:5985:: with SMTP id j5mr679487ejq.8.1552822552093;
        Sun, 17 Mar 2019 04:35:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:e08f:: with SMTP id f15ls3630004edl.0.gmail; Sun, 17 Mar
 2019 04:35:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzmhcCfrdGq6ThbQgXXJ4+3R/6Ue9XXNN2TlbYG+eODsjZ3KA8RFUHkpAA0rKm36tFf9cJu
X-Received: by 2002:a50:8692:: with SMTP id r18mr620028eda.9.1552822551309;
        Sun, 17 Mar 2019 04:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822551; cv=none;
        d=google.com; s=arc-20160816;
        b=UC7UhFOlnFIcmDbe8PGZyvE9WP8QgJ8tHYK5UHq77om2OZJzBzndeZrqEb+psZQ4nZ
         7/RVUdZZ8YwTGlieezAKlL5vsGxeXhy/hP3v+/lkaiTf3VbJ5d9+7mJ5YDo/dSV2xX/C
         GmWO2Jo3MSrtQP6RSiTyUOOaw3l65SM0klMh7KMwDy6wJM4D/YcV/v8ShiWx8IaX/HDM
         tBDS/rJZdjoy0nE/j+FeWqYm0gY7/cJf5qGtgA46D1Jsk7Zb2f49KS/CCLt53SnqvfCE
         LN7na+jwepJ6tJ9HmaRAHMWn2DpUqiUKofVbm1VKOHW7Ergnq+CMRtZ6Ci6xn7/8mfhe
         wKOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8vGjiAKuJbsi96JBXe2STjCrJYlVBiEbnKQWpJ/ciOA=;
        b=M6V4L950PH+mGgSYxNq9kjlKZuby6TeY7dtx2+TGAPhd0jV1YXMiZDCdqlcQGFbuFo
         0XitzFTuxjXnFqm325mv0CqPTZzKb9Kf5OUGsHvZY7xv/lw645eNRq5xMbyheXlLYnoz
         lk1B/GSg2F1veXLeAuq7N/f18sITJXSDgIoicLep1fUndnTGJdD/IcOSzaubGDW8RpKP
         PtK8OU9ePrhysEK4RO7QrE3U8TS7IBWXmq/dy+lVVTyvjHxt7EvRjYsbxl+zdFzq7iSz
         QIdH3bv2AO4b+CaP5MED811AnyxBRvfFi6omB+ByTNWSf2GqX5lYnCvwV1X+9/hUdK2Z
         /T+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q1si248182edd.5.2019.03.17.04.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:35:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="374331457"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 12:35:50 +0100
Date: Sun, 17 Mar 2019 12:35:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: fix line over
 80 characters.
In-Reply-To: <20190317112857.18220-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903171234531.2588@hadrien>
References: <20190317112857.18220-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 17 Mar 2019, Jules Irenge wrote:

> Fix coding style issues, which solves checkpatch.pl warning:
>     "WARNING: line over 80 characters".

You have two patches with the same subject.  Actually they do the same
thing, and work on the same file, so they could be merged into one patch.

Also you are missing the Signed-off-by.

julia

> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 11c704b27c3c..53c8793c382f 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +		/* Do not replace with kstrtoul: temp need to be updated */
>  		index = simple_strtoul(cp, &temp, 10);
>  		if (index > 255) {
>  			rejected++;
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317112857.18220-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

