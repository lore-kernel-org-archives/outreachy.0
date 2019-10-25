X-GM-THRID: 6751743425868988416
X-Received: by 2002:ac2:5987:: with SMTP id w7mr3185015lfn.154.1572016890624;
        Fri, 25 Oct 2019 08:21:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9182:: with SMTP id f2ls349338ljg.15.gmail; Fri, 25 Oct
 2019 08:21:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfNF4Jml9Xyq54QE0Qj/fSEbZDTPMB6eBa18ZUnpd4ZpVJ7J7iitNzO6W1gPnVlVaBS4OE
X-Received: by 2002:a2e:9149:: with SMTP id q9mr3002092ljg.49.1572016889306;
        Fri, 25 Oct 2019 08:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572016889; cv=none;
        d=google.com; s=arc-20160816;
        b=molqXtZlrqLCV5uFyoEO8L5/LvT5Vyjo3sgXmCGOXkYknO5DfqznlsTAivurfVWRG5
         XE/w8JBp9FhlP/Sj2QeHa503VhpwsWMX9klOEGNexzMnx2y8sEPZe4Ns8svaqp5ABVb2
         NbwFnaZvPlpCbRKHMnMyxQ72/knBpNFBlMtq7ezSuIriOraf+6o2ae4Zcjk8ZNH7Epy0
         G62GFAJSMzy5cMj+nRE9KrH2JNRxoMW9UqeCTsRul5yuYel2PODUELClqwIE6mV/h9Jp
         YN1hm/CUn0I1fzynLqXndX9vHrRXY6iORBxw/OVAwOdun/XwWhATORnshr0Eaqbc1319
         0JnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=czxLGk56UgcFb9YRgwCorpF7hDv+yLL2sXXuZZJDLMs=;
        b=fNxD1lLvVbUwp299j65bXJx/UWvlzAzwAddq8wV/u1SZ2t8eyhz6h8JFMKTjl1clOt
         IY2Fu/uc5LO2Up8LvCQJoCxap59ZjnQlr9J2VYJh6KITFGDUAVy+iXTMEr6eVmyOu1Vw
         U1ycLInvDupqOD1nk+gLlqEKAbxJjM4Fn7pw5Nu/YupXZsebBCmVCnu94Ak/z46gZTCp
         5WQEvaSCuimsB1DjB421fmiVNrCxj3qP+ZiUoxwl/xz646VNeSHihaP/HC9ZMtkVb3hR
         KLW9mYf5b6mO3fXAk9xnG3KvYAA4Qw5/8K+PAmbKfwbQAAWQo0v+5CAZMOqwphtkme37
         CJMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c2si84362lff.4.2019.10.25.08.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:21:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,229,1569276000"; 
   d="scan'208";a="408254401"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 17:21:28 +0200
Date: Fri, 25 Oct 2019 17:21:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: CristianeNaves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Jean-Philippe Brucker <jean-philippe@linaro.org>, 
    Joerg Roedel <joro@8bytes.org>
Subject: Re: [Outreachy kernel] [RESEND PATCH] iommu : Remove var of return
In-Reply-To: <20191025151912.GA30952@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910251721030.3307@hadrien>
References: <20191025151912.GA30952@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, CristianeNaves wrote:

> Remove the variable of return. Issue found by
> coccicheck(scripts/coccinelle/misc/returnvar.cocci)
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>

The From line is different than the Signed-off-by line.  They need to be
the same.

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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025151912.GA30952%40cristiane-Inspiron-5420.
>

