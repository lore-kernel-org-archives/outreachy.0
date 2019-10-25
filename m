X-GM-THRID: 6749942525265444864
X-Received: by 2002:aa7:9a95:: with SMTP id w21mr1515201pfi.173.1571973463856;
        Thu, 24 Oct 2019 20:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6904:: with SMTP id j4ls2370262plk.9.gmail; Thu, 24
 Oct 2019 20:17:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxgYSEb4pdVmbTPZgPBMiM/W4uvG3UtEGMXg3XizQuVuv0KI5pLCilLhnVLAnQKI4DhbvJr
X-Received: by 2002:a17:90a:a406:: with SMTP id y6mr1182835pjp.106.1571973462744;
        Thu, 24 Oct 2019 20:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571973462; cv=none;
        d=google.com; s=arc-20160816;
        b=rTh9/3k0AQHLyp5FfdvkKmGdvSuJrlEDPbgGIoqZD4sbMV+0l+IiMfbs6oqgddtw3u
         H3MFQ79iq/bPzTePsAICWljXYYvmWYchIdZKFHdyjIvlzc5pweWMsbZr79tBfUpXZdh4
         qPAoEQRP7n+MwpBoPH1Pu+pV/1uFecXRNMVBa9RkR6kWdMSLA4kTcxzDvFgFzEuuJBuV
         JRI23woSevF9GkkV24AmaunCHYGGQVko90OMS6qXkVj69NuOwc4tRGXsJvPxIhHYazYG
         kSHlmgZW68NzA5WHM2avDFmad5roBDbqmkQEnvJhqwySHtfww5t2Ih/9mby0Yx18R3xm
         HkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nHACXLdKKpgaKW+C+tV3XPVxPJ8UZXAODSNghVAJIlE=;
        b=cKJNmp3EOK1ISobkExiJa7LIUEnU89ve/KiHR/+WQ91HfQKCyKHeueFW3NuiMWXvit
         9BoEh0DvGug9Oe3Tir7AmB/qkdo2yxeKkGlHGqfIalEeKK8GqSrIbnNShxvmkU4jQN1M
         MspI8e5ypNLoBsvj0+4jLUXWXP0Sbu1rY7+NYT9ltVIEEGIAEq5LYVtyxYBHCwYM2iQG
         hSVZ1FD7Aa0V4fQbbyo9U7cMXVBOVqVc/cBtz7eZHvS+mrdrKrgiW1qei54Zux1wp+Y0
         0/JDGQTjzQicxY6OBmUM4MrwM9bzzhVLSbP1kELPad/i3ozeJVwmnY25kT85pb2dLROG
         yd2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2nWflFr1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p9si24247pjo.0.2019.10.24.20.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2nWflFr1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42AC92166E;
	Fri, 25 Oct 2019 03:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571973462;
	bh=Zf3B6ELhyI0WYthRwdGCzGXjAQKPLZE2zqrGR09jcZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2nWflFr15CWydQpUwpYFiSVS/iVl3whIl1m7w9yizwRPdjlVMGL90QMeSd3RpaHCY
	 XidR3NsWof/xGF1++1tnNB8wdaElK81fRGq8uD5OJbW8pfN0NqOJQY9ma9cW4lV8jn
	 1lp/cdQov4NmA3aChxFXRp4/ooC85dx8PyohnCCI=
Date: Thu, 24 Oct 2019 23:12:49 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: CristianeNaves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>
Subject: Re: [PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191025031249.GA511004@kroah.com>
References: <20191020174415.GA3873@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191020174415.GA3873@cristiane-Inspiron-5420>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 20, 2019 at 03:44:15PM -0200, CristianeNaves wrote:
> Fix line ending with a '('
> 
> Signed-off-by: 'Cristiane Naves <cristianenavescardoso09@gmail.com>'

Your From: line does not match this name :(

And why the ' characters?  It's not needed.

Please fix up and resend, thanks.

greg k-h

