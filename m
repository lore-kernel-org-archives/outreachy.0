X-GM-THRID: 6673407094899605504
X-Received: by 2002:a0c:b5dd:: with SMTP id o29mr519060qvf.1.1554055111480;
        Sun, 31 Mar 2019 10:58:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:110f:: with SMTP id c15ls3630760qtj.3.gmail; Sun, 31 Mar
 2019 10:58:30 -0700 (PDT)
X-Received: by 2002:ac8:3723:: with SMTP id o32mr6314023qtb.23.1554055110888;
        Sun, 31 Mar 2019 10:58:30 -0700 (PDT)
Received: by 2002:a37:4909:0:0:0:0:0 with SMTP id w9msqka;
        Thu, 28 Mar 2019 08:40:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2WcjjgvR0l5Txwa3oHAoQ7DHyV8RLsy1PNFuyRKKVRTXeYTc7UDyeQ1SxdbYDNxfUTGl4
X-Received: by 2002:a0c:8ab1:: with SMTP id 46mr2733392qvv.59.1553787649435;
        Thu, 28 Mar 2019 08:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553787649; cv=none;
        d=google.com; s=arc-20160816;
        b=cfMy+XmLHD4Nigdw8fNl7Ok/vxMK+Cryk6vdGnnu52ap3z7FITGKoIw+Uo4hb+apOX
         BJsJTgygFt5T3b1FA7uGyFhhFU7+ajpdTTiUesjNSewEmUhR/rpw7TfQB0DUpRRejrQs
         9idY0bWhe60D1UDgqnJbB2+lVZ5ilN7gcDdSspzBhMUO366hk13rM0s1+JPnlJoZapYG
         qsERBPxqKy0azcNqxXwL5ubtN4VJdZz6SfLutufNCAyd1qVCzetJVW1Ar1Jnawo3XgbR
         wt8VXzbXAMaWBQ7NeafbQlsN1FLl70uy2+mfde517a4h9Ic/sT47KJcL86vPB/DR5val
         zybQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=FMFea2/p4bchDvoiaBtd4uWUhIHkONbPzpj7OElTY/k=;
        b=auZa2lc+K3WD75y1jxnQkOFEfmPT++6wcdUgIMLpVnYMB0+8eZgt4acmlpvUMGgoIT
         B76NahGwPwKPm0z4UrYb6R2k3/W0MT1IkO7MvdfLc5+d9rrFDU0/aREX9dgL9hHaQ3kC
         jyURSM3EVQLRjqsEWfaTcLZBn18rQwPJwPC3P/eD7gan2S77QyHxdOMh5iBl0Xis9KYe
         C9p89vlvcX+XD3158eRbYmoqnOOkR8drxAzxdxs04WRN0ebSS9RjwWqPSzi5LAgpJCz4
         kLoHOERogK+JKHqMugkaPvJjOSr87r7wwXPTqBZpa1NhmBuNHpLkBIZBR6audaYYIk6D
         MKNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibmkvmum;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Return-Path: <larry.finger@gmail.com>
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id a5si171279qkb.2.2019.03.28.08.40.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibmkvmum;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Received: by mail-ot1-x330.google.com with SMTP id u15so18711059otq.10
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 08:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FMFea2/p4bchDvoiaBtd4uWUhIHkONbPzpj7OElTY/k=;
        b=ibmkvmumLSJKuV+W1zC+12aDZXw50/fXxjgErhNYHzHEsOsbweChG7hJfCqqDbCzVE
         W2omrqqV/bYIE8dZDBp7guOw5rUnUrn9EehiBr+UiMzuPs5IvIkC4LT+/MsKF/vKzbmB
         +pLjhx+tNYJ/p6Yk6bogNxBWJY4nTK4CDIIc+sglb3KeqcNG2LwbNjQRVSXZlDFQ7WA4
         ItSw30yuA0FLxsY9z4U2tt9/dtVEyTBYs+ct2wnq4n71OMCmBhBaZm0qypxO1vljku77
         mNEzYrjePBzeJ6SxIXdCtYFmCkI5nsJW0B9omHSb/Ngz4QA68uEoPss3LdcSj3VZhf6A
         VaCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FMFea2/p4bchDvoiaBtd4uWUhIHkONbPzpj7OElTY/k=;
        b=p+AGRirBOihq3MMdJfYTYEmwMJx5uRGH6Q81KushSj9Dr+TsKN5cff9fRggYpXcx+f
         1MLCUvuu2Y/dkON9xNSlH7vb6ak2uDx6WWyagg13K2gKsZt8Uiy7bySAMb5Tcirh2ofL
         WpokjBuAkwOnQjd3xP/kHoR5QJuqAWpGO4nyun8mWc/Er7XtRXfvMcd/P9kIC5GFHr8L
         6WYPq+E+X/L51MRuXmVi9Xp8R4FuwZa0UH+ojsTy9aQHnS1bXA671AdQ1f6r+Oyy6zoH
         Gy/jWsFQpg8ooI0A5L45OLsytq2rjd6TtUnHA7pKGgz5uixoi183gZC0tmU1GdMBrU6h
         SfAg==
