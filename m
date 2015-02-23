X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.24.228 with SMTP id x64mr13488346yhx.26.1424720818952;
        Mon, 23 Feb 2015 11:46:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.253.2 with SMTP id zw2ls811957igc.41.canary; Mon, 23 Feb
 2015 11:46:58 -0800 (PST)
X-Received: by 10.66.171.9 with SMTP id aq9mr13809514pac.20.1424720818585;
        Mon, 23 Feb 2015 11:46:58 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id ba9si6221866qcb.0.2015.02.23.11.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:46:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id h3so26189875qgf.11
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=moeBCB37HsV8D3Q66qc4Z1Z5WfmYS+Pm1Vy0jggLPMA=;
        b=pR12SK7LqroqbfhEPz5MlOqQWjQLeKhJnyNp8/vXGReUixRRw9S1uf4XJafpH6tr1w
         MgpfTy+xkzdNOn0zJ8VVrcHSJmotNxrFj6fEFkK/378KQIiaLU5ws6FnAkS0R7QC0GN1
         LwAcP0J+WL6Sk7MyG59ok0zK6N3zgAKNXtZPeYlEr6bBtO/v6U1PjbMXiir9qeDJ4jWu
         WS12ztr0Rd0u5bXauH7uTyS6Y0xFllb//Uo16/ia3iLhM0MAPxy3vrp4Cn9UjugkVlh9
         gEFAD9O2Y1x76WSw9lUUu4Yhuwp5TmrJgklQVtiPPTgzl2Latxh7nZXHAYctYS4KO44A
         Pd5g==
X-Received: by 10.140.92.33 with SMTP id a30mr26996492qge.30.1424720818467;
        Mon, 23 Feb 2015 11:46:58 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id b204sm18059981qhc.27.2015.02.23.11.46.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:46:57 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB83B0.3090505@gmail.com>
Date: Mon, 23 Feb 2015 14:46:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/4] staging: rtl8192u: Clean-up
 comment line style
References: <cover.1424683659.git.navyasri.tech@gmail.com> <0103912c5f48fa319b9503c985a2fd28952e2b90.1424683660.git.navyasri.tech@gmail.com>
In-Reply-To: <0103912c5f48fa319b9503c985a2fd28952e2b90.1424683660.git.navyasri.tech@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 04:51, Navya Sri Nizamkari wrote:
> Convert style of comment from C99 to C89 to fix the
> following checkpatch.pl error:
> 
> ERROR: "Do not use C99 // comments"
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v3:
>     -None in this file of the patchset
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index eb89321..bcb2479 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -11,7 +11,7 @@
>   *
>   */
>  
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
> 

This is dead code, rather than changing the comment style, you should
remove the line completely.

Cheers,
Jes


