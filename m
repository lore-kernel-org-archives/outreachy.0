X-GM-THRID: 6947609304795971584
X-Received: by 2002:aca:494b:: with SMTP id w72mr17491489oia.105.1617617874621;
        Mon, 05 Apr 2021 03:17:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c650:: with SMTP id w77ls3157736oif.1.gmail; Mon, 05 Apr
 2021 03:17:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/chh61OEjRDVU6vxBbWNtElVfcf1FCB3XHraAim6ntlaYpn/YJrCFbn4dizmBBRZ4nOYS
X-Received: by 2002:a05:6808:bd6:: with SMTP id o22mr17426241oik.129.1617617873944;
        Mon, 05 Apr 2021 03:17:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617617873; cv=none;
        d=google.com; s=arc-20160816;
        b=iByMmDH+6WkRQ1A7MqNO/4vXlOkn6o9FYcMFIsZ+YvJvttaANYlNUg4ngghbd01ibF
         lM7v1EFpC9aOlwSbmuOJKIhPNnZz+Y82DSuymUD+LNxcmRmFkjBXAufzn3VeurAN82QO
         SqbjgDTcX8eGgQzw/F5gtidi67qqBkjiZiaRTuQn7x4CwTbvVcamu6Zkvq4RD4lwU4Ii
         5YUEfkNcY+9xla2eC3vXO2D7TK8rM9rtTzJBmDd/miEHrEGVFn+lZkAQHeuSRzOlDcYa
         eOPdpV/cYmdHtOdjn7jpMP5IeOBUNngFtTRPsfg9FeMORs7IYo/U1WOvKirqCl7A+zeF
         UehA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jR3Hqtxh+qNmrZ8tYnmGkPe9hg3DU74HDgJLmDn9Jpg=;
        b=YUCHI5Uv6fAfvNGo5vtqCVTtyZSTFfkOLwE5zAFzX7Ek/JVYsKtD38fmryqcrGhUed
         zw1ZkErVej8XRY8sqMIFC2kF8E3yW4EyXuV58KV+Va8RoP9zmvQHwhNS5d3Ku5+nTfXM
         d8vTWtPyefnTFJumvTUK4KijTlE49D42+7Ro2bWZuZHDDFTwDuEWchJwx7lG0N/ArlEw
         TAqC3ydW3dytjMxfmj9efIQR97PgJhoSPTGXBOEvjJ79/Zbzekv1vhyosx4crf1ADeZN
         oVo8U3n4tFyeQgj2QlzD+7z5mZWnSPoRu9nOpQqccH0GSzkWczxKsTwRig/gPKWHf3Za
         jNVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nG8BSvw1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a12si1208374oid.0.2021.04.05.03.17.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:17:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=nG8BSvw1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 779F66128A;
	Mon,  5 Apr 2021 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617617873;
	bh=rSkhlmc8fHjJv9HJVd0PD5diHIonLFXnhO+uv1Ymv0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nG8BSvw1BUccxKGhjaycRoV02bZh4rfj8+niGwKM1lmwDTLZgVeFJL/bncR/zLOFt
	 Eww4xtdPa9xNLUnPYuXCAtsVMhaeKEENQ7Ifqr+ceDuanJka0v2nvyQapwTF48NLmP
	 tRWpkikJZ563AnmirClDxpU/FBd8uBSeApixIiOQ=
Date: Mon, 5 Apr 2021 12:17:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: FMDF <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jerome.pouiller@silabs.com
Subject: Re: [PATCH] staging: wfx: Replace udelay() by usleep_range() in bh.c
Message-ID: <YGrjzt41FM88YvEv@kroah.com>
References: <20210405095213.19615-1-fmdefrancesco@gmail.com>
 <YGrgaPEwvRpFfdDc@kroah.com>
 <CAPj211tmd7AY2-nym6AVOg_kVFKDZzNQBZ7x-kwrFZRaCnfnxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPj211tmd7AY2-nym6AVOg_kVFKDZzNQBZ7x-kwrFZRaCnfnxw@mail.gmail.com>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Mon, Apr 05, 2021 at 12:15:17PM +0200, FMDF wrote:
> Thanks for your prompt reply. No, I don't know it for sure. I've just
> read some drivers and found that often the maximum time is about 150%
> of the minimum. I assumed (wrongly) that it was safe.
> 
> Can I leave usleep_range() with 200 usec for min and max time, as it
> was with udelay(), and let the maintainer to take care of the numbers?

I would just leave it as-is for now, no need to change it.

thanks,

greg k-h

