X-GM-THRID: 6670195041552564224
X-Received: by 2002:a50:aa70:: with SMTP id p45mr3593925edc.6.1553099483865;
        Wed, 20 Mar 2019 09:31:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ee8a:: with SMTP id f10ls685385edr.6.gmail; Wed, 20 Mar
 2019 09:31:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/jQixsKvkL6lHqQwW97oMOJRLzzOna75KS4kb37SAJsCNC00AOwtNQvLLrOSmeHmLKV5V
X-Received: by 2002:a50:aa70:: with SMTP id p45mr3593914edc.6.1553099483018;
        Wed, 20 Mar 2019 09:31:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553099483; cv=none;
        d=google.com; s=arc-20160816;
        b=ext9KEgaK6rGlrOKg4Ag0TsWTe3jl865/UlaSOqdIVzqcMcZZ0mxL3pV6PGrGYMz08
         W3htOaQlrangcxK6uQnxQWVInqWfIBC9K44XKHjhm+gCmsWyZLr9vONJf3S3w8VnXWq9
         e6ABbhNV/uUDiwQmr7p/8iN/5iVA3npCJTa6o9xz0oUr46BUJTDkv9VP4BEYEfUVTSAy
         BpQ7904cPltyI1gg9YrpVD63jLcL+/RnmZwfbq8CjUkLH3Oo3Y4CZ2842p36mWpIiqVI
         9F2LJQgyB0kI6Ak8lcFGWElVnyzTj/REXdS1ljFhDy47s5fDXAoWaFsW5IiEJcfPSBhx
         DigQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=J/Ig5t7JqnqC0JsNdYEy0waMa6MkVPqRKZIu6K83adU=;
        b=sDLz+penXwGxksZcrv7/rgwc46kz/Qx3fdxilQprODnjbVM+k9HkZvQbgbcG74icdW
         Ca48iREGKHFSkKbiBAgbXamVsoAb66XhvMie13XYLSjR3kgu/Saa/7YaSiHn1EE8ktFa
         s0zCLDOeNfHMZXkcn/F8+XbDsR7jb0D/+KQ/7RVts/+wmYpxThckTTkaRV9+PntS9awo
         iEdtsXckmUiFoeMsiE0jPRV4zL5lHrS72gvrEyI4+ydwHQwaVAew4q36BH/3GTD8wYWg
         54VGAmveI0v9js5CqXZ1t++PFGyxjAB1cjpbdequGa1Kz+Opn30Pu/NPvX9BLI+fv8EK
         Eq8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com. [209.85.167.66])
        by gmr-mx.google.com with ESMTPS id r10si36167eda.4.2019.03.20.09.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 09:31:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) client-ip=209.85.167.66;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lf1-f66.google.com with SMTP id u21so2400940lfu.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 09:31:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=J/Ig5t7JqnqC0JsNdYEy0waMa6MkVPqRKZIu6K83adU=;
        b=VSy5z1glfk1WCD9lc4CEwGRO95Mi7JESz98ZPyNGfDUFhUSdKDmJJ8AEAh0H6a7AQi
         A6/VwK57LLNVaH0WR1pORs6ZZZHdMiMoAEZJa8kCntxS2Y9hchP/zfZ74ffm55LykwDD
         PF1WOTVxPiJb1/It213SY1v8uMs1vAfPouwMM78Xd8DtEaWjGtXbxQyzPHQZW0nyZwhm
         oyCFZxXtKlKiCKGsuJ3vjwrFj5L3EmwgvevO/H3wkVjn0kxrjWOvMPOAdSvEHc0+l/lT
         d7vEPEtAK5x4/o35G1++5cQ0qv9glVz/DT3GkWEB4HWdpYXlA4jUtjepKK0rgftwsujl
         CK4A==
X-Gm-Message-State: APjAAAXR77k2ObkNn8niXXFUsD9OvcUEuCJsSf32iiatR7XaDByE9aT5
	Wuc5+/BZJNCYJB9AaDw56a0=
X-Received: by 2002:a19:974f:: with SMTP id z76mr2373283lfd.89.1553099482509;
        Wed, 20 Mar 2019 09:31:22 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se. [85.230.190.116])
        by smtp.gmail.com with ESMTPSA id d75sm448987lfd.87.2019.03.20.09.31.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 09:31:21 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.91)
	(envelope-from <johan@kernel.org>)
	id 1h6e7Z-0000Dl-UT; Wed, 20 Mar 2019 17:31:18 +0100
Date: Wed, 20 Mar 2019 17:31:17 +0100
From: Johan Hovold <johan@kernel.org>
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: Johan Hovold <johan@kernel.org>, elder@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: Remove parentheses around variable
Message-ID: <20190320163117.GA623@localhost>
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
 <20190320085038.GC15782@localhost>
 <4d37053a-61c3-2eda-ae97-89e7c5ce787e@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d37053a-61c3-2eda-ae97-89e7c5ce787e@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 20, 2019 at 09:32:01PM +0530, NIshka Dasgupta wrote:
> 
> 
> On 20/03/19 2:20 PM, Johan Hovold wrote:
> > On Wed, Mar 20, 2019 at 01:33:08AM +0530, Nishka Dasgupta wrote:
> >> Remove parentheses around variable.
> > 
> > Perhaps
> > 
> > 	Remove unnecessary parentheses around expression.
> > 
> > would be more accurate.
> > 
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > 
> > But no need to resend unless you want to. If you do, you can add my ack
> > before your SoB-tag:
> > 
> > Acked-by: Johan Hovold <johan@kernel.org>
> 
> I would like to resend but I think this patch has already been added to 
> staging-next, so I don't think I should send it again. I could if it's 
> alright.

Greg's trees are generally immutable so once a patch has been applied
(and passed some initial testing) it cannot be replaced and the
corresponding code can only be fixed incrementally.

So no need to resend.

> Thank you for your initial suggestion though, and I'm sorry I wasn't 
> sure about how to acknowledge your help in the patch itself.

No worries at all. And there's no need to give credit for minor review
feedback; reviewers may still provide their Reviewed-by or Acked-by tags
once they're happy with the patch though.

Thanks,
Johan

