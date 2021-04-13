X-GM-THRID: 6950525312871432192
X-Received: by 2002:a17:90b:1118:: with SMTP id gi24mr3243784pjb.30.1618297120922;
        Mon, 12 Apr 2021 23:58:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:22c8:: with SMTP id y8ls9068909plg.2.gmail; Mon, 12
 Apr 2021 23:58:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3zRijAoyXB1HUvptbesa4ZvPQKKNdmk9sL76cDASu1wKv92oDgQ92/8HKPcVarCVuznZ3
X-Received: by 2002:a17:90b:8d6:: with SMTP id ds22mr3266075pjb.220.1618297119807;
        Mon, 12 Apr 2021 23:58:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618297119; cv=none;
        d=google.com; s=arc-20160816;
        b=f8A1JgE054UG4Cif3FxoDYRuiB20jcrnBVBwjnFa1Zv5B5Ot5Lh062YXtAb+aFO5p8
         bharjPn6KvZ3GKVIIdY8V0e1Ghwj1gQFfWu5S7uuVlIqL2h0HPMbA+h5mITEZgAe2sJc
         cTuMnHQSMgXbH23lzDoO7tkCf0Z8togCGi/3TiP7uMdODeVp+46gx0COiOLpQsK+Xu7K
         6wK1fISiNi4204FnSxRdAIA5mK/3NUeIJlYSMLiFaVWV0MPSMFtmjbppJv62K0EpernE
         tCSOJBsziBL6XTMg6dRe2dmktdax4NN/pclhZfpvsvTMYnbxQU/8C1STMH/Pp1jUKCKq
         r7+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ld3Rrx69EYEd+IeesGBo75c6vVeoqLzhK9UzSaKYuGI=;
        b=C7wMkzBkeIffgaPxpihnvOvIcp7W/mUFVaJNqXExZPXQIEn/B+/uWn/MY849hjhJK7
         40SGJHOga2az1GHbUNVvM5msw+fr+qV6K1N2P6SAgnGZp+cabCTwskHhHc/GPm5KX0Gn
         NOah6soqw+W2UJWWo9B3hVdVzxpmDcuuqU5hwS9ESSIAjRExDQ3bj22Vg9Mls4RiZIq4
         z2F0fixfoQeblqIxmK1zqH0ZuaFfxYJONS/f/kfXW0Y5OJXNvQczvuOATbpg9vu4tX53
         JN0gWnzsc5PemKQrndSq2R4aS04Ia5XO7jNpmC8+OnCw2UdlArUjRUinpYA8b0l5S15J
         YGQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uF0mHX87;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si896216pls.0.2021.04.12.23.58.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 23:58:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uF0mHX87;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D644460FDB;
	Tue, 13 Apr 2021 06:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618297119;
	bh=At7tv/t6+u+Xed4C9ESv3PLB9A4rw88+He4xQJrhC8E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uF0mHX87ApqlGgu9151snbVoO5F+wIjbsZdjqFB9dP9GZ73EsdAzJT8LUtHy9rZGC
	 mdP+VB6xzHjCu9fB8SnJxOKn3Ey9Kp51nH4h/3wgBcZEFU2Anizjcg7a7etG7FkOM+
	 IEdEN9aXBt4mdjF3YIzY2C1Kchu3H2E6+SfitlK4=
Date: Tue, 13 Apr 2021 08:58:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: narmstrong@baylibre.com, mchehab@kernel.org, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
Subject: Re: Subject: [PATCH v2] staging: media: meson: vdec: declare u32 as
 static const appropriately
Message-ID: <YHVBGhoZXnVYfeKE@kroah.com>
References: <YHU56OM+C2zY34VP@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHU56OM+C2zY34VP@kali>

On Tue, Apr 13, 2021 at 11:57:52AM +0530, Mitali Borkar wrote:
> Declared 32 bit unsigned int as static constant inside a function
> appropriately.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>

Why does your Subject: line have "Subject:" twice?

