X-GM-THRID: 8800398475264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1ad4f5129e9b727
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.111.4 with SMTP id v4mr74039752yhg.55.1426605481124;
        Tue, 17 Mar 2015 08:18:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.8 with SMTP id x8ls141840igg.11.gmail; Tue, 17 Mar 2015
 08:18:00 -0700 (PDT)
X-Received: by 10.66.157.129 with SMTP id wm1mr69691632pab.15.1426605480815;
        Tue, 17 Mar 2015 08:18:00 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id e5si1685018qcg.1.2015.03.17.08.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id a8so10801099qgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 08:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=kEIEOLY6kPTqLAA8ze64Yf3ZhRCUbB1SGl5F+NaP0EU=;
        b=p9bdBtubrchaeeVzEEIVa61k0D0reaVjmfldvqIR6WqsQ+MCPTrfFamOhZZQq8J9Mx
         BoQyKb4MKxHuBi/GjMxBgtu9HmvfpsW2rwvnCt1OZygL3TqZNDRmVrYkDF/MxVFxfc9K
         Y/o+O1g9WrZ893K4mqTkg1gsoEW/8pyW2JjDdzZq0MN/B2FomPzTx0PBqrn8GSeblxiH
         kfHfEnfv5VmMrSRu5HLAOwwpXT7BxVdmIxIZqucXFDEis2+T6iqK9YriPFgIIvr9bP1d
         cf94SGhYmvSKyuUMG3d2U2YXX01w/8BbdK8Rd/iBdCmWK/nG+7hjlq1XiIMFlyCUTq4y
         c6bg==
X-Received: by 10.55.26.222 with SMTP id l91mr105819312qkh.32.1426605480698;
        Tue, 17 Mar 2015 08:18:00 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id b18sm9770450qkh.36.2015.03.17.08.17.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:18:00 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <550845A6.4010200@gmail.com>
Date: Tue, 17 Mar 2015 11:17:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ioana Ciornei <ciorneiioana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: p80211conv: Replace memcpy
 with ether_addr_copy
References: <1426598097-26197-1-git-send-email-ciorneiioana@gmail.com>
In-Reply-To: <1426598097-26197-1-git-send-email-ciorneiioana@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/17/15 09:14, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet 
> addresses. 
> Changes done using the following coccinelle script:
> 
> @@
> expression e1, e2;
> @@
> 
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2); 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/p80211conv.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Looks good to me!

Jes


> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index bd69e8c..b3f48074 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
>  
>  	switch (wlandev->macmode) {
>  	case WLAN_MACMODE_IBSS_STA:
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
> +		ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid);
>  		break;
>  	case WLAN_MACMODE_ESS_STA:
>  		fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
> -		memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr);
>  		break;
>  	case WLAN_MACMODE_ESS_AP:
>  		fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
> -		memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
> -		memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
> +		ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr);
> +		ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid);
> +		ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr);
>  		break;
>  	default:
>  		netdev_err(wlandev->netdev,
> @@ -241,7 +241,7 @@ static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
>  	for (i = 0; i < wlandev->spy_number; i++) {
>  
>  		if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
> -			memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
> +			ether_addr_copy(wlandev->spy_address[i], mac);
>  			wlandev->spy_stat[i].level = rxmeta->signal;
>  			wlandev->spy_stat[i].noise = rxmeta->noise;
>  			wlandev->spy_stat[i].qual =
> 


