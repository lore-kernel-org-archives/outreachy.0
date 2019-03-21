X-GM-THRID: 6670524587430641664
X-Received: by 2002:a17:902:b48d:: with SMTP id y13mr5728729plr.310.1553203098374;
        Thu, 21 Mar 2019 14:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2ad7:: with SMTP id q206ls2509003pgq.12.gmail; Thu, 21
 Mar 2019 14:18:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYrikBv4iKW3/Da+Bxyzmd4vfBf6tFhhQoRGzEjeOYgNwIt4qgHtMpKvY0YZIcve7vxB/l
X-Received: by 2002:a62:ed08:: with SMTP id u8mr5475531pfh.200.1553203097636;
        Thu, 21 Mar 2019 14:18:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553203097; cv=none;
        d=google.com; s=arc-20160816;
        b=OvlOHVqqKy2Om9TT0w0h8srp8q26/m6IC/Wh9r8ZgtxKyIQEiiBnA93773TUhmhR3y
         ydVOcsmw9n0epseYIQE4XFeW26zi+Dk7Oc6UbTCRvCzXmhNm0HeHgfjnf6eOwoa816XS
         gmlNZlSSXM4GfxVmGk/LcLJ2i1cd/chUPJZXvPTYgOQbTC9HKyOhPIKks5SjyQLkxCHZ
         j+A2FPDwP63cwmbjWLejMEY+IyaoJlZ48schgJBup6rFPcm1utc4pxL+l7wjrFX/Y0/q
         avvpho0NtNlOfY4vOtUBAyKBW7SuSwaNUXv4nnlH8vo90ui9cVqt3nrkXIYEYlOhWhdH
         2P5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tnV1bYY4v0gY9MIjpvV1hSp35deIO36+4blegb5qQbY=;
        b=n7ZNTXBBXmdsu6hPM/iD9bgDuJ7ofd9iuFYAWyPe4brqAUa6nKhQCM9+3xpOrXRSiM
         geHFy/8WjOvXhc7+3mHLHArGOd+2MvanDWHytvQAfaS95AlnEs/Oz9pDyv1gjMTeri7q
         Nv1JLiys/WMIUz1lNSW+FU7yc8EUi0gGPPItcB7TXdXagUPEoRbBJd9NwzQ+ow8xWJLX
         wM2PVu8lkweZiVNRWGLA+XdLuBP14uzaMQrgQulDRrp2PqsVM0VgvjflJBBw6x4+HoHr
         Hcc381gdvGUZeFoYoWDbZl5nP3/eHff59uTiUP9RevGOiggPbvUA/NrJwWaBmxxPQ1F6
         bdyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GW4TOpTt;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x141.google.com (mail-it1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id t63si275324pfb.5.2019.03.21.14.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:18:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GW4TOpTt;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x141.google.com with SMTP id e24so536295itl.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tnV1bYY4v0gY9MIjpvV1hSp35deIO36+4blegb5qQbY=;
        b=GW4TOpTtqvBr/nsZRVdgwh7qWFacsNEoRVlOX9osYciLaipWRQsOiJnwvVF0RDdr5B
         g6KQezn5KUM8rLIXTSDps63Z0Io2ClXDm5sKqD2VRujPHVy4BhjWSySif/8Ql3A2ZDsi
         MkHjOuxFcJ2k/U9ml3y68Gou2BX6RExkPx6Lgm4yAqfel4qrptPQ3eyAQp28O1iFdTCw
         wpCRqDh+KPjCdoDTDbDBq2rbHizHueb6UzLxYoQ9kV9IhgOCJO58AbgSmicx6zoR3OV1
         I2NgezyKdSioxkgDlVh/FPgKw7eOPzcJXsqi9YEy7t83gJ+EyMGbJjGHiKBrpCsF+5yu
         /k6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tnV1bYY4v0gY9MIjpvV1hSp35deIO36+4blegb5qQbY=;
        b=WOzJPZ76klMmBfITtNXxCvwF2lCtv1h5Tt1ZkpeBJpT/q3/PhTjXGiKLV82fX7ltQR
         XIbSUUpBKyzj4JqNUrfk6a9ASlvwYYG3MkYk/rZfXm4teY0oO/vJRaRxu+6rRppdLKD2
         mqz7UtmPTGZ/2Z6DhekW76Jod50sU1F30erN5NGWOxzjo+K9P9/SWDsZxsbTcs8S9oRZ
         tzGNULcpctSbbMxMj0AXDmwlS8H5Vzt9l6wEuizCS0WJzTBDuWwJtopl7RVs3uPoP4KL
         uXPe6f6Sa8+YYwH77uXkqlioBKp87BzBwb7fjwzfWn4u3o0cvxLSFgmH47XR0RdB/WsF
         VgWA==
X-Gm-Message-State: APjAAAUCWaFpPsJvhHiGEUV7i6VLzeOYS5tsokJc5drvnQYylj1E6RpF
	5E4sqeJnXiWOUJsSCaFL3WoSxuvQLM6i
X-Received: by 2002:a24:5c43:: with SMTP id q64mr388615itb.75.1553203097085;
        Thu, 21 Mar 2019 14:18:17 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id h191sm419243ith.1.2019.03.21.14.18.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 14:18:16 -0700 (PDT)
Date: Thu, 21 Mar 2019 17:18:14 -0400
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staging: wlan-ng: malformed SPDX license and typo
Message-ID: <20190321211814.GA17315@Test-Virtual-Machine>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1553099252.git.brandonbonaby94@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 20, 2019 at 12:53:21PM -0400, Branden Bonaby wrote:
> This patchset corrects a malformed SPDX-License-Identifier
> so that it conforms to the rest of the comment style in
> the Linux Kernel. It also corrects a typo in one of the
> comments for better readability.
> 
> Branden Bonaby (2):
>   staging: wlan-ng: malformed SPDX-License-Identifier
>   staging: wlan-ng: Correct typo in comment message
> 
>  drivers/staging/wlan-ng/hfa384x_usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> -- 
> 2.17.1
> 

Hi 

Please ignore this, it sent again after resuming my VM.
The patch has already been accepted.

Thank you 

