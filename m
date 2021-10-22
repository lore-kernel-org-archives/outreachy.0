X-GM-THRID: 7021921902776025088
X-Received: by 2002:a7b:c38f:: with SMTP id s15mr12600642wmj.167.1634921912494;
        Fri, 22 Oct 2021 09:58:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ef8b:: with SMTP id d11ls372418wro.2.gmail; Fri, 22 Oct
 2021 09:58:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwjlmpDDEZH77+E/GdD+oHAAck1qhC705We21+9GG1Ct0BEINg5UjBVzbhGrueskjsTDR29
X-Received: by 2002:a05:6000:184b:: with SMTP id c11mr1229409wri.29.1634921911072;
        Fri, 22 Oct 2021 09:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634921911; cv=none;
        d=google.com; s=arc-20160816;
        b=iHYqIk7BaFhoLkdjtr5hgV8nliteUPM8sXSkp6OuhCw/QcCngwO1DYOjJ1lYqdzDbY
         oYGVCPhb8gYK/jR3qODlHfIkLmCyUmtNHUxHP7ob6UaC2cJO90LYqH0vIvW9+AKtr3Kf
         ia+JDx1Jlk2/HlmBp+4ECtQRfQNxl4G0TZHH+6rnmNaURpXDAdvNf2C+75T9MguHs6L7
         60J8uIwiWtQu/gKgsbzT35WwaWbc5CbCy8c/DQz+fXDit6PIvMOtqUeJ3dfRVfThnAQQ
         ZLodtyRuW5iLOFA3pxalVTrHB2pR0tNsb8RD9BwPE+jqKt+fb2giT6srvCd4I9c1uya5
         g1Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1vr5RbHapqR4+49f8NeqmPXs5XngMUpd3NuLFRaZXno=;
        b=dxGhq0HTE+r5YE2zOIz75PeZ2PUkd/maxjw1dO0GMEUUEaKLnafyYQaiKSNd8qxvp5
         wiEdc8gsAsayUw5Tz51bczBJkJcTRIdWRedFFNhTv6TOfB8BJFA+Hf3JRwdeaKML/4BV
         8274KWMLgO3pwVopfnlFruxmoLXCfAG56Jglw/XHQkiHFucvwJWifcwP9vlc/4SLAtsZ
         1RV/Y/X5x0IgOKyZ1uauFdLkICUzeThAicQpD+to2xi3XIiMcMcWlEjxRV38FqEL7crK
         aTYma565HI8u5j1rMwc7/L/ioeAhEyjSJlb9kPEa5PlULTejsdRenWUo/4la7WihOQ2e
         NF9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id a10si634411wmb.0.2021.10.22.09.58.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Oct 2021 09:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="315545519"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; 
   d="scan'208";a="315545519"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2021 09:58:29 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; 
   d="scan'208";a="569278180"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2021 09:58:28 -0700
Date: Fri, 22 Oct 2021 10:06:16 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Recording patch sets as contributions
Message-ID: <20211022170616.GA465124@alison-desk>
References: <0383e80d9465c23dd69defb867f604ef7d482d00.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0383e80d9465c23dd69defb867f604ef7d482d00.camel@gmail.com>

On Fri, Oct 22, 2021 at 05:03:12PM +0100, Karolina Drobnik wrote:
> Hi,
> 
> I have a question about recording patch sets as contributions. Should I
> add it as one contribution or record each commit in the series as such?
> 
> 
> Thanks,
> Karolina
> 

Record a patchset as one contribution. Include links to each commit
(accepted into GregKH staging tree) that is part of the set.

Thanks,
Alison

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0383e80d9465c23dd69defb867f604ef7d482d00.camel%40gmail.com.

