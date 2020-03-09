X-GM-THRID: 6801912764487958528
X-Received: by 2002:ad4:4bc6:: with SMTP id l6mr14147171qvw.34.1583754085225;
        Mon, 09 Mar 2020 04:41:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls1145203qtd.1.gmail; Mon, 09 Mar
 2020 04:41:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsFp9rj6fZv/IvYClYy58wYSGisOuqOPUSa7dwjKPPDH32aNEkIEbI/GSvCqvRVk0t6AhX3
X-Received: by 2002:ac8:7396:: with SMTP id t22mr14580539qtp.182.1583754084094;
        Mon, 09 Mar 2020 04:41:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754084; cv=none;
        d=google.com; s=arc-20160816;
        b=b1NVEjbSRRtbDFK6S+zBWFE2UbWVjjNxT5/jCQv8Xq5Mn/htz9qO0BUtNMSpAujn+2
         fYsx5cabaD6AKDaamXg5+YuVENk+ZtVLDp5h4sF0cYFNsUg735eSueAl+cWk/Xwszx6n
         8EvGd8zPegEeTouVkEx883lXSeRSa7btjzTZglQgeSIx+zqk8tPbXKCzJlse3oLXQqEP
         bhqWbuxlJ6MhYjTk+ibZmMknkbMj57l7My6a0R70NRcAdrzrssISFK+Qt4xPPEriPiG7
         prFIjTHS+wrCcv+R1ByaF4qazlntXoLyZ+omxOTK2/etSQu8E9BY8Iw+38mK1ArxR6hZ
         jrqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=PwStKdQHIFp79oVfXKwTruTxpwlHcE/MOIT1Gc0Pb20=;
        b=xTo9My+p8buWDdJeSUpO5NxohUVh+Tjvy+lHA2Q+IX4xBqgblBNcs0V0bkDqrfuMv8
         1umq5JKQ6k9e+K/OxJ4aC7Ul+RShC1bbP8H8SLcmNfnseaBUdM1Am+UBV2DhbYO2BtL2
         sICwGKceztGjmQR0ppN9YfqK7eohK5My8TtfvfZOkeKf5mWCiI57C2YC8duUTpUaf0yp
         uvQIaDyeB9EsMWGLV8+y8RFxWDGx5FwcKBzt8G9FkO6RpNxLf+2/a2c/R4hprbCIfFup
         h0iZTMbAPrfOfkMm5nUt3RCHgv3clw7OKi7KHm+uaKoaWGYdbZeWVXhkCNyHth+enW1b
         vd9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EQE6WY8H;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id w53si535767qtb.4.2020.03.09.04.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:41:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EQE6WY8H;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583754083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PwStKdQHIFp79oVfXKwTruTxpwlHcE/MOIT1Gc0Pb20=;
	b=EQE6WY8HfeWQQ5GdhLsJmP50K1vnyqRSAVwAJUpbaZFYSLraZ3Rm+DHdJ+X27DJh+0w5H0
	qshR0mF/mx5G/OPDbXe8K09wvAZR5eW5wdtyjrdi6SKn1vKHzdwUuva5pDiUP+v5aGHnIu
	Wj3Bbs1XYzncKDJGZC1WtV6tg3YYEDo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-zrP9qfzNOp2ZdsHDfgMGew-1; Mon, 09 Mar 2020 07:41:13 -0400
X-MC-Unique: zrP9qfzNOp2ZdsHDfgMGew-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8286E189F763;
	Mon,  9 Mar 2020 11:41:12 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 535E7272A2;
	Mon,  9 Mar 2020 11:41:11 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:41:06 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: alignment should match
 open parenthesis
Message-ID: <20200309124106.703d5e1a@elisabeth>
In-Reply-To: <20200308185518.5838-1-payalskshirsagar1234@gmail.com>
References: <20200308185518.5838-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  9 Mar 2020 00:25:18 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Align code to open parenthesis.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/wfx/data_tx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 8b0c52392319..0038dc7666cf 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
>  }
>  
>  static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
> -				      struct ieee80211_sta *sta,
> -				      struct ieee80211_hdr *hdr)
> +				 struct ieee80211_sta *sta,
> +				 struct ieee80211_hdr *hdr)
>  {
>  	struct wfx_sta_priv *sta_priv =
>  		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
> @@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
>  }
>  
>  static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
> -				  struct ieee80211_tx_info *tx_info)
> +			     struct ieee80211_tx_info *tx_info)
>  {
>  	bool tx_policy_renew = false;
>  	u8 rate_id;

Change looks good, more Cc:'s needed.

-- 
Stefano


