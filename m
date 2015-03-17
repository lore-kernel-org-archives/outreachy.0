X-GM-THRID: 8600984485888
X-Received: by 10.236.11.196 with SMTP id 44mr70345665yhx.31.1426605831024;
        Tue, 17 Mar 2015 08:23:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.131 with SMTP id 3ls164266ioj.41.gmail; Tue, 17 Mar 2015
 08:23:50 -0700 (PDT)
X-Received: by 10.66.140.14 with SMTP id rc14mr20121260pab.18.1426605830823;
        Tue, 17 Mar 2015 08:23:50 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x229.google.com (mail-qc0-x229.google.com. [2607:f8b0:400d:c01::229])
        by gmr-mx.google.com with ESMTPS id e5si1688541qcg.1.2015.03.17.08.23.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:23:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) client-ip=2607:f8b0:400d:c01::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::229 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x229.google.com with SMTP id kw5so11458721qcb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 08:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=xdFiBtEvtUFrHM1ccaKHVxNdb4dT79wviTZoEOtI1gA=;
        b=FPEjcSPQgeHszS+MCyKzKjXjYpywyjrzRBHTvFKohlAQvRlbH00sf9qQkyfK1J19+9
         ug/FA2hmbgRfjvpuKfq4KjRJQ60Fk9/B/XMBVC0VDbEtpg7pTNNrW7vuzKqPUmKStztG
         K5D9WzzvxSlktWrJMxOWWuPL0l0l5TO0HgpwJ4RZsKPXM525uvkhQBOxCh+3l+gSc37u
         IE3VEmWO8Y0S3m2HyvPCHw8HngWYgTB89/Jei5EitofBzkKztQB+sSrYX3zyGQ4rB3NM
         bJMFM+qewVNM7rr3t9qcMIBVRrJCONeHAQkAhFz9YQJovmi01DtGHqOiJDXsPlEiUZsO
         s8lQ==
X-Received: by 10.55.23.204 with SMTP id 73mr101017571qkx.47.1426605830709;
        Tue, 17 Mar 2015 08:23:50 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id q32sm9783678qkh.32.2015.03.17.08.23.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:23:49 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55084703.4010906@gmail.com>
Date: Tue, 17 Mar 2015 11:23:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Cristina Opriceana <cristina.opriceana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Do not add
 new typedefs
References: <cover.1426534970.git.cristina.opriceana@gmail.com> <b16e872b9c5244f790cbcf81f3d801fddcae95f7.1426534970.git.cristina.opriceana@gmail.com>
In-Reply-To: <b16e872b9c5244f790cbcf81f3d801fddcae95f7.1426534970.git.cristina.opriceana@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/16/15 15:55, Cristina Opriceana wrote:
> This patch removes the dig_t and DRxPathSel type definitions in order to
> avoid the following warning: "WARNING: Do not add new typedefs".
> Done with coccinelle and this script:
> 
> @r@ type t; identifier id; @@
> typedef struct id
> {...}
> t;
> 
> @script:python get_name@
> t << r.t;
> tdres;
> @@
> coccinelle.tdres = t.replace("_t", "");
> 
> @r_match@ type r.t; identifier r.id;
> identifier get_name.tdres; @@
> -typedef
> struct
> -id
> +tdres
> {...}
> -t
> ;
> @r_replace@ type r.t; identifier get_name.tdres; @@
> -t
> +struct tdres
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Removing pointless typedefs like these is clearly a win. However for
something like this, I don't think you need to include the coccinnelle
rules, simply stating that you are getting rid of unnecessary typedefs
is a win.

Cheers,
Jes


> ---
>  drivers/staging/rtl8192u/r8192U_dm.c |  5 +++--
>  drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
>  2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 8669162..402abdf 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -36,11 +36,12 @@ static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
>  
>  /*------------------------Define global variable-----------------------------*/
>  /* Debug variable ? */
> -dig_t	dm_digtable;
> +struct dig dm_digtable;
>  /* Store current software write register content for MAC PHY. */
>  u8		dm_shadow[16][256] = { {0} };
>  /* For Dynamic Rx Path Selection by Signal Strength */
> -DRxPathSel	DM_RxPathSelTable;
> +struct DRxPathSel DM_RxPathSelTable;
> +
>  /*------------------------Define global variable-----------------------------*/
>  
>  
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
> index 3008f91..091fdd1 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.h
> +++ b/drivers/staging/rtl8192u/r8192U_dm.h
> @@ -67,7 +67,7 @@
>  
>  /*------------------------------Define structure----------------------------*/
>  /* 2007/10/04 MH Define upper and lower threshold of DIG enable or disable. */
> -typedef struct _dynamic_initial_gain_threshold_ {
> +struct dig {
>  	u8		dig_enable_flag;
>  	u8		dig_algorithm;
>  	u8		dbg_mode;
> @@ -98,7 +98,7 @@ typedef struct _dynamic_initial_gain_threshold_ {
>  	bool		initialgain_lowerbound_state;
>  
>  	long		rssi_val;
> -} dig_t;
> +};
>  
>  typedef enum tag_dynamic_init_gain_state_definition {
>  	DM_STA_DIG_OFF = 0,
> @@ -163,7 +163,7 @@ typedef enum tag_dig_cck_cs_ratio_state_definition {
>  	DIG_CS_RATIO_HIGHER = 1,
>  	DIG_CS_MAX
>  } dm_dig_cs_ratio_e;
> -typedef struct _Dynamic_Rx_Path_Selection_ {
> +struct DRxPathSel {
>  	u8		Enable;
>  	u8		DbgMode;
>  	u8		cck_method;
> @@ -177,7 +177,7 @@ typedef struct _Dynamic_Rx_Path_Selection_ {
>  	u8		rf_rssi[4];
>  	u8		rf_enable_rssi_th[4];
>  	long		cck_pwdb_sta[4];
> -} DRxPathSel;
> +};
>  
>  typedef enum tag_CCK_Rx_Path_Method_Definition {
>  	CCK_Rx_Version_1 = 0,
> @@ -200,9 +200,9 @@ typedef struct tag_Tx_Config_Cmd_Format {
>  
>  
>  /*------------------------Export global variable----------------------------*/
> -extern dig_t dm_digtable;
> +extern struct dig dm_digtable;
>  extern u8 dm_shadow[16][256];
> -extern DRxPathSel DM_RxPathSelTable;
> +extern struct DRxPathSel DM_RxPathSelTable;
>  /*------------------------Export global variable----------------------------*/
>  
>  
> 


