X-GM-THRID: 6949457058068430848
X-Received: by 2002:aca:d54c:: with SMTP id m73mr9834186oig.57.1618130359771;
        Sun, 11 Apr 2021 01:39:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:480d:: with SMTP id v13ls1179845oia.5.gmail; Sun, 11 Apr
 2021 01:39:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyF7LbWuv9PDyKc0uT7SJl4fQKhaYZMy2v3SpvwE5mvUcZDMAbh6jWtee6XGxXXfr6spjUd
X-Received: by 2002:a05:6808:13c6:: with SMTP id d6mr15955798oiw.155.1618130359053;
        Sun, 11 Apr 2021 01:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618130359; cv=none;
        d=google.com; s=arc-20160816;
        b=G4qBt8ucWtJZ6xvz7n4rznRbr1UzUBo5Uzp/2FF9gpJhjYpQt53gyqf+EklVcH83RJ
         SbjHT+we4QA7QOMv2h4/9J0YpEN1qY5YVQZlIKsuhASRkeeAvY3hJm/yomctrLuIbDfx
         FHCgV3lzRwP+OEx8yGeHzYw26HAeHuWhczvWKEkXvmunDPHIIBVrnCLY1XVhHbZFIUgT
         wpuGV+VpjgDT7FI/cydZ8SeTlhxoqRBUVTtWWibd2dvG2q5tFKSCbARTktbzyQju0PV/
         c9dkcTHiekT7pU81bEADi2bLRqJckfzq9nyZ6N5XYri2wXy/JMhK36zbnjCi0GTaDozb
         g6uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R4Hz5iUeSC0sQU5nTY7KHOE+PifMtZ9koaMhFhhAoDw=;
        b=V68terdyRKnnr+8Y/VxDnK6SVz2dPPumvhaTRaRgsmKX80B+gDTDylJUxDI8a11rmC
         cWyiPlRIW2ozHTIZoToy3JO7cPegK5QHwfQP/bsYtQg7VXJvrbJBEasnVGYS4aLJYGoo
         BbFJw5Gj6pgcwf0L04t9rf+WTKBA8MGGxVn9Y0Gr4CUEtWnWHGdKfURouHZzDJa+BgaK
         K2FPT0SFknKicqOWOrrh6kn3EyAL5y8ZFiq1BphZo8FxS2CuVUGZCmESq+TflrkAV2KZ
         /0ZNAmuvdhQJxrJTHufSnAgPeMTsiapuN4Ofp9v4cXT5tR0E/b9RbRkxi1prePaznBm8
         znzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cGOH+OCy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si479148otj.2.2021.04.11.01.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 01:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=cGOH+OCy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1588D60C41;
	Sun, 11 Apr 2021 08:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618130357;
	bh=ptgz4PciJ8EZIH/tSNBSr2EiihonEzM+ZjH4HOcBJQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cGOH+OCyfwx6BkX4ftG2DpPeHPSdvfmR/JRQOkRSn+YOrLWbnzN3BCEYMBxQZXZh2
	 DAnGEzMBIDk2ung1IxeqxLOryV0vj9eIUbPlcOFJ4dnW6yGMVUMeLvPo4kL00NLR+b
	 ak6bdNn3NffsEbOVSJajQrjNHMXDLUHq5jGacGss=
Date: Sun, 11 Apr 2021 10:39:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 3/4] staging: rtl8723bs: Change the
 type and use of a variable
Message-ID: <YHK1sS6N/+dcxxhZ@kroah.com>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com>
 <20210411082908.31876-4-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411082908.31876-4-fmdefrancesco@gmail.com>

On Sun, Apr 11, 2021 at 10:29:07AM +0200, Fabio M. De Francesco wrote:
> Change the type of fw_current_in_ps_mode from u8 to bool, because
> it is used everywhere as a bool and, accordingly, it should be
> declared as a bool. Shorten the controlling expression of an 
> 'if' statement.

The "shorten" portion should be in patch 4/4 as it does the same thing
there, right?

Don't mix the two here, the changing of the type is fine to do alone as
a single patch and the if () change has nothing to do with that.

Also, you have trailing whitespace in your changelog text :(

thanks,

greg k-h

