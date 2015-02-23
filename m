X-GM-THRID: 2898795692032
X-Received: by 10.66.151.101 with SMTP id up5mr13467377pab.10.1424722598481;
        Mon, 23 Feb 2015 12:16:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.42 with SMTP id f10ls964457igq.14.canary; Mon, 23 Feb
 2015 12:16:38 -0800 (PST)
X-Received: by 10.42.62.67 with SMTP id x3mr14191334ich.4.1424722598281;
        Mon, 23 Feb 2015 12:16:38 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id e5si3617058qcg.1.2015.02.23.12.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:16:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f43.google.com with SMTP id i50so26466573qgf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=GY3kWdS5MdDK03Pn7qVEvgddbwG6Yahdkcfy5iplWWA=;
        b=zVOUs3JIGC+7AgDDXKo8ojrBnh3248opvPKzIg9pRC/XK6viSO9ju3cPdr6k93GUNF
         W/L73b6dddz5LNABAbvrssGVPO8So71YHsAlQMHKaJP1axDOuP4c3zQx5OoJFduh8VE2
         5fjyJ1z5+RYgAMdw0hB9cVN4D+WZNJq5YgCSV3+ocsD0rKnG9oPocroaegm5ZSlbd3cb
         fdEvjLG7mF9FdPrV5U4zXEdfYVmEKLIkJtV/mvxL75bCGth8tlogDRAykQPBjAkRGayH
         Ixix9omVlLP82UQt8RW9phyzUovQAfvm+v8SuqBa1u2EOaHnZ+5fF/IqtnpBU1+g8hgU
         3diA==
X-Received: by 10.140.238.2 with SMTP id j2mr28713845qhc.5.1424722598163;
        Mon, 23 Feb 2015 12:16:38 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 10sm2834844qha.38.2015.02.23.12.16.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:16:37 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8AA4.8000209@gmail.com>
Date: Mon, 23 Feb 2015 15:16:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Delete space
 before '++'
References: <1424713009-24299-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424713009-24299-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 12:36, Hatice ERTÜRK wrote:
> This Error found with checkpatch.pl
> 
> ERROR: space prohibited before that '++'
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch is good, a slightly more personalized commit message would be
nice, but you don't need to repost for that with this one.

Jes


> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index 8124d9e..d851675 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -174,7 +174,7 @@ int _rtw_init_xmit_priv23a(struct xmit_priv *pxmitpriv,
>  	rtw_alloc_hwxmits23a(padapter);
>  	rtw_init_hwxmits23a(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
>  
> -	for (i = 0; i < 4; i ++)
> +	for (i = 0; i < 4; i++)
>  		pxmitpriv->wmm_para_seq[i] = i;
>  
>  	sema_init(&pxmitpriv->tx_retevt, 0);
> 


