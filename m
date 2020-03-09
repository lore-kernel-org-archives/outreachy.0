X-GM-THRID: 6802108389575884800
X-Received: by 2002:aa7:d318:: with SMTP id p24mr8103892edq.386.1583739539804;
        Mon, 09 Mar 2020 00:38:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e48:: with SMTP id z66ls572537ede.3.gmail; Mon, 09 Mar
 2020 00:38:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5F8twpfp6Sw5OYjEWdeb/Y9MC5BhmZLC3ItLI3PgCLOB9LfJPKn19IjIwmD3n/Cx994S7
X-Received: by 2002:a50:f18c:: with SMTP id x12mr15628905edl.351.1583739538475;
        Mon, 09 Mar 2020 00:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583739538; cv=none;
        d=google.com; s=arc-20160816;
        b=AT+JDyWL5w0+sX2O/XKZVGQHGXVjbeSMTQgj5WJ3Jq78UZuu+W2P9h2r3dkmWHnOWd
         C25VZtaEfHfh82+n6ljFBzU1iK1MsY76ABrVfbgKPWbdtxTSf1GwsosNmj1h6otPzRNx
         IcWg1ffMqpXiPVgj1pJiigHufbrxFGXJprTonY2dN+xE6JN6ro5p3lxc9JmbndjzzrTf
         GgBesEFuOZAnok8SO3faXvHTc5DhI7D8HmSqErg6SvhwOdybeVTUmH+N6XKnbxrYPhC2
         GyRuV0KQi7WhnV61ZmAw8TThRM/ScJ4sg4i78eJUGrXq/MitlSNRQ1Sf8EdVJES3ewYK
         YRuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+w6A+4fU9H6o1GS9DhO+6s+i/B5t6GZGyfHe6pDX3CU=;
        b=tux7m//hKyFg/atjReSKmpLdQkXEfKNyYJZ+ohLpzjhLcA00NX1Y8zg4J+DoZR5YOf
         EspH2xL/rsa2+j5sQv7hoULdaI3nuLT/8Shkjk9JgzRxeFX2kepcdGUo5/rgrkcDcmMm
         aKh/Bft6uuiy+SuULoPUY+B18pQwoIYzHGYj00AknZm/ozDUgaxwDe4NqyhycfsQpOGA
         7G6EzXInwsVypBJZtJUl2hTpopvSR83Q3bOmC1PyKFzLeGxMQ6XCy+l44fp16SuXTa4b
         WwP5s8/+p4cJRTo5ttqpXwED+AO2On2jlBNKzgox+gZtbr5cq0tZ8EZg+oXKSw//++1c
         Vkbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si483652edo.5.2020.03.09.00.38.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 00:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,532,1574118000"; 
   d="scan'208";a="439418673"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 08:38:58 +0100
Date: Mon, 9 Mar 2020 08:38:57 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6656: remove blank line
In-Reply-To: <20200309073424.4920-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003090838410.2676@hadrien>
References: <20200309073424.4920-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> To avoid style issues, remove multiple blank lines.
>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>

Acked-by: Julia Lawall <julia.lawall@inria.fr>


> ---
>  drivers/staging/vt6656/rxtx.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
> index 10076efa4522..0e6226af7d41 100644
> --- a/drivers/staging/vt6656/rxtx.h
> +++ b/drivers/staging/vt6656/rxtx.h
> @@ -100,7 +100,6 @@ struct vnt_rts_ab {
>  	struct vnt_tx_datahead_ab data_head;
>  } __packed;
>
> -
>  /* CTS buffer header */
>  struct vnt_cts {
>  	struct vnt_phy_field b;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309073424.4920-1-payalskshirsagar1234%40gmail.com.
>

