X-GM-THRID: 6951120130932736000
X-Received: by 2002:a1c:7402:: with SMTP id p2mr2768820wmc.88.1618506883125;
        Thu, 15 Apr 2021 10:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls3150421wmp.2.gmail; Thu, 15
 Apr 2021 10:14:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAn5HHBzr3KrX+w58LSIavZVG/rWFPZNjDR6ceq6cgtxDSQ1bR/V7DqZKGkAKszPIk/xAt
X-Received: by 2002:a1c:6587:: with SMTP id z129mr4198218wmb.106.1618506881946;
        Thu, 15 Apr 2021 10:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618506881; cv=none;
        d=google.com; s=arc-20160816;
        b=n1tEE8pKG2E4otgIRVIQkGnhRVJnpue6vzA7jX3h+iXMJVICVwoxcyLfh9U8B/DfkC
         tU1FKQ7nHYyIENyZ9NOd6WdaV+OVEnQfRe8FcZwTXfmYPhKtvVCg+bNi3Plv6s1PI0MR
         9jEFZz1ewv5MMncdpZfEwhsNrz+dA1oJr3Qn3bYz0tvXz906+ZloN/aUnkyothL78WML
         WWyAKa6+n9zYiROkNpMneaMO+cV5gjXf2vyECp9m8JHKA8KAf7eGffldbYZsU/2Rkgfn
         ATkX+EIZDxg1dLdu4ijiEUWZ6at1V5nrNXXFWlp46JsOw12WJbt/ptlJHcSmR7O1XoMd
         fUJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=USIt7kQju8YFJVq4Oq/9MfaoCKu4uLeI8t4U8FPhcmk=;
        b=Hp4A4ML2YgQKiHMrt5qKyTJNozDH/ZF0Lbpg6kAoaP0b2Y2Nac/lQcfpO2P+rTWiZm
         wb0nJFPdo0BhCaTrpp1UOo6n5Ftu/xRxLHRI61NStA9Oumev7/ACTcrv3WaCp6onIEfx
         bS+ukLSpoBQjP/agg38I+K3X5vJ9wMQTrq3+VXD7F6bdIhtL17b2kf8Q/fFGv44doQsQ
         smP9SgbENu3B6EFzeKXW1yjCiNqYI2gzcQzLv8iyu8hr30XNa7RXmQ5bon21sR/yajoo
         CuFA35Z/RlqdvmpD/W0DKiAEdPQuyLfSAHFY8eSec1yFVYk5GCs01ERGobQckW/InlFe
         puxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=bT3jy1Cx;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i16si95584wmq.2.2021.04.15.10.14.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 10:14:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=bT3jy1Cx;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=USIt7kQju8YFJVq4Oq/9MfaoCKu4uLeI8t4U8FPhcmk=; b=bT3jy1Cxw3z/cEHs8tgvzwL3u5
	7wRsbvatgfLKvp+ni8I1+1LRiWSNDU6dpwMNk3YCaMDJpWlh6fK70Fl8MByC9hNDlD502a2Acf552
	qk+x2nkMAB5vl5CGsHU0t3yP6d9YTqTIrM4W/39a6qMxDEApmSyE9SNokr8vrufuQseacbVFtFJgV
	KLsZywHDDAAstkbh1g9qc32ne7wmwEmJ35+CbkNyJLwPuMbgDQOiGKk6n0tndBvQMEVQvcY5Myw/M
	Cac9ti3V/K2BYBIIXbz7J+7YzlTPEAoebb0A1F6p60CEa7PWdjm/qjJk6inVbDxuIX0JPbeHJ//XX
	d56scmVg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lX5ZB-008rHM-US; Thu, 15 Apr 2021 17:14:12 +0000
Date: Thu, 15 Apr 2021 18:14:09 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210415171409.GC2531743@casper.infradead.org>
References: <20210415170819.GA17534@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415170819.GA17534@focaruja>

On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> -    u32 mbus_code);
> +const struct atomisp_format_bridge*
> +get_atomisp_format_bridge_from_mbus(u32 mbus_code);

No, this does not match coding style.  Probably best to break the
80-column guideline in this instance.  Best would be to have a function
and/or struct name that isn't so ridiculously long, but that would
require some in-depth thinking.

> -void atomisp_apply_css_parameters(
> -    struct atomisp_sub_device *asd,
> -    struct atomisp_css_params *css_param);
> +void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
> +				  struct atomisp_css_params *css_param);
> +

Good.


