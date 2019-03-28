X-GM-THRID: 6673513874647416832
X-Received: by 2002:a2e:818d:: with SMTP id e13mr1006198ljg.11.1553798788224;
        Thu, 28 Mar 2019 11:46:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls3420367lji.14.gmail; Thu, 28
 Mar 2019 11:46:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwV1/iO14raBZw2HDk8OGEI2yaXHZhDY4rEx53AR6e1ToNgBfyiwXT4U7t/+dhwelMC58hm
X-Received: by 2002:a2e:9e42:: with SMTP id g2mr39616ljk.13.1553798787394;
        Thu, 28 Mar 2019 11:46:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553798787; cv=none;
        d=google.com; s=arc-20160816;
        b=yfPHBcYJGz5atZaKUrKnkM73/IVY93nzHgmNwxn00x0wVPAKKw4cIBuhSdUrgv3W7P
         Xq/YaAQHOMTNGYkDZgl4DUF11pqQJkEyZxR4B2VX3vkesxVQS+gZm1z33fEuM0BaKbp7
         orV0UJ4/f8rvL6ZcUZkGGXpFXzyXi7qxvoxP7oy3mVxSEJxgr7KQGsggOpVVXmtqEAMr
         wA0fbvLCVwQOBVdL8b7kamLsxahK/elaZ7Uy03IzlnxQol3r/cItw4FV8ktS2imAJksr
         yoqDl4NUEk9qKlDgAw7ATRJ0wV1pvjUZX0hqto5U0F+ArLc27LTGAcUA+i/qI/GuAi9A
         iOZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=p4LcJzpoxs7HAUUc2Z9KUxcHDiPKXi04Ofx760KpYlQ=;
        b=Qa1tqGw97nS4lKlCIMcw02iiz8CTceZMNnbC1HiQ6HxsI9g4Eug4cTfYYCRfnrwlat
         9B9sAM3JDmMCg6N3Y5cYTl4QcL5U03k1AjajoDWLo7k2cv0F3a2baUlJgGL/i083EmgJ
         zjnLmGOQUrbf9z+CZrjbZeyfGr/5mNfbVD5sh6y1s+t3QuBhf/rUSAtappLlK7uZVbuO
         IUq99XnfQCLQLq/Isv6RhgMoI1FjNRJ/pnfpAIsgFP8h725lHEnJUM6YXUdCOVYoSWEo
         79mOmhbDQPSr1q15mloXVlThCrp9IzHmKhQPqDTez7kD/iACk9YFpcMfE/aLcOeVoGVQ
         dw6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v89si318396lje.4.2019.03.28.11.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:46:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,281,1549926000"; 
   d="scan'208";a="376226716"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 19:46:26 +0100
Date: Thu, 28 Mar 2019 19:46:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Use !x
 in place of NULL comparison
In-Reply-To: <20190328184151.4315-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281945240.2760@hadrien>
References: <20190328184151.4315-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 29 Mar 2019, Vatsala Narang wrote:

> change NULL comparison to Boolean negation.Issue found using Coccinelle.
> Semantic patch used to solve the problem is as follow:
>
> @replace_rule@
> expression e;
> @@
>
> - e == NULL
> + !e
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 6009fe0e1d4f..25d9237bc23f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -341,7 +341,7 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	struct rtl_80211_hdr_4addr *hdr;
>  	int res, hdrlen;
>
> -	if (crypt == NULL || crypt->ops->decrypt_mpdu == NULL)
> +	if (!crypt || !crypt->ops->decrypt_mpdu)
>  		return 0;
>  	if (ieee->hwsec_active)
>  	{
> @@ -388,7 +388,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
>  	struct rtl_80211_hdr_4addr *hdr;
>  	int res, hdrlen;
>
> -	if (crypt == NULL || crypt->ops->decrypt_msdu == NULL)
> +	if (!crypt || !crypt->ops->decrypt_msdu)
>  		return 0;
>  	if (ieee->hwsec_active)
>  	{
> @@ -983,8 +983,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>
>  		/* allow NULL decrypt to indicate an station specific override
>  		 * for default encryption */
> -		if (crypt && (crypt->ops == NULL ||
> -			      crypt->ops->decrypt_mpdu == NULL))
> +		if (crypt && (!crypt->ops ||
> +			      !crypt->ops->decrypt_mpdu))

You could put the two lines into one to improve readability, now that the
lines are shorter.

>  			crypt = NULL;
>
>  		if (!crypt && (fc & IEEE80211_FCTL_WEP)) {
> @@ -1285,7 +1285,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	}
>
>  //added by amy for reorder
> -	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL){
> +	if (!ieee->pHTInfo->bCurRxReorderEnable || !pTS){

You could put a space before the {

julia

>  //added by amy for reorder
>  		for(i = 0; i<rxb->nr_subframes; i++) {
>  			struct sk_buff *sub_skb = rxb->subframes[i];
> @@ -1421,9 +1421,9 @@ static int ieee80211_read_qos_info_element(struct
>  	int ret = 0;
>  	u16 size = sizeof(struct ieee80211_qos_information_element) - 2;
>
> -	if (element_info == NULL)
> +	if (!element_info)
>  		return -1;
> -	if (info_element == NULL)
> +	if (!info_element)
>  		return -1;
>
>  	if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328184151.4315-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

