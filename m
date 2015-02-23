X-GM-THRID: 2906148306944
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c69ec8befe8a10f7
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.29.3 with SMTP id f3mr14219191obh.16.1424722533013;
        Mon, 23 Feb 2015 12:15:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.104 with SMTP id u95ls2362696qgd.27.gmail; Mon, 23 Feb
 2015 12:15:32 -0800 (PST)
X-Received: by 10.236.15.167 with SMTP id f27mr13081841yhf.8.1424722532876;
        Mon, 23 Feb 2015 12:15:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x236.google.com (mail-qa0-x236.google.com. [2607:f8b0:400d:c00::236])
        by gmr-mx.google.com with ESMTPS id e5si3616648qcg.1.2015.02.23.12.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:15:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) client-ip=2607:f8b0:400d:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x236.google.com with SMTP id x12so23927981qac.13
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=KHhW+T4KKt11HKpn22Rrxx2Q34qo0EJ9gtTY10DrrFk=;
        b=eBBIkNee5WlruBvXQShAO2e2vghtZbsOCKv/LLz+TWnStBpcC1nJTKN1k5STm1JEPy
         CKR37FZVaYiZBSzbumPrjhbH3cjsV72DjSajo5kdB1y+AyfZVawclWuHyb4YUzy6PEIg
         dntZnsKmasBqmdFgzM+2w0rWMvzs99IabzfsbD1ncpoKSsIgfWc+BusZT77N5v/xRRGt
         jA4mUWItz/J6c+YrVBHlMarPG20pI/ZilpLYdxOuaVeC6gUNCuryQBIOO/aiCu/BoHyc
         Ynvn/6AG8pdyTGbeIIo8bYT+h/4GdcImte9nRi2RNZ0ZQimpMrt8Ls2Y2DNv+GtYNN6a
         Ixrw==
X-Received: by 10.229.131.138 with SMTP id x10mr29039986qcs.25.1424722532797;
        Mon, 23 Feb 2015 12:15:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id b8sm15888922qai.21.2015.02.23.12.15.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:15:32 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8A63.80508@gmail.com>
Date: Mon, 23 Feb 2015 15:15:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Add space
 after '>'
References: <1424714588-24720-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424714588-24720-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 13:03, Hatice ERTÜRK wrote:
> This Error found with checkpatch.pl
> 
> ERROR: spaces required around that '>'
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index d851675..32fbf022 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -1200,7 +1200,7 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>  		pdata += mem_sz;
>  		data_len -= mem_sz;
>  
> -		if ((pattrib->icv_len >0) && (pattrib->bswenc)) {
> +		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {

Please provide a personalized commit message, and you can also remove
the unnecessary parenthesis' here.

Cheers,
Jes


>  			memcpy(pframe, pattrib->icv, pattrib->icv_len);
>  			pframe += pattrib->icv_len;
>  		}
> 


