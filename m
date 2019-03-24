X-GM-THRID: 6671816179609239552
X-Received: by 2002:a50:eb4d:: with SMTP id z13mr4612436edp.200.1553409955121;
        Sat, 23 Mar 2019 23:45:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:18b2:: with SMTP id c18ls2388154ejf.1.gmail; Sat, 23
 Mar 2019 23:45:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBwhRA7E+WfnSDfcqkPiLiSwcauXC6azCiLT/wklTDMP86BVBKnAZ1aq1HWHBSmlPGr2yB
X-Received: by 2002:a17:906:4cc3:: with SMTP id q3mr10402950ejt.173.1553409954424;
        Sat, 23 Mar 2019 23:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553409954; cv=none;
        d=google.com; s=arc-20160816;
        b=e3WGA+l+TYGn00TWH6WrpwfyD4maxDFLmeYHUD/VxV428YVGSXDv4jRjjVDLsgk3Du
         B7bwJaD35hT5qmrHjNJdYuEn+h+f04Wcn/4gjFK1xPWlvcM/+KHi5McVVzjPnU0EZX7b
         dn6nnr9OU5+WgctjzMoA6/2eXl7gVtq2RsEKVdxtMutNe7yf428Wpj0SmgG7QzE4brAO
         Tao3Ca+HvbfQanA1DrmVLEH18fckhpNDYySs5S3pELYDxsnZG9mHwHUck9sTfy+ToOf6
         u1kLDbxHmEOTdjSmYYcOXbumMi+5CoA7n/cuOTP6GBB4ZLxC1XINhsSvuBAT+w2I2MqH
         o+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0QoIdnvw+BZxG5842cCcsEc+HeUjkacQ30p/SzXeaeA=;
        b=TwDaw6XtoNbP36dXV7pInOw3lOgbpFyBppmnMzbIZ37TKo09j/iXwXSd0mI7pphwL8
         zm5ka15iiQgjKM4HnpR8tXs3BimpRewiTRzgHw2Xtl/KYLZvIoKzoIxxbsxNB/djCpj1
         Bjf8hFA+77KX7ce3xVM63SeD+ttAXlJ2gN0VENSbYAgR6kSaAZMjEyMsCF+PQuotYvKx
         zGhzT7S7N+Zc6YxKg85KUefclWGMwU6vM1xRh1OdWzU3WvS0xGjJCnrLvaDWHjPVVCQo
         F934/1EeTCYcksgeQDNT52TyWv6wU5unBq4nOuplGXbruxdxTijtkxj+VKD1Y5GDp1Zg
         8ZOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si754671eda.4.2019.03.23.23.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:45:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300510453"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 07:45:53 +0100
Date: Sun, 24 Mar 2019 07:45:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8712: avoid camelcase
 variable name 'backupTKIPCountermeasure'
In-Reply-To: <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240744510.2526@hadrien>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com> <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1195574163-1553409953=:2526"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1195574163-1553409953=:2526
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Mar 2019, Payal Kshirsagar wrote:

> Eliminate camelcase variable names to fix the style issue – ‘avoid
> camelcase’.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8712/mlme_linux.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
> index 2463344..6323061 100644
> --- a/drivers/staging/rtl8712/mlme_linux.c
> +++ b/drivers/staging/rtl8712/mlme_linux.c
> @@ -88,7 +88,7 @@ static struct RT_PMKID_LIST   backup_PMKID_List[NUM_PMKID_CACHE];
>  void r8712_os_indicate_disconnect(struct _adapter *adapter)
>  {
>  	u8 backup_PMKID_index = 0;
> -	u8 backupTKIPCountermeasure = 0x00;
> +	u8 backup_TKIP_count_measure = 0x00;
>
>  	r8712_indicate_wx_disassoc_event(adapter);
>  	netif_carrier_off(adapter->pnetdev);
> @@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
>  		       &adapter->securitypriv.PMKIDList[0],
>  		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
>  		backup_PMKID_index = adapter->securitypriv.PMKIDIndex;
> -		backupTKIPCountermeasure =
> +		backup_TKIP_count_measure =

You actually changed the sense of the identifier here.  The original name
ended with countermeasure, while your name ends with count_measure, which
suggests something quite different.

julia

>  			adapter->securitypriv.btkip_countermeasure;
>  		memset((unsigned char *)&adapter->securitypriv, 0,
>  		       sizeof(struct security_priv));
> @@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter)
>  		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
>  		adapter->securitypriv.PMKIDIndex = backup_PMKID_index;
>  		adapter->securitypriv.btkip_countermeasure =
> -					 backupTKIPCountermeasure;
> +					 backup_TKIP_count_measure;
>  	} else { /*reset values in securitypriv*/
>  		struct security_priv *psec_priv = &adapter->securitypriv;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1195574163-1553409953=:2526--

