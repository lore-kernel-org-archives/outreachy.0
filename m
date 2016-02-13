X-GM-THRID: 6250668020589395968
X-Received: by 10.50.43.166 with SMTP id x6mr1868638igl.1.1455350932274;
        Sat, 13 Feb 2016 00:08:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls1083285ioe.53.gmail; Sat, 13 Feb
 2016 00:08:51 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr6567075ioi.5.1455350931974;
        Sat, 13 Feb 2016 00:08:51 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id b196si541022vkf.1.2016.02.13.00.08.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:08:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id c3so5575191vkb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Zbtk/4eAOBxaJacW0CMIKbu3IJm8/DBkyUZvJIxQEKA=;
        b=zbz2e+xkMPYtmJcIBcWCcyEj+ROEJ2TXL2WoiyKfRh3/EXMRh6M5RIdLdowmNQVp+T
         mvB4SaQN7qlbch3BffpyXpNVO0b+mO032giukmWNHm+ipI2dLzxgGfyfTSmDborFSHl5
         9nEm3gn62GI68KN0hNLQJP6Q2YFjjcHGdW0Xmkx6odtaBtZxk5OC3VFztUk63e4UOACb
         0LdoD3EAbLciEp0eqIkO+7WYxOoa9U0qwWUdj00WZ4NqG3f6RSWeVxhdqr7I8e2QwVMo
         GZGClG/lYOmS3xesVtJQpqTPVp7qHEQMhVuZeLbyv18zGMrhot7wFp7SDa6o0UOMCcbV
         ZjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=Zbtk/4eAOBxaJacW0CMIKbu3IJm8/DBkyUZvJIxQEKA=;
        b=NtF2Yajaba1XwLedvAkLwzllHjNwPu/aRelve0Q7D3VL7or8PLhQRVymQ9pBAENBas
         DB86qHoFJxSuzuGRkKtHcK4EAAeSUDIBqSosvrtIZ9gzbBv42QCdKvd+naC7Y+2eqmbk
         Wan89q33csklEiWrYcKF4ITKp/O1iFAys/9xq6ld9fJY+H3V8h6BStLu21OoQhjn7LgG
         gOSjJ1gz9sabGPKeLClehBx9vLpOxB0agd+ZkIwHw3n6yYYu+ULb8zr14IzdpnN7lx0U
         HxZ1UWljyL2PAmGK79yfrW4VnN3EppujRgOkFOAxVoV6VNmSJyeRLK5S+ab+a9YFa6ri
         aYmg==
X-Gm-Message-State: AG10YOQ0+xsBke8jg7GcsDui5csdHCZ4JcSfus4syWKY/FLnZ6JYP54SYcELBEvM+cABRXynNJbcVvr3PiK1Tg==
MIME-Version: 1.0
X-Received: by 10.31.161.195 with SMTP id k186mr4316051vke.129.1455350931796;
 Sat, 13 Feb 2016 00:08:51 -0800 (PST)
Received: by 10.31.142.129 with HTTP; Sat, 13 Feb 2016 00:08:51 -0800 (PST)
In-Reply-To: <20160213070414.GA21071@amitoj-Inspiron-3542>
References: <20160213070414.GA21071@amitoj-Inspiron-3542>
Date: Sat, 13 Feb 2016 13:38:51 +0530
Message-ID: <CAK-LDbLFZvs3M8B6mQgeP649ZgMCCho3kCN9Cx++g9EuS4ePSA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8192u: ieee80211:
 Remove msleep_interruptible_rsl Macro
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 12:34 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Remove driver specific macro msleep_interruptible_rsl as it has been
> replaced by a direct call to msleep_interruptible in the single
> instance referencing it.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Reviewed-by: Vaishali Thakkar <vaishali.thakkar@oracle.com>

> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index c0a0897..ae1c104 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -329,8 +329,6 @@ typedef struct ieee_param {
>
>
>  // linux under 2.6.9 release may not support it, so modify it for common use
> -#define msleep_interruptible_rsl  msleep_interruptible
> -
>  #define IEEE80211_DATA_LEN             2304
>  /* Maximum size for the MA-UNITDATA primitive, 802.11 standard section
>     6.2.1.1.2.
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160213070414.GA21071%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

