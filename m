X-GM-THRID: 6665843056733847552
X-Received: by 2002:a25:e82:: with SMTP id 124mr8571085ybo.54.1552028750619;
        Thu, 07 Mar 2019 23:05:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls2771ybb.3.gmail; Thu, 07 Mar
 2019 23:05:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqwG7JICgTkahmI3zWoGRhmkubWqx7IvuK+Z9VGEqt7dtB6jG8/VpYrpHQRhC7JGbmBQEHyh
X-Received: by 2002:a25:d83:: with SMTP id 125mr788737ybn.50.1552028749990;
        Thu, 07 Mar 2019 23:05:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028749; cv=none;
        d=google.com; s=arc-20160816;
        b=T37dtgZWYRy5cZ3c3OOeMoee+fVXxDW3pgFQCzxknmHWhKI91VH0j6gn2/1cU0nKOi
         CTWA6ug8zv9QOpNMpDd7y22ytq12rnIW2p1E3ycQsrXMblTQ/J6zwB8oO8wDceMYCWV9
         87AJigsxgH4htUio4ClI2j2GeJRt3VdS9oQNSQbOFSNjLJkhzD8VBqW0AiOTbl2t7YZd
         +LNktq8n/DmsTqyvM7LnixVEZVGi3nX6DaxZmhhkt3aTQ9YmOkdfRiB0d5+Ar5OxcVMG
         U6TAZJ/LfOJbDnvAdvY2VGcj4C+Vxlj36xM8oLxgFs5WouWPbtrPa0W/id8fCeCh2L24
         jsCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=id0onfcmWi7MBkJ/HAgGtklJPtxsmo0WoEDoPM0n14g=;
        b=HawQupE9sPAjU5mRbvOx0VlXDmUOxpODePLHO77B+8Cmfn/BNdwqaPYjeoebSYM8M2
         R1+Kjo5epAksc9Prgvr/PrHWDYp89HrWnljuvNtW7CXLakYGmEal6N3erNp5WTbovl/t
         6andiYgjnO+vi6P2cgTldt48eTKcaS9XUrBGdEopFj+8LMgyOLu2InVZemXQOHhRVGnJ
         4yksFE3+tgkBADmCrhV5UkAc70sjKvZ/3mNixzvnu06S94WTXnCmBWXLeMuKi/8tzoHY
         K5P/CDpffijqiIoHlr+fq5C/2LwZT24kpnkv3eAoMmBgbLbibQpJVweXSzmVXZeUtuPI
         K8wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sw748YY0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w7si294799ybk.0.2019.03.07.23.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:05:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sw748YY0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9152020811;
	Fri,  8 Mar 2019 07:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028749;
	bh=/Z90nmrb9J2UBITLASdhx8dcNKEdIbsbqH7Pft3wdA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sw748YY0TwdEoojkleRCQlOqvGWSt08ZibVehVjMRIhwRmKLFQMbAVPDVn6k7TYkF
	 HH4WtRcX8oYqK3W4/N+EWvVDig6Eu7lkhrsZWe0rdzi6a3Nlf8fIdG9In/it8ZCKuT
	 7fKIX72nhFreTHyQH2PIq18eL4/JdWMRMMkJoT0Y=
Date: Fri, 8 Mar 2019 08:05:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 0/4] Fix malformed SPDX-License-Identifier
Message-ID: <20190308070546.GE17194@kroah.com>
References: <20190308031013.7952-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308031013.7952-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 07:10:09PM -0800, Wentao Cai wrote:
> Fix SPDX-License-Identifier in drivers/staging/most/dim2/
> 
> Wentao Cai (4):
>   Staging: most: dim2: Fix SPDX-License-Identifier in errors.h
>   Staging: most: dim2: Fix SPDX-License-Identifier in hal.h
>   Staging: most: dim2: Fix SPDX-License-Identifier in sysfs.h
>   Staging: most: dim2: Fix SPDX-License-Identifier in reg.h

Usually it is easier to put the filename at the beginning of the line,
not at the end, so this would look like:

Staging: most: dim2: errors.h:Fix SPDX-License-Identifier
Staging: most: dim2: hal.h: Fix SPDX-License-Identifier
Staging: most: dim2: sysfs.h: Fix SPDX-License-Identifier
Staging: most: dim2: reg.h: Fix SPDX-License-Identifier

But, note, your text here is not correct, I'll say more about that in
your first patch...

> 
>  drivers/staging/most/dim2/errors.h | 2 +-
>  drivers/staging/most/dim2/hal.h    | 2 +-
>  drivers/staging/most/dim2/reg.h    | 2 +-
>  drivers/staging/most/dim2/sysfs.h  | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)

Please use git send-email to properly "thread" your patches the next
time you resend this series.

thanks,

greg k-h

