X-GM-THRID: 6949988784020652032
X-Received: by 2002:a63:6ec1:: with SMTP id j184mr25764126pgc.364.1618219915109;
        Mon, 12 Apr 2021 02:31:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b50f:: with SMTP id y15ls6943806pge.2.gmail; Mon, 12 Apr
 2021 02:31:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIBypGolSxUjB1B4vHD0DpWTovwuIoF0DLy76orMwf7NH+NveDx0CsUyesYdU+cXzZgszZ
X-Received: by 2002:a62:8856:0:b029:24c:5f3:98db with SMTP id l83-20020a6288560000b029024c05f398dbmr5421583pfd.17.1618219913989;
        Mon, 12 Apr 2021 02:31:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618219913; cv=none;
        d=google.com; s=arc-20160816;
        b=wNXvotqJm+ocxzu3DTlU4CjExe66SOoTjjAbv2+SdT7vW5aQoVL3SkT9ILeGElJxhz
         zlzzrrynFIr1eu1BuUnmX/j46UR3mIwbuqbMP4R7QzZDZF7X2YN8BJD22i96oBTYJXbL
         FvqxHp02oqGXOuSenfqYuu2UE+OeObPsHGXlmDLcKBJDvZQl22XtLiYSFwS+58NlpoJC
         u44PvA0ovxWzMtTM7GVE+sxmsjQKVWouvoiMf26+7RABIomTFO0MQirS6YhfwwY6iAKt
         NYhAICz+E/OHT2nh5peKDbySDcr+1V+LpLwk1aWZRhoQAo1wl7vEb6HLzH56vg5FXDGY
         5Tlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5M5LmScUSUW/JdezR/30mJvpyYQpsWjQ22ChxNtxucA=;
        b=mG6VMi2oavGe+caBMEn9GK5YbyXDc0XwteqQm/JHGVGKV+YdSNg/HBfIh9ohwfHCOq
         yfyjy+3ycUrEuAzKkxn6Q6AkuCfgZznv8xo5kT2Idt2HzkaubwQw0ynGfLdW284FnrxW
         R8KQPS+8OctPlaZFDWVpVgrbGXbaF1tfXV0tS/5R21lF0kXbainMD0Fh+6HhSf7bqFQ6
         RGKbEL3spgzfRxhZA6iySs0d21XtKnQCKRAgQcqUqcQ9cGuvYAkQK0OGnQU9QxbTh0/r
         FY2LyybhH5mmtyje19VIflYTdYr+Jc76aVTOrjSZrEITBP0/Aq+ch6xnkoS9UQafArRF
         hChA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nritx9li;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y17si682526plr.4.2021.04.12.02.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:31:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Nritx9li;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33D0861221;
	Mon, 12 Apr 2021 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618219913;
	bh=5M5LmScUSUW/JdezR/30mJvpyYQpsWjQ22ChxNtxucA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nritx9li/UY686NVEvRCWuBRT0weWimJ57A7D0kf89mIZ7K5pSxrE47d4Y/7o3ArL
	 u9EHl/hlYxa6fFVC4gkZyS/WEoWeX74wBzN1pVH2l+JM9nUv1Vy6HL6aVOaPKUrcYb
	 sfqJqWcm+pb0afG2CwGvPTlE8Fo65+4qMsORLgbA=
Date: Mon, 12 Apr 2021 11:31:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: nsaenzjulienne@suse.de, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 0/2] remove whitespace and rectify spelling error
Message-ID: <YHQThxlpcCGSO2QY@kroah.com>
References: <cover.1618169920.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618169920.git.mitaliborkar810@gmail.com>

On Mon, Apr 12, 2021 at 01:15:52AM +0530, Mitali Borkar wrote:
> This patch fixes whitespace and spelling mistake issue.

"this" is not a patch, it is a 0/X email.

Also your subject line does not match the prefix on the patches, please
fix up.

thanks,

greg k-h

