Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE361373
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 11:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650452830;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UwOF3HOL5RSWCpIsMDkzBg+WBg3G3TFS0qjQ6oEuYGo=;
	b=BU1WvoP0HG9afcHybhAuQ3GObq/aAkJCc8bRzEWIMM/9tIRfkFyqJeA+tkcjFPZqjTzX0h
	/1Grc6IfcT5iay+ekQcyM6jop6CW/pY5U3ao0Wk1/bJ3RVWfAOuDHWxZ1WKu/1nBGhtvTx
	bFkDHeuczXiWOYgDH1ub8mVyCghweDE=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-527-S_0LEZ3nP3-8fkhGlSUpjw-1; Wed, 20 Apr 2022 07:07:07 -0400
X-MC-Unique: S_0LEZ3nP3-8fkhGlSUpjw-1
Received: by mail-ed1-f70.google.com with SMTP id cb11-20020a0564020b6b00b0041d870f7b3aso970151edb.11
        for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:07:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UwOF3HOL5RSWCpIsMDkzBg+WBg3G3TFS0qjQ6oEuYGo=;
        b=gpnJX+fVi6Fyk6+eH4EgNohBaoKEnTf+dbAmvX/1tsdIRqULN+SEpyidcUtF+16s5c
         d2otHyHr/NxHHpSPw2ZQFsSKJwSpOt9PH/WWJA4hGH2JRyaFBcW1Ad8Jfzfc1IVmsjTz
         e1YA2VZsZMlJkVOsxWV0Aq2tPlpN0+YdDcOANBaDKW7MN4X5X2/Mc+liYsPJc9S34ZMx
         jqkHidsjxJqJhNdJEmU00VfQbAxRsJ+Rx7qZ69sH+2Z1seHXbLg9f1zTRBv/zLCc0x0s
         H3upGWyggAr0m/q7hB+ZzgpwvSr+D6nRaUHcge/ZLSS+drBswa8a1LJRbz2ZP9LU1Vrn
         v2Gg==
X-Gm-Message-State: AOAM533W4OKnRIo9lDhWqY3G48k/fbVGHG3KG4ZLFtLEMVjxyEVFLtAT
	k2rGa2BYjd86WapholuGP+en0Ptx5oxHLe9Eq+hxwPy6zLlD4W7vvh7PQoueFdWs1zawJzTH1gI
	pZ3N2WPQRjOTTP3+tbPJX
X-Received: by 2002:a05:6402:608:b0:41e:ce5:f02d with SMTP id n8-20020a056402060800b0041e0ce5f02dmr22940036edv.104.1650452826557;
        Wed, 20 Apr 2022 04:07:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKbC85ZGMPknAiJCsVTUPZVUdQiALgx50L9YEQctGci04sT/7JOLUTRhYvUOLdSGyH3zdyLg==
X-Received: by 2002:a05:6402:608:b0:41e:ce5:f02d with SMTP id n8-20020a056402060800b0041e0ce5f02dmr22940009edv.104.1650452826359;
        Wed, 20 Apr 2022 04:07:06 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id cw23-20020a056402229700b00421c1574f01sm9117548edb.9.2022.04.20.04.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 04:07:05 -0700 (PDT)
Message-ID: <0b04ad1a-e442-1728-ef2c-bab386a4c64c@redhat.com>
Date: Wed, 20 Apr 2022 13:07:05 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] staging: media: atomisp: Use kmap_local_page() in
 hmm_set()
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Tsuchiya Yuto <kitakar@gmail.com>,
 Martiros Shakhzadyan <vrzh@vrzh.net>, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, outreachy@lists.linux.dev
References: <20220413212210.18494-1-fmdefrancesco@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20220413212210.18494-1-fmdefrancesco@gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 4/13/22 23:22, Fabio M. De Francesco wrote:
> The use of kmap() is being deprecated in favor of kmap_local_page()
> where it is feasible. In file pci/hmm/hmm.c, function hmm_set() calls
> kmap() / kunmap() where kmap_local_page() can instead do the mapping.
> 
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible. Therefore, hmm_set()() is a function where the use
> of kmap_local_page() in place of kmap() is correctly suited.
> 
> Convert the calls of kmap() / kunmap() to kmap_local_page() /
> kunmap_local().
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>


I've successfully tested this on both the front and back cams
of a chuwi hi8 tablet:

Tested-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>  drivers/staging/media/atomisp/pci/hmm/hmm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm.c b/drivers/staging/media/atomisp/pci/hmm/hmm.c
> index 6394385b6637..46ac082cd3f1 100644
> --- a/drivers/staging/media/atomisp/pci/hmm/hmm.c
> +++ b/drivers/staging/media/atomisp/pci/hmm/hmm.c
> @@ -563,7 +563,7 @@ int hmm_set(ia_css_ptr virt, int c, unsigned int bytes)
>  		idx = (virt - bo->start) >> PAGE_SHIFT;
>  		offset = (virt - bo->start) - (idx << PAGE_SHIFT);
>  
> -		des = (char *)kmap(bo->page_obj[idx].page) + offset;
> +		des = (char *)kmap_local_page(bo->page_obj[idx].page) + offset;
>  
>  		if ((bytes + offset) >= PAGE_SIZE) {
>  			len = PAGE_SIZE - offset;
> @@ -579,7 +579,7 @@ int hmm_set(ia_css_ptr virt, int c, unsigned int bytes)
>  
>  		clflush_cache_range(des, len);
>  
> -		kunmap(bo->page_obj[idx].page);
> +		kunmap_local(des);
>  	}
>  
>  	return 0;

