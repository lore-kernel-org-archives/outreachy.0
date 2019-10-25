X-GM-THRID: 6751743425868988416
X-Received: by 2002:a37:bd5:: with SMTP id 204mr10604749qkl.137.1572170216078;
        Sun, 27 Oct 2019 02:56:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2fc8:: with SMTP id m8ls3539229qta.9.gmail; Sun, 27 Oct
 2019 02:56:55 -0700 (PDT)
X-Received: by 2002:ac8:454d:: with SMTP id z13mr10525841qtn.130.1572170215317;
        Sun, 27 Oct 2019 02:56:55 -0700 (PDT)
Received: by 2002:a37:6312:0:0:0:0:0 with SMTP id x18msqkb;
        Fri, 25 Oct 2019 08:49:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLOqkNPb0q6EVEfcKovy/Jbe/8Mf4RyYelfIwmF1nM/n0y/0ikC916zoRH1hIXBLNnS8y1
X-Received: by 2002:a1c:4d03:: with SMTP id o3mr4176446wmh.73.1572018595866;
        Fri, 25 Oct 2019 08:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572018595; cv=none;
        d=google.com; s=arc-20160816;
        b=ZBp4fAsHbE1me+5v2Heyc3PJfsB7e32pe6sNOBBG/9xt1cWnr7xqmfmkxC9ovbGr2h
         WeLHobjB659BZKDwWHAl/BmBwNykUIwDHd+6R2D/VH1DU3izNukRh+I7F7EULBOObAXI
         asCUxHQNVgAQEF7ICyGfbjFvZduSpBaj8XWpNS8xspoZGWlK2H9SuYl9u482orn4p79X
         mUmhYtl9GcERSac7TFSHSmjFHZU88ZZIEeRNGeC6KkVE7859stK9dxpieXa/zN4byUYR
         qjJ1ZCfaxaE4y2skk5tpr8/Rss27BGZzmW5hJ3ZZ0f1XfRBr9hkAtwF73vcNZXUk7CCE
         JFEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=if6MasUmTR9IhqZ8tFDqBAnRztckqtSWHDEo5AIEaxY=;
        b=cEqowJv1OQZjLm4F7ZbIorkpHoTGg++5h+Knnsg86pShVvopPhiGRMC70G4qPEFfsq
         1x8QMgrsc45Wd4CifJQrzVHnOWb+te9CBNonlS46ru+AUie7C12M9LcaFACashQkvThd
         31CATsiMdXjtk1Ht6hmsfYjAYdK06PM0ZZqboUT8royklPs+xrIl9AERDS80ei5S4xaQ
         NqhuXhn/ZnmqMpLwk7RtZYBBWQg3oVnqwCyEQuqqjhFWGzMKZOC+XtMChubRI36JooVk
         39C7I6ve9whGISokgoU9W+g7PiB0LIKR/PabnmYzHpSnmxg3+X7YAD60GZn8ygIStn8B
         8SMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="nQxK/QLq";
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Return-Path: <jean-philippe@linaro.org>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z8si128972wmi.1.2019.10.25.08.49.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="nQxK/QLq";
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: by mail-wm1-x341.google.com with SMTP id 6so4585561wmf.0
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 08:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=if6MasUmTR9IhqZ8tFDqBAnRztckqtSWHDEo5AIEaxY=;
        b=nQxK/QLqxTLkWPgWl2sUktxyUUMPw7zBGzd7/8X4Yb94LnIzppWXGYzh47kbcEn5M6
         a/4gBwQV1BS4PX2FA1MXhiBv6pdFy2WcfkGS8FDmkRHaYom3uB6kdTAkAsmH+tqqzbpd
         M92hTb+ZxfIaqAwNLQJ7HUGxkbx4miP8Rt5RR5S134EsspFys7szwhYUDe/x20dCHvWL
         teQ9Lb0mw4sTcH2D/yeXLb5OAShDLxCold4yxA4WyvrZAJYzFIpfxQIheP1D0nAnKdrU
         z2AZis/IT5jSG5s4LR76sHkjKMLMM24PjNjqNSAI1Xz2FfgKpdynOerOjjFowvV3kBn6
         JDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=if6MasUmTR9IhqZ8tFDqBAnRztckqtSWHDEo5AIEaxY=;
        b=l/INOuD/RrGU3H+AVIDIu9UqbxILbrpwHdv9DUpUauynIAM9BNT7JmrhgHjqHQ/rYw
         vib/sz8cxQe8eOz1mdwHNN/WGyfIpZqsbaS0KoVrhGNizofSMNaoKFWtzN9reVJLy+Or
         TbdZFY2uVI4zyiVjZURfx0orkIcom8j60PaUiDkfuqvJb9k6qounQeddtwtUVeQ/Oe/d
         4aARnx7UhmbmNlwGix48q/nu4HhYQplaGdu9PTTNpK3shgniHzCwpR/wI4H0Ai+IP8UW
         EpNarBooXud+lCwTwDNyielI4pPdKMj8tuaPG7qufnhVjumZZEDLYEV8zhfVAYbIrEKI
         zNOQ==
X-Gm-Message-State: APjAAAV+ZUx8n77FtRjnL8G3q1BnZ4ix+1PqlxrmBtUInQhVUSh3Ybdr
	cfHHH/8Pgtoodax+Je5GNeCWzw==
X-Received: by 2002:a1c:9d07:: with SMTP id g7mr4200348wme.53.1572018595496;
        Fri, 25 Oct 2019 08:49:55 -0700 (PDT)
Return-Path: <jean-philippe@linaro.org>
Received: from lophozonia ([85.195.192.192])
        by smtp.gmail.com with ESMTPSA id 5sm2989013wrk.86.2019.10.25.08.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 08:49:54 -0700 (PDT)
Date: Fri, 25 Oct 2019 17:49:53 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: CristianeNaves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>,
	Joerg Roedel <joro@8bytes.org>
Subject: Re: [RESEND PATCH] iommu : Remove var of return
Message-ID: <20191025154953.GA639799@lophozonia>
References: <20191025151912.GA30952@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025151912.GA30952@cristiane-Inspiron-5420>
User-Agent: Mutt/1.12.2 (2019-09-21)

Hi Cristiane,

Thanks for the patch, the change looks fine.

Just one note: the title of the patch should follow the naming convention
of the IOMMU subsystem, and provide more context. You can generally find
out which format is used by a subsystem by running "git log --oneline
<file>", although virtio-iommu doesn't have many commit so it's not
completely obvious. For IOMMU, the format is "iommu/<driver>: <Change
something>", so the first line of this patch could be:

    iommu/virtio: Remove unused variable

Since this isn't in staging, I think the mailing lists given by
scripts/get_maintainer.pl should also be on Cc
(virtualization@lists.linux-foundation.org and
iommu@lists.linux-foundation.org, but you can omit kernel@vger.kernel.org)

Thanks,
Jean

On Fri, Oct 25, 2019 at 12:19:12PM -0300, CristianeNaves wrote:
> Remove the variable of return. Issue found by
> coccicheck(scripts/coccinelle/misc/returnvar.cocci)
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
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

