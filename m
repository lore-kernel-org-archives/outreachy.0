X-GM-THRID: 6950041128990146560
X-Received: by 2002:a17:902:b942:b029:e4:87be:be8c with SMTP id h2-20020a170902b942b02900e487bebe8cmr25143265pls.81.1618220604511;
        Mon, 12 Apr 2021 02:43:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls6961375pgw.1.gmail; Mon, 12 Apr
 2021 02:43:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8hNMG5qENnU+tGDYYrXFgJIznBHe0TrulLnETbrKNuOrSQ1L6kJAYfFa8tZWKCIW8uJIV
X-Received: by 2002:a63:5c48:: with SMTP id n8mr25778102pgm.411.1618220603637;
        Mon, 12 Apr 2021 02:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220603; cv=none;
        d=google.com; s=arc-20160816;
        b=d5k9i44Zvtgdmj8Uo+Bd8hovMGiM5wWPLkfHi+fys+eyQ5WrZ0syVJ/Ad6H+9TuUrt
         qvEUq4ftPCcCB0ZRKBCdyy6TihyzSPibOuccAvhcI//RKDtiwHhgarxKW2VvRPh/iqpF
         ekemE0GC/wePZ62avGEVVpzbPwOjsxbjc9T5RqOz+LEwe5g0M6+SRIGDoIfBGULP9NMq
         1MHgymmj0zb9h1JKg0PZuu96UGXxbfzju2RJUH64ryN0cmxZnKYuAMbDAwHEyXchL3H2
         k1iauvMwcnjnemxu/ri2/unY5HcE86/JHBo3n5NiWlJYLa4HnROI5ambJkhVPnqOgXND
         kEZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=V5Ak25MFv/RWd0b8n/xtNkY+oGAucgDKxkVlMZi5PAc=;
        b=CkYfN/rfv1EOvegOhUVRkaxckyKDptqdf2yjNvQw9VVGI/24Okam7nhzIhayjeasLd
         eO0sKO4S89isPWXEkWD5AieUWK7rf0lAzBSPs3dlTPqYG8ODuRXksrJGiVonbT4lpc/N
         7AeQPvKsC+J2EgF2c/iqPsm0P1NPTX9Hlc29SPNjDxwprH9PCRftQF7424v2O3qL4CHm
         9227yPN6iXDoPsnJW6vH/x/QLueVG63wq4owI13DWnm9F0hY+hbuoPXgkhlGfjyvvPxu
         rJVxh4SfE2iSufB4BuYhRfhpXz9PMmreYrYwZZr3eMyUU3PFQBPdh4UceP2zPIz+tt9Q
         ZMmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id i18si84257pju.2.2021.04.12.02.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:43:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: rIybLUela68PlqEFlX5pHPJSY3qtbpfYGyoBeCVFzHdqLXKK//NIDcFV4juLTWXAcHjIaqLV1f
 IBuDoPiIWKxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="258127398"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="258127398"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:43:20 -0700
IronPort-SDR: VCrbbVR0BJ7lcAnXo7QHY+Nl502/GPsmYphg6/+QYkkyJ9Df+auE7UcC97H/r6oqpsT7y4a3BO
 4io/GSUSCvwQ==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="611304700"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:43:17 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 7773D205AA;
	Mon, 12 Apr 2021 12:43:15 +0300 (EEST)
Date: Mon, 12 Apr 2021 12:43:15 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 2/6] staging: media: intel-ipu3: preferred
 __aligned(size) over __attribute__aligned(size)
Message-ID: <20210412094315.GJ3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Mitali,

On Mon, Apr 12, 2021 at 04:38:59AM +0530, Mitali Borkar wrote:
> This patch fixes the warning identified by checkpatch.pl by replacing
> __attribute__aligned(size) with __aligned(size)

Same comments on this than the 1st patch.

It's a staging driver so even if this is a user space header, it's not
under include/uapi/linux.

-- 
Kind regards,

Sakari Ailus

