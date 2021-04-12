X-GM-THRID: 6950266407606026240
X-Received: by 2002:a17:90b:228a:: with SMTP id kx10mr1296816pjb.33.1618263060690;
        Mon, 12 Apr 2021 14:31:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls8319870plx.1.gmail; Mon, 12
 Apr 2021 14:30:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxucpdOYgk2mi+drdRRVX7Eef5W2VSsLxIAesSh5G8QYPJ5kgB4gZQefmVJ0EDU9VIf9mka
X-Received: by 2002:a17:90a:588b:: with SMTP id j11mr1224826pji.170.1618263059426;
        Mon, 12 Apr 2021 14:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618263059; cv=none;
        d=google.com; s=arc-20160816;
        b=aXXdsFu9WRH+iG2tC3AN1h0Kt1ZYTWow8sbSY6+TqWS+S1sQaMjW0Fh61VT7Gf8CMg
         m47+C2/5h8i/V5mw8nE98su/9/WNnyvzZYArihqeL12iu8ysIhLyKZ4QfRbxYyzEgUEY
         8/YKgDPkyAXNAaKZdobkVCi74tEkDp6APoRnpmvNgh3xE7lePcS/nLcs6z61k8U6f+gr
         3hDGeFcYSsEEs7NQNeM/RJHhJTHCj8K5NSzRv9/sawpukTVfdoY4N7iWnjs4pyUViPS8
         FamyR1bIuJIWem/tHVGDkvaoZXofCnZ3pA+yDtuCGz5wAV9zWcb9WjbelujeX1Wnpfm7
         NvZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ONnzioe4ftdtIL5MgqZJ51h5+p0ill5h7fTgIY9zBZE=;
        b=a/Gg4LM0kDKuUTWb7+HEndThfuGaylDFanOxZM28NTc7EQR25CsjEVLSnYdiyefVPf
         RtWRIWRLLJRu2z/T/FwUpDlEA4d2F36enOYTbtQWPmp2ZLwIG90Sdg9wSIc4Ew9+Y/Ih
         OJtQJCIftVYmc+LFTVbZoysWC37dm4uvwd1ukpgZ0rwPy2gswmVXC39CdhUElCTzxt/I
         /FkPnzlYWIBYYjGvDFgMIofHkSkEjBN/f4Mwqq6FYPKJ8PRlab+YR80r/akqUpMSludE
         sWlen3sL/hNNrJ1zOwPLLTORHpxjlGec+s+IHmBASVDC1gWfbygFgXRZXrC01g2sdnKB
         M7hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id u21si875203pfc.0.2021.04.12.14.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 14:30:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: yvxx/fd+N12F47qKBlDOxC/IVfTIwvvjsZBX7ld2ehCDgxinzgtoqgUpgNlDwDTocEWu4POKAq
 2uiuPKmN1ocg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="174381562"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="174381562"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 14:30:47 -0700
IronPort-SDR: K63XHryXXzqS080UzD9jLi5X/KJ+TvajITlty1evV0jVGd5CoC+5/xXQVpdeeqYZPoTLS37FlO
 gKxxb+o9az6g==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="600125623"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 14:30:45 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 8F1E0200E8;
	Tue, 13 Apr 2021 00:30:43 +0300 (EEST)
Date: Tue, 13 Apr 2021 00:30:43 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: hverkuil@xs4all.nl, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: atomisp: i2c: align line break to match
 with open parenthesis
Message-ID: <20210412213043.GP3@paasikivi.fi.intel.com>
References: <20210412134301.11587-1-martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412134301.11587-1-martinsdecarvalhobeatriz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Beatriz,

Thanks for the patch.

On Mon, Apr 12, 2021 at 02:43:01PM +0100, Beatriz Martins de Carvalho wrote:
> Aligns line break with the remaining function arguments
> to the open parenthesis.
> Issue found by checkpatch in file atomisp-gc2235.c
> 
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

