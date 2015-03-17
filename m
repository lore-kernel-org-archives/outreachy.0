X-GM-THRID: 8600984485888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,42921e707e4b56d5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.234.10 with SMTP id ua10mr47988081pac.45.1426605988021;
        Tue, 17 Mar 2015 08:26:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.197 with SMTP id y5ls1430001igl.26.canary; Tue, 17 Mar
 2015 08:26:27 -0700 (PDT)
X-Received: by 10.50.2.71 with SMTP id 7mr72551718igs.4.1426605987832;
        Tue, 17 Mar 2015 08:26:27 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22e.google.com (mail-qc0-x22e.google.com. [2607:f8b0:400d:c01::22e])
        by gmr-mx.google.com with ESMTPS id z1si1688289qcn.2.2015.03.17.08.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) client-ip=2607:f8b0:400d:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22e.google.com with SMTP id kw5so11562164qcb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 08:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=1BJSHogh5tUeB5WXulZ6HtnkSOjiW3Rlj1jXahNcFhc=;
        b=RpFLhCSp80hyurHrJ4ya6FeLKSp/mmAK9Q17ASt1NE11J7tz0/lIfGEK3tMvaexzr+
         58AjoNDY6pNXm/EcrS7EAg2IYYABUbXykKjdfaH4ZsC9JdOyZ+2mYBLZA406KtGFSvmq
         4hHqrZaXIwo9fZYzzxXq+D2H91Q8QwYudcmNeox0VwQmSrU3py2HjBgGF1x31yguq91s
         mzLktnRTyzF7huAL09BzxQXjsBwvx9tnkXAHm1QxFoJYFfVYLuu83Mjn+SpF5xSBl6ix
         MnxtpPoLQ07th5YoNc30H3hzucZ2ZY7LbG1xkGfGyQEseQAN9xNFpLtqhj7Qlh1G8vIj
         lBng==
X-Received: by 10.140.132.197 with SMTP id 188mr86097779qhe.24.1426605987754;
        Tue, 17 Mar 2015 08:26:27 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id b74sm9838263qga.40.2015.03.17.08.26.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:26:27 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <550847A1.5060104@gmail.com>
Date: Tue, 17 Mar 2015 11:26:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Cristina Opriceana <cristina.opriceana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: rtl8192u: Rename struct
 to avoid CamelCase
References: <cover.1426534970.git.cristina.opriceana@gmail.com> <4f739eaeea268c5ed359c8466e51008799a5ef22.1426534970.git.cristina.opriceana@gmail.com>
In-Reply-To: <4f739eaeea268c5ed359c8466e51008799a5ef22.1426534970.git.cristina.opriceana@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/16/15 15:56, Cristina Opriceana wrote:
> This patch renames struct DRxPathSel to dynamic_rx_path_sel in order to
> keep the notations consistent and to remove the warning:
> "CHECK: Avoid CamelCase". Done with coccinelle:
> @@ @@
> struct
> -DRxPathSel
> +dynamic_rx_path_sel
> {...}
> 
> @@ @@
> struct
> -DRxPathSel
> +dynamic_rx_path_sel
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 2 +-
>  drivers/staging/rtl8192u/r8192U_dm.h | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

This is also a win, and again I would prefer to have the commit message
simply state that you are getting rid of the StUdLyCaPs (I never
understood who introduced the phrase CamelCase, it's clearly called
studly caps - don't take too much note at this part :)

Referencing coccinelle is good when you are fixing a technical bug, but
when something is cosmetic, like here, I would leave it out and just
explain the change.

Cheers,
Jes

> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 402abdf..12dd19e 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -40,7 +40,7 @@ struct dig dm_digtable;
>  /* Store current software write register content for MAC PHY. */
>  u8		dm_shadow[16][256] = { {0} };
>  /* For Dynamic Rx Path Selection by Signal Strength */
> -struct DRxPathSel DM_RxPathSelTable;
> +struct dynamic_rx_path_sel DM_RxPathSelTable;
>  
>  /*------------------------Define global variable-----------------------------*/
>  
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
> index 091fdd1..6cd32eb4 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.h
> +++ b/drivers/staging/rtl8192u/r8192U_dm.h
> @@ -163,7 +163,7 @@ typedef enum tag_dig_cck_cs_ratio_state_definition {
>  	DIG_CS_RATIO_HIGHER = 1,
>  	DIG_CS_MAX
>  } dm_dig_cs_ratio_e;
> -struct DRxPathSel {
> +struct dynamic_rx_path_sel {
>  	u8		Enable;
>  	u8		DbgMode;
>  	u8		cck_method;
> @@ -202,7 +202,7 @@ typedef struct tag_Tx_Config_Cmd_Format {
>  /*------------------------Export global variable----------------------------*/
>  extern struct dig dm_digtable;
>  extern u8 dm_shadow[16][256];
> -extern struct DRxPathSel DM_RxPathSelTable;
> +extern struct dynamic_rx_path_sel DM_RxPathSelTable;
>  /*------------------------Export global variable----------------------------*/
>  
>  
> 


