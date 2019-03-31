X-GM-THRID: 6674586427975532544
X-Received: by 2002:a1c:700d:: with SMTP id l13mr962458wmc.16.1554050024535;
        Sun, 31 Mar 2019 09:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c243:: with SMTP id b3ls975917wmj.9.canary-gmail; Sun,
 31 Mar 2019 09:33:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSK8FglbKES3jZC3dGam8+8UKKvuWifmdqpo7mrNNSNOEoxM2Pa/ubq95IcpDhsvU49ZiS
X-Received: by 2002:a1c:1ad6:: with SMTP id a205mr883407wma.15.1554050023766;
        Sun, 31 Mar 2019 09:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554050023; cv=none;
        d=google.com; s=arc-20160816;
        b=xFqRs/ubaCSUwWNqgbos2P4M3qdlnLEeiVK1hgTifPulPDNMCugWPSgytMW9Ij5pTD
         mfqNZhZV0PFDtjA29v9+33BVX2mGkIlVKC/Z+OO4RE0CjHjFTOwfJ1UMIHaj2cAmLHSv
         i0j0YA8cszvqsbFpSPeGQoDv19y2Q8/CWoTEAuzaY4uBhRUS/4JVWvJUpPV+U1wtukOB
         DDm4pVFoiJjsveQCWg6CWEcF9q2tYvwyELQA5g4Ah7gEbQ4uYfPD+dqycmKVUFK3yM01
         L4jzhtHxUxkPePZuiSb8davPXlv2SbVGRJrWEHxgceB8zbv5xr3+aPbTbo5SJ4CfcdbG
         zcFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=daryZYkaRtmIvDD5OyDbvTpnwYcySQcyO353T5oCQqw=;
        b=sfSc7C8AhO6ML47rSdHI+9tD4c09FSkTP8qrdDhSmteJtXtx31PwAEn/gTaJsXh+Vj
         HmYEaxq65Y01HU1FXsFI8YeEY9iLIHwoY29rd5gYbrnyqlk7DcT9c+GoLq3bX1tWiKgw
         PePjVQ5B2cddEZCPmNAClWfr3EL23lWKBAqETq22YW0tGqEbr8J33Ge9al6JLOWLwfcO
         DKMyr4EkdPN56ldZL59k5PCr8uddCmozzbRzpQ6dapHpZDYgMJWajxB3WIV8YZ3V+CqK
         goQYxwok4vKhkQi6A0gvcCsF7zh1/S9B/iW22OB98oac3i0JUGQQP7lXsW6lUp1GeOqh
         53IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n13si894439wmh.1.2019.03.31.09.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 09:33:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,293,1549926000"; 
   d="scan'208";a="376533376"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 18:33:43 +0200
Date: Sun, 31 Mar 2019 18:33:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: hid: Remove print
 following unsuccessful kmalloc
In-Reply-To: <20190331160402.27940-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311833100.2578@hadrien>
References: <20190331160402.27940-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by Coccinelle
> Remove print statement following unsuccessful kmalloc when there
> is not enough memory. Kmalloc and variants normally produce a
> backtrace in such a case. Hence, a print statement is not necessary.
>
> Found using the following Coccinelle semantic patch:
> @@
> identifier i,print;
> constant char [] c;
> @@
>
> i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
> devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
> kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
> (
> if (i == NULL)
> {
> -print(...,c,...);
> ...when any
> }
> |
> if (!i)
> {
> -print(...,c,...);
> ...when any
> }
> )

No need to change, but with the pattern i == NULL, Coccinelle will match
!i too.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/greybus/hid.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> index 0b72e1b9d325..8ab810bf5716 100644
> --- a/drivers/staging/greybus/hid.c
> +++ b/drivers/staging/greybus/hid.c
> @@ -292,7 +292,6 @@ static int gb_hid_parse(struct hid_device *hid)
>
>  	rdesc = kzalloc(rsize, GFP_KERNEL);
>  	if (!rdesc) {
> -		dbg_hid("couldn't allocate rdesc memory\n");
>  		return -ENOMEM;
>  	}
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190331160402.27940-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

