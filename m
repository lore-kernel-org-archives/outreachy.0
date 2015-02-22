X-GM-THRID: 2558431068160
X-Received: by 10.182.199.66 with SMTP id ji2mr8422686obc.14.1424629842688;
        Sun, 22 Feb 2015 10:30:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.74 with SMTP id m71ls1358700iom.109.gmail; Sun, 22 Feb
 2015 10:30:42 -0800 (PST)
X-Received: by 10.66.66.108 with SMTP id e12mr8319893pat.30.1424629842460;
        Sun, 22 Feb 2015 10:30:42 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id kt5si6232034qcb.3.2015.02.22.10.30.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:30:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id q107so21507362qgd.6
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 10:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=o8FI2tivUWxabu4i5ptBX3dHOCpYLN8KeLXicfHlEaw=;
        b=q+/YMXf27KwgjWDiWZ6jansDe2rcKPg/b+QfOD6GsjVFT3ak0E7Ja4+gv7MTZDshbe
         2qpc52KxtWKDrlamI0x9oGboLjEwVLAQTTHg4NmV4ZIeiZl+lmCeypgVtyQ78ddtWZhO
         IIDjOY5NAab3kLmnq6DnQEK2I+Ac8UBLGMnHFVeSFXrloEzwI7348kHDAoWWEfIzgPq+
         /ujZ/SStZfG/6+SDCGGvPtSNe3yb7COhZQHLIUs2Gp6hZ54Ewz+aNC/ZvykSl5CsWc8I
         JJYCvDU3ijUQ3PW5laylSdgYTudFZsPdkh5jxsHYL8bhTEAFgErZIEP9D8yWHZMfEvq2
         8OIw==
X-Received: by 10.140.202.213 with SMTP id x204mr17256085qha.95.1424629842335;
        Sun, 22 Feb 2015 10:30:42 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id f8sm4954039qaa.10.2015.02.22.10.30.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:30:41 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EA2051.707@gmail.com>
Date: Sun, 22 Feb 2015 13:30:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Deleted
 space prohibited between function name and open parenthesis
References: <1424629071-15794-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424629071-15794-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/22/15 13:17, Hatice ERTÜRK wrote:
> WARNING: space prohibited between function name and open parenthesis '('
> 
> Remove unnecessary space between function name and opening parenthesis.
> 
> That was found by running checkpatch
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_ap.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Patch looks good - next time Put your own message first in the commit,
and the 'WARNING....' portion after where you write 'This was found by
running checkpatch'.

You don't need to resubmit this one.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
> index 04717dc..87728b9 100644
> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
> @@ -1642,7 +1642,7 @@ u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool acti
>  	return beacon_updated;
>  }
>  
> -int rtw_ap_inform_ch_switch23a (struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
> +int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
>  {
>  	struct list_head *phead, *plist;
>  	struct sta_info *psta = NULL;
> @@ -1663,12 +1663,12 @@ int rtw_ap_inform_ch_switch23a (struct rtw_adapter *padapter, u8 new_ch, u8 ch_o
>  	list_for_each(plist, phead) {
>  		psta = container_of(plist, struct sta_info, asoc_list);
>  
> -		issue_action_spct_ch_switch23a (padapter, psta->hwaddr, new_ch, ch_offset);
> +		issue_action_spct_ch_switch23a(padapter, psta->hwaddr, new_ch, ch_offset);
>  		psta->expire_to = ((pstapriv->expire_to * 2) > 5) ? 5 : (pstapriv->expire_to * 2);
>  	}
>  	spin_unlock_bh(&pstapriv->asoc_list_lock);
>  
> -	issue_action_spct_ch_switch23a (padapter, bc_addr, new_ch, ch_offset);
> +	issue_action_spct_ch_switch23a(padapter, bc_addr, new_ch, ch_offset);
>  
>  	return 0;
>  }
> @@ -1871,7 +1871,7 @@ void stop_ap_mode23a(struct rtw_adapter *padapter)
>  	pmlmeext->bstart_bss = false;
>  
>  	/* reset and init security priv , this can refine with rtw_reset_securitypriv23a */
> -	memset((unsigned char *)&padapter->securitypriv, 0, sizeof (struct security_priv));
> +	memset((unsigned char *)&padapter->securitypriv, 0, sizeof(struct security_priv));
>  	padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
>  	padapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
>  
> 


