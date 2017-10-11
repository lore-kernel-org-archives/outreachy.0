X-GM-THRID: 6475501667265544192
X-Received: by 10.157.83.138 with SMTP id w10mr1886174otg.29.1507718047040;
        Wed, 11 Oct 2017 03:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.195 with SMTP id k3ls317240ote.22.gmail; Wed, 11 Oct
 2017 03:34:06 -0700 (PDT)
X-Received: by 10.202.225.212 with SMTP id y203mr4996690oig.94.1507718046169;
        Wed, 11 Oct 2017 03:34:06 -0700 (PDT)
Received: by 10.202.8.196 with SMTP id 187msoii;
        Wed, 11 Oct 2017 03:12:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAOvwZcrT14RnjDpN/NEWAa7NcXU4YpVadQ6Tk6tN/6m51k4Nn7Hy4IFq8gCft6rzqgptQf
X-Received: by 10.84.224.193 with SMTP id k1mr1448207pln.6.1507716778704;
        Wed, 11 Oct 2017 03:12:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507716778; cv=none;
        d=google.com; s=arc-20160816;
        b=ikDiZCb0OX/kefVcVjHlUj+9R09zfo8PWoqsq071gN5sln9zc5AAc8+Ci7FVsZNSqi
         bjhdeV9Qb7PYQCjBEYsdS3BWHncEWIGBd6lii43XRB+FMmwAbVHUMg/uLRgGoZMUMJa+
         lFDbFkpQb3jQGuNIJnzxp6APY5/Pf7veZMT2asxW/1zewZPpAtyToOpvGsHPP3Uo8Ccj
         DWVdsnzKOFBAGsodO1wxG5eD/a421Fc0K9JwjdQFeaY5amFYWfJr6iJfSbFjfawWrbex
         JMVtPLu5Y92kvQ5qLhDn4ZA/Cu6uP7mB8oUfqhkbDBJ9/nXweXtPq83e5639bfuhaIOf
         arRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=rKJ7lSlNP7ooGzjjL/nO3XNhUzgt40OSPjKz5YqD/ys=;
        b=zCDhBioXY0BeNhxB8L8GD5KidzIKH0BerpDwSansEGFMM5Fc6DKr2ajvla+H8T6lmz
         apAD+NWlQRwVqwJlA6AMBaGJUm7DT9DpnnhsL+nixV5s3u2JUz8aaVdXAYq3fB8FQddw
         8mOh6ReSbaHcWLRQQ+NL5oi3lTQopQjGoe6nGyW7LRlR74Lwoi2AZG5HEQdjmfA2fRQ9
         IG74esMwKeuOg5RQhYp+NOejQZn1DjTmn2gE28DD1WgiWZOQsdKVeyvXqCZIvLLQZRYd
         kg622RPMUG+hhi51/PMwOgoF9RJx4smnEs+1SoSqqr2d5YlrBLomrwvfamTay8aBju4v
         RdxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=ville.syrjala@linux.intel.com
Return-Path: <ville.syrjala@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 82si1479849pfz.6.2017.10.11.03.12.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 03:12:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=ville.syrjala@linux.intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2017 03:12:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,360,1503385200"; 
   d="scan'208";a="908840198"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
  by FMSMGA003.fm.intel.com with SMTP; 11 Oct 2017 03:12:50 -0700
Received: by stinkbox (sSMTP sendmail emulation); Wed, 11 Oct 2017 13:12:50 +0300
Date: Wed, 11 Oct 2017 13:12:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
	gregkh@linuxfoundation.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Sean Paul <seanpaul@chromium.org>,
	Eric Engestrom <eric.engestrom@imgtec.com>
Subject: Re: [PATCH 1/2] drm: Extract drm_debug.[hc]
Message-ID: <20171011101250.GW10981@intel.com>
References: <cover.1507693829.git.hamohammed.sa@gmail.com>
 <830fcacb4513dc2ca7f44cb1828d8cfa0e4e15ae.1507693829.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <830fcacb4513dc2ca7f44cb1828d8cfa0e4e15ae.1507693829.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Tue, Oct 10, 2017 at 10:13:36PM -0600, Haneen Mohammed wrote:
> -/**
> - * Debug output.
> - *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> - */
> -#define DRM_DEV_DEBUG(dev, fmt, args...)				\
> -	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> -		       ##args)

BTW if you're poking around these parts maybe you might consider undoing
the damage from c4e68a583202 ("drm: Introduce DRM_DEV_* log messages")
and restoing the 'if (unlikely(drm_debug & DRM_UT_...)' into the debug
macros. Currently we're paying the cost of the function call for every
debug statement even when debugs are disabled.

-- 
Ville Syrj�l�
Intel OTC

