X-GM-THRID: 6402897717905850368
X-Received: by 10.99.185.21 with SMTP id z21mr725134pge.40.1490813807044;
        Wed, 29 Mar 2017 11:56:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls16041315otb.22.gmail; Wed, 29 Mar
 2017 11:56:46 -0700 (PDT)
X-Received: by 10.159.40.230 with SMTP id d93mr573418uad.22.1490813806571;
        Wed, 29 Mar 2017 11:56:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si1244050pfb.5.2017.03.29.11.56.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 11:56:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so3980517pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 11:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6dD4VN73H/fMs+61vcaFgTGCVs4mxKqZr7aDxDea0/k=;
        b=IJtt6Bd/mMKCX0EXcxgsTptsHBOQHYZ1xAfxhaAHU2lAoEcq8r8C7M3h25ravWvvS+
         Pnuim4WlMFMtgd1lm+e2MTbEG9tz2YVgfR/9LhLDJ9cxZnEx9aypYV3IZBLFam1l59K4
         pjnfrayv8lXHNCnhnwyXmKj99f0rwYOJMx+B8OQT2+pIY8ein1A5jHR4F8Oe2A0r/eB2
         GNccD8poWdYf2n/0XZ4JeZshe0QjNRbi//INuI7mu0sHKT0i4FOQnlyTbGRNOl4CI/K2
         D/w6A2tp4D7lVRHa5ClUus67DO3huqD8ddaZ0tC1iGj0VArf+cNETo7roZF7G+6VrE8r
         rIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6dD4VN73H/fMs+61vcaFgTGCVs4mxKqZr7aDxDea0/k=;
        b=AIJNLUpiJZBTqZnAvYA99ZrPdUVqn+GRTqejq8pD+hycnhyBjxkIQ4q0jlryG+pWiz
         KIqEabZX6lQSn8aLnDDHQYHLFxTNBPHXNBzrezvgv/QOYanhoWV0aTLKzeIXEeugN2gl
         IFHf9z6Lcp/mzTeku0ztukRFIZ3KDfVqthw8pPBTJztW6yYCHUmv4wFPx83VyG7BmDPj
         56b+wTuB6eHj+kXSNn4aJ4tn3fNF4g6d9VnZgIfdZFfl8rBcx6Ixne3eCwAMzDTmBvZv
         VU+3fhzLbtpykLG7Lr7anQ61JGDz7bWGM9B271KWYCGspEAm5u7MJ4+g3nmNNvl7tgET
         b3yQ==
X-Gm-Message-State: AFeK/H0+cWFJMMDw038HJqTvY7+xksMKLXG90+jaJvUoGuqTjOcMLYxbALypEyoKYWXptg==
X-Received: by 10.98.66.88 with SMTP id p85mr2065912pfa.146.1490813806299;
        Wed, 29 Mar 2017 11:56:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id s65sm14828617pgb.64.2017.03.29.11.56.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 11:56:45 -0700 (PDT)
Date: Wed, 29 Mar 2017 11:56:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] drivers: iio: Replace ternary
 operator with min macro
Message-ID: <20170329185643.GA23885@d830.WORKGROUP>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 29, 2017 at 06:03:07PM +0530, simran singhal wrote:
> Use macro min() to get the minimum of two values for brevity and readability. 
> 
> simran singhal (4):
>   iio: common: st_sensors: Replace ternary operator with min macro
>   iio: imu: st_lsm6dsx: Replace ternary operator with min macro
>   iio: imu: st_lsm6dsx: Replace ternary operator with min macro
>   iio: light: si1145: Replace ternary operator with min macro

Hi Simran,

I'm guessing these were found by Coccinelle. Please reference that
in the changelog.

FYI: 'Mileage will vary' on cleanup patches sent upstream.  Their
acceptance varies by subsystem and the change.  Consider sending
one such patch and await feedback.  Another option is to send one
and be direct. Ask below the line --- if such cleanup patches are
welcome.  Sometimes they create too much churn and are only taken
as part of a larger update to the particular driver.

Just my thoughts for future patches as Outreachy window closes :(
alisons

> 
>  drivers/iio/common/st_sensors/st_sensors_i2c.c | 2 +-
>  drivers/iio/humidity/hts221_core.c             | 2 +-
>  drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c | 2 +-
>  drivers/iio/light/si1145.c                     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490790791-5694-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

