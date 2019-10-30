X-GM-THRID: 6751774609571315712
X-Received: by 2002:aed:2f01:: with SMTP id l1mr4294696qtd.232.1573068354769;
        Wed, 06 Nov 2019 11:25:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d6d0:: with SMTP id l16ls533508qvi.1.gmail; Wed, 06 Nov
 2019 11:25:54 -0800 (PST)
X-Received: by 2002:a0c:ba9e:: with SMTP id x30mr3455752qvf.187.1573068354076;
        Wed, 06 Nov 2019 11:25:54 -0800 (PST)
Received: by 2002:a37:6dc7:0:0:0:0:0 with SMTP id i190msqkc;
        Wed, 30 Oct 2019 02:43:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfBwgcIo5e4Eev8PGwZeQF/Q+vxtavBrWosmINKnJGvs/mrPW+KgxfVlhCQe0B7rUjABXg
X-Received: by 2002:a1c:7406:: with SMTP id p6mr8618474wmc.64.1572428597946;
        Wed, 30 Oct 2019 02:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572428597; cv=none;
        d=google.com; s=arc-20160816;
        b=sSTej1wZXUOL0K846FhujTnHvU33WRzmHLdwUfekd0hMOvoUbJPN2g7tLNBg4dVtxt
         SigMQfqeRsfJtfI1Mn91axdtP6clMJtvK37wbHYbZ9ywuON7HRF73CiWlNgD/LX1May3
         UswxNoukqQO8ylQFumJIjFRxJe5stu0nCAY5G86Ta2WNddrmG7Arwm2IIkici6Q4EQwF
         cxfV88GcAJD6BOwAKwx+oHbMxLA8iYRqOjph9qvjwlvsbqOaOHydSyFR7lWLxk7kVkqO
         FssN+gS64TkZbgXSNoKSK1A0rGIAt68Yjz7kLIqL18LwcJ2wnFfs9JTIrrkFMoN1ChnC
         ZTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=03kzk6LdbFVw7toD0qX+SCVt9cCx65dbmBJSDM3eNwA=;
        b=cuO2qqxNpWbMKxSeTWwRaWnjncbvVOb+EBlmjzm+bwG8KtTst9Q/F3+gGl5xAZmX3y
         rp3wpwAIQ7Y+BRWIPZld8+xu0ODuLzEu6rOLotDWSRGQXHmbRPYBn2yh29uK2rxCiEJo
         ty/9vLt56J/nWTAZiy2cBUUDM8pwNLzGkqFqbYvSyUG5pQIpjSqujPap4nAvbjm9kAlR
         wAYiU1jqcpsRI4LUvsQFGuc8P57jNj0BCJon1NRFGHZbCuHibnq3sjhU8HHqmCdMl4ok
         a+3JJ6NzixlFEw/8xlI9VWT/JJM8R/C13sZ4MEOJBJP7A3NtYCnkAnQOVycZ6Cx4CJVM
         eCGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Return-Path: <joro@8bytes.org>
Received: from theia.8bytes.org (8bytes.org. [2a01:238:4383:600:38bc:a715:4b6d:a889])
        by gmr-mx.google.com with ESMTPS id t18si57141wrw.0.2019.10.30.02.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 02:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) client-ip=2a01:238:4383:600:38bc:a715:4b6d:a889;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Received: by theia.8bytes.org (Postfix, from userid 1000)
	id 3EE1334A; Wed, 30 Oct 2019 10:43:17 +0100 (CET)
Date: Wed, 30 Oct 2019 10:43:15 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	virtualization@lists.linux-foundation.org,
	iommu@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] iommu/virtio: Remove unused variable
Message-ID: <20191030094315.GC7254@8bytes.org>
References: <20191025161340.GA31368@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025161340.GA31368@cristiane-Inspiron-5420>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Oct 25, 2019 at 01:13:40PM -0300, Cristiane Naves wrote:
> Remove the variable of return. Issue found by
> coccicheck(scripts/coccinelle/misc/returnvar.cocci)
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/iommu/virtio-iommu.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied for v5.5, thanks.

