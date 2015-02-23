X-GM-THRID: 2568138784768
X-Received: by 10.70.132.138 with SMTP id ou10mr13458186pdb.2.1424722647834;
        Mon, 23 Feb 2015 12:17:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.230 with SMTP id 93ls2623621qgd.79.gmail; Mon, 23 Feb
 2015 12:17:27 -0800 (PST)
X-Received: by 10.236.223.41 with SMTP id u39mr13163639yhp.49.1424722647638;
        Mon, 23 Feb 2015 12:17:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22f.google.com (mail-qa0-x22f.google.com. [2607:f8b0:400d:c00::22f])
        by gmr-mx.google.com with ESMTPS id e5si3617275qcg.1.2015.02.23.12.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:17:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22f as permitted sender) client-ip=2607:f8b0:400d:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22f as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x22f.google.com with SMTP id v10so23868844qac.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=ZMb+kQBt0aMf2GJt97iLZXBqx5K+29FkR/vaDLXgbl8=;
        b=JkDIa74mrv6VMaUQDlN39kGEF6TgngDc6b2dvP2IwKHfQM79lALbLufP6uTHOQ6GI7
         JLE8DDZ+kVcZjQJ9EP09HUpnU4PRMGHBGgmC9/6qhFBM5OZ3sJv/K1Bxb6VmbZiJLIlg
         ZluLAaptQdFGfhHL2X+m9Plx+Khsny9NEcM7cMoxWoaGod27yXIxPOWhwn6NXHZqkbWk
         uc5lwjs2wM83YT7XDDIiNe/W9HEbOjYJhQAoBFBPDR9nqZuYc2kyLHoorkYxuRrgye5y
         iX9kFXrgwlwYKxC/tmzBs7nTdqA9G2sLTsYPbATzQXlUBVK02Sy3452lA0sv39bDG7cC
         a/vg==
X-Received: by 10.140.145.3 with SMTP id 3mr29320234qhr.42.1424722647535;
        Mon, 23 Feb 2015 12:17:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id i46sm28104307qgd.35.2015.02.23.12.17.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:17:26 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8AD5.4030104@gmail.com>
Date: Mon, 23 Feb 2015 15:17:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Delete space
References: <1424712486-23905-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424712486-23905-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 12:28, Hatice ERTÜRK wrote:
> This Error found with checkpatch.pl
> 
> ERROR: else should follow close brace '}'
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Patch is good, but the commit message isn't correct. You are not
deleting space, but placing else on the same line as the closing bracket.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index bece9b3..8124d9e 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -914,8 +914,7 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>  
>  			if (psta->qos_option)
>  				qos_option = true;
> -		}
> -		else {
> +		} else {
>  			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
>  			res = _FAIL;
>  			goto exit;
> 


