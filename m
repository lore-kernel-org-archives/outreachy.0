X-GM-THRID: 6641541425255153664
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:aca:c796:: with SMTP id x144mr34584269oif.29.1546377139887;
        Tue, 01 Jan 2019 13:12:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5412:: with SMTP id i18ls9973416oib.5.gmail; Tue, 01 Jan
 2019 13:12:18 -0800 (PST)
X-Google-Smtp-Source: AFSGD/XvCVS1iwvWCSM50/o4XU7x9onwAiZDMAibQeYFIw23z+9tooETZgqD9JLCO4TqHk3hZx8M
X-Received: by 2002:aca:b2d4:: with SMTP id b203mr36107054oif.57.1546377138806;
        Tue, 01 Jan 2019 13:12:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1546377138; cv=none;
        d=google.com; s=arc-20160816;
        b=RnhWP3Yx+oI5RWCO3Qn/dplDA37Z+ln24sjZE1P0yZZdLCOKxswJDTj1rlO48iXPqE
         +/DHCc/rkFc1U/gWXGhdDcjkXbzuLqJ/9sQrq46vOQh2IGmIqPI6KskeWBvi3sYPwk4h
         SOkRNYOuBshsz3z8L4rdRSBpVxnYzdUqGlkD7nIsUIuzBEZE78P9JxWE0QCoGKspqjnm
         SDbhKnudHvMsmncv7JEBkE2/cdrTpeFaMCwm1mp5IqrN/uzqFYKho9XXJ0BdFQicW9ny
         GUBQCkzXwKQbL1X1I+jHcKeuUWGdWmQutQH9uEBpfzDzoAo0tljaT8MDXLVChmLxpZE4
         LRKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X0EAYqG3WZAGQdaAhkVbHFVwi5hizi50J0NLxqJA0us=;
        b=pkirNyQkCzF8zfb49SBrEahKw7VRjOgdTlcznZdeJ2xBeeBwSPznWazhlQhNoeuL8O
         3vbSPSgOSqaI0r0dozPsT4wKw8V+MgdB2EFeRBADnJpcxCJY07zsm9z4X3QIf5CJz0O3
         nX1act7IegYXeCHldVYpeEaiYufEi9AisrM1cgFz68i+FjU485OZEV9CgMuvjBOylx5L
         Av1idjWiqE2F9ylsSjjVIZXwv+hqiU8IMDdPy/sXr9RsvfniYSgAcw5ybtdvMREkJtTY
         RXaJUp7wFmoGB3KaiL9TW2ap2/PEoHwSm0c+rPjyRVY0Vzq0NZpGAdxMc4K4T6fzMFQf
         JLdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mJ7UxVHu;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id g23si2591197otk.0.2019.01.01.13.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jan 2019 13:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mJ7UxVHu;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id w6so13803899pgl.6
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Jan 2019 13:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=X0EAYqG3WZAGQdaAhkVbHFVwi5hizi50J0NLxqJA0us=;
        b=mJ7UxVHutOrbc/kehLq6duemk7kDPUoHRjGTByqtTf2nidmpc28bWtH/IsOzAgCaDV
         MWUhVIbAI81Yhrl21moLTyrX/iXkO8jqcx5YF4paPqJoQPe/zX6n4BI4nAONzeDWfVuw
         WnwXUk1lIHvYdyw+/KmcRNdvilEytaBnjeJTsbO3QSDlBTO9wE6kdJ2KItvn2DtZIzK/
         LMsLd1u5xADrro0rk6mw5/b2Rs/ZX5rQSESHT+evLBLufISQ42SrUm95VbTBeRrI9gEL
         EbHi1uxOoYYaanSSHvERrqv3S4A3Jz01QDYSsPxV25tpZVyZfiZv8fE4nmqoKRvdFfof
         +bFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=X0EAYqG3WZAGQdaAhkVbHFVwi5hizi50J0NLxqJA0us=;
        b=qQM/7LX85AjuEumGxSR/Ljo1kr3uFGkKdyomAOyhjbNlLqVISq7A0VMzum4uFCQJL0
         4wS6iPmXLVAVOopq81L67fUn3qy4RG5H03CpE99W9QXKOQHKyblKREi262yjWaZY7ZxC
         1HO40BnsudTZMfjIygczxm/c/iAA29t4fdFudM5wWhsp5hC9vvcJ7VapNTFUlHJzsFLK
         Wv+zZXUWNYoGjnbJOJysaLHHxmJWuPgXK8wn9WX+LManMGLW+JriS9uH0n26bmw1YVeX
         DTT1wKK+D+630AwNyQpYvo6Tz1pzdrReKpBVqfpnI8gYcHwFr4XE0FaotuYAnDIvWGJ7
         hZUQ==
X-Gm-Message-State: AJcUukcDVf1rtaBZBhp9CIUouCRBXykHO7KF8I/idBI7qH7KzCWQ2Rh6
	6LKiy8743exOz6e6wfvTdGY=
X-Received: by 2002:a62:13c3:: with SMTP id 64mr42243769pft.93.1546377137915;
        Tue, 01 Jan 2019 13:12:17 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id c67sm65053441pfg.170.2019.01.01.13.12.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 01 Jan 2019 13:12:17 -0800 (PST)
Date: Wed, 2 Jan 2019 02:42:12 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: himadri18.07@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: rename Channel to
 channel style
Message-ID: <20190101211211.GB5858@himanshu-Vostro-3559>
References: <dc077f72-2857-4ed2-809b-cff2f5c32cf3@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc077f72-2857-4ed2-809b-cff2f5c32cf3@googlegroups.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Jan 01, 2019 at 06:52:44AM -0800, himadri18.07@gmail.com wrote:
> This patch fixes the checkpatch.pl warning:

"This patch... That patch..."

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

>         CHECK: Avoid CamelCase: <Channel>
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---

That patch seems broken as you sent as an attachement
through Gmail ?

Tabs are converted to spaces.

When sending a new patch send either using Mutt as explained
in the tutorial or `git send-email` whichever suits you better.

+ suggestion from Julia.

>  drivers/staging/rtl8192e/dot11d.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.c 
> b/drivers/staging/rtl8192e/dot11d.c
> index a1c096124683..687deac19796 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -15,7 +15,7 @@
>  #include "dot11d.h"
> 
>  struct channel_list {
> -       u8      Channel[32];
> +       u8      channel[32];
>         u8      Len;
>  };
> 
> @@ -66,11 +66,11 @@ void Dot11d_Channelmap(u8 channel_plan, struct 
> rtllib_device *ieee)
>                 memset(GET_DOT11D_INFO(ieee)->channel_map, 0,
>                        sizeof(GET_DOT11D_INFO(ieee)->channel_map));
>                 for (i = 0; i < ChannelPlan[channel_plan].Len; i++) {
> -                       if (ChannelPlan[channel_plan].Channel[i] < min_chan 
> ||
> -                           ChannelPlan[channel_plan].Channel[i] > max_chan)
> +                       if (ChannelPlan[channel_plan].channel[i] < min_chan 
> ||
> +                           ChannelPlan[channel_plan].channel[i] > max_chan)
>                                 break;
>                         GET_DOT11D_INFO(ieee)->channel_map[ChannelPlan
> -                                       [channel_plan].Channel[i]] = 1;
> +                                       [channel_plan].channel[i]] = 1;
>                 }
>         }
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dc077f72-2857-4ed2-809b-cff2f5c32cf3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

