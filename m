X-GM-THRID: 6810932653132349440
X-Received: by 2002:aca:3255:: with SMTP id y82mr1222873oiy.44.1585871473829;
        Thu, 02 Apr 2020 16:51:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls2415134ots.0.gmail; Thu, 02
 Apr 2020 16:51:12 -0700 (PDT)
X-Google-Smtp-Source: APiQypKRistiSYwSwcgon6AGB3ejl8cSzd6q1JTTPqAUE6KYbz+zUSgXyoPfWcauMoTu9M7pTouP
X-Received: by 2002:a9d:c69:: with SMTP id 96mr4724907otr.77.1585871472507;
        Thu, 02 Apr 2020 16:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585871472; cv=none;
        d=google.com; s=arc-20160816;
        b=I4KkOgylDoCNgScj3eXZN1i0tyFTCbP/QTZkad2kGyIwJA/FmmnQXdvzqlFzMuq87a
         d1mVaF9/9o3lopNfcYjuZHXSWrwobB6aahszAYSXJljUS/E+cjW7fVSXaRkzTxJbTurD
         IVzRKpwNKHOaK1AzqjcNI/Tpn01lLNfbZKg1w9f6IpNBuR/GE7G2RKzI9m24iBgKVMSR
         QePCpCgRgN3tWULUfgL8MnjCkQS+Bgkcx4DnUKY6980rbJ9XOsavnE+tDzqHCI495a+z
         MARgUQTdSSOQMeZg8Cj+dsB36SzLBWXqTEzsvkcgXs+xuy/0+GRyXqYe8YJIhJve879W
         5/5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dqJ98zPhLM+tdJlzifCE4+/QdEj75kGr2F6hTOU45+E=;
        b=MILGaOuGb1msXBVAh9TjAaHZkBnScrUr1pWWIXlb+ffXY+lr0F9PBSwPrfop1Oam9L
         av1cN0XyIe6SnCQwir7Qlem7ehtVDUx21JgQjw6gcb7qXod+xInE4PLU9GlxKZ8WaTig
         FChLlhRbvuXMhgi6f62ccKVgDd9lkmG5Dx0ur9oJMZDsFVlnySZFVT2e+lNvQ1bbpQDZ
         Pse+5+p9whSmVN9S9Qa8oU4MYyKRMQytvDP71+ANV+4TmEYR/7qxZK+bSDCh8fuqCCW+
         ZVRTUXFZYdSEWoRC0qh6riPNbXk0vRVvPqn2Pj1NbIxzG/M2TFFa5dg4FdEE7ohtpvI8
         8J2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UYj0yOU0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id p29si457942oof.2.2020.04.02.16.51.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 16:51:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UYj0yOU0;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585871471;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqJ98zPhLM+tdJlzifCE4+/QdEj75kGr2F6hTOU45+E=;
	b=UYj0yOU0FCpVQ32HyNBy8qexgEtbY6WYtGZGkWYbEFjZ7si07ZsEXrirRGMmmA2OXHTvp8
	e2TSKm/eF2fLXRq8PuankgeNoTybf8C/OFTBGWFLH4gdVslBpCy2Ilm7BStw5m5EIXdvHY
	rb6fgFd4p2P/rhmpdCoTKRsgjH/Se9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-mUOBEZTRM_yz-7_vQJAxXw-1; Thu, 02 Apr 2020 19:51:10 -0400
X-MC-Unique: mUOBEZTRM_yz-7_vQJAxXw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA2ED107ACC9;
	Thu,  2 Apr 2020 23:51:08 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E03A21001B3F;
	Thu,  2 Apr 2020 23:51:05 +0000 (UTC)
Date: Fri, 3 Apr 2020 01:50:57 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused
 code
Message-ID: <20200403015057.7a972c79@elisabeth>
In-Reply-To: <20200402021706.788533-1-jbwyatt4@gmail.com>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22

On Wed,  1 Apr 2020 19:17:06 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Remove unused code surrounded by an #if 0 block.
> 
> Code has not been altered since 2014 as reported by git blame.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index 9c2671cb32f7..bbfebe331033 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -9,12 +9,6 @@
>  #define _LINUX_EMXX_H
>  
>  /*---------------------------------------------------------------------------*/
> -/*----------------- Default undef */
> -#if 0
> -#define DEBUG
> -#define UDC_DEBUG_DUMP
> -#endif
> -
>  /*----------------- Default define */
>  #define	USE_DMA	1
>  #define USE_SUSPEND_WAIT	1

Formally, this is fine. But... think about it: this driver might be
rather buggy, so the first thing one might want to do with it is to
"enable" those two defines.

In general, that stuff has to disappear, and proper debugging
facilities have to be used, but with a driver in this state, as long as
proper debugging facilities aren't there, you might be doing more harm
than good.

-- 
Stefano


