X-GM-THRID: 6751743425868988416
X-Received: by 2002:aa7:cf81:: with SMTP id z1mr4497325edx.207.1572016915171;
        Fri, 25 Oct 2019 08:21:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1114:: with SMTP id qu20ls2208564ejb.7.gmail; Fri,
 25 Oct 2019 08:21:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrJKR5n9qdaJRqRVAmA8GtcuQn6upHF5JULdkYe0fdivZswsGPprb8OncPEMiSdUxZNhEO
X-Received: by 2002:a17:906:2961:: with SMTP id x1mr4034098ejd.91.1572016914436;
        Fri, 25 Oct 2019 08:21:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572016914; cv=none;
        d=google.com; s=arc-20160816;
        b=UzaACzkuDcOg80j7jWpGx02lCPrLXrL7b+bAqN8rSy8VPxxpByRN5/YWrxBFE1DCZM
         uV1dNoXP5Sy0W5Nm1vlMT5tSBCNo3jwqTJrU4/rx2Hah0MVF3Gc6AjEf0+GbemZn8fhK
         jDlkTFnlNNFmi6wJSBTEAxDahwtvpuzD4fgf8kdKwViEw2E17/f80E54c1idXmPJa0hv
         NoJpFTdMzpE2eY3FFtihF7WKU3N02x1vt83Ir3K/6WODJscdyb2ObIKByFKis/BlDJ2f
         R+I/NRk+oKwpcURN4p78H4E/L48LPPl/0qDWD2EAwiIVcactKZAPBh5IKMJrXxhBA5Vc
         GtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=h7wkA+79eqyw4Cuge5AuCQdIxtRgFs2Bo7NDF2JKyQM=;
        b=JBVgAdAEvE/kL3JoQ2GYSTrlDk1PCY9JAc3qOQYrolmDkwpq4gL1TrynFFqZney0A2
         qmNmntsqbHHYCAKsIWEY+kk13TO8Z/GGxpYTgM9Yu/CtN/h3oqVTdajitzu9k7i+l5dV
         466YqQ6fF//XP+DOOc51fO7gXh9i9n4kenTBUR46P8h6kve6It8REcRaWITZdq/Oa5g9
         TCFNyn5S/wcR7a+iNiMVwGiRqSUCuTrjHs36J4CZ19S6OTMN09b5atezqFMwbs58t+HE
         n0ZcBbwOvLoSbqUgs22SHy1UPZJXwXdrEN+S1ayGSbnaAJGn8/LfxspK8SzTFVTuFEhy
         pNsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c31si153078edb.0.2019.10.25.08.21.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:21:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,229,1569276000"; 
   d="scan'208";a="408254424"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 17:21:54 +0200
Date: Fri, 25 Oct 2019 17:21:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: CristianeNaves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
    Jean-Philippe Brucker <jean-philippe@linaro.org>, 
    Joerg Roedel <joro@8bytes.org>
Subject: Re: [RESEND PATCH] iommu : Remove var of return
In-Reply-To: <20191025151912.GA30952@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910251721410.3307@hadrien>
References: <20191025151912.GA30952@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, CristianeNaves wrote:

> Remove the variable of return. Issue found by
> coccicheck(scripts/coccinelle/misc/returnvar.cocci)
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>

Same problem here.

julia

> ---
>  drivers/iommu/virtio-iommu.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
> index 3ea9d76..d8f29c8 100644
> --- a/drivers/iommu/virtio-iommu.c
> +++ b/drivers/iommu/virtio-iommu.c
> @@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
>   */
>  static int __viommu_sync_req(struct viommu_dev *viommu)
>  {
> -	int ret = 0;
>  	unsigned int len;
>  	size_t write_len;
>  	struct viommu_request *req;
> @@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
>  		kfree(req);
>  	}
>
> -	return ret;
> +	return 0;
>  }
>
>  static int viommu_sync_req(struct viommu_dev *viommu)
> --
> 2.7.4
>
>

