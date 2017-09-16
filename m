X-GM-THRID: 6466286051877978112
X-Received: by 10.28.215.195 with SMTP id o186mr543962wmg.9.1505554697777;
        Sat, 16 Sep 2017 02:38:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls727485wmg.4.canary-gmail; Sat, 16
 Sep 2017 02:38:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBM2a1AM0UpYzjWFPCKxDTLDHOCTfQfTZfwFDgDVv+nxrhqbG4jbgYaAcde0aKYvdCA6P1f
X-Received: by 10.28.140.199 with SMTP id o190mr521665wmd.6.1505554696735;
        Sat, 16 Sep 2017 02:38:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505554696; cv=none;
        d=google.com; s=arc-20160816;
        b=Vsqqv4rPtSPVi/9btYDBRHDtXrzay+ZowpdUAKuLUqtJr0JSrKSFEkIxqtzk3ubUOE
         VQsltTBwkIoRxqwKw0Bc9I3YjqroWhdxRYCR3+EPbUE6LYKe7/6YMQsG9f7ixj6o6wrp
         pbcdFVXWS1zfycqHPeGvMlsnPtAcGYmKbEsNMIK76vrZoo5CS4z5leaMrtZ+4lSBd7n2
         Ao/wBpiaou2BZ/bN8d/NwjPe38PI2PIrnimVAHhr/Lfwj9jqf6rN0IMsgSy2eNYOC4K6
         Xp/uBIb+S3YtL1roZBJv37HSx2Nwtqze8fXwAmNtsoZYGfloJFoTPde0Hh2mAVylZv3f
         hYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+gE3k9L2l+CtktEVb/Lae729/wCfyGPiOEmfV4Yk6/o=;
        b=wtf4e6t0ywiRV9yL5PrPAdi4xwLToo3zTfoOlwH8b4qCsLUib+bRDwd4W3+0CLUnEM
         iQXYSfhmWJxp6sz6OqJZU99agLwSHPVAR1L9datas/wM8g2jQXiohnos9d1Gvx0aFYOP
         YuefNTVwdqy6jryZ9//R5cMJGw7XLU3sqPI0DoYjxmZq3AU9vVmL89ciJ8ItA3AZO0bt
         ycMpMl6FC+2ANLX6ff9xCFK6t9XGH7CQ5lubUk4Q1KrF3I5f1aWTIfFMF07XFpX3n37/
         ZHlg3SCF/TPEhz1cSfc1ItYhEDVCOr9MD8V69urrYdUV03VV0Ev3e9EbIiwXRjlXUAN9
         aiVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m74si160523wma.0.2017.09.16.02.38.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:38:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="237713280"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 11:38:15 +0200
Date: Sat, 16 Sep 2017 11:38:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs/os_dep: Remove
 typecast in kfree
In-Reply-To: <20170916081210.GA19333@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709161137590.2943@hadrien>
References: <20170916081210.GA19333@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Meghana Madhyastha wrote:

> Remove typecast of pointer in kfree((u8 *)pdvobj) as
> it is not needed.
>
> Found using the following Coccinelle semantic patch:
> @@
> identifier x;
> type t;
> @@
>
> -kfree((t *)x)
> +kfree(x)
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index f509713..51df42d 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -719,7 +719,7 @@ void devobj_deinit(struct dvobj_priv *pdvobj)
>  	mutex_destroy(&pdvobj->setch_mutex);
>  	mutex_destroy(&pdvobj->setbw_mutex);
>
> -	kfree((u8 *)pdvobj);
> +	kfree(pdvobj);
>  }
>
>  u8 rtw_reset_drv_sw(struct adapter *padapter)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916081210.GA19333%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

