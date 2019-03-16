X-GM-THRID: 6668964143803924480
X-Received: by 2002:a50:aa70:: with SMTP id p45mr1022003edc.6.1552740782402;
        Sat, 16 Mar 2019 05:53:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls3116096edf.1.gmail; Sat, 16 Mar
 2019 05:53:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxj7MSMuTZzdYaHF+XD0Uba/yBRnKK3pVle1InxWMzy11jo4AtllXNV5EEnU7v41zj5IENg
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr1023424edr.0.1552740781655;
        Sat, 16 Mar 2019 05:53:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552740781; cv=none;
        d=google.com; s=arc-20160816;
        b=0/x7nd28fefDml+fIKWamPUBRhx3oni8uuaHZCEk3skF42Oh3zBjM3Y1AXDkYz9xdu
         9kno9qWfh4dCg0KWxu6etkc8iUlqtzmONoD5xKm1sdajHbEBmkF0dF5b3/97MRWU6B71
         YxtzDzlLIkZ9U7cN4WxulqDAZTgpzS03iEixyoBmBC1BaLLRD5JY8sFiACYNJuWgmPn2
         ASU+Z06fHk0gFbgOZVp+tJCyJpVePev30AXztU+0oGEOrJFYIEw+DQlt8B6YwbhBX/LS
         xlP/hT0zOQasnqhIFkoOanhDmxc3a3W/HbY9+7JLDblgFalHJPiUsrnr3ocuJFv13lAg
         9KCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rdbI9+o85QuvZNiW1qn1fVoXzjl4QUlPkdN0kI2MDAQ=;
        b=fNx8gTp9zUgLAzTgdBHjrqt53n/OcGHmRt9hXF029AaSswIdoMENO94/ZJ56Gb77N5
         FJnZCfA1cI5uaC5KCndgGXej65FohzdvslpLgcI9SPLm3N2aBKXbbKd0GCCUE7NHmwJT
         o5MBfOpUXVUVgXdq0slOmJ85s+TWMQvY/dfShcACwcNLdwphfWc+OtCeCfKVtfJKuhya
         BsLjRRQVBrW/WZDp/Hf6oTzSU823Owgj4PkmAEhvI0ENYgVua77Tkl8aCdAw3z3j63lz
         7wLjPTvW4vAmna6ZVnKfk4Gsrfqc2uAKj4hzvw8QdHVPvnBsBtX89+WQQ8HXNa9Ncfrw
         8qJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h5si193943ejq.0.2019.03.16.05.53.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:53:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="374000798"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:53:01 +0100
Date: Sat, 16 Mar 2019 13:53:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: char * array
 declaration as static const
In-Reply-To: <1552740653-4845-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161351520.2487@hadrien>
References: <1552740653-4845-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Payal Kshirsagar wrote:

> changing type from char * to static const char *const

This has addressed only one of the issues mentioned on the previous patch.
Furthermore, this patch is against your previous patch, while it should be
against Greg's tree.  Finally, this is the second version of the patch, so
the subject line should contain PATCH v2 and below the --- you should
explain what has changed since v1.

julia


>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/audio_manager_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
> index 6ef7381..f673e58 100644
> --- a/drivers/staging/greybus/audio_manager_module.c
> +++ b/drivers/staging/greybus/audio_manager_module.c
> @@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
>  	char ip_devices_string[64];
>  	char op_devices_string[64];
>
> -	static const char * const envp[] = {
> +	static const char *const envp[] = {
>  		name_string,
>  		vid_string,
>  		pid_string,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552740653-4845-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

