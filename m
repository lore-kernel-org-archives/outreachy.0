X-GM-THRID: 6951120130932736000
X-Received: by 2002:ab0:69d4:: with SMTP id u20mr2537204uaq.12.1619428743409;
        Mon, 26 Apr 2021 02:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5046:: with SMTP id e67ls1093337vkb.2.gmail; Mon, 26 Apr
 2021 02:19:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxj4t1kiTYC2xoN3JnJ/dapbddZHwnalHuOAzL5B5FYgKzVYJZI47MlXJ8DM/LSCRXsyLSt
X-Received: by 2002:a1f:5682:: with SMTP id k124mr11337874vkb.20.1619428742386;
        Mon, 26 Apr 2021 02:19:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619428742; cv=none;
        d=google.com; s=arc-20160816;
        b=ky9jIRfs3XUg0SXSoTYCpvUu4UhQP7AMsSK0KxWgMUEg1cC4NBPvm0t84o+iIzRNGA
         8IkFetxxFsWSMF5/Mbo61AIl3m61YZYP36V7ZnpTXbRvtNMcX+USqEDzSIVHMui+4WR5
         PkVNTEMOISWj3JQMwsyp3sn6kfCIjsW3DTnQiB+ucUGzLlnVxqRErpOgWFpWe5j+nMc7
         Jj/yflk/SMtQACElK304ZK0sg220Z2YFYiWIRqjD0h4ueHc70EA95OM4sQrOPpjXoZtu
         OMU6TQb8sCJRqqPqC27nMj2IZ2e2cttGRMONHGB0eli/4gNIVz0f7t+lLtE5/YN8RRCB
         BV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=3y0t0DlolcqYiYStdoaUruc8Y3VBmhTJq+Tm65YZR94=;
        b=py7qDUCIpl1bITJdwITjrSf1s75qc9B2a8LFmuIjUgVg5uu/l17tBDgp+46Ok+UKBn
         zcymqNQzn1NoOlwhkMw7u/FEb2wmkmkhtRUOG67Fa/ZdXsECSBcjHOrSodMKmVxk7AdL
         obcnf5oDHN0r3VglOs58ocoe/YSTSXsQpGy1cDncQ7Q/Nw5u8S3E9RPmDpdMR0v7rxjO
         p/2hVJ7R35trK1FEFTDSWCeImCJHjEnattyE7q6TR7OiEDxzhqn4zkcBLiIrTyQYtlDJ
         uGAHF67mHDBeAYTKCSDv616+fBPhvubp3P/m3Q6fy2SPR7Ws0Ajh4+MZOu9D+Oo/XCuF
         EMSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id m184si292499vkg.5.2021.04.26.02.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:19:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: nA6jeoNfqHZfTICDOVje9HpKbENJQEeH7Xt0/7urVYM++yurC4JFk9Ji3NvlFXx/l1F81uit5Z
 ChSsFXn092Iw==
X-IronPort-AV: E=McAfee;i="6200,9189,9965"; a="175788663"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; 
   d="scan'208";a="175788663"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2021 02:18:59 -0700
IronPort-SDR: gUc7e3gkI8Fyv0bXaNY1wSQeG2wcpR4s1OBErdbZZRNtUf088ofFUROUULEAZ3mHmbwcgZQ8tU
 YMeuNiiax4+w==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; 
   d="scan'208";a="615320703"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2021 02:18:57 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 2EAEB203BC;
	Mon, 26 Apr 2021 12:18:55 +0300 (EEST)
Date: Mon, 26 Apr 2021 12:18:55 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210426091855.GT3@paasikivi.fi.intel.com>
References: <20210421123718.GA4597@focaruja>
 <20210421131522.GI3596236@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421131522.GI3596236@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 21, 2021 at 02:15:22PM +0100, Matthew Wilcox wrote:
> On Wed, Apr 21, 2021 at 09:37:18AM -0300, Aline Santana Cordeiro wrote:
> > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > -    u32 mbus_code);
> > +const struct atomisp_format_bridge *
> > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> 
> As I said, better to break the 80 column rule than do this.

May depend on the maintainer, as well as other reviewers. It's a question
of priorities.

I'd suggest otherwise.

-- 
Sakari Ailus

