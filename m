X-GM-THRID: 6255366153272557568
X-Received: by 10.25.153.196 with SMTP id b187mr2007027lfe.3.1457255948993;
        Sun, 06 Mar 2016 01:19:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.203 with SMTP id o194ls250140lfe.39.gmail; Sun, 06 Mar
 2016 01:19:08 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr880446lbb.23.1457255948304;
        Sun, 06 Mar 2016 01:19:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si268384wmd.1.2016.03.06.01.19.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:19:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,545,1449529200"; 
   d="scan'208";a="206175254"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Mar 2016 10:19:06 +0100
Date: Sun, 6 Mar 2016 18:19:02 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: G Pooja Shamili <poojashamili@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Remove the
 unnecessary parantheses
In-Reply-To: <20160306091309.GA30726@localhost>
Message-ID: <alpine.DEB.2.10.1603061818080.2808@hadrien>
References: <20160306091309.GA30726@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 6 Mar 2016, G Pooja Shamili wrote:

> The unnecessary parantheses on the right side of assignments were remove
> as in most cases (expect for ==, >=, <=, !=), they are futile.
>
> This was done using Coccinelle, the semantic patch being:
>
> @@
> expression E1,E2,E3;
> binary operator bin_op = {==,>=,<=,!=};
> @@
>
> E1 =
> (
> -(
> +(
> E2 bin_op E3
> -)
> +)

You don't really need toremove the parentheses and then add them back.
You can just put E2 bin_op E3 with no annotation at all, and then it will
do nothing in those cases.

julia

> |
> -(
> E2
> -)
> )
> ;
>
> Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
> ---
> Changes from Version 1:
> 	    * Changed the name in the From: and Signed-off-by: to full
> name.
>
>  drivers/staging/rtl8712/rtl871x_mlme.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 1b022db..604ef58 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -1285,7 +1285,7 @@ sint r8712_set_key(struct _adapter *adapter,
>  	}
>  	pcmd->cmdcode = _SetKey_CMD_;
>  	pcmd->parmbuf = (u8 *)psetkeyparm;
> -	pcmd->cmdsz =  (sizeof(struct setkey_parm));
> +	pcmd->cmdsz =  sizeof(struct setkey_parm);
>  	pcmd->rsp = NULL;
>  	pcmd->rspsz = 0;
>  	INIT_LIST_HEAD(&pcmd->list);
> @@ -1748,8 +1748,8 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
>  				sizeof(struct NDIS_802_11_FIXED_IEs));
>  	if (p && len > 0) {
>  		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
> -		max_ampdu_sz = (pht_capie->ampdu_params_info &
> -				IEEE80211_HT_CAP_AMPDU_FACTOR);
> +		max_ampdu_sz = pht_capie->ampdu_params_info &
> +				IEEE80211_HT_CAP_AMPDU_FACTOR;
>  		/* max_ampdu_sz (kbytes); */
>  		max_ampdu_sz = 1 << (max_ampdu_sz + 3);
>  		phtpriv->rx_ampdu_maxlen = max_ampdu_sz;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160306091309.GA30726%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