X-Gm-Message-State: APjAAAVxLwIFzQa26KUyVJCpYyVOsTh5ZWQpPtEiTQ1HRjlaR9JqkhVA
	ns8TPdhU+1Lvl4eQNoc9NyQ=
X-Received: by 2002:a05:6830:1c5:: with SMTP id r5mr20143183ota.360.1553787649129;
        Thu, 28 Mar 2019 08:40:49 -0700 (PDT)
Return-Path: <larry.finger@gmail.com>
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com. [24.31.245.230])
        by smtp.gmail.com with ESMTPSA id r184sm9792670oif.31.2019.03.28.08.40.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:40:48 -0700 (PDT)
Sender: Larry Finger <larry.finger@gmail.com>
Subject: Re: [PATCH] Staging: rtl8188eu: use list_entry to access current list
 element instead of container_of
To: Bhanusree Pola <bhanusreemahesh@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190328114741.4367-1-bhanusreemahesh@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <1bcd8e5a-8041-aab7-db9b-2e9dba2c541e@lwfinger.net>
Date: Thu, 28 Mar 2019 10:40:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190328114741.4367-1-bhanusreemahesh@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/28/19 6:47 AM, Bhanusree Pola wrote:
> For struct list_head* type variables use list_entry to access the current list
> elements rather than using container_of.
> Issue found using coccinelle.
> 
> The following semantic patch is used to implement this:
> 
> <smpl>
> @rule_list@
> struct list_head* l;
> @@
> 
> -container_of
> +list_entry
>    (l,...)
> </smpl>
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Have you actually tested this patch on real hardware? If not, then you must find 
a partner before submitting it. It is one thing to do minor semantic changes 
following the suggestion of some tool for code semantics, but quite another when 
you are significantly modifying list handling.

Your patch may in fact be correct, but until it has actually been tested and the 
commit log reflects such testing, then this patch is not acceptable. After all, 
your reputation would hardly be advanced by submitting a patch that broke a driver!

NACK.

Larry

> ---
>   drivers/staging/rtl8188eu/core/rtw_ap.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index c360856a86ec..0554792e191f 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -179,7 +179,7 @@ void expire_timeout_chk(struct adapter *padapter)
>   
>   	/* check auth_queue */
>   	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, auth_list);
> +		psta = list_entry(plist, struct sta_info, auth_list);
>   		plist = plist->next;
>   
>   		if (psta->expire_to > 0) {
> @@ -212,7 +212,7 @@ void expire_timeout_chk(struct adapter *padapter)
>   
>   	/* check asoc_queue */
>   	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, asoc_list);
> +		psta = list_entry(plist, struct sta_info, asoc_list);
>   		plist = plist->next;
>   
>   		if (chk_sta_is_alive(psta) || !psta->expire_to) {
> @@ -1021,7 +1021,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>   	plist = phead->next;
>   
>   	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>   		plist = plist->next;
>   
>   		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> @@ -1081,7 +1081,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>   	plist = phead->next;
>   
>   	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>   		plist = plist->next;
>   
>   		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> @@ -1328,7 +1328,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
>   
>   		/* check asoc_queue */
>   		while (phead != plist) {
> -			psta = container_of(plist, struct sta_info, asoc_list);
> +			psta = list_entry(plist, struct sta_info, asoc_list);
>   
>   			plist = plist->next;
>   
> @@ -1599,7 +1599,7 @@ int rtw_sta_flush(struct adapter *padapter)
>   
>   	/* free sta asoc_queue */
>   	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, asoc_list);
> +		psta = list_entry(plist, struct sta_info, asoc_list);
>   
>   		plist = plist->next;
>   
> @@ -1726,7 +1726,7 @@ void stop_ap_mode(struct adapter *padapter)
>   	phead = get_list_head(pacl_node_q);
>   	plist = phead->next;
>   	while (phead != plist) {
> -		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
> +		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
>   		plist = plist->next;
>   
>   		if (paclnode->valid) {
> 


