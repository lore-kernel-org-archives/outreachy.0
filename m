X-GM-THRID: 8600984485888
X-Received: by 10.180.101.101 with SMTP id ff5mr13452027wib.5.1426610861931;
        Tue, 17 Mar 2015 09:47:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.227 with SMTP id hf3ls132713wib.8.gmail; Tue, 17 Mar
 2015 09:47:41 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr6934005wix.4.1426610861599;
        Tue, 17 Mar 2015 09:47:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew13si170473wid.0.2015.03.17.09.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 09:47:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,417,1422918000"; 
   d="scan'208";a="126428478"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2015 17:47:41 +0100
Date: Tue, 17 Mar 2015 17:47:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jes Sorensen <jes.sorensen@gmail.com>
cc: Cristina Opriceana <cristina.opriceana@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Do not add
 new typedefs
In-Reply-To: <55084703.4010906@gmail.com>
Message-ID: <alpine.DEB.2.10.1503171746270.2527@hadrien>
References: <cover.1426534970.git.cristina.opriceana@gmail.com> <b16e872b9c5244f790cbcf81f3d801fddcae95f7.1426534970.git.cristina.opriceana@gmail.com> <55084703.4010906@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 17 Mar 2015, Jes Sorensen wrote:

> On 03/16/15 15:55, Cristina Opriceana wrote:
> > This patch removes the dig_t and DRxPathSel type definitions in order to
> > avoid the following warning: "WARNING: Do not add new typedefs".
> > Done with coccinelle and this script:
> >
> > @r@ type t; identifier id; @@
> > typedef struct id
> > {...}
> > t;
> >
> > @script:python get_name@
> > t << r.t;
> > tdres;
> > @@
> > coccinelle.tdres = t.replace("_t", "");
> >
> > @r_match@ type r.t; identifier r.id;
> > identifier get_name.tdres; @@
> > -typedef
> > struct
> > -id
> > +tdres
> > {...}
> > -t
> > ;
> > @r_replace@ type r.t; identifier get_name.tdres; @@
> > -t
> > +struct tdres
> >
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
>
> Removing pointless typedefs like these is clearly a win. However for
> something like this, I don't think you need to include the coccinnelle
> rules, simply stating that you are getting rid of unnecessary typedefs
> is a win.

Actually, I think the rule is nice, because we can see that she is taking
care of the _t before looking at each case.  I would tend to put a
complete rule like this in a cover letter though, but it depends on how
the patch series is organized.

julia


>
> Cheers,
> Jes
>
>
> > ---
> >  drivers/staging/rtl8192u/r8192U_dm.c |  5 +++--
> >  drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
> >  2 files changed, 9 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> > index 8669162..402abdf 100644
> > --- a/drivers/staging/rtl8192u/r8192U_dm.c
> > +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> > @@ -36,11 +36,12 @@ static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
> >
> >  /*------------------------Define global variable-----------------------------*/
> >  /* Debug variable ? */
> > -dig_t	dm_digtable;
> > +struct dig dm_digtable;
> >  /* Store current software write register content for MAC PHY. */
> >  u8		dm_shadow[16][256] = { {0} };
> >  /* For Dynamic Rx Path Selection by Signal Strength */
> > -DRxPathSel	DM_RxPathSelTable;
> > +struct DRxPathSel DM_RxPathSelTable;
> > +
> >  /*------------------------Define global variable-----------------------------*/
> >
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_dm.h b/drivers/staging/rtl8192u/r8192U_dm.h
> > index 3008f91..091fdd1 100644
> > --- a/drivers/staging/rtl8192u/r8192U_dm.h
> > +++ b/drivers/staging/rtl8192u/r8192U_dm.h
> > @@ -67,7 +67,7 @@
> >
> >  /*------------------------------Define structure----------------------------*/
> >  /* 2007/10/04 MH Define upper and lower threshold of DIG enable or disable. */
> > -typedef struct _dynamic_initial_gain_threshold_ {
> > +struct dig {
> >  	u8		dig_enable_flag;
> >  	u8		dig_algorithm;
> >  	u8		dbg_mode;
> > @@ -98,7 +98,7 @@ typedef struct _dynamic_initial_gain_threshold_ {
> >  	bool		initialgain_lowerbound_state;
> >
> >  	long		rssi_val;
> > -} dig_t;
> > +};
> >
> >  typedef enum tag_dynamic_init_gain_state_definition {
> >  	DM_STA_DIG_OFF = 0,
> > @@ -163,7 +163,7 @@ typedef enum tag_dig_cck_cs_ratio_state_definition {
> >  	DIG_CS_RATIO_HIGHER = 1,
> >  	DIG_CS_MAX
> >  } dm_dig_cs_ratio_e;
> > -typedef struct _Dynamic_Rx_Path_Selection_ {
> > +struct DRxPathSel {
> >  	u8		Enable;
> >  	u8		DbgMode;
> >  	u8		cck_method;
> > @@ -177,7 +177,7 @@ typedef struct _Dynamic_Rx_Path_Selection_ {
> >  	u8		rf_rssi[4];
> >  	u8		rf_enable_rssi_th[4];
> >  	long		cck_pwdb_sta[4];
> > -} DRxPathSel;
> > +};
> >
> >  typedef enum tag_CCK_Rx_Path_Method_Definition {
> >  	CCK_Rx_Version_1 = 0,
> > @@ -200,9 +200,9 @@ typedef struct tag_Tx_Config_Cmd_Format {
> >
> >
> >  /*------------------------Export global variable----------------------------*/
> > -extern dig_t dm_digtable;
> > +extern struct dig dm_digtable;
> >  extern u8 dm_shadow[16][256];
> > -extern DRxPathSel DM_RxPathSelTable;
> > +extern struct DRxPathSel DM_RxPathSelTable;
> >  /*------------------------Export global variable----------------------------*/
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/55084703.4010906%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

